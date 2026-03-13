/* Lógica do Modelo de Score ESG:
1. Normalização das emissões de carbono (Quanto menor, melhor a nota)
2. Ponderação: Meio Ambiente (40%), Social (30%), Governança (30%)
*/

WITH normalized_data AS (
    SELECT 
        company,
        sector,
        -- Normalizando carbono (invertido: 1 é o menor emissor)
        1 - (carbon_emissions_ton / 6000.0) as environmental_score,
        (diversity_ratio_ / 100.0) as social_score,
        (board_independence_ / 100.0) as governance_score
    FROM esg_companies
)
SELECT 
    company,
    sector,
    ROUND((environmental_score * 0.4 + social_score * 0.3 + governance_score * 0.3) * 100, 2) as final_esg_score
FROM normalized_data
ORDER BY final_esg_score DESC;
