using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Edit : System.Web.UI.Page
{
    //מה האי די שלי
    int myID;

    protected void Page_Load(object sender, EventArgs e)
    {
        myID = Convert.ToInt16(Session["theItemIdSession"]);
        //פוס בק
        if (Page.IsPostBack == false)
        {
            allItem();
        }
        else
        {

        }

    }
    //שמירת פריט
    protected void NewItem_Click(object sender, EventArgs e)
    {
        //טעינת העץ
        XmlDocument myDoc = new XmlDocument();
        myDoc.Load(MapPath("XML/XMLFile.xml"));

        // הקפצה של מונה האי די בתוך קובץ האקס אם אל באחד
        int myItemID = Convert.ToInt16(myDoc.SelectSingleNode("//game[@id="+ myID + "]/counterItem").InnerXml);
        myItemID++;
        string myNewItemId = myItemID.ToString();
        myDoc.SelectSingleNode("//game[@id=" + myID + "]/counterItem").InnerXml = myNewItemId;

        // יצירת הפריט 
        XmlElement myNewItem = myDoc.CreateElement("item");
        myNewItem.SetAttribute("id", myNewItemId);
        myNewItem.SetAttribute("textImage", "text");
        //אם הפריט נכון
        if (CheckBox1.Checked == true)
        {
            myNewItem.SetAttribute("trueFalse", "true");
        }
        else if(CheckBox1.Checked == false)
        {
            myNewItem.SetAttribute("trueFalse", "false");
        }
        myNewItem.InnerXml = NameItem.Text.ToString();

        //שמירה של הפריט
        XmlNode mygame = myDoc.SelectSingleNode("//game[@id='" + myID + "']");
        mygame.AppendChild(myNewItem);
        myDoc.Save(MapPath("XML/XMLFile.xml"));//שמירה לעץ
        DataBind();
        NameItem.Text = "";
        CheckBox1.Checked = false;

        //עידכון הרדיו בטן
        allItem();
    }
    //--------------------------הצגת כל הפריטים------------------------------
    public void allItem()
    {
        XmlDocument myDoc = new XmlDocument();
        myDoc.Load(MapPath("XML/XMLFile.xml"));
        XmlNode myItems = myDoc.SelectSingleNode("//game[@id='" + myID + "']");
        int nod = Convert.ToInt16(myItems.ChildNodes.Count-4);

        //החדרת הפריטים לרדיו בטן
        //להכניס את הערכים לרדיו
        RadioButtonList1.Items.Clear();
        for (int i = 1; i <= nod; i++)
        {
            XmlNode myitem = myDoc.SelectSingleNode("//game[@id='" + myID + "']/item[@id='" + i.ToString() + "']");
            ListItem li = new ListItem();
            li.Text = myitem.InnerXml;
            li.Value = i.ToString();
            RadioButtonList1.Items.Add(li);
        }
        RadioButtonList1.DataBind();
    }
    //-----------------------------------מחירת פריט
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //הפריט הנבחר
        string mySelect = RadioButtonList1.SelectedValue.ToString();

        //טעינת העץ
        XmlDocument myDoc = new XmlDocument();
        myDoc.Load(MapPath("XML/XMLFile.xml"));

        NameLastGame.Text = mySelect;

        //החדרת התוכן לטקסט בוקס
        XmlNode myItem1 = myDoc.SelectSingleNode("//game[@id='" + myID + "']/item [@id='" + mySelect + "']");
        NameLastGame.Text = myItem1.InnerXml;

        //(למלה את הצק בוקס (אם יש צורך
        XmlNode myTrueAndFalse = myDoc.SelectSingleNode("//game[@id='" + myID + "']/item [@id='" + mySelect + "']/@trueFalse");
        if (myTrueAndFalse.InnerXml == "true")
        {
            CheckBox2.Checked = true;
        }
        else
        {
            CheckBox2.Checked = false;
        }
    }
    //עידכון פריט
    protected void Rfresh_Click(object sender, EventArgs e)
    {
        if(RadioButtonList1.SelectedValue!=null && NameLastGame.Text != "")
        {
            //הפריט הנבחר
            string mySelect = RadioButtonList1.SelectedValue;

            //טעינת העץ
            XmlDocument myDoc = new XmlDocument();
            myDoc.Load(MapPath("XML/XMLFile.xml"));

            //החדרת התוכן לעץ
            XmlNode myItem1 = myDoc.SelectSingleNode("//game[@id='" + myID + "']/item [@id='" + mySelect + "']");
            myItem1.InnerXml = NameLastGame.Text.ToString();
            //פריט נכון או לא נכון
            XmlNode myTrueAndFalse = myItem1.SelectSingleNode("//game[@id='" + myID + "']/item [@id='" + mySelect + "']/@trueFalse");
            if (CheckBox2.Checked == true)
            {
                myTrueAndFalse.InnerXml = "true";
            }
            else if(CheckBox2.Checked == false)
            {
                myTrueAndFalse.InnerXml = "false";
            }

            myDoc.Save(MapPath("XML/XMLFile.xml"));//שמירה לעץ
            DataBind();
            allItem();//עידכון הרדיו בטן
            NameLastGame.Text = "";
            CheckBox2.Checked = false;

        }
        else
        {
            //הערת שגיעה
        }
    }
    //שמור וחזור
    protected void save_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}