using Dal;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class AspirantesBLL
    {
        public void AddAspirante(Aspirantes a)
        {
            using (var contex = new ModelContex())
            {
                var dto = contex.Aspirantes.Where(t => t.NIT == a.NIT).FirstOrDefault();
                if (dto!=null)
                {
                    dto.NOM_RAZONSOCIAL = a.NOM_RAZONSOCIAL;
                    dto.TELEFONO = a.TELEFONO;
                    dto.DEPARTAMENTO = a.DEPARTAMENTO;
                    dto.CORREO = a.CORREO;
                    dto.DIRECCION = a.DIRECCION;
                    contex.SaveChanges();
                }
                else
                {
                    contex.Aspirantes.Add(a);
                    contex.SaveChanges();
                }
                
            }
        }

        public List<AspirantesEntity> GetAllAspirantes()
        {
            using (var contex = new ModelContex())
            {
                var dto = contex.Aspirantes.ToList();
                List<AspirantesEntity> LisAsp = new List<AspirantesEntity>();

                if (dto != null)
                {
                    foreach (var item in dto)
                    {
                        AspirantesEntity aspirante = new AspirantesEntity();
                        aspirante.ASPIRANTE_ID= item.ASPIRANTE_ID;
                        aspirante.NIT = item.NIT;
                        aspirante.NOM_RAZONSOCIAL = item.NOM_RAZONSOCIAL;
                        aspirante.CORREO = item.CORREO;
                        aspirante.DIRECCION = item.DIRECCION;
                        aspirante.CIUDAD = item.CIUDAD;
                        aspirante.DEPARTAMENTO = item.DEPARTAMENTO;
                        aspirante.TELEFONO = item.TELEFONO;
                        LisAsp.Add(aspirante);
                    }
                    return LisAsp;
                }

                return LisAsp;
            }
        }

        public void UpdateAspirante(int id, Aspirantes Asp)
        {
            using (var contex = new ModelContex())
            {
                var dto = contex.Aspirantes.Where(t => t.ASPIRANTE_ID == id).First();
                if (dto != null)
                {
                    dto.NIT = Asp.NIT;
                    dto.NOM_RAZONSOCIAL = Asp.NOM_RAZONSOCIAL;
                    dto.CORREO = Asp.CORREO;
                    dto.DIRECCION = Asp.DIRECCION;
                    dto.CIUDAD = Asp.CIUDAD;
                    dto.DEPARTAMENTO = Asp.DEPARTAMENTO;
                    dto.TELEFONO = Asp.TELEFONO;
                    contex.SaveChanges();
                }
            }
        }
    }
}
