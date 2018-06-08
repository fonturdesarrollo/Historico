using Database.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Historico
{
    public partial class Consultas
    {
        public static DataSet ObtenerHistorico(int tipoConsulta, string cedula, string quincena1, string quincena2)
        {
            SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@Cedula", SqlDbType.VarChar, 0, cedula),
                    DBHelper.MakeParam("@Quincena1", SqlDbType.VarChar, 0, quincena1),
                    DBHelper.MakeParam("@Quincena2", SqlDbType.VarChar, 0, quincena2)
                };
            switch(tipoConsulta)
            {
                case 1:
                    return DBHelper.ExecuteDataSet("usp_Consultas_ObtenerHistoricoPersona", dbParams);
                case 2:
                    return DBHelper.ExecuteDataSet("usp_Consultas_ObtenerHistoricoPersonaPasaje", dbParams);
                case 3:
                    return DBHelper.ExecuteDataSet("usp_Consultas_ObtenerHistoricoPersonaNuevoCirco", dbParams);
                case 4:
                    return DBHelper.ExecuteDataSet("usp_Consultas_ObtenerHistoricoPersonaAccionCentralizada", dbParams);

                default:
                    return DBHelper.ExecuteDataSet("usp_Consultas_ObtenerHistoricoPersona", dbParams);
            }

        }
    }
}