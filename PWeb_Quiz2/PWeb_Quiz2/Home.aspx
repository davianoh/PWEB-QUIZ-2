<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PWeb_Quiz2.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/home.css" rel="stylesheet" />

    <div class="intro-header">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <marquee><h2><%=Announcements.ToString() %></h2></marquee>
                    <div class="intro-message">
                        <h1>Welcome <%=Session["username"].ToString() %></h1>
                        <h3>Let's Get To It</h3>
                        <hr class="intro-divider" />
                        
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
