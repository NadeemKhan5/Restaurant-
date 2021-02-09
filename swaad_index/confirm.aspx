<%@ Page Title="" Language="C#" MasterPageFile="~/Swaad.Master" AutoEventWireup="true" CodeBehind="confirm.aspx.cs" Inherits="swaad_index.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><br />

    <h1 style="font-family:Merriweather Sans, sans-serif; color: #EFA52C; text-align:center; text-shadow: 2px 2px black;">
        <u>YOUR DETAILS</u></h1>
    
    
      
        <center>

            <asp:Label ID="Label6" runat="server" Text="Booking Confirmed" Font-Bold="True" Font-Size="20px"></asp:Label>
            </br>
            </br>
            </br>
     <asp:Label ID="Label1" runat="server" Text="Unique Id :" Font-Bold="True" Font-Size="20px"></asp:Label>
&nbsp
        <asp:Label ID="Lbl1" runat="server" Text="" style="font-size:20px; font-weight:bold;"></asp:Label>
        <br />
        <br /
             <br />
     <asp:Label ID="Label2" runat="server" Text="Name :" Font-Bold="True" Font-Size="20px"></asp:Label>
&nbsp;
        <asp:Label ID="Lbl2" runat="server" Text="" style="font-size:20px; font-weight:bold;"></asp:Label>
        <br />
        <br /
             <br />
     <asp:Label ID="Label3" runat="server" Text="Email Id :" Font-Bold="True" Font-Size="20px"></asp:Label>
&nbsp;
        <asp:Label ID="Lbl3" runat="server" Text="" style="font-size:20px; font-weight:bold;"></asp:Label>
        <br />
        <br /
             <br />
     <asp:Label ID="Label4" runat="server" Text="Phone :" Font-Bold="True" Font-Size="20px"></asp:Label>
&nbsp;
        <asp:Label ID="Lbl4" runat="server" Text="" style="font-size:20px; font-weight:bold;"></asp:Label>
        <br />
        <br /
             <br />
     <asp:Label ID="Label5" runat="server" Text="Table No :" Font-Bold="True" Font-Size="20px"></asp:Label>
&nbsp;
        <asp:Label ID="Lbl5" runat="server" Text="" style="font-size:20px; font-weight:bold;"></asp:Label>
        <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back</asp:LinkButton>
    <br />
    

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
