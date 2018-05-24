<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="docView._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="bootstrap/js/jquery.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap/js/bootstrap-transition.js" type="text/javascript"></script>
    <script src="bootstrap/js/prettify.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap-alert.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap-modal.js" type="text/javascript"></script>
    <script src="FlexPaper/js/flexpaper_flash_debug.js" type="text/javascript"></script>
    <script src="FlexPaper/js/flexpaper_flash.js" type="text/javascript"></script>
</head>
<body>
    <%--弹出层--%>
    <div id="myModal" data-keyboard="false" data-backdrop="true" class="modal hide fade"
        style="display: none;">
        <div class="modal-header">
            <a class="close" data-dismiss="modal">×</a>
            <h3>预览文档</h3>
        </div>
        <div class="modal-body" style="width: 811px; height: 400px">
            <a id="viewerPlaceHolder" style="width: 800px; height: 480px; display: block;"></a>
            <!--设置一个隐蔽控件来得到要显示的文件的名字-->
            <input type="hidden" id="file" value="<%=UserAddress %>" />
            <script type="text/javascript">

                var fileURL = $("#file").val();
                var fp = new FlexPaperViewer(
                    'FlexPaper/FlexPaperViewer',
                    'viewerPlaceHolder',
                    {
                        config: {
                            SwfFile: escape(fileURL),
                            Scale: 0.6,
                            ZoomTransition: 'easeOut',
                            ZoomTime: 0.5,
                            ZoomInterval: 0.2,
                            FitPageOnLoad: false,
                            FitWidthOnLoad: false,
                            PrintEnabled: true,
                            FullScreenAsMaxWindow: false,
                            ProgressiveLoading: false,
                            MinZoomSize: 0.2,
                            MaxZoomSize: 5,
                            SearchMatchAll: false,
                            InitViewMode: 'Portrait',
                            ViewModeToolsVisible: true,
                            ZoomToolsVisible: true,
                            NavToolsVisible: true,
                            CursorToolsVisible: true,
                            SearchToolsVisible: true,
                            localeChain: 'en_US'
                        }
                    }
                    );
            </script>
        </div>
        <div class="modal-footer">
            <a href="#" class="btn" data-dismiss="modal">关闭</a>
            <%-- <asp:Button ID="Button2" class="btn" runat="server" Text="保存" OnClick="Button1_Click" />--%>
        </div>
    </div>
</body>
</html>
