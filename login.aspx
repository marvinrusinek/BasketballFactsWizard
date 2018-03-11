<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
    <form id="form1" runat="server">
    <h1 align="center">Quiz: Do you know your basketball facts?</h1>
    <p>The NBA season is underway. How much do you know about basketball and some of the legends of the game?  Become a new user and take the quiz.</p>
    <div style="float:left;">
    <img alt="Carmelo Anthony of the New York Knicks" src="images/knicks_melo.jpg" height="350" width="250" /></div>
    <div id="centerLogin">
        <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" 
            BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
            DestinationPageUrl="~/wizard.aspx" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#333333"
            CreateUserText="Create New User" CreateUserUrl="createuser.aspx"
            PasswordRecoveryText="Forgot Password?" PasswordRecoveryUrl="forgotpassword.aspx"
            ToolTip="Log in with your username and password">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:Login>
    </div>
    </form>
</body>
</html>