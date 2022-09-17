using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeskmanCS
{
    public partial class CommandPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void CommandTextBox_TextChanged(object sender, EventArgs e)
        {
            string t = CommandTextBox.Text;
            TestLabel.Text = t;
        }
    }
}