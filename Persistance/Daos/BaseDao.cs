using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Pos.Cspos.Persistance.Entities;
using System.Configuration;
using System.Data.EntityClient;

namespace Pos.Cspos.Persistance.Daos.Intefaces
{
    public class BaseDao
    {
        private CPosContext _context = null;
        private void init()
        {
            var st = ConfigurationManager.ConnectionStrings["POSSqlConnection"];

            //  string url = "Data Source=.\\SQLEXPRESS;Initial Catalog=cpos;Integrated Security=True;Persist Security Info=False;MultipleActiveResultSets=True;Connect Timeout=120";
            var en = new EntityConnectionStringBuilder();
            en.Provider = "System.Data.SqlClient";
            en.ProviderConnectionString = st.ToString();
            en.Metadata = @"res://*/Entities.Model1.csdl|res://*/Entities.Model1.ssdl|res://*/Entities.Model1.msl";
            string str = en.ToString();
            _context = new CPosContext(str);
        }
        public CPosContext Context
        {
            get
            {
                if (_context == null)
                    init();
                return _context;
            }
        }
        public void SaveChanges()
        {
            Context.SaveChanges();
        }
    }
}
