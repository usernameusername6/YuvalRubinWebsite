<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAside" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
        <h2>Registration</h2>

   <div class="registration">
        
        <form runat="server" action="Registration.aspx" method="post">		

            <label for="firstName">First Name:</label>
            <input runat="server" type="text" id="firstName" name="firstName" />
            
            <label for="lastName">Last Name:</label>
            <input runat="server" type="text" id ="lastName" name="lastName" />
            
            <label for="userName">User Name:</label>
            <input runat="server" type="text" id="userName" name="userName" />
            
            <label for="pswd">Password:</label>
            <input runat="server" type="password" id="pswd" name="pswd" />

            <label for="pswdValidate">Password Confirmation:</label>
            <input runat="server" type="password" id="pswdValidate" name="pswdValidate" /> 
            
            <label for="idNum">ID:</label>
            <input runat="server" type="text" id ="idNum" name="idNum" />

            <label for="phone">Phone Number:</label>
            <input runat="server" type="text" id="phone" name="phone" />

            <label for="mail">Email:</label>
            <input runat="server" type="text" id="mail" name="mail" />
            
            <div class="radio-group">
                <label class="group-title">Sex:</label>
                <input type="radio" id="genderFemale" name="gender" value="female" checked />
                <label for="genderFemale" class="inline-label">Female</label>
                
                <input type="radio" id="genderMale" name="gender" value="male" />
                <label for="genderMale" class="inline-label">Male</label>
            </div>
            
            <div class="checkbox-group">
                <input runat="server" type="checkbox" id="approval" name="approval" value="approve" />
                <label for="approval" class="inline-label">I Agree to the terms and services</label>
            </div>

            <input type="submit" value="Register" class="submit-btn" />	
        </form>

        <div runat="server" id="RegistrationResult" class="result-message"></div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
</asp:Content>

