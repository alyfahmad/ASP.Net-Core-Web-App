using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Data.SqlClient;

namespace StoreWebApp.Pages.Clients
{
    public class IndexModel : PageModel
    {
        public List<ClientInfo> ListCCllients = new List<ClientInfo>();
        public void OnGet()
        {
            try
            {
                String connectionString = "Data Source=DESKTOP-DC9H67P;Initial Catalog=Store;Integrated Security=True";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    String sql = "SELECT * FROM CLIENTS";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                ClientInfo clientInfo = new ClientInfo();
                                clientInfo.id = "" + reader.GetInt32(0);
                                clientInfo.name = reader.GetString(1);
                                clientInfo.email = reader.GetString(2);
                                clientInfo.phone = reader.GetString(3);
                                clientInfo.address = reader.GetString(4);
                                clientInfo.created_at = reader.GetDateTime(5).ToString();

                                ListCCllients.Add(clientInfo);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

            }
        }
    }

    public class ClientInfo
    {
        public string? id;
        public string? name;
        public string? email;
        public string? phone;
        public string? address;
        public string? created_at;

    }
}
