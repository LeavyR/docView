using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace docView
{
    public partial class _Default : System.Web.UI.Page
    {
        public string UserAddress = "测试文档";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bindVideoShow();
                //弹出层
                ClientScript.RegisterStartupScript(this.GetType(), "message", "<script>$('#myModal').modal('show');</script>");

            }
        }
        protected void bindVideoShow()
        {
            try
            {
                string UserAddress1 = @"doc/";
                UserAddress = UserAddress1 + "报警操作监控系统修改20170116.swf";
            }
            catch
            {
                Response.Redirect("Error.aspx");
            }

        }
       
    }
}