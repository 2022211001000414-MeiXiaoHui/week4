<%--
  Created by IntelliJ IDEA.
  User: 梅晓辉
  Date: 2024/3/10
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Page</title>
    <!-- Include JQuery -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <script>
        // Function to validate the form using JQuery
        $(document).ready(function() {
            $("#registrationForm").submit(function() {
                var username = $("#username").val();
                var password = $("#password").val();
                var email = $("#email").val();
                var birthdate = $("#birthdate").val();

                // Validate username
                if (username === "") {
                    alert("Username is required");
                    return false;
                }

                // Validate password length
                if (password.length < 8) {
                    alert("Password must be at least 8 characters");
                    return false;
                }

                // Validate email using a simple pattern
                var emailPattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
                if (!emailPattern.test(email)) {
                    alert("Invalid email address");
                    return false;
                }

                // Validate birthdate format
                var birthdatePattern = /^\d{4}-\d{2}-\d{2}$/;
                if (!birthdatePattern.test(birthdate)) {
                    alert("Invalid birthdate format. Please use yyyy-mm-dd");
                    return false;
                }

                // If all validations pass, the form will be submitted
                return true;
            });
        });
    </script>
</head>
<body>
<h2>New User Registration!</h2>
<form id="registrationForm"  method="post" action="/register">
    <!-- Username -->
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" placeholder="Username" required><br>

    <!-- Password -->
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" placeholder="password" required><br>

    <!-- Email -->
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" placeholder="Email" required><br>
    <!--Gender-->
        <label>Gender:</label>
        <input type="radio" id="genderMale" name="gender" value="Male" required>
        <label for="genderMale">Male</label>

        <input type="radio" id="genderFemale" name="gender" value="Female" required>
        <label for="genderFemale">Female</label><br>

    <!-- Birthdate -->
    <label for="birthdate">Birthdate:</label>
    <input type="text" id="birthdate" name="birthdate" placeholder="Date of Birth(yyyy-mm-dd)" required ><br>

    <!-- Submit button -->
    <input type="submit" value="Register" style="background-color: orange; color: white;width: 120px;height: 30px;margin-left: 50px;margin-top: 10px">
</form>
</body>
</html>
