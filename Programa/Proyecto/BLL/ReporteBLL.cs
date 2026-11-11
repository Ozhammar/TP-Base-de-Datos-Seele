using System;
using System.Collections.Generic;
using System.Text;
using ORM;
using Entidades;
using Entidades.Enums;

namespace BLL
{
    public class ReporteBLL
    {
        ReporteMapper Mapper;
        public ReporteBLL()
        {
            Mapper = new ReporteMapper();
        }

        public List<Reporte> ConsultarReportes()
        {
            List<Reporte> reportes = new List<Reporte>();
            //REPORTES IMPLEMENTADOS
            reportes.Add(new ReporteVentasPorPeriodo());
            reportes.Add(new ReportePrendasMasVendidas());
            reportes.Add(new ReporteRankingClientes());
            reportes.Add(new ReporteFacturacionPorPeriodo());
            reportes.Add(new ReporteStockDisponible());
            return reportes;
        }

        //INGRESO A LA GENERACION DEL REPORTE
        public Reporte GenerarReporte(Reporte pReporte)
        {
            if (pReporte == null)
            {
                throw new Exception("Debe seleccionar un reporte");
            }
            Mapper.cargarDatos(pReporte);
            return pReporte;
        }
    }
}
