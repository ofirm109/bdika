using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            //מסדר את פונקציית הפבליש
            publish();
        }
        else
        {

        }
    }
    //------------------------------בעט לחיצה על אחד מהבוייקטים בגריד ----------------
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        // תחילה אנו מבררים מהו ה -אי די- של הפריט בעץ ה אקס אם אל
        ImageButton i = (ImageButton)e.CommandSource;
        // אנו מושכים את האי די של הפריט באמצעות מאפיין לא שמור במערכת שהוספנו באופן ידני לכפתור-תמונה
        string theId = i.Attributes["theItemId"];
        Session["theItemIdSession"] = i.Attributes["theItemId"];


        // עלינו לברר איזו פקודה צריכה להתבצע - הפקודה רשומה בכל כפתור
        switch (e.CommandName)
        {
            //אם נלחץ על כפתור מחיקה יקרא לפונקציה של מחיקה
            case "delete":

                //לקיחת ID לפי הלחיצה של המשתמש 
                Session["theItemIdSessions"] = i.Attributes["theItemId"];
                delete((string)Session["theItemIdSessions"]);
                break;

            //אם נלחץ על כפתור ההגדרות נעבור לדף ההגדרות
            case "settings":

                Response.Redirect("setting.aspx");
                break;
            //אם נלחץ על העריכה נעבור לחלון העריכה
            case "edit":

                Response.Redirect("Edit.aspx");
                break;
            //אם נלחץ זה ישתף
            case "publish":

                //טעינת העץ
                XmlDocument myDoc = new XmlDocument();
                myDoc.Load(MapPath("XML/XMLFile.xml"));
                ///קריאה לכפתור
                ImageButton mybut = (ImageButton)e.CommandSource;
                //קריאה למשחק
                XmlNode myPublish = myDoc.SelectSingleNode("//game[@id=" + i.Attributes["theItemId"] + "]/@publish");
                //החדרת התמונות
                if (myPublish.InnerXml == "true")
                {
                    mybut.ImageUrl = "~/images/ChekBoxNon.png";
                    //שינוי התוכן
                    myPublish.InnerXml = "false";

                }
                else if (myPublish.InnerXml == "false")
                {
                    mybut.ImageUrl = "~/images/ChekBoxYes.png";
                    myPublish.InnerXml = "true";
                }
                //שמירה
                myDoc.Save(MapPath("XML/XMLFile.xml"));
                DataBind();
                publish();
                break;
        }
    }

    //----------------------------משחק חדש--------------------------------

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (newName.Text != "" && newName.Text != " ")
        {
            // טעינה של העץ
            XmlDocument xmlDoc = XmlDataSource1.GetXmlDocument();

            // הקפצה של מונה האי די בתוך קובץ האקס אם אל באחד
            int myId = Convert.ToInt16(xmlDoc.SelectSingleNode("//counterGame").InnerXml);
            myId++;
            string myNewId = myId.ToString();
            xmlDoc.SelectSingleNode("//counterGame").InnerXml = myNewId;

            // יצירת ענף 
            XmlElement myNewGame = xmlDoc.CreateElement("game");
            myNewGame.SetAttribute("id", myNewId);
            myNewGame.SetAttribute("publish", "false");

            // יצירת ענף שם המשחק
            XmlElement NameGame = xmlDoc.CreateElement("name");
            NameGame.InnerXml = Server.UrlEncode(newName.Text);
            myNewGame.AppendChild(NameGame);

            XmlElement categoryGame = xmlDoc.CreateElement("category");
            categoryGame.InnerXml = Server.UrlEncode("");
            myNewGame.AppendChild(categoryGame);

            XmlElement GuidelineGame = xmlDoc.CreateElement("Guideline");
            GuidelineGame.InnerXml = Server.UrlEncode("פוצצו את האסטרויידים עם הפריטים הנכונים והתחמקו מהאחרים");
            myNewGame.AppendChild(GuidelineGame);

            XmlElement counterItemGame = xmlDoc.CreateElement("counterItem");
            counterItemGame.InnerXml = Server.UrlEncode("0");
            myNewGame.AppendChild(counterItemGame);

            //הוספת המשחק לעץ ושמירה
            xmlDoc.SelectSingleNode("/allGames").AppendChild(myNewGame);
            XmlDataSource1.Save();
            GridView1.DataBind();

            //מחיקת התוכן מהטיבת טקסט
            newName.Text = "";
        }
        else
        {
            //הודעת שגיעה
        }
    }
    //-----------------------------------מחיקה----------------------------------
    void delete(string theItemId)
    {
        //הסרת ענף של משחק קיים באמצעות זיהוי האיי דיי שניתן לו על ידי לחיצה עליו מתוך הטבלה
        //שמירה ועדכון לתוך העץ ולגריד ויו
        XmlDocument Document = XmlDataSource1.GetXmlDocument();
        XmlNode node = Document.SelectSingleNode("allGames/game[@id='" + theItemId + "']");
        node.ParentNode.RemoveChild(node);
        XmlDataSource1.Save();
        GridView1.DataBind();
        Response.Redirect("Default.aspx");

    }
    //---------------------------------------פרסום------------------------------------
    void publish()
    {
        //טעינת העץ
        XmlDocument myDoc = new XmlDocument();
        myDoc.Load(MapPath("XML/XMLFile.xml"));
        foreach (GridViewRow row in GridView1.Rows)
        {
            //קריאה לכפתור
            ImageButton i = (ImageButton)row.FindControl("publish");
            //קריאה למשחק
            XmlNode myPublish = myDoc.SelectSingleNode("//game[@id=" + i.Attributes["theItemId"] + "]/@publish");
            //החדרת התמונות
            if (myPublish.InnerXml == "true")
            {
                i.ImageUrl = "~/images/ChekBoxYes.png";
            }
            else if (myPublish.InnerXml == "false")
            {
                i.ImageUrl = "~/images/ChekBoxNon.png";
            }

        }

    }
}