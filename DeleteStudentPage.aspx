<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteStudentPage.aspx.cs" Inherits="DeleteStudentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label9" runat="server" Text="Roll No."></asp:Label>
<asp:TextBox ID="deleteRollNo" runat="server"></asp:TextBox>
<br />
<asp:Label ID="Label10" runat="server" Text="Course"></asp:Label>
<asp:DropDownList ID="deleteCourseDropdown" runat="server" DataSourceID="SqlDataSource1" DataTextField="course_name" DataValueField="course_name"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student-managementConnectionString %>" SelectCommand="SELECT [course_name] FROM [course]"></asp:SqlDataSource>
        <br />
        <br />
<asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />

    </div>
    </form>
</body>
</html>
