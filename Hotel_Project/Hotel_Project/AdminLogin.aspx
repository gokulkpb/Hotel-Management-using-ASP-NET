<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Hotel_Project.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
    
    <style type="text/css">
        
        .auto-style1 {
            width: 110px;
        }
        .auto-style3 {
            width: 13px;
        }
        .auto-style4 {
            width: 110px;
            height: 111px;
            color:#C91622;
        }
        .auto-style5 {
            width: 13px;
            height: 111px;
        }
        .auto-style6 {
            height: 111px;
        }
        .auto-style7 {
            width: 110px;
            height: 111px;
            color:#C91622;
        }
        .auto-style8 {
            width: 13px;
            height: 111px;
        }
        .auto-style9 {
            height: 111px;
        }
        .auto-style10 {
            width: 110px;
            height: 131px;
        }
        .auto-style11 {
            width: 13px;
            height: 131px;
        }
        .auto-style12 {
            height: 131px;
        }
        .auto-style13 {
            width: 110px;
            height: 44px;
        }
        .auto-style14 {
            width: 13px;
            height: 44px;
        }
        .auto-style15 {
            height: 44px;
        }
        .auto-style16 {
            width: 488px;
            margin-left:500px;
            margin-right: 0px;
        }
        Box{
            border-radius:20px
        }
        a{
            text-decoration:none;
        }
    </style>
    
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg bg-light py-5">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">HOTEL LAVANTA</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link px-5" href="Checkin.aspx">Front Desk</a>
          
        </li>
        <li class="nav-item">
          <a class="nav-link px-5" aria-current="page" href="OrderFood.aspx">Restaurant</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active px-5" href="AdminLogin.aspx">Admin</a>
        </li>
      
      </ul>
    </div>
  </div>
</nav>
    </header>
    <form id="form1" runat="server">
        <table class="auto-style16">
            <tr>
                <td class="auto-style4" aria-orientation="vertical">Username</td>
                <td class="auto-style5">:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtUsername" runat="server" Height="56px" Width="221px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" Font-Size="XX-Small" ForeColor="Red" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Password</td>
                <td class="auto-style8">:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtPassword" runat="server" Height="56px" Width="221px" OnTextChanged="txtPassword_TextChanged" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" Font-Size="XX-Small" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:Button ID="AdminLoginButton" runat="server" Height="60px" Text="LOG IN" Width="143px" OnClick="AdminLoginButton_Click" BackColor="#C91622" ForeColor="White"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14"></td>
                <td class="auto-style15">
                    <asp:Label ID="AdminLoginLabel" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
        <footer>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-bottom " style="background-color:#CCCCCC; margin-bottom:0;">
  
 
  
    <ul class="navbar-nav">
      <li class="nav-item nav-link active">
      
        @All Rights Reserved, Made by Gokul Balachandran
      </li>
    </ul>
  
</nav>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>
