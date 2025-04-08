using System.Text.Json.Serialization;

namespace WAREHOUSE_MANAGEMENT_SYSTEM.Models
{
    public class PredictionResult
    {
        [JsonPropertyName("Stock Forecast (Months)")]
        public double StockForecastMonths { get; set; }
    }
}
