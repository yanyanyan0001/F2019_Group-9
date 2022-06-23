<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Motorcycle_Care_System.View.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="../Assets/Library/css/bootstrap.min.css" />
</head>
<body>
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-5">
                <div class="row mt-5">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-success">Register</h3>
                        
                    </div>
                   
                    <div class="col"></div>
                </div>
                   <br />
                    <br />
                <div>
                
              <form runat="server">
                    <div class="form-group">
                         <label>Select Role:</label>
                    <asp:DropDownList ID="RoleTb" runat="server">
                        <asp:ListItem>Rider</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
       
                    </asp:DropDownList>
                    </div>
                  <br />
                  <br />
    
   
       <div class="form-group">
                    <label for="Uname">Username</label>
                    <input type="text" class=" form-control" id="registerUsername" placeholder="Enter Username" runat="server" />
                       
                </div>
             

       <div class="form-group">
                    <label for="Uname">Password</label>
                    <input type="text" class=" form-control" id="registerPassword" placeholder="Password" runat="server" />
                       
                </div>

      <div class="form-group">
                    <label for="Uname">Repeat Password</label>
                    <input type="text" class=" form-control" id="registerRepeatPassword" placeholder="Repeat Password" runat="server" />
                       
                </div>
                      <div class="form-group">
                    <label for="Uname">Address</label>
                    <input type="text" class=" form-control" id="registerAddress" placeholder="Address" runat="server" />
                       
                </div>
                      <div class="form-group">
                    <label for="Uname">Contact</label>
                    <input type="text" class=" form-control" id="registerContact" placeholder="Enter Phone Number" runat="server" />
                       
                </div>
                  <p> <a href="Mech Register.aspx" class="link-info">Apply as a Mechanic</a></p>

          <label id="lblreg" runat="server"></label>
         <div class="form-group d-grid">
          <asp:Button type="submit" id="RegisterBtn" class="btn btn-success btn-block" Text="Register" runat="server" OnClick="RegisterBtn_Click"/>
          </div>
                     <br />
                    <br />
                  <div> <p>Already have an account? <a href="Login.aspx" class="link-info">Login here</a></p></div>
                  
</form>
   </div>
        </div>
    </div>
   
</body>
</html>
