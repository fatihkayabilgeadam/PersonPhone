namespace PhoneGuideAPI_ENTITY
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PersonPhone")]
    public partial class PersonPhone
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        public int PersonID { get; set; }

        public int PhoneNumberID { get; set; }

        public virtual Person Person { get; set; }

        public virtual Phone Phone { get; set; }
    }
}
