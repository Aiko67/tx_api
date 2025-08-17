require "csv"

class TransactionsController < ApplicationController
  CSV_FILE = Rails.root.join("transactions.csv")

  # GET /transactions
  def index
    transactions = CSV.read(CSV_FILE, headers: true).map do |row|
      {
        date: row["Transaction Date"],
        account_number: row["Account Number"],
        account_holder: row["Account Holder Name"],
        amount: row["Amount"],
        status: row["Status"]
      }
    end
    render json: transactions
  end

  # POST /transactions
  def create
    transaction_date = params[:date] || Date.today.strftime("%Y-%m-%d")
    account_number   = params[:account_number].to_s.strip
    account_holder   = params[:account_holder]
    amount           = params[:amount]

    # Random status
    status = ["Pending", "Settled", "Failed"].sample

    # Validate
    errors = []
    errors << "Account Number must be exactly 12 digits" unless account_number.match?(/^\d{12}$/)
    errors << "Account Holder is required" if account_holder.blank?
    if amount.blank? || amount.to_f <= 0
      errors << "Amount must be greater than 0"
    end

    if errors.any?
      Rails.logger.info "[Transaction Validation Failed] #{errors.join(', ')} | Params: #{params.inspect}"
      return render json: { error: errors.join(', ') }, status: :unprocessable_entity
    end

    # Append to CSV
    CSV.open(CSV_FILE, "a") { |csv| csv << [transaction_date, account_number, account_holder, amount, status] }

    render json: { date: transaction_date, account_number: account_number, account_holder: account_holder, amount: amount, status: status }, status: :created
  end
end
