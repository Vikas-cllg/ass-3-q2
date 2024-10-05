using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UpdateStudent : System.Web.UI.Page
{
    string connctionStr = (@"Data Source=localhost\SQLEXPRESS;Initial Catalog=student-management;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        // Fetch student by RollNo
        string rollNo = updateRollNo.Text;
        SqlConnection objConnection = new SqlConnection(connctionStr);
        SqlCommand cmd = new SqlCommand("SELECT email, mobile, dob FROM tbl_student WHERE rollno = @rollno", objConnection);
        cmd.Parameters.AddWithValue("@rollno", rollNo);

        objConnection.Open();
        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            // Populate fields for update
            updateEmail.Text = reader["email"].ToString();
            updateMobile.Text = reader["mobile"].ToString();
            updateCalendar.SelectedDate = Convert.ToDateTime(reader["dob"]);
        }
        else
        {
            Response.Write("<script>alert('Student not found');</script>");
        }

        objConnection.Close();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        // Perform update for email, mobile, and dob
        string rollNo = updateRollNo.Text;
        string email = updateEmail.Text;
        string mobile = updateMobile.Text;
        string dob = updateCalendar.SelectedDate.ToString("yyyy-MM-dd");

        SqlConnection objConnection = new SqlConnection(connctionStr);
        SqlCommand cmd = new SqlCommand("UPDATE tbl_student SET email = @Email, mobile = @Mobile, dob = @Dob WHERE rollno = @RollNo", objConnection);

        cmd.Parameters.AddWithValue("@Email", email);
        cmd.Parameters.AddWithValue("@Mobile", mobile);
        cmd.Parameters.AddWithValue("@Dob", dob);
        cmd.Parameters.AddWithValue("@RollNo", rollNo);

        objConnection.Open();
        cmd.ExecuteNonQuery();

        Response.Write("<script>alert('Student updated successfully');</script>");

        objConnection.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteStudentPage.aspx");
    }
}