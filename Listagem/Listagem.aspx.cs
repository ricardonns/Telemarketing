using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Telemarketing.Listagem
{
    public partial class Listagem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            _printButton.Attributes.Add("onClick", "CallPrint('divPrint')");

            var dt = new DataTable();
            dt.Columns.Add("BD");
            dt.Columns.Add("nRegistos");

            dt.Rows.Add(new object[] { "UMA QQ", "12345" });

            _info.DataSource = dt;
            _info.DataBind();

            var dt2 = new DataTable();
            dt2.Columns.Add("BD");
            dt2.Columns.Add("select");

            dt2.Rows.Add(new object[] { "UMA QQ", "false"});

            _bdSelection.DataSource = dt2;
            _bdSelection.DataBind();
        }
    }
}
