﻿using Dal;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public  class AseguradorasBLL
    {
       public void AddAseguradora (Aseguradoras a){
           using(var contex = new ModelContex())
	        {
		       contex.Aseguradoras.Add(a);
               contex.SaveChanges();
	        }
       }


       public List<AseguradorasEntity> GestAseguradora()
       {
           using (var contex = new ModelContex())
           {
               var dto = contex.Aseguradoras.ToList();
               List<AseguradorasEntity> lisam = new List<AseguradorasEntity>();
               foreach (var item in dto)
               {
                   AseguradorasEntity asg = new AseguradorasEntity();

                   asg.ESTADO_ASG = item.ESTADO_ASG;
                   asg.ID_ASG = item.ID_ASG;
                   asg.NIT_ASG = item.NIT_ASG;
                   asg.NOMBRE_ASG = item.NOMBRE_ASG;
                   lisam.Add(asg);
               }
               return lisam;
           }

       }
    }
}
