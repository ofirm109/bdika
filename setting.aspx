<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setting.aspx.cs" Inherits="setting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>מפוצצים בחלל -צד עורך הגדרות</title>
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

<body>
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


            <div id="continer2" dir="rtl">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="עד 20 תווים"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <br />
                שם המשחק:&nbsp;&nbsp; <asp:TextBox ID="nameGame" runat="server" Width="275px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="עד 20 תווים"></asp:Label>
                <br />
                קטגוריה:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="CatagoryGame" runat="server" Width="275px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="עד 60 תווים"></asp:Label>
                <br />
                הנחיה:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="GuidLineGame" runat="server" Width="452px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" ForeColor="#666666" Text="(דוגמה-פוצצו את האסטרויידים שעליהם סרטים ישראליים והתחמקו מהאחרים)"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Button ID="backBot" runat="server" Text="חזרה לדף הראשי" OnClick="backBot_Click" />
&nbsp;&nbsp;
                <asp:Button ID="saveBot" runat="server" Text="שמירה וחזרה" OnClick="saveBot_Click" />
            </div>
    
    </div>
    </form>
</body>
</html>
