<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">

<h2>Login</h2>

<div class="login">
        
        <form runat="server" method="post" action="Login.aspx">
            <label for="userName">Username:</label>
            <input type="text" id="userName" name="userName">
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password">
            
            <input type="submit" value="Submit" id="submit">
        </form>
        
        <form method="get" action="Registration.aspx">      
            <input type="submit" value="Signup" class="signup-btn" />
        </form>

        <div runat="server" id="LoginResult"></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
</asp:Content>

