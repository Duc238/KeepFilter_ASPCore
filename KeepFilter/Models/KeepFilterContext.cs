using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace KeepFilter.Models;

public partial class KeepFilterContext : DbContext
{
    public KeepFilterContext()
    {
    }

    public KeepFilterContext(DbContextOptions<KeepFilterContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Product> Products { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Product__3214EC07409BB25D");

            entity.ToTable("Product");

            entity.Property(e => e.Category).HasMaxLength(100);
            entity.Property(e => e.Name).HasMaxLength(200);
            entity.Property(e => e.Price).HasColumnType("decimal(18, 0)");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
