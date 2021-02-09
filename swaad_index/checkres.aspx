<%@ Page Title="" Language="C#" MasterPageFile="~/Swaad.Master" AutoEventWireup="true" CodeBehind="checkres.aspx.cs" Inherits="swaad_index.checkres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><br />

    <h1 style="font-family:Merriweather Sans, sans-serif; color: #EFA52C; text-align:center; text-shadow: 2px 2px black;">
        <u>RESERVATION DETAILS</u></h1><br />


     <br />
    <center>
    <form action="checkres.aspx" method="post">
        <asp:Label ID="Label1" runat="server" Text="Unique Reservation Id" style="font-size:20px; font-weight:bold;"></asp:Label>  <br />
        <asp:TextBox ID="userid" runat="server" required="true"></asp:TextBox><br /><br /><br />

        <asp:Label ID="Label3" runat="server" Text="Email" style="font-size:20px; font-weight:bold;"></asp:Label>   <br />
        <asp:TextBox ID="email" runat="server" TextMode="Email" required="true"></asp:TextBox><br /><br /><br />


         <asp:Button ID="Button1" runat="server" Text="Check Reservation" style="background-color:#EFA52C;font-size:20px;
font-weight:bold; padding: 15px 35px; text-shadow: 2px 2px black; color: white; font-family:Merriweather Sans, sans-serif;" OnClick="Button1_Click" />  
      
    </form><br /><br/>
        <br />

        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/booktable.aspx" Font-Size="Medium">If Not Reserved, Reserve Now </asp:HyperLink>
        <br /><br />

    </center>



    <br /><br />
    <footer style="background-color:#333;"><br />
         <h1 style="font-family:Merriweather Sans, sans-serif; color: #EFA52C; text-align:center; text-shadow: 2px 2px white; ">
        SWAAD-E-HIND
    </h1>
    <h5 style="text-align:center; color:white; text-shadow: 2px 2px 4px #EFA52C;">GEMS OF FOOD</h5>
        <h3 style="text-align:center; color:white;">Email : swaadehind@gmail.com</h3>
        <h3 style="text-align:center; color:white;">Phone : 9127389478</h3>
        <br />
    </footer>

</asp:Content>
