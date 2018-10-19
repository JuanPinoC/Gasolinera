using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Bellavista
{
    public partial class ListadoUsuarios : System.Web.UI.Page
    {
        Connection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Connection("Gasolinera");

            DataTable dt = con.Select("SELECT * FROM Usuario");

            foreach (DataRow row in dt.Rows)
            {
                TableRow fila = new TableRow();
                
                TableCell[] cells = new TableCell[5];

                cells[0].Text = row["id_codigo_usu"].ToString();
                cells[1].Text = row["nom_ape_usu"].ToString();
                cells[2].Text = row["tipo_usu"].ToString();
                cells[3].Text = row["nickname_usu"].ToString();
                cells[4].Text = row["password_usu"].ToString();

                foreach (TableCell cell in cells)
                {
                    fila.Cells.Add(cell);
                }
                
                tableList.Rows.Add(fila);
            }

        }
    }
}