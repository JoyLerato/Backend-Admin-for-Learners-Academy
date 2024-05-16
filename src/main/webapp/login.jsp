<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* Body styling */
        body {
            font-family: Arial, sans-serif;
            background-image: url('css/background.jpg');
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        /* Title styling */
        h1 {
            text-align: center;
            color: #333; /* Darker color */
            margin-top: 50px;
        }

        /* Form container styling */
        .container {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Label styling */
        label {
            display: block;
            margin-bottom: 10px;
            color: #333;
        }

        /* Input styling */
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 2px solid #ff69b4; /* Pink border */
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #d9534f; /* Darker pink on focus */
        }

        /* Button styling */
        button {
            width: 100%;
            padding: 15px;
            background-color: #ff69b4; /* Pink button color */
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #d9534f; /* Darker pink on hover */
        }

        /* Checkbox styling */
        input[type="checkbox"] {
            margin-right: 5px;
            vertical-align: middle;
        }

        /* Checkbox label styling */
        .checkbox-label {
            color: #333;
        }
    </style>
</head>
<body>
    <h1><strong>Administrator Login</strong></h1> <!-- Added <strong> tag for bold effect -->
    <div class="container">
        <form action="AdminControllerServlet" method="POST">
            <input type="hidden" name="command" value="LOGIN" />
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter Username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter Password" required>
            <button type="submit">Login</button>
            <br>
            <input type="checkbox" id="remember" name="remember" checked>
            <label for="remember" class="checkbox-label">Remember me</label>
        </form>
    </div>
</body>
</html>
