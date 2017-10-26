using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Pos.Cspos.Persistance.Entities;

namespace Pos.Cspos.Persistance.Daos.Intefaces
{
    public interface ICustomerDao
    {
        void Save(Customer c);
    }
}
