using VizKartApp.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace VizKartApp.DataAccess.Repository.IRepository
{
    public interface ICategoryRepository : IRepositoryAsync<Category>
    {
        void Update(Category category);
    }
}
