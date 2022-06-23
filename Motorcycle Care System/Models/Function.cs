using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Motorcycle_Care_System.Models
{
    public class Function
    {
        private SqlConnection Con;
        private SqlCommand com;
        private DataTable dt;
        private string Constr;
        private SqlDataAdapter sda;

        public Function()
        {
            Constr = @"Data Source=user-pc\sqlexpress;Initial Catalog=MotorCareDB;Integrated Security=True; Connect Timeout=30";
            Con = new SqlConnection(Constr);
            com = new SqlCommand();
            com.Connection = Con;
        }
        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query, Constr);
            sda.Fill(dt);
            return dt;
        }
        public int SetData(string Query)
        {
            int fix = 0;
            if(Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            com.CommandText = Query;
            fix = com.ExecuteNonQuery();
            Con.Close();
            return fix;
        }

    }
}