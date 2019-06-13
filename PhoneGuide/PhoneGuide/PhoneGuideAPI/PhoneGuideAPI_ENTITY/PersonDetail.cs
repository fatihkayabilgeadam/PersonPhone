namespace PhoneGuideAPI_ENTITY
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PersonDetail")]
    public partial class PersonDetail
    {
        public int ID { get; set; }

        public int? PersonID { get; set; }

        [StringLength(100)]
        public string Address { get; set; }

        [StringLength(50)]
        public string Mail { get; set; }

        public virtual Person Person { get; set; }
    }
}
