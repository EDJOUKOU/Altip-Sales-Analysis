# Altip-Sales-Analysis
## Project Overview
## Project Overview:  

Atliq, an India-based manufacturer of computer hardware and peripherals, serves a diverse client base across the country. With its headquarters in India and multiple regional offices nationwide, the company has established a strong presence in the market. However, the Sales Director has observed a concerning decline in sales performance. To address this challenge effectively, the company seeks data-driven insights to identify root causes and formulate strategic solutions for revitalizing growth.

## Data source
The data used for this project was sourced online and has been uploaded to the repository. The dataset is organized into five tables: **customers**, **date**, **markets**, **producs** and **transactions**

## Tools
- MySQL Workbench 8.0 to create an instance of MySQL 
- Tableau for data visualization

## Data cleaning and preparation
In the initial phase, the following tasks were performed in Tableau:
1. create a column called normalised sales revenues to acount for different currencies (USD and INR)
2. Remove rows with no record, especially in the markets tableau

## Exploratory Data Analysis
Here are the business questions investigated as part of the 
Here are the 8 questions extracted from the text:

1. **Customer Analysis:**
   - Which customer types (e.g., retail, corporate) contribute the most to sales revenue? Is there a noticeable drop in a specific type?

2. **Product Performance:**
   - What are the best-performing and worst-performing product types regarding sales quantity and revenue?
   - What are the best-performing and worst-performing products regarding sales quantity and revenue over the years?

3. **Market Trends:**
   - Which markets or zones are showing a significant decline in sales? Are there any regional patterns?

4. **Time-Based Analysis:**
   - How have sales trends changed over the past months or years? Are there specific periods (e.g., months or quarters) with significant declines?

5. **Customer Behavior:**
   - Are there any loyal customers (based on recurring transactions) whose purchasing behavior has changed recently?

6. **Product-Customer Relationship:**
   - Which product types are most frequently purchased by specific customer types? Are these relationships weakening?

7. **Sales Quantity vs. Revenue:**
   - Are there products with high sales quantities but low revenue, or vice versa? What insights can be drawn?

8. **Order Date Trends:**
   - Is there a particular day or period when sales orders have significantly declined? Could this indicate operational or external issues?

## Data Analysis
It has been performed on MySQL workbench 8.0 and Tableau

## Results/ Findings
1.	Sales Channels:
o	Brick-and-Mortar Dominance:
Brick-and-mortar stores have historically contributed the most to sales revenue. However, sales from this channel have been declining since 2018, indicating potential market saturation or competition from alternative sales channels like e-commerce.
2.	Top Customers:
o	Consistency in Customer Base:
The top five customers from 2017 to 2020 have remained largely unchanged: Electricalsara Stores, Nixon, Electricalslytical, Premium Stores, and Excel Stores. Info Stores entered the top five in 2020.
o	Revenue Decline:
Despite their consistent ranking, sales revenues from these top customers have steadily decreased since 2018, reflecting either reduced order volumes or lower demand.
3.	Top Products:
o	Stable Product Rankings:
The top five products have consistently been codes 040, 159, 053, 065, and 018. Although their rankings shuffled slightly over the years, overall sales revenues for these products have shown a noticeable downward trend since 2018.
4.	Market Performance:
o	Homogeneity Across Markets:
The ranking of gross revenues by market remained stable from 2017 to 2020. However, a significant revenue reduction occurred from 2019 to 2020 across all markets.
o	Market-Specific Insights:
Notably, the Kochi market generated only 3 million rupees from nearly 35,000 sales, suggesting low-revenue products with high sales quantities. Conversely, Ahmedabad achieved 18 million rupees in sales from just 30,000 units, indicating high-value products with lower volume.
Conclusion:
While Atliq Company saw an overall increase in gross revenues over the four-year period, the consistent decline in sales since 2018, especially among top products and key customers, poses a significant challenge. Addressing these trends will require strategic efforts to rejuvenate core sales channels, strengthen customer relationships, and potentially diversify the product portfolio to boost profitability.

## Recommendations
### **Recommendations Based on Findings:**

---

### **1. Sales Channels:**
- **Enhance E-commerce Presence:**  
  Given the decline in brick-and-mortar sales since 2018, focus on expanding and optimizing the e-commerce platform. Invest in digital marketing and customer engagement strategies to capture a larger online audience.
  
- **Omnichannel Strategy:**  
  Integrate physical stores with online services (e.g., click-and-collect options, in-store returns for online purchases) to create a seamless customer experience across channels.

---

### **2. Top Customers:**
- **Strengthen Customer Loyalty Programs:**  
  Introduce or enhance loyalty programs for top customers (Electricalsara Stores, Nixon, Premium Stores, etc.) to incentivize larger and more frequent purchases. Offer exclusive discounts, personalized deals, or volume-based incentives.

- **Conduct Customer Needs Analysis:**  
  Engage directly with top customers to understand the reasons for declining orders. Tailor solutions based on their feedback to address specific challenges or needs.

---

### **3. Top Products:**
- **Product Diversification:**  
  Expand the product portfolio to include innovative or complementary products. This can attract existing customers and open up new revenue streams.

- **Review Pricing Strategies:**  
  Analyze the pricing of top products (codes 040, 159, 053, etc.) to ensure competitiveness. Consider dynamic pricing models based on demand fluctuations and competitor analysis.

---

### **4. Market Performance:**
- **Focus on High-Value Markets:**  
  Invest more resources in high-performing markets like Ahmedabad, where fewer units generate higher revenue. Develop market-specific strategies to enhance profitability.

- **Optimize Low-Performing Markets:**  
  For markets like Kochi, assess whether low-revenue products can be replaced with higher-margin alternatives. Additionally, consider targeted marketing campaigns to increase demand for premium products.

---

### **Overall Strategic Initiatives:**
- **Data-Driven Decision-Making:**  
  Implement advanced analytics tools to continuously monitor sales trends, customer behavior, and market performance. This will enable quicker responses to emerging challenges.

- **Customer-Centric Approach:**  
  Focus on delivering value beyond the product, such as enhanced after-sales support, training programs, or bundled services, to deepen customer relationships.

By addressing these key areas, Atliq can mitigate the declining trends and position itself for sustainable growth in the evolving market landscape.
