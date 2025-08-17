# 💸 Transaction Management System

This is a simple application that lets you **view and add financial transactions** using a web page. All data is stored in a **CSV file** (just like a spreadsheet), and there is no database or login required.

---

## ✅ What This App Does

- Shows a list of past transactions.
- Lets you add a new transaction using a form.
- Saves all transactions in a file on your computer.
- Gives each transaction a **status**: Pending, Settled, or Failed.

---

## 🧰 What You Need to Use This App

This app is built with a tool called **Ruby on Rails**. To run it on your computer, you’ll need to install a few things:

### 1. Install Ruby

Ruby is a programming language. Install it using:

- On Mac:  
  Install [Homebrew](https://brew.sh), then run:  
  ```bash
  brew install ruby
On Windows:
Install Ruby using RubyInstaller

Once installed, check it works:

bash
Copy code
ruby -v
2. Install Rails
Rails is the web framework we’re using.

bash
Copy code
gem install rails
Check it works:

bash
Copy code
rails -v
3. Install Node.js and Yarn
These help Rails manage website features.

Download from nodejs.org

Install Yarn by running:

bash
Copy code
npm install --global yarn
🧪 How to Run the App (Step-by-Step)
1. Download the Project
If this was shared with you as a ZIP file:

Unzip it and open the folder.

If you have Git installed, you can run:

bash
Copy code
git clone https://github.com/your-username/transaction-management.git
cd transaction-management
2. Install Project Tools
In the terminal (Command Prompt or Terminal), run:

bash
Copy code
bundle install
This installs the Ruby tools the project needs.

3. Create the Transactions File
In the same folder as this README, create a new file called:

Copy code
transactions.csv
Paste this sample data into it and save:

csv
Copy code
Transaction Date,Account Number,Account Holder Name,Amount,Status
2025-03-01,728934451121,Maria Johnson,150.00,Settled
2025-03-02,112234567890,John Smith,75.50,Pending
2025-03-03,334455667788,Robert Chen,220.25,Settled
2025-03-04,889900112233,Sarah Williams,310.75,Failed
💡 You can also leave it empty and the app will add new entries when you use the form.

4. Start the Server
In your terminal, run:

bash
Copy code
bin/dev
If that doesn’t work, try:

bash
Copy code
rails server
You’ll see something like:

nginx
Copy code
Listening on http://localhost:3000
5. Open the App
Open your web browser and go to:

arduino
Copy code
http://localhost:3000
You should see the transaction table and a button to add more.

🟢 How to Add a New Transaction
Click the "Add Transaction" button.

Fill in the form:

Date

Account Number (12 digits only)

Account Holder Name

Amount

Click Save.

Your transaction will appear in the table, with a random status.

🔁 What Happens in the Background
When you open the app, it reads from transactions.csv.

When you submit the form, it adds a new row to the file.

The app shows colors for the status:

Green = Settled

Orange = Pending

Red = Failed

💡 Notes for New Users
No database needed — it works like a spreadsheet.

You don’t need to know any programming to use it.

If you ever get stuck, try restarting your computer and starting at Step 4 again.

✅ Troubleshooting
If you see “A server is already running”, run:

bash
Copy code
rm tmp/pids/server.pid
Then try again.

