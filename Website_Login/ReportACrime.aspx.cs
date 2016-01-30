using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (Session["New"] != null)
        {
            Response.Write("Welcome "+(Session["New"].ToString()));
        
        }
        else
            Response.Redirect("Login.aspx");
    }
    
   protected void Calendar_SelectionChanged(object sender, EventArgs e)
    {

    }
    protected void SubmitReport_Click1(object sender, EventArgs e)
    {
        
        try
        
        {           

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();

            
           
            string insertQuery = "insert into Report_Table (UserName,Address,ContactNo,Victim_Name,Location,Type_c,Date_c,Gender_c,Agegroup,Name_c) values (@Uname ,@Add ,@Contact ,@VName ,@Loc ,@Type, @Date ,@Gender ,@Age ,@NameC)";
            SqlCommand con = new SqlCommand(insertQuery, conn);


            con.Parameters.AddWithValue("@Uname", TextBoxName.Text);
            con.Parameters.AddWithValue("@Add", TextBoxAddress.Text);
            con.Parameters.AddWithValue("@Contact", TextBoxCon.Text);
            con.Parameters.AddWithValue("@VName", TextBox4.Text);
            con.Parameters.AddWithValue("@Loc", Location.SelectedItem.ToString());
            con.Parameters.AddWithValue("@Type", DropDownList2.SelectedItem.ToString());
            con.Parameters.AddWithValue("@Date", Calendar.SelectedDate.ToShortDateString());
            con.Parameters.AddWithValue("@Gender", CGender.SelectedItem.ToString());
            con.Parameters.AddWithValue("@Age", AgeGroup.SelectedItem.ToString());
            con.Parameters.AddWithValue("@NameC", TextBox6.Text);

            con.ExecuteNonQuery();
            Response.Redirect("UserReports.aspx");

            Response.Write("The report has been lodged successfully!");
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
   protected void Button1_Click1(object sender, EventArgs e)
    {

    }
   protected void BUpload_Click(object sender, EventArgs e)
   {
       if (FileUpload1.HasFile)
       {
           SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
           string str = FileUpload1.FileName;
           FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//EvidenceUploads//" + str);
           string path = "~//EvidenceUploads//" + str.ToString();
           connn.Open();
           SqlCommand con = new SqlCommand("insert into EvidenceUploads values('" + TextBoxName.Text + "','" + path + "')", connn);
           con.ExecuteNonQuery();
           connn.Close();
           Label5.Text = "Image Uploaded Successfully";
       }
       else
       {
           Label5.Text = "Please Upload your image";
       }
   }
  /* protected void BLogout_Click(object sender, EventArgs e)
   {
       Session["New"]= null;
       Response.Redirect("Login.aspx");
   }*/
}