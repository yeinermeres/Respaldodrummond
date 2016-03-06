using Dal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class OrdenCompraBLL
    {
        public void Addordencompra(Orden_Compra PO){
            using (var contex = new ModelContex())
            {

                contex.Orden_Compra.Add(PO);
                contex.SaveChanges();
            }
        }
    }
}
