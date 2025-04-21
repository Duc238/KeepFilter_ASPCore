using KeepFilter.Models;
using Microsoft.AspNetCore.Mvc;

namespace KeepFilter.Controllers
{
    public class ProductsController : Controller
    {
        private readonly KeepFilterContext _context;

        public ProductsController(KeepFilterContext context)
        {
            _context = context;
        }

        public IActionResult Index(ProductFilterModel filter)
        {
            var products = _context.Products.AsQueryable();

            if (!string.IsNullOrEmpty(filter.Name))
                products = products.Where(p => p.Name.Contains(filter.Name));

            if (!string.IsNullOrEmpty(filter.Category))
                products = products.Where(p => p.Category.Contains(filter.Category));

            if (filter.Price.HasValue)
                products = products.Where(p => p.Price >= filter.Price);

            //if (filter.PriceTo.HasValue)
            //    products = products.Where(p => p.Price <= filter.PriceTo);

            ViewBag.Filter = filter;

            return View(products.ToList());
        }
    }
}
