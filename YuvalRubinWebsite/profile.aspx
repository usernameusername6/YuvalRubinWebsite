<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAside" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">

      <h2>Profile Info</h2>
        
      <table class="profile">
            <tr>
                <td><strong>Username:</strong></td>
                <td><asp:Label ID="lblUsername" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><strong>First Name:</strong></td>
                <td><asp:Label ID="lblFirstName" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><strong>Last Name:</strong></td>
                <td><asp:Label ID="lblLastName" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><strong>Email:</strong></td>
                <td><asp:Label ID="lblEmail" runat="server"></asp:Label></td>
            </tr>
             <tr>
                <td><strong>Phone:</strong></td>
                <td><asp:Label ID="lblPhone" runat="server"></asp:Label></td>
            </tr>
                         <tr>
                <td><strong>Gender:</strong></td>
                <td><asp:Label ID="lblGender" runat="server"></asp:Label></td>
            </tr>
                         <tr>
                <td><strong>Registration date:</strong></td>
                <td><asp:Label ID="lblReg" runat="server"></asp:Label></td>
            </tr>
        </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
</asp:Content>

