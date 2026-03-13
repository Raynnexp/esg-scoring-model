# esg-scoring-model
Quantitative ESG scoring model for corporate performance analysis

# Corporate ESG Scoring Model

## :pushpin: Objetivo do Projeto
Este projeto desenvolve um modelo quantitativo para avaliar e ranquear empresas com base em critérios ESG (Environmental, Social, and Governance). O objetivo é transformar dados brutos de sustentabilidade em um score comparativo (0-100) para apoiar decisões de investimento e análise de risco.

## :hammer_and_wrench: Tecnologias e Ferramentas
- **Lógica de Dados:** SQL (Analytics Engineering approach)
- **Domínio:** ESG & FinOps
- **Metodologia:** Média Ponderada com Normalização de Variáveis

## :bar_chart: Metodologia de Cálculo
Para garantir uma comparação justa entre empresas de diferentes setores, o modelo aplica os seguintes pesos:
- **Environmental (40%):** Focado em emissões de CO2 (escala invertida).
- **Social (30%):** Baseado no índice de diversidade interna.
- **Governance (30%):** Avaliação de independência do conselho administrativo.

## :rocket: Como Visualizar a Análise
Os scripts de transformação de dados estão localizados na pasta `/analysis`. Eles demonstram a limpeza dos dados brutos localizados em `/data` e a aplicação da lógica de negócio para gerar o ranking final.

## :chart_with_upwards_trend: Conclusões de Negócio
Através deste modelo, é possível identificar não apenas as empresas com melhor performance hoje, mas quais setores apresentam maior risco de governança ou gaps de diversidade, permitindo uma análise preditiva de conformidade regulatória.
