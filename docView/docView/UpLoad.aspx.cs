using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace docView
{
    public partial class UpLoad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {               
                string type = Path.GetExtension(FileUpload1.FileName).ToLower();
                string fileName = Path.GetFileNameWithoutExtension(FileUpload1.FileName);

                string path = Server.MapPath("/doc/" + FileUpload1.FileName);
                this.FileUpload1.SaveAs(path);

                test(path, type, fileName);
            }
        }
        public void test(string sourcePath, string type, string fileName)
        {
            try
            {
                string a = type;
                Office2Pdf office2pdf = new Office2Pdf();
                string savePath = Server.MapPath("~/doc/");
                string targetPath = savePath +fileName+ ".pdf";

                bool flag = true;
                if (a == ".doc" || a == ".docx")
                {
                    if (!office2pdf.DOCConvertToPDF(sourcePath, targetPath))
                    {
                        flag = false;
                    }
                }
                else if (a == ".ppt" || a == ".pptx")
                {
                    if (!office2pdf.PPTConvertToPDF(sourcePath, targetPath))
                    {
                        flag = false;
                    }
                }
                else if (a == ".xlsx" || a == ".xls")
                {
                    if (!office2pdf.XLSConvertToPDF(sourcePath, targetPath))
                    {
                        flag = false;
                    }
                }
                else
                {
                    flag = false;
                }

                if (flag)
                {
                    Label1.Text = "上传成功！";
                    convertToswf(fileName);
                }
                else
                {
                    Label1.Text = "文件上传失败，请重新上传！";
                }
            }
            catch (Exception ee)
            {

                Label1.Text = ee.Message;
            }
        }
        private void convertToswf(string fileName)
        {
                    string cmdStr = HttpContext.Current.Server.MapPath("~/SWFTools/pdf2swf.exe");
                    string savePath = HttpContext.Current.Server.MapPath("~/doc/");
                    //string aa = DateTime.Now.ToString("yyyymmddhhmmss");
                    string sourcePath = @"""" + savePath + fileName + ".pdf" + @"""";
                    string targetPath = @"""" + savePath + fileName + ".swf" + @"""";
                                                                                                             
                    string argsStr = "  -t " + sourcePath + " -s flashversion=9 -o " + targetPath;
                    ExcutedCmd(cmdStr, argsStr);
        }
        private static void ExcutedCmd(string cmd, string args)
        {
            using (Process p = new Process())
            {

                ProcessStartInfo psi = new ProcessStartInfo(cmd, args);
                p.StartInfo = psi;
                p.Start();
                p.WaitForExit();
            }
        }
    }
}