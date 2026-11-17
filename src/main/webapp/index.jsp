<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Event Management System</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f4f6f9;
        }

        header {
            background-color: #243b55;
            color: white;
            text-align: center;
            padding: 25px;
        }

        nav {
            background-color: #141e30;
            padding: 15px;
            text-align: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 20px;
            font-weight: bold;
        }

        .container {
            width: 85%;
            margin: auto;
            padding: 20px;
        }

        .event {
            background: white;
            padding: 20px;
            margin: 15px 0;
            border-radius: 8px;
            box-shadow: 0 2px 6px #ccc;
        }

        .event h3 {
            color: #243b55;
        }

        .register {
            background: white;
            padding: 25px;
            margin-top: 25px;
            border-radius: 8px;
        }

        input, select {
            width: 95%;
            padding: 10px;
            margin: 10px 0;
        }

        button {
            background-color: #243b55;
            color: white;
            padding: 12px 25px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #141e30;
        }

        footer {
            background-color: #141e30;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 30px;
        }
    </style>
</head>

<body>

<header>
    <h1>EVENT HUB</h1>
    <h2>Online Event Management System</h2>
    <p>Discover Events | Register Online | Book Your Tickets</p>
</header>
<nav>
    <a href="index.jsp">Home</a>
    <a href="#events">Upcoming Events</a>
    <a href="#register">Register</a>
    <a href="#contact">Contact</a>
</nav>

<div class="container">

    <h2>Welcome to Event Hub!</h2>
    <p>
        Event Hub is an online event management platform where
        users can explore upcoming events, register for events,
        and book tickets easily.
    </p>

    <section id="events">
        <h2>Upcoming Events</h2>

        <div class="event">
            <h3>1. Annual Technology Conference</h3>
            <p><b>Date:</b> 15 December 2026</p>
            <p><b>Venue:</b> Hyderabad Convention Center</p>
            <p><b>Ticket Price:</b> Rs. 1500</p>
        </div>

        <div class="event">
            <h3>2. Music Festival 2026</h3>
            <p><b>Date:</b> 20 December 2026</p>
            <p><b>Venue:</b> HITEX Exhibition Center, Hyderabad</p>
            <p><b>Ticket Price:</b> Rs. 1000</p>
        </div>

        <div class="event">
            <h3>3. Entrepreneurship Workshop</h3>
            <p><b>Date:</b> 25 December 2026</p>
            <p><b>Venue:</b> Hyderabad Business Center</p>
            <p><b>Ticket Price:</b> Rs. 500</p>
        </div>
    </section>

    <section id="register" class="register">

        <h2>Event Registration</h2>

        <form action="RegisterServlet" method="post">

            <label>Customer Name:</label>
            <input type="text" name="customerName"
                   placeholder="Enter your name" required>

            <label>Email Address:</label>
            <input type="email" name="email"
                   placeholder="Enter your email" required>

            <label>Phone Number:</label>
            <input type="tel" name="phone"
                   placeholder="Enter your phone number" required>

            <label>Select Event:</label>
            <select name="eventName" required>
                <option value="">-- Select Event --</option>
                <option value="Technology Conference">
                    Technology Conference
                </option>
                <option value="Music Festival">
                    Music Festival
                </option>
                <option value="Entrepreneurship Workshop">
                    Entrepreneurship Workshop
                </option>
            </select>

            <label>Number of Tickets:</label>
            <input type="number" name="tickets"
                   min="1" max="10" required>

            <button type="submit">Register Now</button>

        </form>

    </section>

    <section id="contact">
        <h2>Contact Us</h2>
        <p>Email: support@eventhub.com</p>
        <p>Phone: 9876543210</p>
        <p>Location: Hyderabad, Telangana</p>
    </section>

</div>

<footer>
    <p>&copy; 2026 Event Hub - Online Event Management System</p>
    <p>All Rights Reserved</p>
</footer>

</body>
</html>