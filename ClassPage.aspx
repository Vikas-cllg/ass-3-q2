<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassPage.aspx.cs" Inherits="ClassPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        this is a classpage<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Course Id"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cours_id" DataValueField="cours_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student-managementConnectionString %>" SelectCommand="SELECT [cours_id] FROM [course]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Class Name"></asp:Label>
        <asp:TextBox ID="className" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="addClass" runat="server" OnClick="addClass_Click" Text="Add Class" />
        <br />
    
    </div>
    </form>
</body>
</html>
