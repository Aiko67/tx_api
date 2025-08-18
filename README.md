# 💸 Transaction Management System

This is a simple application that lets you **view and add financial transactions** using a web page.  
All data is stored in a **CSV file** (like a spreadsheet).  
No database or login is required.

---

## ✅ What This App Does

- Shows a list of past transactions
- Lets you add a new transaction using a form
- Saves all transactions in a CSV file on your computer
- Gives each transaction a status: **Pending**, **Settled**, or **Failed**

---

## How to Run the App (Step-by-Step)

### 1. Download the Project

If this was shared with you as a ZIP file:

- Unzip it
- Open the folder

If using Git, you can run:

```bash
git clone https://github.com/Aiko67/tx_api
cd tx-api
```

---

### 2. Install Project Tools

In your terminal or command prompt, run:

```bash
bundle install
```

This installs the Ruby tools the project needs.

---

### 3. Start the Server

In your terminal, run:

```bash
bin/dev
```

If that doesn’t work, try:

```bash
rails server
```

You should see something like:

```
Listening on http://localhost:3000
```

---

### 4. Open the App

Open your web browser and go to:

```
http://localhost:3000
```

You will see a table of transactions and a button to add new ones.

---

## 🟢 How to Add a New Transaction

1. Click the **"Add Transaction"** button.
2. Fill out the form:
   - Date
   - Account Number (12 digits only)
   - Account Holder Name
   - Amount
3. Click **Save**.
4. The transaction will appear in the table, with a randomly chosen status.

---

## 🔁 What Happens in the Background

- When you open the app, it reads from `transactions.csv`.
- When you add a new transaction, it saves it to that same file.
- The app displays **status colors**:
  - 🟩 Green = Settled
  - 🟨 Yellow = Pending  
  - 🟥 Red = Failed

---

## 💡 Notes for New Users

- No database is needed — everything is saved in a CSV file.
- No programming experience is required to use the app.
- If you ever get stuck, try closing and reopening the terminal, then restart the app.
