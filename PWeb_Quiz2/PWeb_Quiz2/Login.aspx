<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PWeb_Quiz2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>El-Tavi Studio Management</title>
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/login.css" rel="stylesheet" />
    <style>
       body {
        background-image: url('Images/Studio02.jpg');
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="alert login-text text-center">Tavi Studio Rental Management</h1>
        <form class="form-signin" runat="server">
            
            <label for="inputEmail" class="sr-only">User Name</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="User Name" runat="server"
                required autofocus />
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" runat="server" id="inputPassword" class="form-control" placeholder="Password"
                required />
            <asp:Button runat="server" CssClass="btn btn-lg button-login btn-block" 
                Text="Sign In" ID="btnLogin" OnClick="btnLogin_Click" />
        </form>

    </div>
</body>
</html>
