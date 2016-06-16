using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MailBox
{
    public class DBO
    {
        SqlConnection cnn;
        SqlCommand cmd;
        public DBO()
        {
            this.cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString.ToString());
            this.cnn.Open();
        }
        public void Close()
        {
            this.cnn.Close();
        }
        public bool Insert(User u)
        {
            try
            {
                using (cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "UserInsert";
                    cmd.Parameters.AddWithValue("@Firstname", u.Firstname);
                    cmd.Parameters.AddWithValue("@Lastname", u.Lastname);
                    cmd.Parameters.AddWithValue("@Mail", u.Mail);
                    cmd.Parameters.AddWithValue("@TypeOfSubscriber", u.Type);
                    cmd.Parameters.AddWithValue("@Category1", Convert.ToInt32(u.Category[0]));
                    cmd.Parameters.AddWithValue("@Country", u.Country);
                    cmd.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                cnn.Close();
                cmd.Dispose();
            }
        }
        public bool Insert1(User u)
        {
            try
            {
                using (cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "UserInsert1";
                    cmd.Parameters.AddWithValue("@Firstname", u.Firstname);
                    cmd.Parameters.AddWithValue("@Lastname", u.Lastname);
                    cmd.Parameters.AddWithValue("@Mail", u.Mail);
                    cmd.Parameters.AddWithValue("@TypeOfSubscriber", u.Type);
                    cmd.Parameters.AddWithValue("@Category1", u.Category[0]);
                    cmd.Parameters.AddWithValue("@Category2", u.Category[1]);
                    cmd.Parameters.AddWithValue("@Country", u.Country);
                    cmd.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {                
                return false;
            }
            finally
            {
                cnn.Close();
                cmd.Dispose();
            }
        }
        public bool Insert2(User u)
        {
            try
            {
                using (cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "UserInsert2";
                    cmd.Parameters.AddWithValue("@Firstname", u.Firstname);
                    cmd.Parameters.AddWithValue("@Lastname", u.Lastname);
                    cmd.Parameters.AddWithValue("@Mail", u.Mail);
                    cmd.Parameters.AddWithValue("@TypeOfSubscriber", u.Type);
                    cmd.Parameters.AddWithValue("@Category1", u.Category[0]);
                    cmd.Parameters.AddWithValue("@Category2", u.Category[1]);
                    cmd.Parameters.AddWithValue("@Category3", u.Category[2]);
                    cmd.Parameters.AddWithValue("@Country", u.Country);
                    cmd.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                cnn.Close();
                cmd.Dispose();
            }
        }

    }
}