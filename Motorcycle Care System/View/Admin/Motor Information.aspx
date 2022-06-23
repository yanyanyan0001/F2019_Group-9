<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Motor Information.aspx.cs" Inherits="Motorcycle_Care_System.View.Admin.Motor_Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Display Motor: Number of motor and types and brand and user</h2>
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
                <button type="submit" class="btn btn-primary btn bg-warning">Edit</button>
                 <button type="submit" class="btn btn-primary btn bg-success">Save</button>
                 <button type="submit" class="btn btn-primary btn bg-danger">Delete</button>
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
