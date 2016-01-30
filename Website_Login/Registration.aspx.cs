using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

            conn.Open();

            bool exists = false;

            // create a command to check if the username exists
            using (SqlCommand cmd = new SqlCommand("select count(*) from [User_Data] where UserName = @UserName", conn))
            {
                cmd.Parameters.AddWithValue("UserName", TextBoxUN.Text);
                exists = (int)cmd.ExecuteScalar() > 0;
            }

            // if exists, show a message error
            if (exists)
                Response.Write("User Already Exists..");
            

            conn.Close();
            
            
            
            
           /* conn.Open();

            string checkuser = "select count(*) from [User_Data] where UserName='"+TextBoxUN.Text+"'";
            SqlCommand con = new SqlCommand(checkuser,conn);
            
            int temp = Convert.ToInt32(con.ExecuteScalar().ToString());
            Response.Write(temp);
            conn.Close();
            if (temp == 1)
            {
                Response.Write("User Already Exists..");
            }*/
            
        }
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            Guid newGUID = Guid.NewGuid();//creates 32 bit GUID

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into User_Data (ID,UserName, Email,Password,Area) values (@ID,@Uname ,@email ,@pass ,@area)";
            SqlCommand con = new SqlCommand(insertQuery, conn);

            con.Parameters.AddWithValue("@ID", newGUID.ToString());
            con.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            con.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            con.Parameters.AddWithValue("@pass", TextBoxPass.Text);
            con.Parameters.AddWithValue("@area", DropDownListArea.SelectedItem.ToString());
           
            con.ExecuteNonQuery();
            Response.Redirect("Admin.aspx");

            Response.Write("Registration Successful..!!");
            conn.Close();
        }
        catch(Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}