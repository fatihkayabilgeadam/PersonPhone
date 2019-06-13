namespace PhoneGuideAPI_DAL
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using PhoneGuideAPI_ENTITY;

    public partial class DataContext : DbContext
    {
        public DataContext()
            : base("name=DataContext")
        {
        }

        public virtual DbSet<Person> Person { get; set; }
        public virtual DbSet<PersonDetail> PersonDetail { get; set; }
        public virtual DbSet<PersonPhone> PersonPhone { get; set; }
        public virtual DbSet<Phone> Phone { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            //    modelBuilder.Entity<Person>()
            //        .HasMany(e => e.PersonPhone)
            //        .WithRequired(e => e.Person)
            //        .WillCascadeOnDelete(false);

            //modelBuilder.Entity<Phone>()
            //    .HasMany(e => e.PersonPhone)
            //    .WithRequired(e => e.Phone)
            //    .HasForeignKey(e => e.PhoneNumberID)
            //    .WillCascadeOnDelete(false);
        }
    }
}
