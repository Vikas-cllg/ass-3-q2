using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ClassPage : System.Web.UI.Page
{
    string connctionStr = (@"Data Source=localhost\SQLEXPRESS;Initial Catalog=student-management;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addClass_Click(object sender, EventArgs e)
    {
        string txtCourseId = DropDownList1.SelectedValue;
        string txtClassName = className.Text;
        SqlConnection objConnection = new SqlConnection(connctionStr);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = objConnection;
        cmd.CommandText = "insert into class(course_id,class_name) values('" + txtCourseId+ "','"+txtClassName+"')";

        objConnection.Open();


        SqlDataReader redder = cmd.ExecuteReader();
        Response.Write("<script>alert('Class added successfully..')</script>;");

        objConnection.Close();
        cmd.Dispose();
        objConnection.Dispose();
    }
}