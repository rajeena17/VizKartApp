using VizKartApp.DataAccess.Data;
using VizKartApp.DataAccess.Repository.IRepository;
using VizKartApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace VizKartApp.DataAccess.Repository
{
    public class OrderDetailsRepository : Repository<OrderDetails>, IOrderDetailsRepository
    {
        private readonly ApplicationDbContext _db;

        public OrderDetailsRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(OrderDetails obj)
        {
            _db.Update(obj);
        }
    }
}
