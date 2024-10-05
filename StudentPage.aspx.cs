using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class StudentPage : System.Web.UI.Page
{
    string connctionStr = (@"Data Source=localhost\SQLEXPRESS;Initial Catalog=student-management;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addStudent_Click(object sender, EventArgs e)
    {
        string txtRollNo = rollNo.Text;
        string txtName = name.Text;
        string txtClass = DropDownList1.SelectedValue;
        string txtCourseName = DropDownList2.SelectedValue;
        string txtEmail = email.Text;
        string txtMobile = mobile.Text;
        string calendarDate = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
        SqlConnection objConnection = new SqlConnection(connctionStr);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = objConnection;
        cmd.CommandText = "insert into tbl_student(rollno,name,class,course,email,mobile,dob) values('" + txtRollNo+"','"+txtName+"','"+txtClass+"','"+txtCourseName+"','"+txtEmail+"','"+txtMobile+"','"+calendarDate+"')";

        objConnection.Open();


        SqlDataReader redder = cmd.ExecuteReader();
        Response.Write("<script>alert('Student added successfully..')</script>;");

        objConnection.Close();
        cmd.Dispose();
        objConnection.Dispose();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateStudent.aspx");
    }

    protected void btnFindByName_Click(object sender, EventArgs e)
    {
        string name = findName.Text;

        SqlConnection objConnection = new SqlConnection(connctionStr);
        SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_student WHERE name = @name", objConnection);
        cmd.Parameters.AddWithValue("@name", name);

        objConnection.Open();

        SqlDataReader reader = cmd.ExecuteReader();

        // Check if data exists
        if (reader.HasRows)
        {
            // Load data into a DataTable and bind to GridView
            DataTable dt = new DataTable();
            dt.Load(reader);

            gridViewStudents.DataSource = dt;
            gridViewStudents.DataBind();

            // Make the GridView visible
            gridViewStudents.Visible = true;
        }
        else
        {
            // Hide GridView and show an alert if no data is found
            gridViewStudents.Visible = false;
            Response.Write("<script>alert('No student found with that name');</script>");
        }

        objConnection.Close();
    }





    protected void gridViewStudents_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}