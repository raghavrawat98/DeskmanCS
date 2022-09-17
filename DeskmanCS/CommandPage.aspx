<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommandPage.aspx.cs" Inherits="DeskmanCS.CommandPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DeskmanCS</title>
    <style type="text/css">
        #Text1 {
            width: 710px;
        }
        #CommandText {
            width: 1016px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is DeskmanCS</h3>
        <p>
        &nbsp;<asp:Label ID="CommandTextLabel" runat="server" Text="Your Command"></asp:Label>
            <asp:TextBox ID="CommandTextBox" runat="server" AutoPostBack="True" OnTextChanged="CommandTextBox_TextChanged" Width="1017px"></asp:TextBox>
        </p>
        <asp:Label ID="TestLabel" runat="server" Text="FalseTest"></asp:Label>
    </form>
   
    
   
</body>
</html>
