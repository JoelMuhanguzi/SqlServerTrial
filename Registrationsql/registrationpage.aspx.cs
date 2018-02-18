using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Registrationsql
{
    public partial class registrationpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string ConString = @"Data Source=JOEL\SQLEXPRESS;Initial Catalog=registrationform;Integrated Security=True";

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConString);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string regquery = "INSERT INTO regtable1(Id,Name,UserName) VALUES ('9','"+TxtName.Text+ "','"+TxtUserName.Text+"')";
                var CON = $"INSERT INTO regtable1(Name,UserName,Password,Gender,Age,Address) VALUES ('{TxtName.Text}','{TxtUserName.Text}')";
                SqlCommand regcmd = new SqlCommand(regquery, con);
                regcmd.ExecuteNonQuery();
                reportreg.InnerText = "Data Inserted Successfully";
            }
        }
    }
}