<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpLoad.aspx.cs" Inherits="docView.UpLoad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="" Style="color: Red"></asp:Label>
    </form>
</body>
</html>
