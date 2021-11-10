using VizKartApp.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace VizKartApp.DataAccess.Repository.IRepository
{
    public interface IOrderHeaderRepository : IRepository<OrderHeader>
    {
        void Update(OrderHeader obj);
    }
}
