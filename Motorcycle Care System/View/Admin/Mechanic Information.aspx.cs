using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Motorcycle_Care_System.View.Admin
{
    public partial class Mechanic_Information : System.Web.UI.Page
    {
        Models.Function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Function();
            ShowMechanicInfo();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        private void ShowMechanicInfo()
        {
            string Query = "select * from MechanicDb";
            MechanicList.DataSource = Con.GetData(Query);
            MechanicList.DataBind();
        }

        int MechKey = 0;
        protected void saveBtn2_Click(object sender, EventArgs e)
        {
            try
            {
                if (MechanicUnameTb.Value == "" || MechanicPassTb.Value == "" || MechanicAddressTb.Value == "" || MechanicContactTb.Value == ""|| SpecialtyTb.Value =="")
                {
                    Error2.InnerText = "Missing Field";
                }
                else
                {
                    string mech = MechanicUnameTb.Value;
                    string pass = MechanicPassTb.Value;
                    string address = MechanicAddressTb.Value;
                    string contact = MechanicContactTb.Value;
                    string specialty = SpecialtyTb.Value;
                    string Query = "insert into MechanicDb values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, mech, pass, address, contact, specialty);
                    Con.SetData(Query);
                    ShowMechanicInfo();
                    Error2.InnerText = "Mechanic Added";
                }
            }
            catch (Exception Er2)
            {
                Error2.InnerText = Er2.Message;
            }
        }

        protected void MechanicList_SelectedIndexChanged(object sender, EventArgs e)
        {
            MechanicUnameTb.Value = MechanicList.SelectedRow.Cells[2].Text;
            MechanicPassTb.Value = MechanicList.SelectedRow.Cells[3].Text;
            MechanicAddressTb.Value = MechanicList.SelectedRow.Cells[4].Text;
            MechanicContactTb.Value = MechanicList.SelectedRow.Cells[5].Text;
            SpecialtyTb.Value = MechanicList.SelectedRow.Cells[6].Text;
            if (MechanicUnameTb.Value == "")
            {
                MechKey = 0;
            }
            else
            {
                MechKey = Convert.ToInt32(MechanicList.SelectedRow.Cells[1].Text);
            }
        }

        protected void editBtn2_Click(object sender, EventArgs e)
        {
            try
            {
                if (MechanicUnameTb.Value == "" || MechanicPassTb.Value == "" || MechanicAddressTb.Value == "" || MechanicContactTb.Value == "" || SpecialtyTb.Value =="")
                {
                    Error2.InnerText = "Missing Field";
                }
                else
                {
                    string mechanic = MechanicUnameTb.Value;
                    string pass = MechanicPassTb.Value;
                    string address = MechanicAddressTb.Value;
                    string contact = MechanicContactTb.Value;
                    string specialty = SpecialtyTb.Value;
                    string Query = "update MechanicDb set Username='{0}', Password='{1}', Address='{2}', Contact='{3}', Specialty='{4}' where mechanicId={5}";
                    Query = string.Format(Query, mechanic, pass, address, contact, specialty, Convert.ToInt32(MechanicList.SelectedRow.Cells[1].Text));
                    Con.SetData(Query);
                    ShowMechanicInfo();
                    Error2.InnerText = "Mechanic Edited";
                }
            }
            catch (Exception Er2)
            {
                Error2.InnerText = Er2.Message;
            }
        }

        protected void deleteBtn2_Click(object sender, EventArgs e)
        {
            try
            {
                if (MechanicUnameTb.Value == "")
                {
                    Error2.InnerText = "Select Value";
                }
                else
                {

                    string Query = "Delete from MechanicDb where mechanicId={0}";
                    Query = string.Format(Query, Convert.ToInt32(MechanicList.SelectedRow.Cells[1].Text));
                    Con.SetData(Query);
                    ShowMechanicInfo();
                    Error2.InnerText = "Mechanic deleted";
                }
            }
            catch (Exception Er2)
            {
                Error2.InnerText = Er2.Message;
            }
        }
    }
}