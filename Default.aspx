<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>מפוצצים בחלל -צד עורך</title>
    <meta name="description" content="mefosesim ball" />
    <meta name="keywords" content="מצפוצצים,בחלל,משחק,מכון,טכנולוגי,חולון" />
    <meta name="author" content="אופיר מזרחי,עמר כרמי" />
    <link rel="shortcut icon" href="images/favicon.ico" />





    <!-- CSS -->
    <!--Bootstrap 3 css file-->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <!--Bootstrap non-responsive css file (just add class "non-responsive" to the body tag)-->
    <link href="bootstrap/css/bootstrap-non-responsive.css" rel="stylesheet" />
    <!--Bootstrap fixes for hebrew (add class='rtl' to the body tag)-->
    <link href="bootstrap/css/bootstrap-rtl.css" rel="stylesheet" />
    <!--Bootstrap them - for changing the shape and colors of bootstrap objects like buttons-->
    <!--<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />-->
    <!--The only file you should right your css-->
    <link href="styles/myStyle.css" rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Assistant:400,700&amp;subset=hebrew" rel="stylesheet">

    <!-- Scripts -->
    <!--jQuery library-->
    <script src="jScripts/jquery-1.12.0.min.js"></script>
    <!--Bootstrap library-->
    <script src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body class="rtl">
    <form id="form1" runat="server">


        <%----------------------------הנב-------------------%>
        <div id="container" class="container-full">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="brand" href="indextest.html">
                        <!--פה יהיה לוגו-->
                        <img id="logo" src="images/logoGame-01.png" />
                    </a>
                    <!--<a class="navbar-brand">בילד-אפ</a>-->
                </div>
                <div class="collapse navbar-collapse" id="menu">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="#howToPlay" data-toggle="modal" data-target="#howToPlay">הוראות</a></li>
                        <li><a href="#about" data-toggle="modal" data-target="#about">אודות</a></li>
                        <li><a href="indextest.html">למשחק</a></li>
                    </ul>
                </div>
            </nav>

            <div class="modal fade" id="howToPlay">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h3 class="modal-title b">הוראות</h3>
                    </div>
                    <div class="modal-body">
                        <div>
                            <p class="b sizeIt">טקסט טקסט</p>

                        </div>

                    </div>
                    <div class="modal-footer">
                        <a href="#" data-dismiss="modal" class="btn btn-primary">סגור</a>
                        <!--<a href="#" class="btn btn-primary">סגור</a>-->
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="about">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h3 class="modal-title b">אודות</h3>
                    </div>
                    <div class="modal-body royal">
                        <div>
                            <h2 class="b sizeIt hedLogo">
                                מפוצצים בחלל
                                <br />
                                איפיון ופיתוח: עמר כרמי ואופיר מזרחי
                            </h2>
                            <div id="hedLogo">
                                <img src="images/hed2-01.png" />
                            </div>
                            <p class="odot" >
                                פותח במסגרת פרויקט בקורסים:
                                <br />
                                סביבות לימוד אינטרקטיביות 2 & אנימציה & תכנות 2 ,תשע"ח
                            </p>
                            <p class="TextElineRite odotForLink odot">
                                <a  href="http://www.hit.ac.il/" target="_blank" >הפקולטה לטכנולוגיות למידה</a>
                                <br />
                                מכון טכנולוגי חולון
                            </p>
                            <div id="aboutLogo">
                                <img src="images/hit2.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="#" data-dismiss="modal" class="btn btn-primary">סגור</a>
                        <!--<a href="#" class="btn btn-primary">סגור</a>-->
                    </div>
                </div>
            </div>
        </div>


            <div id="continer2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="עד 60 תווים"></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="יצירת משחק:"></asp:Label>
                &nbsp;
            <asp:TextBox ID="newName" runat="server" Width="401px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="משחק חדש" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XML/XMLFile.xml" XPath="/allGames/game"></asp:XmlDataSource>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" Width="100%" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="שם המשחק"  >
                            <ItemTemplate  >
                                <asp:Label ID="NameGame" runat="server" Text='<%#Server.UrlDecode(XPathBinder.Eval(Container.DataItem, "name").ToString())%>'> 	
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="קוד">
                            <ItemTemplate>
                                <asp:Label  ID="CodeGame" runat="server" Text='<%#Server.UrlDecode(XPathBinder.Eval(Container.DataItem, "@id").ToString())%>'> 	
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>



                        <asp:TemplateField HeaderText="הגדרות">
                            <ItemTemplate>
                                <asp:ImageButton  ID="settings" theItemId='<%#XPathBinder.Eval(Container.DataItem,"@id")%>' runat="server" ImageUrl="~/images/settings.png" CommandName="settings" Width="20px" Height="20px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="עריכה">
                            <ItemTemplate>
                                <asp:ImageButton ID="edit" theItemId='<%#XPathBinder.Eval(Container.DataItem,"@id")%>' runat="server" ImageUrl="~/images/edit.png" CommandName="edit" Width="20px" Height="20px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="מחיקה">
                            <ItemTemplate>
                                <asp:ImageButton ID="delete" theItemId='<%#XPathBinder.Eval(Container.DataItem,"@id")%>' runat="server" ImageUrl="~/images/delite.png" CommandName="delete" Width="20px" Height="20px" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="פרסום">
                            <ItemTemplate>
                                <asp:ImageButton ID="publish" theItemId='<%#XPathBinder.Eval(Container.DataItem,"@id")%>' runat="server" ImageUrl="~/images/ChekBoxDis.png" CommandName="publish" Width="20px" Height="20px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>


                <br />
            </div>
        </div>
    </form>
</body>
</html>
