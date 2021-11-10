using VizKartApp.DataAccess.Data;
using VizKartApp.DataAccess.Repository.IRepository;
using VizKartApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace VizKartApp.DataAccess.Repository
{
    public class OrderHeaderRepository : Repository<OrderHeader>, IOrderHeaderRepository
    {
        private readonly ApplicationDbContext _db;

        public OrderHeaderRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(OrderHeader obj)
        {
            _db.Update(obj);
        }
    }
}
