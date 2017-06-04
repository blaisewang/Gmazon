<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Gmazon.Register" %>

<%@ Register Src="WebUserControlFooter.ascx" TagName="WebUserControlFooter" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8" />
    <title>Gmazon ע��</title>
    <style type="text/css">
        *
        {
            margin: 0px;
            padding: 0px;
            font-size: 12px;
            font-family: ΢���ź�;
        }
        #logo
        {
            height: 100px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="logo" style="text-align: center">
        <a href="Default.aspx">
            <img src="images/logo.png" alt="" /></a></div>
    <table width="350" border="0" style="margin: 0 auto;" cellspacing="15">
        <tr>
            <td>
                <label>
                    <span class="STYLE8">�����˻�</span>
                </label>
            </td>
        </tr>
        <tr>
            <td>
                <label>
                    <span class="STYLE6">�û���&nbsp;</span></label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBoxName" runat="server" CssClass="textboxdiv"> </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="�û�������Ϊ�գ�"
                    ControlToValidate="TextBoxName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <label>
                    <span class="STYLE6">��&nbsp;��&nbsp;</span></label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBoxPwd" runat="server" CssClass="textboxdiv" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="���벻��Ϊ�գ�"
                    ControlToValidate="TextBoxPwd"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxPwd"
                    Display="Dynamic" ErrorMessage="3��10����ĸ�����֣�" ValidationExpression="[0-9a-zA-Z]{3,10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <label>
                    <span class="STYLE6">ȷ������</span></label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBoxRePwd" runat="server" CssClass="textboxdiv" TextMode="Password">  </asp:TextBox>
                <asp:Label ID="LabelState" runat="server"></asp:Label>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="����ǰ�����벻һ�£�"
                    ControlToCompare="TextBoxPwd" ControlToValidate="TextBoxRePwd"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <label>
                    <span class="STYLE6">��֤��&nbsp;</span></label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtCheckCode" runat="server" CssClass="textboxdiv" />
                <asp:Label ID="LabelStateCode" runat="server"></asp:Label>
            </td>
            <td>
                <img id="Image" runat="server" height="25" width="80" onclick="javascript:this.src=this.src+'?'"
                    src="~/ValidateNum.aspx" alt="" style="cursor: pointer;" />
            </td>
        </tr>
        <tr align="center">
            <td style="padding-top: 20px;">
                <asp:Button ID="ButtonRegister" runat="server" Text="ȷ��" CssClass="ipt" BackColor="#f7cc68"
                    Height="35px" OnClick="ButtonRegister_Click" />
            </td>
        </tr>
    </table>
    <div style="width: 1000px; margin: 0 auto; margin-top: 100px;">
        <uc1:WebUserControlFooter ID="WebUserControlFooter1" runat="server" />
    </div>
    </form>
</body>
</html>
