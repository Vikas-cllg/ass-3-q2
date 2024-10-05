using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DeleteStudentPage : System.Web.UI.Page
{
    string connctionStr = (@"Data Source=localhost\SQLEXPRESS;Initial Catalog=student-management;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        // Delete student by rollno and course
        string rollNo = deleteRollNo.Text;
        string course = deleteCourseDropdown.SelectedValue;

        SqlConnection objConnection = new SqlConnection(connctionStr);
        SqlCommand cmd = new SqlCommand("DELETE FROM tbl_student WHERE rollno = @rollno AND course = @course", objConnection);
        cmd.Parameters.AddWithValue("@rollno", rollNo);
        cmd.Parameters.AddWithValue("@course", course);

        objConnection.Open();
        int rowsAffected = cmd.ExecuteNonQuery();

        if (rowsAffected > 0)
        {
            Response.Write("<script>alert('Student deleted successfully');</script>");
        }
        else
        {
            Response.Write("<script>alert('Student not found');</script>");
        }

        objConnection.Close();
    }

}