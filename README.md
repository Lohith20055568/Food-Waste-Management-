# 🍛 Food Waste Management System

A robust, modular Django-based web application built to automate and streamline food donation and request processes, enabling NGOs and food banks to manage food waste more efficiently and sustainably.

---

## 📌 Table of Contents

- [📖 Project Overview](#project-overview)
- [🎯 Objective](#objective)
- [💡 Functionalities](#functionalities)
- [🔭 Scope](#scope)
- [📊 Reports](#reports)
- [📦 Modules](#modules)
- [✨ Features](#features)
- [🛠️ Tech Stack](#tech-stack)
- [⚙️ Installation Instructions](#installation-instructions)
- [🧪 Testing Strategy](#testing-strategy)
- [🖼️ Screenshots](#screenshots)
- [🔮 Future Enhancements](#future-enhancements)
- [📚 References](#references)
- [📄 License](#license)
- [✉️ Contact](#contact)

---

## 📖 Project Overview

The **Food Waste Management System** is developed to replace manual processes in food donation and request tracking. It ensures secure, accurate, and efficient management of food inventory, donor and recipient records, request tracking, and more. Built on Django and MySQL, it serves as a reliable and scalable tool for food banks and social organizations.

---

## 🎯 Objective

- Centralize food donation and request data.
- Automate redundant administrative tasks.
- Minimize data errors through validation.
- Generate reports and monitor inventory real-time.
- Enhance accessibility and staff productivity.

---

## 💡 Functionalities

- Role-based login (Admin, Donor, Recipient)
- Add/edit food donations and requests
- Manage donors and customer records
- Export reports to PDF, Excel, CSV
- View and filter historical donation/request data
- Image attachments and visual food tracking
- Status tracking and updates on requests/donations

---

## 🔭 Scope

- Automation of donation tracking and food inventory
- Streamlined reporting and manifest generation
- Improved decision-making with accessible data
- Expandable for future NGO/enterprise use
- Designed for minimal hardware resources

---

## 📊 Reports

| Report Type      | Available Formats         |
|------------------|---------------------------|
| Food Donations   | PDF, Excel, CSV           |
| Food Requests    | PDF                       |
| Donors           | Excel, CSV                |
| Customers        | PDF, CSV                  |
| Food Items/Types | PDF, Excel, CSV           |

---

## 📦 Modules

- **Customer Module**: Manage customer info and profiles.
- **Donor Module**: Track donations and donor activity.
- **Food Module**: Define and track food types/items.
- **Request Module**: Add, view, update food requests.
- **Donation Module**: Manage incoming food donations.
- **Reports Module**: Generate and export data reports.
- **Authentication Module**: Secure login and role control.

---

## ✨ Features

- 🧾 Error-free and validated input forms
- 🔐 Secure login and access control
- 📂 Attachments and comments on records
- 📊 Export-ready reports and visual filters
- ⚙️ MVC architecture using Django
- ⚡ Fast data retrieval, filtering, and querying
- 🔄 Real-time status indicators and updates
- 🧱 Modular design for easy future enhancements

---

## 🛠️ Tech Stack

| Layer      | Technology       |
|------------|------------------|
| Frontend   | HTML, CSS, JS    |
| Backend    | Python (Django)  |
| Database   | MySQL            |
| ORM        | Django ORM       |
| Server     | Django Dev Server / WSGI |
| Platform   | Windows / Linux  |

---

## ⚙️ Installation Instructions

### Prerequisites

- Python 3.x
- MySQL
- pip
- Git

### Setup Guide

```bash
# Clone repository
git clone https://github.com/yourusername/food-waste-management-system.git
cd food-waste-management-system

# Virtual environment setup
python -m venv venv
source venv/bin/activate   # Windows: venv\Scripts\activate

# Install requirements
pip install -r requirements.txt

# Configure your MySQL DB and update settings.py
# Create database 'food_waste_db'

# Migrate and run
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver
```

---

## 🧪 Testing Strategy

- **Unit Testing**: Verified functions and forms
- **Integration Testing**: Modules tested for compatibility
- **Validation Testing**: Cross-matched with specifications
- **System Testing**: Tested on local server & browsers
- **Alpha Testing**: Internal team feedback and corrections

---

## 🖼️ Screenshots
![HOME_F](https://github.com/user-attachments/assets/0afd4386-af63-48df-be00-7f25136361c8)
- Home Page
-  ![ABout_F](https://github.com/user-attachments/assets/f1981dfc-96cd-4ba0-8873-4cfabad82d30)
-  About Page
  ![Contact_F](https://github.com/user-attachments/assets/2b7d8627-c78f-4bf0-9720-88f6603cbf78)
- Contact Page
![Login_F](https://github.com/user-attachments/assets/9f736414-ad11-4714-a49b-5157d0b7192c)

  Login Page
  ![Register _F](https://github.com/user-attachments/assets/1adb1816-c613-4b9c-bdfd-d8f3b236af03)
- Customer Registeration
![image](https://github.com/user-attachments/assets/4c53af56-73b4-4720-8070-dba23fb2de42)
- Change Password
![image](https://github.com/user-attachments/assets/475c0cb7-7331-4abd-8dfa-052349a40f69)
- Add Food
![image](https://github.com/user-attachments/assets/3fd39d2e-7ef1-4fb0-8aea-7022a6bc59c9)
- Dash Board
![image](https://github.com/user-attachments/assets/0b3236e1-5b2d-4e29-8e84-b26a28032cdc)
- Food Request Details
![image](https://github.com/user-attachments/assets/d0d5b37d-6869-408c-92d1-a3a075754b4e)
Request Details
![image](https://github.com/user-attachments/assets/ce2b92e0-b7fc-47fe-9b77-42cd9f31402c)
- Food Donation Details
![image](https://github.com/user-attachments/assets/f19b2c75-f969-421f-9770-6cef0ccf6b90)
- Food Available
![image](https://github.com/user-attachments/assets/10fbb5b8-ef21-47ff-93c2-5c7b9bfee52d)
- Food Details

- 🏠 Home Page with banner and navigation
  
- 🧾 Food Donation / Request Forms
- 📊 Admin Dashboard
- 📋 Listings of Donations & Requests
- 🧑 User Login / Registration Interfaces



---

## 🔮 Future Enhancements

- 🌐 Cloud hosting (AWS/Azure)
- 🔔 Email/SMS notifications
- 📈 Analytics dashboard for trends
- 🔄 REST API support for mobile app
- 📤 Printer-friendly receipts
- ☁️ Auto-backups and data sync
- 🏷️ QR/Barcode integration

---

## 📚 References

- Django Official Documentation
- MySQL Developer Docs
- Stack Overflow & Django Forums
- Head First Python (O'Reilly)
- WAMP & XAMPP Tutorials (for server testing)

---

## 📄 License

This project is licensed under the [MIT License](./LICENSE).

---

## ✉️ Contact

**Project Author**: Lohith Badam 
**Email**: your.email@example.com  
**GitHub**: https://github.com/Lohith20055568/Food-Waste-Management-.git
