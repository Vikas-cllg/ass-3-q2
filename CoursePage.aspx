<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CoursePage.aspx.cs" Inherits="CoursePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        this is a course page<br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Course Name"></asp:Label>
        <asp:TextBox ID="coursename" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="addCourse" runat="server" OnClick="addCourse_Click" Text="Add Course" />
    
    </div>
    </form>
</body>
</html>
