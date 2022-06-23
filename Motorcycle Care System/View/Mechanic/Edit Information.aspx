<%@ Page Title="" Language="C#" MasterPageFile="~/View/Mechanic/MechanicMaster.Master" AutoEventWireup="true" CodeBehind="Edit Information.aspx.cs" Inherits="Motorcycle_Care_System.View.Mechanic.Edit_Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Edit Information: update location or edit name of mechanic or delete account</h1>
      <div class="container-fluid">
    <div class="row">
        <div class="col md-4">
            <div class="row">
                <div class="col">
            <form>
                <div class="form-group">
                    <label for="Uname">Username</label>
                    <input type="text" class=" form-control" id="MechanicUnameTb" placeholder="Enter Username" runat="server" />
                </div>
                    <div class="form-group">
                    <label for="Uname">Password</label>
                    <input type="password" class=" form-control" id="MechanicPassTb" placeholder="Enter Password" runat="server" />
                </div>
                    <div class="form-group">
                    <label for="Uname">Address</label>
                    <input type="text" class=" form-control" id="MechanicAddressTb" placeholder="Enter Address" runat="server" />
                </div>
                    <div class="form-group">
                    <label for="Uname">Contact</label>
                    <input type="text" class=" form-control" id="MechanicContactTb" placeholder="Enter Phone Number" runat="server" />
                </div>
                <div class="form-group">
                    <label for="Uname">Specialty</label>
                    <input type="text" class=" form-control" id="SpecialtyTb" placeholder="" runat="server" />
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
