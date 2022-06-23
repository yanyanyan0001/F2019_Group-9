<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Motorcycle_Care_System.View.Admin.MotorsINFO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class="container-fluid mt-5 ml-5">
                <div class="row">
                   <center><h1>Motor Care Management System</h1></center>
                </div>

            </div>
    <br />
    <br />
            <div class="row">
  <div class="col-lg-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Customer</h5>
        <p class="card-text">no. of Customers</p>
        <a href="Customer Information.aspx" class="btn btn-primary">View</a>
      </div>
    </div>
  </div>
  <div class="col-lg-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Motors</h5>
        <p class="card-text">no of. Motors</p>
        <a href="Motor Information.aspx" class="btn btn-primary">View</a>
      </div>
    </div>
  </div>
  <div class="col-lg-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Mechanic</h5>
        <p class="card-text">no of. Mechanic</p>
        <a href="Mechanic Information.aspx" class="btn btn-primary">View</a>
      </div>
    </div>
  </div>
</div>
   
</asp:Content>
