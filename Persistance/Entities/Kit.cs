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
    
    public partial class Kit
    {
        public Kit()
        {
            this.KitEntries = new HashSet<KitEntry>();
        }
    
        public int ID { get; set; }
        public int ItemID { get; set; }
        public Nullable<double> Quantity { get; set; }
        public Nullable<decimal> Price { get; set; }
        public string Description { get; set; }
        public Nullable<System.DateTime> DateCreated { get; set; }
        public Nullable<System.DateTime> LastUpdated { get; set; }
    
        public virtual Item Item { get; set; }
        public virtual ICollection<KitEntry> KitEntries { get; set; }
    }
}
