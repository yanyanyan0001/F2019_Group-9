<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Motorcycle_Care_System.View.Login" %>

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
                        <h3 class="text-success">Motor Care Managament System</h3>
                        
                    </div>
                    <div class="col"></div>
                </div>
                <form runat="server">
                    <div class="form-group">
                                   
                    <label for="Uname">Username</label>
                    <input type="text" class=" form-control" id="UserNameTb" placeholder="Enter Username" runat="server" required="required" />
                </div>
                    <div class="form-group">
                    <label for="Uname">Password</label>
                    <input type="password" class=" form-control" id="UserPassTb" placeholder="Enter Password" runat="server" required="required"/>
                </div>   
                    <div class="form-group">
                    
                    
                    <input type="radio" class="form-check-input" id="CustomerRadio" name="Role" runat="server"/>
                    <label class="form-check-label" for="exCheck1">Rider</label>
                    <input type="radio" class="form-check-input" id="AdminRadio" name="Role" runat="server" />
                    <label class="form-check-label" for="exCheck1">Admin</label>
                    <input type="radio" class="form-check-input" id="MechanicRadio" name="Role" runat="server" />
                    <label class="form-check-label" for="exCheck1">Mechanic</label>
                    
                </div>           
                <br />
                     <label id="lblmsg" runat="server"></label>
                <div class="form-group d-grid">
                    <asp:Button type="submit" id="SaveBtn" class="btn btn-success btn-block" Text="Login" runat="server" OnClick="SaveBtn_Click" />
                </div>
                <p class="small mb-5 pb-lg-2"><a class="text-muted" href="ForgotPass.aspx">Forgot password?</a></p>
            <p>Don't have an account? <a href="Register.aspx" class="link-info">Register here</a></p>

            </div>
                </form>
        </div>
    </div>
</body>
</html>
