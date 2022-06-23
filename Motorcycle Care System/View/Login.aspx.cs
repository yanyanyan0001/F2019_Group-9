using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Motorcycle_Care_System.View
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
        }
        public static string Rname = "";
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            if (CustomerRadio.Checked)
            {
                string sql = "select Username, password from RiderDb where Username = '{0}' and password = '{1}' ";
                sql = string.Format(sql, UserNameTb.Value, UserPassTb.Value);
                DataTable dt = Con.GetData(sql);
                if(dt.Rows.Count == 0)
                {
                    lblmsg.InnerText = "Invalid User";
                }
                else
                {
                    Rname = dt.Rows[0][0].ToString();
                    Response.Redirect("Customer/Garage.aspx");
                }
            }
            if (MechanicRadio.Checked)
            {
                string sql = "select Username, password from MechanicDb where Username = '{0}' and Password = '{1}' ";
                sql = string.Format(sql, UserNameTb.Value, UserPassTb.Value);
                DataTable dt = Con.GetData(sql);
                if (dt.Rows.Count == 0)
                {
                    lblmsg.InnerText = "Invalid User";
                }
                else
                {
                    Rname = dt.Rows[0][0].ToString();
                    Response.Redirect("Mechanic/Garage.aspx");
                }
            }
            if (AdminRadio.Checked)
            {
                string sql = "select username, password from AdminDb where username = '{0}' and password = '{1}' ";
                sql = string.Format(sql, UserNameTb.Value, UserPassTb.Value);
                DataTable dt = Con.GetData(sql);
                if (dt.Rows.Count == 0)
                {
                    lblmsg.InnerText = "Invalid User";
                }
                else
                {
                    Rname = dt.Rows[0][0].ToString();
                    Response.Redirect("Admin/Home.aspx");
                }
            }
            else
            {
                lblmsg.InnerText = "Invalid User";
            }
        }
    }
}