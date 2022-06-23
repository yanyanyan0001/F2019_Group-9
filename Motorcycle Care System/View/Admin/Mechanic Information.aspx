<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Mechanic Information.aspx.cs" Inherits="Motorcycle_Care_System.View.Admin.Mechanic_Information" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Display Mechanic Info: Username, Address/Location, Phone, Password, Specialty</h2>
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
                        <input type="text" class=" form-control" id="MechanicPassTb" placeholder="Enter Password" runat="server" />
             
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
                <label id="Error2" runat="server"></label>
                <br />
                <br />
                
                <asp:Button type="submit" ID="editBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="editBtn2_Click" />
                <asp:Button type="submit" ID="saveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="saveBtn2_Click" />
                <asp:Button type="submit" ID="deleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="deleteBtn2_Click" />
             </form>
                    </div>

            </div>
        </div>
        <div class="col-md-8">
            <h1>Mechanic List</h1>
           <asp:GridView runat="server" ID="MechanicList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="MechanicList_SelectedIndexChanged">

           </asp:GridView>
            
        </div>
    </div>
    </div>
</asp:Content>
