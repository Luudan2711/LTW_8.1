<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Email List Application</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <h1>Join our email list</h1>
    <p>Enter your information below:</p>
    
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">
        
        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${sessionScope.user.email}"><br>
        
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value="${sessionScope.user.firstName}"><br>
        
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${sessionScope.user.lastName}"><br>
        
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>
    
    <hr>
    <p><strong>Current Date:</strong> ${requestScope.currentDate}</p>
    <p><strong>Contact:</strong> ${initParam.custServEmail}</p>
    <p><strong>Total Users:</strong> ${empty sessionScope.users ? 0 : sessionScope.users.size()}</p>
</body>
</html>
