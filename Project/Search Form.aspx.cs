using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Search_Page : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnshow_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-PEN04DP\\ARSLAN;Initial Catalog=Stuudent_Data;Integrated Security=True");
            con.Open();
            
            SqlCommand cmd = new SqlCommand("select Name, CNIC from tblRegsiteration where Name = @Name and CNIC = @CNIC", con);

            cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = txtname.Text;
            cmd.Parameters.Add("@CNIC", SqlDbType.VarChar).Value = txtcnic.Text;
            
            cmd.ExecuteNonQuery();

            con.Close();

            Show_data();


        }
        public void Show_data()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-PEN04DP\\ARSLAN;Initial Catalog=Stuudent_Data;Integrated Security=True");
            
            SqlCommand cmd = new SqlCommand("select * from tblRegsiteration where Name = @Name and CNIC = @CNIC" , con);
            cmd.Parameters.AddWithValue("@Name", txtname.Text);
            cmd.Parameters.AddWithValue("@CNIC", txtcnic.Text);

            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
           
            if (sdr.HasRows)
            {
               
                datagridview.Visible = true;
                datagridview.DataSource = sdr;
                datagridview.DataBind();
                lblerrormsg.Visible = false;
            }
            else
            {
                lblerrormsg.Visible = true;
                datagridview.Visible = false;
                lblerrormsg.Text = "Data Not Found";
            }

            con.Close();


        }

    }
}