<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gmazon.Login" %>

<%@ Register Src="WebUserControlFooter.ascx" TagName="WebUserControlFooter" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8" />
    <title>Gmazon ��½</title>
    <style type="text/css">
        *
        {
            margin: 0px;
            padding: 0px;
            font-size: 12px;
            font-family: ΢���ź�;
        }
        input.ipt
        {
            width: 300px;
            height: 24px;
            border-radius: 5px;
            border: solid 1px #000000;
            padding-left: 5px;
            cursor: pointer;
        }
        .textboxdiv
        {
            width: 300px;
            height: 24px;
            border-radius: 5px;
            border: solid 1px #000000;
            padding-left: 5px;
        }
        .STYLE6
        {
            font-family: "����";
            font-weight: bold;
        }
        .STYLE8
        {
            font-family: ΢���ź� light;
            font-weight: bold;
            font-size: 30px;
        }
        #logo
        {
            height: 100px;
        }
    </style>
</head>
<body>
    <form id="Form1" runat="server">
    <div id="logo" style="text-align: center">
        <a href="Default.aspx">
            <img src="images/logo.png" alt="" /></a></div>
    <table width="300" border="0" style="margin: 0 auto;" cellspacing="15">
        <tr>
            <td>
                <label>
                    <span class="STYLE8">��½</span>
                </label>
            </td>
        </tr>
        <tr>
            <td>
                <label>
                    <span class="STYLE6">�û���</span>&nbsp;
                </label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:TextBox ID="TextBoxUsername" runat="server" CssClass="textboxdiv"> </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="�û�������Ϊ�գ�"
                    ControlToValidate="TextBoxUsername"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <label>
                    <span class="STYLE6">��&nbsp;��</span>&nbsp;</label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:TextBox ID="TextBoxPassword" runat="server" CssClass="textboxdiv" TextMode="Password">  </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="���벻��Ϊ�գ�"
                    ControlToValidate="TextBoxPassword"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="LabelState" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="ButtonLogin" runat="server" Text="��¼" CssClass="ipt" BackColor="#f7cc68"
                    Height="35px" OnClick="ButtonLogin_Click" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="ButtonRegister" runat="server" Text="ע��" CssClass="ipt" Height="35px"
                    OnClick="ButtonRegister_Click" CausesValidation="false" />
            </td>
        </tr>
    </table>
    <div style="width: 1000px; margin: 0 auto; margin-top: 200px;">
        <uc1:WebUserControlFooter ID="WebUserControlFooter1" runat="server" />
    </div>
    </form>
</body>
</html>
