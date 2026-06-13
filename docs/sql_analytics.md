# SQL Analytics 

## Objective

Perform foundational business analytics using SQL aggregations and filtering.

## SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- CASE WHEN
- Aggregate Functions

## Key Findings

### Revenue Analytics

Total Revenue: $16008872.12

Total Customers: 99441

Total Orders: 99441

Average order value: $154.10


### Order Analytics

Order Status Distribution

| order_status | total_orders |
|-------------|-------------:|
| delivered   | 96478 |
| shipped     | 1107 |
| canceled    | 625 |
| unavailable | 609 |
| invoiced    | 314 |
| processing  | 301 |
| created     | 5 |
| approved    | 2 |

Order Status Percentage

| order_status | percentage |
|-------------|-------------:|
| delivered   | 97.02 |
| shipped     | 1.11 |
| canceled    | 0.63 |
| unavailable | 0.61 |
| invoiced    | 0.32 |
| processing  | 0.30 |
| created     | 0.01 |
| approved    | 0.00 |



### Customer Analytics

Customers by State

| customer_state | customer_count |
|---------------|---------------:|
| SP | 41746 |
| RJ | 12852 |
| MG | 11635 |
| RS | 5466 |
| PR | 5045 |
| SC | 3637 |
| BA | 3380 |
| DF | 2140 |
| ES | 2033 |
| GO | 2020 |
| PE | 1652 |
| CE | 1336 |
| PA | 975 |
| MT | 907 |
| MA | 747 |
| MS | 715 |
| PB | 536 |
| PI | 495 |
| RN | 485 |
| AL | 413 |
| SE | 350 |
| TO | 280 |
| RO | 253 |
| AM | 148 |
| AC | 81 |
| AP | 68 |
| RR | 46 |


Top 10 Customer States

| customer_state | customer_count |
|---------------|---------------:|
| SP | 41746 |
| RJ | 12852 |
| MG | 11635 |
| RS | 5466 |
| PR | 5045 |
| SC | 3637 |
| BA | 3380 |
| DF | 2140 |
| ES | 2033 |
| GO | 2020 |


Top 10 Customer Cities

| customer_city           | customer_count |
|------------------------|---------------:|
| sao paulo              | 15540 |
| rio de janeiro         | 6882 |
| belo horizonte         | 2773 |
| brasilia               | 2131 |
| curitiba               | 1521 |
| campinas               | 1444 |
| porto alegre           | 1379 |
| salvador               | 1245 |
| guarulhos              | 1189 |
| sao bernardo do campo  | 938 |



### Seller Analytics

Sellers by State

| seller_state | seller_count |
|-------------|-------------:|
| SP | 1849 |
| PR | 349 |
| MG | 244 |
| SC | 190 |
| RJ | 171 |
| RS | 129 |
| GO | 40 |
| DF | 30 |
| ES | 23 |
| BA | 19 |
| CE | 13 |
| PE | 9 |
| PB | 6 |
| RN | 5 |
| MS | 5 |
| MT | 4 |
| SE | 2 |
| RO | 2 |
| MA | 1 |
| AC | 1 |
| PI | 1 |
| PA | 1 |
| AM | 1 |

Top Seller Cities

| seller_city      | seller_count |
|------------------|-------------:|
| sao paulo        | 694 |
| curitiba         | 127 |
| rio de janeiro   | 96 |
| belo horizonte   | 68 |
| ribeirao preto   | 52 |
| guarulhos        | 50 |
| ibitinga         | 49 |
| santo andre      | 45 |
| campinas         | 41 |
| maringa          | 40 |

### Product Analytics

Product Categories

