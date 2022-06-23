using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Motorcycle_Care_System.View.Admin
{
    public partial class Customer_Information : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            ShowRiderInfo();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        private void ShowRiderInfo()
        {
            string Query = "select * from RiderDb";
            riderList.DataSource = Con.GetData(Query);
            riderList.DataBind();
        }

        protected void saveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(UnameTb.Value == "" || PassTb.Value == "" || AddressTb.Value == "" || ContactTb.Value =="")
                {
                    Error.InnerText = "Missing Field";
                }
                else
                {
                    string rider = UnameTb.Value;
                    string pass = PassTb.Value;
                    string address = AddressTb.Value;
                    string contact = ContactTb.Value;
                    string Query = "insert into RiderDb values('{0}','{1}','{2}','{3}')";
                    Query = string.Format(Query, rider, pass, address, contact);
                    Con.SetData(Query);
                    ShowRiderInfo();
                    Error.InnerText = "Rider Added";
                }
            }
            catch (Exception Er)
            {
                Error.InnerText = Er.Message;
            }

        }
        int Key = 0;
        protected void riderList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            UnameTb.Value = riderList.SelectedRow.Cells[2].Text;
            PassTb.Value = riderList.SelectedRow.Cells[3].Text;
            AddressTb.Value = riderList.SelectedRow.Cells[4].Text;
            ContactTb.Value = riderList.SelectedRow.Cells[5].Text;
            if (UnameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(riderList.SelectedRow.Cells[1].Text);
            }

        
    }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (UnameTb.Value == "")
                {
                    Error.InnerText = "Select Value";
                }
                else
                {
                    
                    string Query = "Delete from RiderDb where riderId={0}";
                    Query = string.Format(Query, Convert.ToInt32(riderList.SelectedRow.Cells[1].Text));
                    Con.SetData(Query);
                    ShowRiderInfo();
                    Error.InnerText = "Rider deleted";
                }
            }
            catch (Exception Er)
            {
                Error.InnerText = Er.Message;
            }
        }

        protected void editBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (UnameTb.Value == "" || PassTb.Value == "" || AddressTb.Value == "" || ContactTb.Value == "")
                {
                    Error.InnerText = "Missing Field";
                }
                else
                {
                    string rider = UnameTb.Value;
                    string pass = PassTb.Value;
                    string address = AddressTb.Value;
                    string contact = ContactTb.Value;
                    string Query = "update RiderDb set Username='{0}', Password='{1}', Address='{2}', Contact='{3}' where riderId={4}";
                    Query = string.Format(Query, rider, pass, address, contact, Convert.ToInt32(riderList.SelectedRow.Cells[1].Text));
                    Con.SetData(Query);
                    ShowRiderInfo();
                    Error.InnerText = "Rider Edited";
                }
            }
            catch (Exception Er)
            {
                Error.InnerText = Er.Message;
            }
        }
    }
}