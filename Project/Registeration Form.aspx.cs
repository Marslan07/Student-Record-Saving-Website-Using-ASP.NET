using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string gender;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-PEN04DP\\ARSLAN;Initial Catalog=Stuudent_Data;Integrated Security=True");
           // string str= "insert into tblRegsiter values('" + txtname.Text + "','" + txtcnic.Text + "','" + Courselist.Text +"', '" + txtaddress.Text + "','" + gender + "', '" + txtcontact.Text + "', '" + txtemail.Text + "')";
            SqlCommand cmd = new SqlCommand(@"INSERT INTO[dbo].[tblRegsiteration]
           ([Name]
           ,[CNIC]
           ,[Course]
           ,[Address]
           ,[Gender]
           ,[Contact]
           ,[Email])
     VALUES
           ('" + txtname.Text + "', '" + txtcnic.Text + "', '" + Courselist.Text + "', '" + txtaddress.Text + "', '" + gender + "', '" + txtcontact.Text + "', '" + txtemail.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('User is registerd successfully')</script>");
            //Application.Clear();

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
             gender=  "Male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender =  "Female";
        }


    }
}