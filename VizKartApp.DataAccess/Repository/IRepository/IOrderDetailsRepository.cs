using VizKartApp.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace VizKartApp.DataAccess.Repository.IRepository
{
    public interface IOrderDetailsRepository : IRepository<OrderDetails>
    {
        void Update(OrderDetails obj);
    }
}