| product_category_name | product_count |
|------------------------|-------------:|
| cama_mesa_banho | 3029 |
| esporte_lazer | 2867 |
| moveis_decoracao | 2657 |
| beleza_saude | 2444 |
| utilidades_domesticas | 2335 |
| automotivo | 1900 |
| informatica_acessorios | 1639 |
| brinquedos | 1411 |
| relogios_presentes | 1329 |
| telefonia | 1134 |
| bebes | 919 |
| perfumaria | 868 |
| fashion_bolsas_e_acessorios | 849 |
| papelaria | 849 |
| cool_stuff | 789 |
| ferramentas_jardim | 753 |
| pet_shop | 719 |
| NULL / Unknown | 610 |
| eletronicos | 517 |
| construcao_ferramentas_construcao | 400 |
| eletrodomesticos | 370 |
| malas_acessorios | 349 |
| consoles_games | 317 |
| moveis_escritorio | 309 |
| instrumentos_musicais | 289 |
| eletroportateis | 231 |
| casa_construcao | 225 |
| livros_interesse_geral | 216 |
| fashion_calcados | 173 |
| moveis_sala | 156 |
| climatizacao | 124 |
| livros_tecnicos | 123 |
| telefonia_fixa | 116 |
| casa_conforto | 111 |
| alimentos_bebidas | 104 |
| market_place | 104 |
| fashion_roupa_masculina | 95 |
| moveis_cozinha_area_de_servico_jantar_e_jardim | 94 |
| sinalizacao_e_seguranca | 93 |
| construcao_ferramentas_seguranca | 91 |
| eletrodomesticos_2 | 90 |
| construcao_ferramentas_jardim | 88 |
| alimentos | 82 |
| bebidas | 81 |
| construcao_ferramentas_iluminacao | 78 |
| agro_industria_e_comercio | 74 |
| industria_comercio_e_negocios | 68 |
| artigos_de_natal | 65 |
| audio | 58 |
| artes | 55 |
| fashion_underwear_e_moda_praia | 53 |
| dvds_blu_ray | 48 |
| moveis_quarto | 45 |
| construcao_ferramentas_ferramentas | 39 |
| livros_importados | 31 |
| portateis_casa_forno_e_cafe | 31 |
| pcs | 30 |
| cine_foto | 28 |
| musica | 27 |
| fashion_roupa_feminina | 27 |
| artigos_de_festas | 26 |
| artes_e_artesanato | 19 |
| fashion_esporte | 19 |
| flores | 14 |
| fraldas_higiene | 12 |
| moveis_colchao_e_estofado | 10 |
| la_cuisine | 10 |
| portateis_cozinha_e_preparadores_de_alimentos | 10 |
| tablets_impressao_imagem | 9 |
| fashion_roupa_infanto_juvenil | 5 |
| casa_conforto_2 | 5 |
| pc_gamer | 3 |
| seguros_e_servicos | 2 |
| cds_dvds_musicais | 1 |

Top Categories

| product_category_name | product_count |
|----------------------|-------------:|
| cama_mesa_banho | 3029 |
| esporte_lazer | 2867 |
| moveis_decoracao | 2657 |
| beleza_saude | 2444 |
| utilidades_domesticas | 2335 |
| automotivo | 1900 |
| informatica_acessorios | 1639 |
| brinquedos | 1411 |
| relogios_presentes | 1329 |
| telefonia | 1134 |

### Payment Analytics

Payment Method Distribution

| payment_type | total_transaction |
|-------------|-----------------:|
| credit_card | 76795 |
| boleto | 19784 |
| voucher | 5775 |
| debit_card | 1529 |
| not_defined | 3 |

Revenue by Payment Method

| payment_type | revenue |
|-------------|--------:|
| credit_card | 12542084.19 |
| boleto | 2869361.27 |
| voucher | 379436.87 |
| debit_card | 217989.79 |
| not_defined | 0.00 |

Average Installments: $2.85


### Having Clause

states having large customer base

| customer_state | customer_count |
|---------------|---------------:|
| SP | 41746 |
| RJ | 12852 |
| MG | 11635 |
| RS | 5466 |
| PR | 5045 |
| SC | 3637 |
| BA | 3380 |
| DF | 2140 |
| ES | 2033 |
| GO | 2020 |
| PE | 1652 |
| CE | 1336 |

product categories having large number of products

| product_category_name | product_count |
|----------------------|-------------:|
| cama_mesa_banho | 3029 |
| esporte_lazer | 2867 |
| moveis_decoracao | 2657 |
| beleza_saude | 2444 |
| utilidades_domesticas | 2335 |
| automotivo | 1900 |
| informatica_acessorios | 1639 |
| brinquedos | 1411 |
| relogios_presentes | 1329 |
| telefonia | 1134 |
| bebes | 919 |
| perfumaria | 868 |
| fashion_bolsas_e_acessorios | 849 |
| papelaria | 849 |
| cool_stuff | 789 |
| ferramentas_jardim | 753 |
| pet_shop | 719 |
| NULL / Unknown | 610 |
| eletronicos | 517 |
| construcao_ferramentas_construcao | 400 |
| eletrodomesticos | 370 |
| malas_acessorios | 349 |
| consoles_games | 317 |
| moveis_escritorio | 309 |
| instrumentos_musicais | 289 |
| eletroportateis | 231 |
| casa_construcao | 225 |
| livros_interesse_geral | 216 |
| fashion_calcados | 173 |
| moveis_sala | 156 |
| climatizacao | 124 |
| livros_tecnicos | 123 |
| telefonia_fixa | 116 |
| casa_conforto | 111 |
| market_place | 104 |
| alimentos_bebidas | 104 |


### CASE WHEN

Classifying orders into broader business categories- It converts in detail order status into three categories successful, In progress and cancelled instead of different categories.


Categorizing payments into Low, Medium, and High value transactions


## Query Files

The SQL queries used for this analysis are stored in:

![Query file](../sql/01_basic_analytics.sql)

## Next Steps

* Perform multi-table analysis using JOIN operations.
* Calculate customer-level and product-level KPIs.
* Build advanced SQL analytics using Common Table Expressions (CTEs).
* Implement Window Functions for ranking and trend analysis.
* Generate business insights for dashboard development.

