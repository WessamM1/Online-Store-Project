using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.OleDb;

/// <summary>
/// Summary description for Credit
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Credit : System.Web.Services.WebService
{

    public Credit()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public bool ValidCard(string Type, string CardNO, string HolderName, string HolderID, string valid, string cvv)
    {
        string SqlStr = "select * from cardinfo where Type='" + Type + "'and CardNO='" + CardNO + "'and HolderName='" + HolderName + "'and HolderID='" + HolderID + "'and valid='" + valid + "'and cvv='" + cvv + "'";
       DataSet ds = new DataSet();
        ds = OledbConnect.SelectTable(SqlStr, "Creditinfo.accdb");
        DataTable dt = ds.Tables[0];
        if (dt.Rows.Count > 0)
            return true;
        return false;
            }
    [WebMethod]
    public void AddCredit(double price,string CardNo)
    {
        string SqlStr = "update  [cardinfo] set [Balance]=Balance+" + price + " where CardNo='" + CardNo + "'";
        OledbConnect.ChangeTable(SqlStr,"CreditInfo.accdb");
    }


}
