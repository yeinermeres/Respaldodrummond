namespace Dal.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambios : DbMigration
    {
        public override void Up()
        {
            /*CreateTable(
                "dbo.Archivo_Ruta",
                c => new
                    {
                        ID_RUTA = c.Int(nullable: false, identity: true),
                        RUTA = c.String(),
                        PROCESO_ARCHIVO = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID_RUTA)
                .ForeignKey("dbo.Proceso_Competitivo", t => t.PROCESO_ARCHIVO, cascadeDelete: true)
                .Index(t => t.PROCESO_ARCHIVO);
            
            CreateTable(
                "dbo.Proceso_Competitivo",
                c => new
                    {
                        ID_COMPETITIVO = c.Int(nullable: false, identity: true),
                        CATEGORIA = c.String(),
                        TIPO = c.String(),
                        ORIGEN = c.String(),
                        FAMILIA = c.String(),
                        COMP_ADQUISICION = c.String(),
                        DESC_GENERAL = c.String(),
                        PROCESO = c.String(),
                        PROCESO_INICIO = c.String(),
                        TIEMPO_PROCESO = c.Int(nullable: false),
                        FECHA_INICO = c.String(),
                        FECHA_INIC_SERVICE = c.String(),
                        TIEMPO_EJECUCION = c.Int(nullable: false),
                        DETALLE_PS = c.String(),
                        CANTIDAD = c.Int(nullable: false),
                        UNIDAD = c.String(),
                        LUGAR_EJECUCION = c.String(),
                        PRESUPUESTO = c.Decimal(nullable: false, precision: 18, scale: 2),
                        VALOR_TOTAL = c.Decimal(nullable: false, precision: 18, scale: 2),
                        ESTADO_PROC = c.String(),
                        TIPO_MONEDA = c.String(),
                        PROYECTO_COMPETITIVO = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID_COMPETITIVO)
                .ForeignKey("dbo.Proyectoes", t => t.PROYECTO_COMPETITIVO, cascadeDelete: true)
                .Index(t => t.PROYECTO_COMPETITIVO);
            
            CreateTable(
                "dbo.Aspirante_Proceso",
                c => new
                    {
                        ID_ASPIRANTEPROCESO = c.Int(nullable: false, identity: true),
                        ID_ASPIRANTE = c.Int(nullable: false),
                        ID_PROCESO = c.Int(nullable: false),
                        RUTA = c.String(),
                    })
                .PrimaryKey(t => t.ID_ASPIRANTEPROCESO)
                .ForeignKey("dbo.Proceso_Competitivo", t => t.ID_PROCESO, cascadeDelete: true)
                .ForeignKey("dbo.Aspirantes", t => t.ID_ASPIRANTE, cascadeDelete: true)
                .Index(t => t.ID_ASPIRANTE)
                .Index(t => t.ID_PROCESO);
            
            CreateTable(
                "dbo.Oferta_Mercantil",
                c => new
                    {
                        N_OFM = c.String(nullable: false, maxLength: 128),
                        ID_OFERTA = c.Int(nullable: false, identity: true),
                        FECHA_SUSCRIP_OFM = c.String(),
                        FECHA_INIC_OFM = c.String(),
                        VIGENCIA = c.Int(nullable: false),
                        TITULO_OFM = c.String(),
                        CONTRATISTA = c.Int(nullable: false),
                        OBJETO_OFM = c.String(),
                        LUGRA_EJECUCION_OFM = c.String(),
                        TIPO_MONEDA = c.String(),
                        VALOR_ESTIMAO_OFM = c.Decimal(nullable: false, precision: 18, scale: 2),
                        VALOR_REAL_OFM = c.Decimal(nullable: false, precision: 18, scale: 2),
                        PROC_OFM = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.N_OFM)
                .ForeignKey("dbo.Proceso_Competitivo", t => t.PROC_OFM, cascadeDelete: true)
                .Index(t => t.PROC_OFM);
            
            CreateTable(
                "dbo.Proyectoes",
                c => new
                    {
                        PROYEC_ID = c.Int(nullable: false, identity: true),
                        B_U = c.String(),
                        GL_UNIT = c.String(),
                        AFE = c.String(),
                        CONTRATO = c.String(),
                        PROGRAMA = c.String(),
                        PROYECTO = c.String(),
                        AREA = c.String(),
                        ESTADO_PROYEC = c.String(),
                        PROYEC_MANAGER = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.PROYEC_ID)
                .ForeignKey("dbo.Proyec_Manager", t => t.PROYEC_MANAGER, cascadeDelete: true)
                .Index(t => t.PROYEC_MANAGER);
            
            CreateTable(
                "dbo.Proyec_Manager",
                c => new
                    {
                        ID_PROMANAGER = c.Int(nullable: false, identity: true),
                        DOCUMENTO = c.String(),
                        NOMBRE = c.String(),
                        P_APELLIDO = c.String(),
                        S_APELLIDO = c.String(),
                        CARGO = c.String(),
                    })
                .PrimaryKey(t => t.ID_PROMANAGER);
            
            CreateTable(
                "dbo.Aspirantes",
                c => new
                    {
                        ASPIRANTE_ID = c.Int(nullable: false, identity: true),
                        NIT_CEDULA = c.String(),
                        NOM_RAZONSOCIAL = c.String(),
                        CORREO = c.String(),
                        DIRECCION = c.String(),
                        CIUDAD = c.String(),
                        DEPARTAMENTO = c.String(),
                        TELEFONO = c.String(),
                    })
                .PrimaryKey(t => t.ASPIRANTE_ID);
            
            CreateTable(
                "dbo.Configuraciones",
                c => new
                    {
                        CONFIG_ID = c.Int(nullable: false, identity: true),
                        NOMBRE_CONFIG = c.String(),
                        TIPO_CONFIG = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CONFIG_ID);
            
            CreateTable(
                "dbo.Orden_Compra",
                c => new
                    {
                        NUMERO_PO = c.String(nullable: false, maxLength: 128),
                        ID_PO = c.Int(nullable: false, identity: true),
                        FECHA_CREACION = c.String(),
                        PROVEEDOR = c.Int(nullable: false),
                        JURISDICCION_PO = c.String(),
                        AFE_PO = c.String(),
                        NO_OFM = c.String(),
                        ESTADO_PO = c.String(),
                    })
                .PrimaryKey(t => t.NUMERO_PO);
            
            CreateTable(
                "dbo.Polizas",
                c => new
                    {
                        NO_POLIZAS = c.Int(nullable: false, identity: true),
                        COD_POLIZA = c.String(),
                        FECHA_INI_POL = c.String(),
                        FECHA_FINAL_POL = c.String(),
                        ASEGURADORA = c.String(),
                        VALOR_POLIZA = c.Decimal(nullable: false, precision: 18, scale: 2),
                        TIPO_POLIZA = c.String(),
                        VALOR_ASEGURADO = c.Decimal(nullable: false, precision: 18, scale: 2),
                        OFERTAMERCANTIL = c.String(),
                    })
                .PrimaryKey(t => t.NO_POLIZAS);*/
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Aspirante_Proceso", "ID_ASPIRANTE", "dbo.Aspirantes");
            DropForeignKey("dbo.Archivo_Ruta", "PROCESO_ARCHIVO", "dbo.Proceso_Competitivo");
            DropForeignKey("dbo.Proyectoes", "PROYEC_MANAGER", "dbo.Proyec_Manager");
            DropForeignKey("dbo.Proceso_Competitivo", "PROYECTO_COMPETITIVO", "dbo.Proyectoes");
            DropForeignKey("dbo.Oferta_Mercantil", "PROC_OFM", "dbo.Proceso_Competitivo");
            DropForeignKey("dbo.Aspirante_Proceso", "ID_PROCESO", "dbo.Proceso_Competitivo");
            DropIndex("dbo.Proyectoes", new[] { "PROYEC_MANAGER" });
            DropIndex("dbo.Oferta_Mercantil", new[] { "PROC_OFM" });
            DropIndex("dbo.Aspirante_Proceso", new[] { "ID_PROCESO" });
            DropIndex("dbo.Aspirante_Proceso", new[] { "ID_ASPIRANTE" });
            DropIndex("dbo.Proceso_Competitivo", new[] { "PROYECTO_COMPETITIVO" });
            DropIndex("dbo.Archivo_Ruta", new[] { "PROCESO_ARCHIVO" });
            DropTable("dbo.Polizas");
            DropTable("dbo.Orden_Compra");
            DropTable("dbo.Configuraciones");
            DropTable("dbo.Aspirantes");
            DropTable("dbo.Proyec_Manager");
            DropTable("dbo.Proyectoes");
            DropTable("dbo.Oferta_Mercantil");
            DropTable("dbo.Aspirante_Proceso");
            DropTable("dbo.Proceso_Competitivo");
            DropTable("dbo.Archivo_Ruta");
        }
    }
}
