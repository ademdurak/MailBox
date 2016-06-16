using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace MailBox
{
    public partial class Default : System.Web.UI.Page
    {
        bool result;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            User u = new User();
            DBO Add = new DBO();
            try
            {
                u.Firstname = txtName.Text;
                u.Lastname = txtLastname.Text;
                u.Mail = txtMail.Text;
                u.Country = ddlCountry.SelectedItem.Text;
                u.Category = new List<int>();
                for (var i = 0; i < CheckCategory.Items.Count; i++)
                {
                    if (CheckCategory.Items[i].Selected && CheckCategory.Items[i].Value != null)
                    {
                        u.Category.Add(Convert.ToInt32(CheckCategory.Items[i].Value));
                    }
                }
                u.Type = Convert.ToInt32(RadioType.SelectedItem.Value);
                
                if (u.Category.Count >= 1)
                {
                    if (u.Category.Count >= 2)
                    {
                        if (u.Category.Count >= 3)
                        {
                            result = Add.Insert2(u);
                            return;
                        }
                        result = Add.Insert1(u);
                        return;
                    }
                    result = Add.Insert(u);
                    return;
                }
            }
            catch (Exception ex)
            {
                Response.Write("Ekleme başarılı: " + ex.Message.ToString());
            }
            finally
            {
                Add.Close();
                if (result == true)
                {
                    Response.Write("Ekleme başarılı");
                }
                else
                {
                    Response.Write("Ekleme başarısız");
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtMail.Text = "";
            txtLastname.Text = "";
            CheckCategory.Controls.Clear();
        }
    }
}