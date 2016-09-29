using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Team7
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void homeCalender_Click(object sender, ImageClickEventArgs e)
        {
            homeCalendar.Visible = true;
        }

        protected void homeReset_Click(object sender, EventArgs e)
        {

        }
    }
}