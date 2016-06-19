using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MailBox.Admin
{
    public partial class MailAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save(object sender, EventArgs e)
        {
            /*19.06.2016 Burda kaldım. Dışarıdan girileri decoding ve encoding işlemlerine sokacağız*/
            try
            {
                DBO DB = new DBO();
                Mail m = new Mail();
                int a = Convert.ToInt32(ddlCategory.SelectedItem.Value);
                m.Category = (Categories)a;
                m.Header = txtHeader.Value;
                m.Content = WebUtility.HtmlEncode(txtContent.Value);
                DB.MailAdd(m);
                lblSonuc.Text = "Kayıt başarıyla yapıldı";
            }
            catch (Exception)
            {
                lblSonuc.Text = "Kayıt yapılamadı";
            }
            finally
            {
                txtContent.Value = "";
                txtHeader.Value = "";
                ddlCategory.SelectedIndex = 0;
            }
        }
    }
}