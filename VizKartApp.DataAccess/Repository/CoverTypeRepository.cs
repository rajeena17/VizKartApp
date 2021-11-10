using VizKartApp.DataAccess.Data;
using VizKartApp.DataAccess.Repository.IRepository;
using VizKartApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace VizKartApp.DataAccess.Repository
{
    public class CoverTypeRepository : Repository<CoverType>, ICoverTypeRepository
    {
        private readonly ApplicationDbContext _db;

        public CoverTypeRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(CoverType coverType)
        {
            var objFromDb = _db.CoverTypes.FirstOrDefault(s => s.Id == coverType.Id);
            if (objFromDb != null)
            {
                objFromDb.Name = coverType.Name;
               
            }
        }
    }
}
