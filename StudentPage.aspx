<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentPage.aspx.cs" Inherits="StudentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700">
    
        this is a studemt page<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Roll No."></asp:Label>
        <asp:TextBox ID="rollNo" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="namssss" runat="server">Name</asp:Label>
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server">Class</asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="class_name" DataValueField="class_name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:student-managementConnectionString %>" SelectCommand="SELECT [class_name] FROM [class]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label4" runat="server">Course Name</asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="course_name" DataValueField="course_name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:student-managementConnectionString %>" SelectCommand="SELECT [course_name] FROM [course]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label5" runat="server">Email</asp:Label>
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server">Mobile</asp:Label>
        <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server">DOB</asp:Label>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <br />
        <br />
        <asp:Button ID="addStudent" runat="server" OnClick="addStudent_Click" Text="Add Student " />
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Student Page" />
        <br />
        <br />
        <br />
        find by name
        <br />

        <asp:Label ID="Label11" runat="server" Text="Name"></asp:Label>
<asp:TextBox ID="findName" runat="server"></asp:TextBox>
<br />
<asp:Button ID="btnFindByName" runat="server" Text="Find" OnClick="btnFindByName_Click" />

        
<br />

<asp:GridView ID="gridViewStudents" runat="server" AutoGenerateColumns="False" DataKeyNames="ernollno" Visible="False">
    <Columns>
        <asp:BoundField DataField="ernollno" HeaderText="ernollno" InsertVisible="False" ReadOnly="True" SortExpression="ernollno" />
        <asp:BoundField DataField="rollno" HeaderText="rollno" SortExpression="rollno" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
        <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
    </Columns>
</asp:GridView>

    
        &nbsp;&nbsp;&nbsp;
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:student-managementConnectionString %>" SelectCommand="SELECT * FROM [tbl_student]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
