<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customer Information.aspx.cs" Inherits="Motorcycle_Care_System.View.Admin.Customer_Information" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <div class="row">
        <div class="col md-4">
            <div class="row">
                <div class="col">
            <form>
                <div class="form-group">
                    <label for="Uname">Username</label>
                    <input type="text" class=" form-control" id="UnameTb" placeholder="Enter Username" runat="server" />
                 
                </div>
                    <div class="form-group">
                    <label for="Uname">Password</label>
                    <input type="text" class=" form-control" id="PassTb" placeholder="Enter Password" runat="server" />
             
                </div>
                    <div class="form-group">
                    <label for="Uname">Address</label>
                    <input type="text" class=" form-control" id="AddressTb" placeholder="Enter Address" runat="server" />
                   
                </div>
                    <div class="form-group">
                    <label for="Uname">Contact</label>
                    <input type="text" class=" form-control" id="ContactTb" placeholder="Enter Phone Number" runat="server" />
                       
                </div>
                <label id="Error" runat="server"></label>
                <br />
                <br />
                <br />
                <asp:Button type="submit" ID="editBtn" OnClick="editBtn_Click" class="btn btn-danger" Text="Edit" runat="server" />
                <asp:Button type="submit" ID="saveBtn" OnClick="saveBtn_Click" class="btn btn-danger" Text="Save" runat="server" />
                <asp:Button type="submit" ID="deleteBtn" OnClick="deleteBtn_Click" class="btn btn-danger" Text="Delete" runat="server" />
             </form>
                    </div>

            </div>
        </div>
        <div class="col-md-8">
            <h1>Riders List</h1>
           <asp:GridView runat="server" ID="riderList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="riderList_SelectedIndexChanged">

           </asp:GridView>
            
        </div>
    </div>
    </div>
</asp:Content>
