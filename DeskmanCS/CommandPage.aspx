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
        <asp:Label ID="TestLabel" runat="server" Text="FalseTest" Visible="False"></asp:Label>
        <asp:GridView ID="PV_Table" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            <Columns>

                  <asp:BoundField DataField="Col1" HeaderText="Param" />
               
    <asp:TemplateField HeaderText="Value"> <%-- you have not opened it in your markup --%>
       
        <ItemTemplate >
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </ItemTemplate>
    </asp:TemplateField>                      
    </Columns>
        </asp:GridView>
    </form>
   
    
   
</body>
</html>
