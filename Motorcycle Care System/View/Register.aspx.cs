using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Motorcycle_Care_System.View
{
    public partial class Register : System.Web.UI.Page
    {
        Models.Function Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            
          /*  if(RoleTb.SelectedValue == "Mechanic")
            {
                try
                {
                    if (registerUsername.Value == "" || registerPassword.Value == "" && registerRepeatPassword.Value == registerPassword.Value || registerAddress.Value == "" || registerContact.Value == "")
                    {
                        lblreg.InnerText = "Missing Field";
                    }
                    else
                    {
                        string mech = registerUsername.Value;
                        string pass = registerPassword.Value;
                        string address = registerAddress.Value;
                        string contact = registerContact.Value;
                        //string specialty = SpecialtyTb.Value;
                        string Query = "insert into MechanicDb values('{0}','{1}','{2}','{3}')";
                        Query = string.Format(Query, mech, pass, address, contact);
                        Con.SetData(Query);
                        Response.Redirect("Success.aspx");

                    }
                }
                catch (Exception Er)
                {
                    lblreg.InnerText = Er.Message;
                } 
            }*/
        if(RoleTb.SelectedValue == "Rider")
            {
                try
                {
                    if (registerUsername.Value == "" || registerPassword.Value == "" && registerRepeatPassword.Value == registerPassword.Value || registerAddress.Value == "" || registerContact.Value == "")
                    {
                        lblreg.InnerText = "Missing Field";
                    }
                    else
                    {
                        string rider = registerUsername.Value;
                        string pass = registerPassword.Value;
                        string address = registerAddress.Value;
                        string contact = registerContact.Value;
                        string Query = "insert into RiderDb values('{0}','{1}','{2}','{3}')";
                        Query = string.Format(Query, rider, pass, address, contact);
                        Con.SetData(Query);
                        Response.Redirect("Success.aspx");
                    }
                }
                catch (Exception Er)
                {
                    lblreg.InnerText = Er.Message;
                }
            }
            else
            {
                try
                {
                    if (registerUsername.Value == "" || registerPassword.Value == "" && registerRepeatPassword.Value == "" || registerAddress.Value == "" || registerContact.Value == "")
                    {
                        lblreg.InnerText = "Missing Field";
                    }
                    else if(registerPassword.Value != registerRepeatPassword.Value)
                    {
                        lblreg.InnerText = "Password doesn't match";
                    }
                    else
                    {
                        
                        string user = registerUsername.Value;
                        string pass = registerPassword.Value;
                        string address = registerAddress.Value;
                        string contact = registerContact.Value;
                        string Query = "insert into AdminDb values('{0}','{1}','{2}','{3}')";
                        Query = string.Format(Query, user, pass, address, contact);
                        Con.SetData(Query);
                        Response.Redirect("Success.aspx");
                    }
                }
                catch (Exception Er)
                {
                    lblreg.InnerText = Er.Message;
                }
            }
        }
    }
}