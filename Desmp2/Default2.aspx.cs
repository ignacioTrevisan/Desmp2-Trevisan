using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desmp2
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else 
            {

                cargarGridlla();
            }
        }

        public void cargarGridlla()
        {
           
            string carpeta = $"{Server.MapPath(".")}/{Session["usuario"].ToString()}";

            if (Directory.Exists(carpeta))
            {
                Button1.Text = carpeta;
                string[] files = Directory.GetFiles(carpeta);
                List<Archivo> list = new List<Archivo>();
                foreach (string file in files)
                {
                    var FileNew = new Archivo(Path.GetFileName(file), file);
                    list.Add(FileNew);
                }
                GridView1.DataSource = list;
                GridView1.DataBind();
            }
            else 
            {
                DirectoryInfo di = Directory.CreateDirectory(carpeta);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string carpeta = $"{Server.MapPath(".")}/{Session["usuario"]}";

            if (Directory.Exists(carpeta))
            {


                this.FileUpload1.SaveAs(Server.MapPath(".") + "/" + Session["usuario"] + "/" + FileUpload1.FileName);
                this.Label1.Text = "Archivo subido";
                cargarGridlla();
            }
            else
            {
                DirectoryInfo di = Directory.CreateDirectory(carpeta);
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Descargar")
            {

                GridViewRow registro = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
                string filePath = registro.Cells[2].Text;

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}