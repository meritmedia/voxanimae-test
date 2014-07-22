<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="voxanimae_Default"   Debug="true" %>
<% 
     %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vox Animae | Voice of the Soul</title>
        <link rel="stylesheet" type="text/css" href="css/fonts.css" />
    <link href="css/default.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/fonts.css" />
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://beatfreaks.com/scripts/modernizr-2.7.2.js"></script>
    <link href="http://beatfreaks.com/orangebox/css/orangebox.css" rel="stylesheet" />
    <script src="http://beatfreaks.com/orangebox/js/orangebox.min.js"></script>
    <script src="scripts/default.js" type="text/javascript" ></script>
</head>
<body onload="getpage(1);">
    <div class="header">
        <div class="headerContent">
                <img src="images/logo-300-long-left.png" style="position:absolute;top:0px;width:200px;left:-50px;" />


             
             
           
          <%--  <div>Charlie Pecot | Editor, Publisher</div>--%>
<div class="menu">
    
     <div class="menuFloat" onclick="getpage(4);">Donations</div>
    <div class="menuFloat" onclick="getpage(3);">Advertising</div>
    <div class="menuFloat" onclick="getpage(2);">Contact</div>
    <div class="menuFloat" onclick="getpage(1);">Home</div>
</div>
        </div>
    </div>
    <div class="wrapper">
         <div id="content" class="content"></div>
          </div>
    <div class="footer">
        <div class="footerContent">

            <div style="width:100%;margin-left:7%;">
                <form id="emaillist"  runat="server">

                <div class="FFloat" style="border-right: 1px solid  hsla(0,0%,0%,1);">
                   
                     <div class="menuFloat"><a href="https://www.facebook.com/voxanimaemag/"><img src="images/fb-on.png" /></a></div>
                     <div class="menuFloat"><a href="http://twitter.com/voxanimaemag"><img src="images/tw-on.png" /></a></div>
                </div>
                 <div class="FFloat" >
                    
                        
                        <asp:TextBox runat="server" ID="addy" CssClass="addy"></asp:TextBox>
                        <asp:TextBox  ID="ipaddr" runat="server"   CssClass="noshow"/>
       

                      
                     </div>

                <div class="FFloat" style="text-align:left;" >
                    <button id="emaillistBtn" runat="server" class="emaillistButton"></button>
                </div>
                <span runat="server" id="status" class="status" >Interested in learning more?</span>
              </form>

        </div>
    </div>
        </div>

        <script>
            jQuery(function () {

                jQuery('#addy').attr('placeholder', 'Enter your email address');

            });
           


</script>
    
</body>
</html>
