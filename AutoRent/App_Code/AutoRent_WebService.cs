using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;

/// <summary>
/// Summary description for AutoRent_WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.ComponentModel.ToolboxItem(false)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class AutoRent_WebService : System.Web.Services.WebService
{
    static SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-UQ68ATU\SQLEXPRESS;Initial Catalog=CarRent;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

    

    [WebMethod]
    public bool SignInAvailable(string name, string password)
    {

        if (userExist(name))
        {

            conn.Open();
            string pw = "";
            string query = "SELECT Password FROM Users WHERE CONVERT(NVARCHAR, User_name) = '" + name + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                pw = sdr.GetString(0);
            }
            conn.Close();
            if (pw == password) return true;
        }
        return false;
    }

    // iraso vartotoja
    [WebMethod]
    public void insertUser(string name, string password, string email)
    {
        conn.Open();
        string query = "INSERT INTO Users(User_name, Password, Email) VALUES(@name,@password,@email)";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@password", password);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    // tikrina ar toks vartotojas jau yra
    [WebMethod]
    public bool userExist(string name)
    {
        conn.Open();
        string query = "SELECT * FROM Users WHERE Convert(VARCHAR, User_Name) = '" + name + "'";
        SqlCommand cmd = new SqlCommand(query, conn);
        object obj = cmd.ExecuteScalar();
        conn.Close();
        if (obj == null) return false;
        return true;
    }
    // grazina automobiliu pavadinimus
    [WebMethod]
    public List<string> GetModel()
    {
        conn.Open();
        List<string> modelList = new List<string>();
        string query = "SELECT Model FROM Vehicle";
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            modelList.Add(sdr.GetString(0));
        }
        conn.Close();
        return modelList;
    }
    // grazina automobiliu nuomos dienas
    [WebMethod]
    public List<string> GetDays()
    {
        conn.Open();
        List<string> dayList = new List<string>();
        string query = "SELECT Price FROM PriceList";
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            dayList.Add(sdr.GetString(0));
        }
        conn.Close();
        return dayList;
    }
    [WebMethod]
    //Iraso nuomos forma
    public void insertForm(string name, string lastname, string number, string car, string price)
    {
        conn.Open();
        string query = "INSERT INTO Rental(First_name, Last_name, Phone, Model, Days) VALUES(@name,@last,@phone,@car,@price)";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@last", lastname);
        cmd.Parameters.AddWithValue("@phone", number);
        cmd.Parameters.AddWithValue("@car", car);
        cmd.Parameters.AddWithValue("@price", price);
        cmd.ExecuteNonQuery();
        conn.Close();
    }


}
