<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrationpage.aspx.cs" Inherits="Registrationsql.registrationpage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">  
    <title>Sample Registration Page</title>  
    <style type="text/css">  
        .style1 {  
            width: 100%;  
        }  
    </style>  
</head>  
<body>  
    <form id="form1" runat="server">  
        <div>  
            <table class="style1">  
                <tr>  
                    <td>Full Name:</td>  
                    <td>  
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Username:</td>  
                    <td>  
                        <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Password:</td>  
                    <td>  
                        <asp:TextBox ID="TxtPassword" runat="server"  
                                     TextMode="Password"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Re Password:</td>  
                    <td>  
                        <asp:TextBox ID="TxtRePassword" runat="server"  
                                     TextMode="Password"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Address:</td>  
                    <td>  
                        <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Age:</td>  
                    <td>  
                        <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Gender:</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList1" runat="server"  
                                          AppendDataBoundItems="true">  
                            <asp:ListItem Value="-1">Select</asp:ListItem>  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr>  
            </table>  
        </div>
        <div>
            <p runat="server" id="reportreg"> </p>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Save" Onclick="Button1_Click" />  
    </form>  
</body>  
</html>  
