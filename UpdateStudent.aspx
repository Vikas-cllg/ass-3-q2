<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateStudent.aspx.cs" Inherits="UpdateStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label8" runat="server" Text="Roll No."></asp:Label>
<asp:TextBox ID="updateRollNo" runat="server"></asp:TextBox>

<!-- Fields for Update -->
        <br />
<asp:Label ID="Label5" runat="server">Email</asp:Label>
&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="updateEmail" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label6" runat="server">Mobile</asp:Label>
<asp:TextBox ID="updateMobile" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label7" runat="server">DOB</asp:Label>
<asp:Calendar ID="updateCalendar" runat="server"></asp:Calendar>
<br />
        <br />
<asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnSearch" runat="server" Text="Search Student" OnClick="btnSearch_Click" />

        <br />
        <br />
        Note: To search the data provide roll no only..<br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete Student Page" />
        <br />

    </div>
    </form>
</body>
</html>
