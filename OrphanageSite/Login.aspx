﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OrphanageSite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        * {
            box-sizing: border-box;
        }
        body {
            height: 100vh;
            width: 100vw;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            height: fit-content;
            border-radius: 15px !important;
            text-align: center;
            padding: 0;
            margin: 35px auto;
            display: flex;
        }
        .row {
            height: fit-content;
            width: 100%;
            border-radius: 15px !important;
            margin: 0 auto;
        }
        .col {
            padding: 20px;
            width: 100%;
            height: max-content;
        }
        .form-control, .input-group-text {
            margin: 15px 0;
        }
        .column-1 {
            height: auto;
            background: #d2f6d2;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 15px !important;
        }
        form {
            width: 100%;
        }
        .container-fluid {
            height: 350px;
            width: 350px;
        }
        h2 {
            text-align: center;
        }
        .validator-message {
            margin-top: -10px;
            margin-bottom: 10px;
        }
    </style>
    <div class="container">
        <div class="row">
            <div class="col column-1">
                <form id="form1" runat="server" class="form">
                    <h2>User Login</h2>
                    <div>
                        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">@</span>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="form-control" required="required"></asp:TextBox>
                    </div>
                    <div class="validator-message">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-group mb-3">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control" required="required"></asp:TextBox>
                    </div>
                    <div class="validator-message">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" CssClass="btn btn-success form-control" />
                    </div>
                </form>
            </div>
            <div class="col column-2">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/images/admin-image.png" CssClass="container-fluid" />
            </div>
        </div>
    </div>
</asp:Content>
