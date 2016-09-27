using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News24WebTweets
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            News24Tweets tweets = new News24Tweets();
            Repeater1.DataSource = tweets.ProcessRequest(Context);
            Repeater1.DataBind();
        }
    }
}