using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.Mail;

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["darshan"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DropDownList1.Items.Insert(0, new ListItem("select"));
            bind();
            //datagrid();
        }


    }

    public void bind()
    {
        SqlCommand cmd = new SqlCommand("select username from activenorth", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            
            DropDownList1.Items.Add(dr[0].ToString());
           
        }
        con.Close();

    }

    

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selected=DropDownList1.SelectedItem.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from activenorth where username='" + selected + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[3].ToString();
            TextBox2.Text = dr[0].ToString();
            Label2.Text = dr[0].ToString();
            Label4.Text = dr[0].ToString();
            desk.Text = dr[0].ToString();
            pwd.Text = dr[1].ToString();
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string subject = TextBox2.Text + " " + subappend.Text;
        string to = TextBox1.Text;
        //string body = "User Email" + " " + TextBox2.Text + "  " + "FEEDBACK" + "--->" + TextBox3.Text;
        //string temp = "hi" + "\r\n" + "darshan";
        string body = Label1.Text + " " + Label2.Text + Environment.NewLine + Label3.Text + " " + Label4.Text + Environment.NewLine + Environment.NewLine + Link.Text + " " + Label5.Text + Environment.NewLine + Environment.NewLine + Type.Text + " " + " " + user.Text + Environment.NewLine + Environment.NewLine + loginid.Text + " " + " " + lid.Text + Environment.NewLine + Environment.NewLine + deskid.Text + " " + " " + desk.Text + Environment.NewLine + Environment.NewLine + Password.Text + " " + " " + pwd.Text + Environment.NewLine + Environment.NewLine + TextBox3.Text;

        string x = send(subject, body,to);

        Response.Write("<script>alert('" + x + "')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label2.Text = "";
        Label4.Text = "";
        desk.Text = "";
        pwd.Text = "";
        //TextBox1.Text = "";
        //TextBox2.Text = "";
        //TextBox3.Text = "";
        //string body = Label1.Text + " " + Label2.Text + Environment.NewLine + Label3.Text + " " + Label4.Text + Environment.NewLine + Environment.NewLine + Link.Text + " " + Label5.Text + Environment.NewLine + Environment.NewLine + Type.Text + " " + " " + user.Text + Environment.NewLine + Environment.NewLine + loginid.Text + " " + " " + lid.Text + Environment.NewLine + Environment.NewLine + deskid.Text + " " + " " + desk.Text + Environment.NewLine + Environment.NewLine + Password.Text + " " + " " + pwd.Text + Environment.NewLine + Environment.NewLine + TextBox3.Text;
        //Response.Write(body);
        //string temp = "hi" + "\r\n" + "darshan";
        
    }

    

    protected string send(string subject, string body, string to)
    {

        MailMessage mailMsg = new MailMessage();
        mailMsg.From = "Enter From address here";
        mailMsg.To = to;
        mailMsg.Cc = "Type your cc here";
        mailMsg.Subject = subject;
        mailMsg.BodyFormat = MailFormat.Text;
        mailMsg.Body = body;
        mailMsg.Priority = MailPriority.High;
        SmtpMail.SmtpServer = "smtp.logix.in";
        mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
        mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "Your from email address");
        mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "password");
        mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", "25");
        mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", "true");
        try
        {
            SmtpMail.Send(mailMsg);
            return "Mail sent";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }
    
}
