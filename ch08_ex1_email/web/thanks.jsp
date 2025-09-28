<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Thank You</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <h1>Thanks for joining our email list</h1>
    
    <p>Your information:</p>
    <p>Email: ${sessionScope.user.email}</p>
    <p>First Name: ${sessionScope.user.firstName}</p>
    <p>Last Name: ${sessionScope.user.lastName}</p>
    
    <hr>
    <p><strong>Current Date:</strong> ${requestScope.currentDate}</p>
    <p><strong>Contact us:</strong> ${initParam.custServEmail}</p>
    
    <p><strong>First two users:</strong></p>
    <p>User 1: ${empty sessionScope.users || sessionScope.users.size() < 1 ? 'None' : sessionScope.users[0].firstName.concat(' ').concat(sessionScope.users[0].lastName)}</p>
    <p>User 2: ${empty sessionScope.users || sessionScope.users.size() < 2 ? 'None' : sessionScope.users[1].firstName.concat(' ').concat(sessionScope.users[1].lastName)}</p>
    
    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>
</body>
</html>
