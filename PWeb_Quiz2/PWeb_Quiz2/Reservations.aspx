<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="PWeb_Quiz2.Reservations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
        .auto-style5 {
            width: 200px;
        }
        .auto-style10 {
            width: 200px;
            height: 95px;
        }
        .auto-style11 {
            width: 100px;
            height: 95px;
        }
        .auto-style12 {
            width: 200px;
            height: 80px;
        }
        .auto-style13 {
            width: 100px;
            height: 80px;
        }

        body {
        background-image: url('Images/StudioBW7.jpg');
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/custom.css" rel="stylesheet" />

    <center>
        <div>
            <br />
            <br />
            
            <div class="input-group">
                <div class="form-inline">    
                    <h2 class="alert text-center title-text">Reservation Schedule</h2>        
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success table-responsive " style="margin-left: 0px">
                         <tr class="alert-danger">
                            <td class="auto-style5">
                                <span>Name</span>
                            </td>
                            <td class="auto-style5">
                                <span>Date</span>
                            </td>
                             <td class="auto-style5">
                                <span>Time</span>
                            </td>
                             <td class="auto-style5">
                                <span>Equipment Type</span>
                            </td>
                              <td class="auto-style1">
                                <span>Duration</span>
                            </td>
                            </tr>
                        
                        <tr>
                            <td class="auto-style10">
                                <asp:TextBox runat="server" ID="txtName"  placeholder="Full Name" required  CssClass="form-control"/>
                            </td>
                            <td class="auto-style10">
                                 <asp:TextBox runat="server" ID="txtChance"  placeholder="00/00/0000" required CssClass="form-control"/>
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox runat="server" ID="txtBudget"  placeholder="00:00" required  CssClass="form-control"/>
                            </td>
                            <td class="auto-style10">
                                <asp:dropdownlist runat="server" ID="ddlType"  required CssClass="form-control" 
                                    DataSourceID="SalesDb" DataTextField="Name" DataValueField="OppId"></asp:dropdownlist>
                              
                                <asp:SqlDataSource ID="SalesDb" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SalesConnectionString %>" 
                                    SelectCommand="SELECT * FROM [OppType_Table]" >
                                </asp:SqlDataSource>
                              
                            </td>
                             <td class="auto-style11">
                                <asp:TextBox runat="server" ID="txtDuration"  placeholder="0 Hours" required  CssClass="form-control"/>
                            </td>
                             </tr>
                        <tr class="alert-danger">
                               <td class="auto-style5">
                                <span>Contact Email</span>
                            </td>
                               <td class="auto-style5">
                                <span>Contact Number</span>
                            </td>
                               <td class="auto-style5">
                                <span>Payment </span>
                            </td>
                               <td class="auto-style5">
                                <span>Notes</span>
                            </td>                               
                            <td class="auto-style1">
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:TextBox runat="server" ID="txtContactName"  placeholder="email@gmail.com" required  CssClass="form-control"/>
                            </td>
                            <td class="auto-style12">
                                  <asp:TextBox runat="server" ID="txtContactNumber"  placeholder="Phone Number" required  CssClass="form-control"/>
                            </td>
                            <td class="auto-style12">
                                <asp:TextBox runat="server" ID="txtDescription"  placeholder="Ex: Cash" required  CssClass="form-control"/>
                            </td>
                            <td class="auto-style12">
                                  <asp:TextBox runat="server" ID="txtNotes"  placeholder="Notes" required  CssClass="form-control"/>
                            </td>
                            <td class="auto-style13">
                                <asp:Button Text="Add" runat="server" ID="btnAdd" 
                                    class="btn btn-sm btn-primary" OnClick="btnAdd_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <br />
            <br />
          <asp:GridView ID="GridView1" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="Id" DataSourceID="LibraryDb" Width="1351px">
              <Columns>
                 
                  <asp:BoundField DataField="Id" HeaderText="Id" 
                      SortExpression="Id" ReadOnly="True" Visible="False" InsertVisible="False"  />
                  <asp:BoundField DataField="Name" HeaderText="Name" 
                      SortExpression="Name" />
                    <asp:BoundField DataField="CreatedUserId" Visible="False" HeaderText="CreatedUserId" 
                      SortExpression="CreatedUserId" />
                   <asp:BoundField DataField="timestamp" HeaderText="DateTime" 
                      SortExpression="timestamp" />
                  <asp:BoundField DataField="CType" HeaderText="Type" SortExpression="CType" />
                  <asp:BoundField DataField="ChanceToClose" HeaderText="ChanceToClose" 
                      SortExpression="ChanceToClose" />
                  <asp:BoundField DataField="EBudget" HeaderText="Budget" 
                      SortExpression="EBudget" />
                  <asp:BoundField DataField="Duration" HeaderText="Duration" 
                      SortExpression="Duration" />
                  <asp:BoundField DataField="ContactName" HeaderText="Contact Name" 
                      SortExpression="ContactName" />
                  <asp:BoundField DataField="ContactMobile" HeaderText="Contact Mobile" 
                      SortExpression="ContactMobile" />
                  <asp:BoundField DataField="Description" HeaderText="Description" 
                      SortExpression="Description" />
                  <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SalesConnectionString %>" >
            </asp:SqlDataSource>
        </div>
    </center>
</asp:Content>
