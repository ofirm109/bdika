using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class setting : System.Web.UI.Page
{
    //מה האי די שלי
    int myID;

    protected void Page_Load(object sender, EventArgs e)
    {
        myID = Convert.ToInt16(Session["theItemIdSession"]);

        //טעינת העץ
        XmlDocument myDoc = new XmlDocument();
        myDoc.Load(MapPath("XML/XMLFile.xml"));

        //פוס בק
        if (Page.IsPostBack == false)
        {
            //החדרת התוכן לפקדים
            XmlNode mygameName = myDoc.SelectSingleNode("//game[@id='" + myID + "']/name");
            nameGame.Text = (Server.UrlDecode(mygameName.InnerXml)).ToString();

            XmlNode mygameCategory = myDoc.SelectSingleNode("//game[@id='" + myID + "']/category");
            CatagoryGame.Text = (Server.UrlDecode(mygameCategory.InnerXml)).ToString();

            XmlNode mygameGuidline = myDoc.SelectSingleNode("//game[@id='" + myID + "']/Guideline");
            GuidLineGame.Text = (Server.UrlDecode(mygameGuidline.InnerXml)).ToString();
        }
        else
        {

        }
    }
    //--------------------------------חזרה---------------------------
    protected void backBot_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    //-------------------------------שמירה---------------------------
    protected void saveBot_Click(object sender, EventArgs e)
    {

        string name = nameGame.Text.ToString();
        string category = CatagoryGame.Text.ToString();
        string guidline = GuidLineGame.Text.ToString();

        if (name != "" && category != "" && guidline != "")
        {
            //טעינת העץ
            XmlDocument myDoc = new XmlDocument();
            myDoc.Load(MapPath("XML/XMLFile.xml"));

            //החדרת התוכן לעץ
            XmlNode mygameName = myDoc.SelectSingleNode("//game[@id='" + myID + "']/name");
            mygameName.InnerXml = name;


            XmlNode mygameCategory = myDoc.SelectSingleNode("//game[@id='" + myID + "']/category");
            mygameCategory.InnerXml = category;

            XmlNode mygameGuidline = myDoc.SelectSingleNode("//game[@id='" + myID + "']/Guideline");
            mygameGuidline.InnerXml = guidline;

            myDoc.Save(MapPath("XML/XMLFile.xml"));//שמירה לעץ
            Response.Redirect("Default.aspx");//חוזר לדף הקודם
        }
        else
        {
            //הודעת שגיעה
        }
    }
}