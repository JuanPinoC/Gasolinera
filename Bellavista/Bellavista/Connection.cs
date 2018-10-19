using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Bellavista
{
    public class Connection
    {
        SqlConnection con;

        public Connection(String database)
        {
            String str = "Server=.;Database=" + database + ";Integrated Security=true;";
            con = new SqlConnection(str);
        }

        public DataTable Select(String sql)
        {
            // sql = "SELECT * FROM table";
            DataTable dt = new DataTable();

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                con.Close();
            }

            return dt;
        }

        public bool Add(String sp, String[] fields, String[] values)
        {
            if (fields.Length != values.Length)
            {
                return false;
            }
            int result = 0;
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sp, con);
                cmd.CommandType = CommandType.StoredProcedure;

                for (int i = 0; i < fields.Length; i++)
                {
                    cmd.Parameters.AddWithValue(fields[i], values[i]);
                }

                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                con.Close();
            }

            if (result > 0) return true;
            else return false;
        }
    

        public bool Execute(String sql)
        {
            int result = 0;

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                result = cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }

            if (result > 0) return true;
            return false;
        }

        public DataTable Find( String table,String[] fields )
        {
            String sql = "SELECT * FROM " + table + " ";
            String conditions = "";

            DataTable dt = new DataTable();

            for (int i = 0; i < fields.Length; i++)
            {
                if (fields[i] != null)
                {
                    if (conditions.Length != 0) conditions += " AND ";
                    conditions += fields[i];
                }
            }

            if (conditions.Length > 0) sql += " WHERE " + conditions;

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);   
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                con.Close();
            }

            return dt;
        }
    }
}