using System;
using System.Data;
using System.Data.OleDb;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for OledbConnect
/// </summary>
public class OledbConnect
{
    public OledbConnect()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static DataSet SelectTable(string SqlStr, string DbFile)
    {
        string cnstr = @"provider=Microsoft.Ace.oledb.12.0;Data source=" + HttpContext.Current.Server.MapPath("App_Data/" + DbFile);
        OleDbDataAdapter da = new OleDbDataAdapter(SqlStr, cnstr);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public static void ChangeTable(string sqlstr, string DbFile)
    {
        string cnstr = @"provider=Microsoft.Ace.oledb.12.0;Data source=" + HttpContext.Current.Server.MapPath("App_Data/" + DbFile);
        OleDbConnection conn = new OleDbConnection(cnstr);
        OleDbCommand cmd = new OleDbCommand(sqlstr, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}