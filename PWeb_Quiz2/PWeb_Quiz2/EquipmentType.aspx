<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="EquipmentType.aspx.cs" Inherits="PWeb_Quiz2.EquipmentType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myddls {
            align-items: center;
            background-color: rgb(255, 255, 255);
            border-bottom-color: rgb(204, 204, 204);
            border-bottom-left-radius: 4px;
            border-bottom-right-radius: 0px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-collapse: collapse;
            border-image-outset: 0px;
            border-image-repeat: stretch;
            border-image-slice: 100%;
            border-image-source: none;
            border-image-width: 1;
            border-left-color: rgb(204, 204, 204);
            border-left-style: solid;
            border-left-width: 1px;
            border-right-color: rgb(204, 204, 204);
            border-right-style: solid;
            border-right-width: 1px;
            border-top-color: rgb(204, 204, 204);
            border-top-left-radius: 4px;
            border-top-right-radius: 0px;
            border-top-style: solid;
            border-top-width: 1px;
            box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
            box-sizing: border-box;
            color: rgb(85, 85, 85);
            cursor: default;
            display: inline-block;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 14px;
            font-stretch: normal;
            font-style: normal;
            font-variant: normal;
            font-weight: normal;
            height: 34px;
            letter-spacing: normal;
            line-height: normal;
            margin-bottom: 0px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
            max-width: 280px;
            overflow-x: visible;
            overflow-y: visible;
            padding-bottom: 6px;
            padding-left: 12px;
            padding-right: 12px;
            padding-top: 6px;
            text-align: start;
            text-indent: 0px;
            text-rendering: auto;
            text-shadow: none;
            text-transform: none;
            transition-delay: 0s, 0s;
            transition-duration: 0.15s, 0.15s;
            transition-property: border-color, box-shadow;
            transition-timing-function: ease-in-out, ease-in-out;
            vertical-align: middle;
            white-space: pre;
            width: 48px;
            word-spacing: 0px;
            writing-mode: horizontal-tb;
            -webkit-appearance: menulist-button;
            -webkit-rtl-ordering: logical;
        }
        body {
        background-image: url('Images/StudioBW5.jpg');
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
        }
    
        .auto-style1 {
            width: 70px;
        }
        .auto-style2 {
            width: 200px;
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
                    <h2 class="alert text-center title-text">Equipment Type Available</h2>
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success ">
                        <tr  class="alert-danger">                          
                            
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:TextBox runat="server" ID="txtStudentId" class="form-control" placeholder="Opportunity Type" required  CssClass="form-control"/>
                            </td>                          
                            
                            <td class="auto-style1">
                                <asp:Button Text="Add Type" runat="server" ID="btnAdd" 
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
                DataKeyNames="OppId" DataSourceID="LibraryDb" Height="235px" style="margin-left: 0px; margin-right: 0px; margin-bottom: 0px" Width="300px">
              <Columns>
                 
                  <asp:BoundField DataField="OppId" HeaderText="OppId" 
                      SortExpression="OppId" ReadOnly="True" Visible="False" InsertVisible="False"  />
                  <asp:BoundField DataField="Name" HeaderText="Name" 
                      SortExpression="Name" />
                  <asp:BoundField DataField="CreatedbyUserId" HeaderText="CreatedbyUserId" 
                      SortExpression="CreatedbyUserId" Visible="False" />
                   <asp:CommandField ShowEditButton="True" />
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:SalesConnectionString %>"                
                DeleteCommand="DELETE FROM [OppType_Table] WHERE [OppId] = @OppId"                 
                UpdateCommand="UPDATE [OppType_Table] SET [Name] = @Name WHERE [OppId] = @OppId">
                <DeleteParameters>
                    <asp:Parameter Name="OppId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="OppId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </center>
</asp:Content>
