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
    
    public partial class Supplier
    {
        public Supplier()
        {
            this.SupplierLists = new HashSet<SupplierList>();
        }
    
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string ZipCode { get; set; }
        public string EmailAddress { get; set; }
        public string WebPageAddress { get; set; }
        public string SupplierCode { get; set; }
        public string Country { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string TaxNumber { get; set; }
        public string PhoneNumber { get; set; }
        public bool Active { get; set; }
        public string CompanyName { get; set; }
        public string FaxNumber { get; set; }
        public string Notes { get; set; }
        public decimal MinimumOrderAmmount { get; set; }
    
        public virtual ICollection<SupplierList> SupplierLists { get; set; }
    }
}
