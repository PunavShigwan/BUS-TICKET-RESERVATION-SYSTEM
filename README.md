<div align="center">

# 🚍 Bus Ticket BOOKING System

### A Complete Java Desktop Application for Automated Bus Ticket Booking

[![Java](https://img.shields.io/badge/Java-8%2B-orange?style=for-the-badge&logo=java)](https://www.oracle.com/java/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?style=for-the-badge&logo=mysql)](https://www.mysql.com/)
[![Swing](https://img.shields.io/badge/Java%20Swing-GUI-green?style=for-the-badge)](https://docs.oracle.com/javase/tutorial/uiswing/)
[![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](LICENSE)

**Built with Object-Oriented Programming principles and an interactive Swing GUI**

[Features](#-features) • [Installation](#-installation) • [Usage](#-usage) • [Architecture](#-architecture) • [Screenshots](#-screenshots)

---

</div>

## 📋 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Technology Stack](#-technology-stack)
- [Prerequisites](#-prerequisites)
- [Installation](#-installation)
- [Configuration](#-configuration)
- [Usage](#-usage)
- [Project Structure](#-project-structure)
- [Database Schema](#-database-schema)
- [Architecture](#-architecture)
- [Screenshots](#-screenshots)
- [Troubleshooting](#-troubleshooting)
- [Future Enhancements](#-future-enhancements)
- [Contributing](#-contributing)
- [Author](#-author)
- [License](#-license)

---

## 🎯 Overview

The **Bus Ticket Reservation System** is a comprehensive desktop application designed to streamline bus ticket booking operations. It provides a user-friendly interface for passengers to book, view, and cancel tickets, while offering administrators powerful tools to manage buses, routes, and reservations.

### Key Highlights

- ✅ **Dual User System**: Separate interfaces for passengers and administrators
- ✅ **Real-time Seat Selection**: Visual seat map with color-coded availability
- ✅ **Secure Authentication**: Captcha-protected login system
- ✅ **Session Management**: Automatic session persistence
- ✅ **Database Integration**: Robust MySQL backend for data persistence

---

## ✨ Features

### 👤 User Features

| Feature | Description |
|---------|-------------|
| 🔐 **User Registration & Login** | Secure account creation with email validation |
| 🎫 **Book Tickets** | Select bus, date, and seats with visual seat map |
| 📋 **View Reservations** | Check all your bookings in one place |
| ❌ **Cancel Reservations** | Cancel bookings with reservation ID |
| 🚌 **Browse Buses** | View available buses with routes and schedules |
| 🎨 **Color-Coded Seats** | 🟢 Available • 🟡 Selected • 🔴 Booked |

### 👨‍💼 Admin Features

| Feature | Description |
|---------|-------------|
| 🚌 **Bus Management** | Add, remove, and manage bus fleets |
| 🗺️ **Route Management** | Create and update bus routes |
| 💰 **Fare Management** | Update ticket prices for routes |
| 📊 **View All Reservations** | Monitor all bookings across the system |
| 🔒 **Admin Dashboard** | Centralized control panel |

### 🎨 UI Highlights

- **Intuitive Interface**: Clean and modern Swing-based GUI
- **Visual Seat Selection**: Interactive grid showing seat availability
- **Real-time Updates**: Instant feedback on seat selection
- **Responsive Design**: Optimized for different screen sizes

---

## 🧩 Technology Stack

| Component | Technology |
|-----------|-----------|
| **Language** | Java (JDK 8+) |
| **GUI Framework** | Java Swing |
| **Database** | MySQL 8.0+ |
| **Database Driver** | MySQL Connector/J 9.4.0 |
| **Development Tools** | VS Code / IntelliJ IDEA / NetBeans |
| **Build Tool** | Manual compilation / Batch scripts |

---

## 📦 Prerequisites

Before you begin, ensure you have the following installed:

- ☕ **Java Development Kit (JDK) 8 or higher**
  - Download from [Oracle](https://www.oracle.com/java/technologies/downloads/) or [OpenJDK](https://openjdk.org/)
  
- 🗄️ **XAMPP** (for MySQL database)
  - Download from [Apache Friends](https://www.apachefriends.org/)
  - Includes MySQL, phpMyAdmin, and Apache server
  
- 💻 **Java IDE** (Optional but recommended)
  - IntelliJ IDEA, Eclipse, NetBeans, or VS Code with Java extensions

---

## 🚀 Installation

### Step 1: Clone the Repository

```bash
git clone https://github.com/PunavShigwan/BUS-TICKET-Booking-SYSTEM.git
cd BUS-TICKET-Booking-SYSTEM
```

### Step 2: Start MySQL Server

1. **Launch XAMPP Control Panel**
2. **Start MySQL Service**
   - Click the `Start` button next to MySQL
   - Wait until the status shows "Running"
3. **Access phpMyAdmin**
   - Open your browser and navigate to: `http://localhost/phpmyadmin`

### Step 3: Create and Import Database

1. **Create Database**
   ```sql
   CREATE DATABASE bus_reservation;
   ```

2. **Import Database Schema**
   - In phpMyAdmin, select the `bus_reservation` database
   - Go to the `Import` tab
   - Choose the file: `BUS_TICKET/jdbc_project/setup.sql`
   - Click `Go` to import

   **OR** execute the SQL file directly:
   ```bash
   mysql -u root -p bus_reservation < BUS_TICKET/jdbc_project/setup.sql
   ```

### Step 4: Verify Database Connection

The application uses the following default connection settings:

- **Host**: `localhost`
- **Port**: `3309` (or `3306` if using default MySQL port)
- **Database**: `bus2` (or `bus_reservation` based on your setup)
- **Username**: `root`
- **Password**: `` (empty by default)

---

## ⚙️ Configuration

### Update Database Connection

If your MySQL configuration differs, edit `BusReservationApp.java`:

```java
// Line 36 in BusReservationApp.java
private static final String URL = "jdbc:mysql://localhost:3309/bus2?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
private static final String USER = "root";
private static final String PASSWORD = "";  // Update if you have a password
```

**Common Port Configurations:**
- XAMPP default: `3306`
- Custom port: `3309` (as in the code)
- Update the port number in the URL accordingly

---

## 🎮 Usage

### Quick Start (Windows)

1. **Double-click** `run.bat` in the `jdbc_project` folder
2. The application will compile and launch automatically

### Manual Compilation & Execution

#### Compile the Application

```bash
cd BUS_TICKET/jdbc_project
javac -cp "lib/mysql-connector-j-9.4.0.jar;." src/BusReservationApp.java
```

#### Run the Application

```bash
java -cp "lib/mysql-connector-j-9.4.0.jar;src" BusReservationApp
```

### Login Credentials

#### Admin Login
- **Username**: `admin`
- **Password**: `admin`
- **Captcha**: Enter the displayed captcha code

#### User Registration
- Create a new account with your email and password
- Complete the captcha verification
- Start booking tickets!

---

## 📁 Project Structure

```
BUS-TICKET-RESERVATION-SYSTEM/
│
├── README.md                          # Project documentation
│
└── BUS_TICKET/
    ├── jdbc_project/
    │   ├── src/
    │   │   └── BusReservationApp.java # Main application file
    │   │
    │   ├── lib/
    │   │   └── mysql-connector-j-9.4.0.jar  # MySQL JDBC driver
    │   │
    │   ├── setup.sql                  # Database schema and sample data
    │   └── run.bat                    # Windows batch script to run the app
    │
    └── [Image Files]                  # Screenshots and UI assets
```

---

## 🗄️ Database Schema

### Tables Overview

| Table | Purpose |
|-------|---------|
| **Users** | Stores user accounts (admin and passengers) |
| **Routes** | Manages bus routes with source, destination, and fare |
| **Buses** | Stores bus information (number, type, seats, route) |
| **Passengers** | Passenger details (name, age, contact) |
| **Reservations** | Booking records linking passengers to buses and seats |

### Entity Relationship

```
Users ──┐
        │
        ├──> Reservations ──> Passengers
        │         │
        │         └──> Buses ──> Routes
        │
        └──> (Admin manages Buses & Routes)
```

---

## 🏗️ Architecture

### Object-Oriented Design

The application follows core OOP principles:

| OOP Concept | Implementation |
|------------|----------------|
| **Encapsulation** | Model classes encapsulate data (Bus, User, Reservation) |
| **Abstraction** | Database operations abstracted behind methods |
| **Polymorphism** | Overloaded methods for different booking scenarios |
| **Inheritance** | UI components reuse Swing base classes |

### Key Components

- **GUI Layer**: Java Swing components for user interaction
- **Business Logic**: Reservation management, seat allocation
- **Data Access Layer**: JDBC for MySQL database operations
- **Session Management**: File-based session persistence

---

## 📸 Screenshots

### Login Screen
![Login Interface](BUS_TICKET/LOGIN.jpeg)

### Bus Dashboard
![Bus List](BUS_TICKET/BUSES.jpeg)

### Seat Selection
![Seat Booking](BUS_TICKET/BOOK%20A%20SEAT.jpeg)

---

## 🔧 Troubleshooting

### Common Issues and Solutions

| Issue | Solution |
|-------|----------|
| **❌ Database Connection Failed** | Ensure MySQL is running in XAMPP. Check port number (3306/3309) in connection URL |
| **❌ Tables Missing** | Import `setup.sql` file in phpMyAdmin or execute it manually |
| **❌ Authentication Error** | For MySQL 8.0+, change authentication method: `ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';` |
| **❌ Port Error** | Update the port in `BusReservationApp.java` URL (default: 3306 or 3309) |
| **❌ App Freezes on Startup** | Check database connection settings. Ensure MySQL server is running |
| **❌ ClassNotFoundException** | Verify `mysql-connector-j-9.4.0.jar` is in the `lib` folder and included in classpath |

### Still Having Issues?

1. **Check MySQL Status**: Verify MySQL service is running in XAMPP
2. **Verify Database**: Ensure `bus_reservation` database exists
3. **Check Credentials**: Confirm username and password in code match your MySQL setup
4. **Review Logs**: Check console output for detailed error messages

---

## 🔮 Future Enhancements

### Planned Features

- [ ] 💳 **Payment Integration**: UPI, Credit/Debit card support
- [ ] 📱 **QR Code Tickets**: Generate and scan QR codes for tickets
- [ ] 🗺️ **GPS Tracking**: Real-time bus location tracking
- [ ] 📱 **Mobile App**: Android/iOS companion application
- [ ] 🔐 **Biometric Login**: Face recognition and fingerprint authentication
- [ ] 🎨 **Theme Support**: Dark mode and light mode themes
- [ ] 📧 **Email Notifications**: Send booking confirmations via email
- [ ] 📊 **Analytics Dashboard**: Admin analytics and reporting
- [ ] 🌐 **Web Version**: Browser-based booking system
- [ ] 🔔 **SMS Notifications**: Real-time booking updates via SMS

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/AmazingFeature`)
3. **Commit your changes** (`git commit -m 'Add some AmazingFeature'`)
4. **Push to the branch** (`git push origin feature/AmazingFeature`)
5. **Open a Pull Request**

### Contribution Guidelines

- Follow Java coding conventions
- Add comments for complex logic
- Test your changes thoroughly
- Update documentation as needed

---

## 👨‍💻 Author

<div align="center">

### **Punav Shigwan**

🎓 **Computer Science Student | Java Developer**

[![GitHub](https://img.shields.io/badge/GitHub-PunavShigwan-black?style=flat-square&logo=github)](https://github.com/PunavShigwan)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat-square&logo=linkedin)](https://linkedin.com/in/punavshigwan)

</div>

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## ⭐ Support

If this project helped you or you found it useful, please consider:

- ⭐ **Starring** this repository
- 🐛 **Reporting bugs** by opening an issue
- 💡 **Suggesting features** through pull requests
- 📢 **Sharing** with others who might benefit

---

<div align="center">

### Made with ❤️ using Java Swing and MySQL

**Happy Coding! 🚀**

[⬆ Back to Top](#-bus-ticket-reservation-system)

</div>
