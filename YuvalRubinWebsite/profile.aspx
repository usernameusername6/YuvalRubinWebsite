<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAside" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">

      <h2>Profile Info</h2>
        
      <table class="profile">
            <tr>
                <td>Username:</td>
                <td><asp:Label ID="Username" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><asp:Label ID="FirstName" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><asp:Label ID="LastName" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><asp:Label ID="Email" runat="server"></asp:Label></td>
            </tr>
             <tr>
                <td>Phone:</td>
                <td><asp:Label ID="Phone" runat="server"></asp:Label></td>
            </tr>
                         <tr>
                <td>Gender:</td>
                <td><asp:Label ID="Gender" runat="server"></asp:Label></td>
            </tr>
                         <tr>
                <td>Registration date:</td>
                <td><asp:Label ID="Reg" runat="server"></asp:Label></td>
            </tr>
        </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
</asp:Content>

