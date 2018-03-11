<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createuser.aspx.cs" Inherits="createuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create User</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
    <form id="form1" runat="server">
    <h1 align="center">Build your profile.</h1>
    <div style="text-align:center">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BorderWidth="1px" BorderColor="#FFDFAD" BorderStyle="Solid" BackColor="#FFFBD6" Font-Names="Verdana" LoginCreatedUser="true" OnCreatedUser="CreateUserWizard1_CreatedUser" DestinationPageUrl="~/wizard.aspx">
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Additional Information" StepType="Start">
                <table width="100%"><tr><td>
                Firstname: </td><td>
                <asp:TextBox ID="Firstname" runat="server"></asp:TextBox>
                </td></tr><tr><td>
                Lastname: </td><td>
                <asp:TextBox ID="Lastname" runat="server"></asp:TextBox>
                </td></tr><tr><td>
                Age: </td><td>
                <asp:TextBox ID="Age" runat="server"></asp:TextBox>
                </td></tr></table>
            </asp:WizardStep>
            <asp:CreateUserWizardStep runat="server" Title="Sign Up for Your New Account">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server" Title="Complete"></asp:CompleteWizardStep>
        </WizardSteps>
        <StepStyle BorderColor="#FFDFAD" Font-Names="Verdana" BackColor="#FFFBD6" BorderStyle="Solid" BorderWidth="1px" />
        <TitleTextStyle Font-Bold="true" BackColor="#990000" ForeColor="White" />
    </asp:CreateUserWizard>
    </div>
    </form>
</body>
</html>