using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Pos.Cspos.Persistance.Daos.Intefaces;
using Pos.Cspos.Persistance.Entities;

namespace Pos.Cspos.Persistance.Daos
{
    public class CustomerDao:BaseDao,ICustomerDao
    {
        public CustomerDao()
        {
        }
        public void Save(Customer c)
        {
            if (c.ID == 0)
                Context.Customers.Add(c);
            SaveChanges();
        }
        public Customer findCustomerByID(int id)
        {
          Customer cc=  Context.Customers.FirstOrDefault(c => c.ID == id);
          return cc;
        }
    }
}
