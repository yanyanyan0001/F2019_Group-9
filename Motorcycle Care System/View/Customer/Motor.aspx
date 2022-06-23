<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Motor.aspx.cs" Inherits="Motorcycle_Care_System.View.Customer.Motor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Add motor:type, brand, parts</h1>
     <div class="container-fluid">
    <div class="row">
        <div class="col md-4">
            <div class="row">
                <div class="col">
            <form>
                <div class="form-group">
                    <label for="Uname">Type</label>
                    <input type="text" class=" form-control" id="TypeTb" placeholder="Enter Username" runat="server" />
                </div>
                    <div class="form-group">
                    <label for="Uname">Brand</label>
                    <input type="text" class=" form-control" id="BrandTb" placeholder="Enter Password" runat="server" />
                </div>
                    <div class="form-group">
                    <label for="Uname">Parts</label>
                    <input type="text" class=" form-control" id="PartsTb" placeholder="Enter Address" runat="server" />
                </div>
                <br />
                <br />
                <br />
                <asp:Button type="submit" ID="editBtn" class="btn btn-danger" Text="Edit" runat="server" />
                <asp:Button type="submit" ID="saveBtn" class="btn btn-danger" Text="Save" runat="server" />
                <asp:Button type="submit" ID="deleteBtn" class="btn btn-danger" Text="Delete" runat="server" />
             </form>
                    </div>

            </div>
        </div>
        <div class="col-md-8">
            <table class="table">

            </table>
            
        </div>
    </div>
    </div>
</asp:Content>
