//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Pos.Cspos.Persistance.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Department
    {
        public Department()
        {
            this.Categories = new HashSet<Category>();
            this.Items = new HashSet<Item>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<bool> Active { get; set; }
        public Nullable<System.DateTime> LastUpdated { get; set; }
    
        public virtual ICollection<Category> Categories { get; set; }
        public virtual ICollection<Item> Items { get; set; }
    }
}
