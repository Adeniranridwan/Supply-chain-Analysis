SUPPLY CHAIN ANALYSIS

**Summary**

This report provides a detailed analysis of key business operations, including product performance, supply chain efficiency, customer behavior, shipping logistics, quality control, and cost management. The goal is to identify areas for improvement and recommend strategies to optimize profitability, customer satisfaction, and operational efficiency.

**Data**

The dataset was obtained from kaggle. It covers a wide range of business aspects, including sales performance, customer demographics, inventory management, shipping logistics, and supplier performance.  The data contains 100 rows and 24 variables. These variables are:
- Product type: Category of the product (e.g., Haircare, Skincare).
- SKU: Stock Keeping Unit, a unique identifier for each product.
- Price: The selling price of the product.
- Availability: Number of units available in stock.
- Number of products sold: Total number of units sold for each SKU.
- Revenue generated: Total revenue generated from the sales of each SKU.
- Customer demographics: Information about the gender or identity of the customer (e.g., Male, Female, Non-binary, Unknown).
- Stock levels: The current level of stock for each product.
- Lead times: The time taken from ordering to receiving the product.
- Order quantities: The quantity of each product ordered.
- Shipping times: The time taken to ship the product to the customer.
- Shipping carriers: The shipping service providers used (e.g., Carrier A, Carrier B, Carrier C).
- Shipping costs: The cost incurred for shipping each product.
- Supplier name: The name of the supplier providing the product.
- Location: The geographical location of the supplier (e.g., Mumbai, Bangalore).
- Lead time: The time taken by the supplier to deliver the product.
- Production volumes: The number of units produced.
- Manufacturing lead time: Time taken to manufacture the product.
- Manufacturing costs: The costs associated with manufacturing each product.
- Inspection results: The results of quality inspections (e.g., Pass, Fail, Pending).
- Defect rates: The rate of defects identified in the products.
- Transportation modes: The mode of transportation used for shipping (e.g., Road, Rail, Air).
- Routes: The specific routes taken for transportation (e.g., Route A, Route B, Route C).
- Costs: The costs associated with transportation on each route.

**ANALYSIS WAS BASED ON**
**Product Performance Analysis:** To understand which products are the most valuable in terms of sales, revenue, and profitability.
**Supply Chain and Inventory Management:** To optimize supply chain operations, manage stock levels, and reduce costs.
**Customer Behavior and Segmentation:** To understand customer demographics for better-targeted marketing and improved customer satisfaction.
**Shipping and Logistics Analysis:** To optimize shipping costs, improve delivery times, and ensure customer satisfaction.
**Quality Control and Compliance:** To ensure product quality and compliance, minimizing defects and returns.
**Cost Analysis:** To analyze various cost factors to identify areas for cost reduction and improve profitability.

**APPROACH/PREPROCESSINGS**

Data Preprocessing
Exploratory Data Analysis

**BUSINESS QUESTIONS TO BE ANSWERED**

Which products are the top sellers?

Which products generate the most revenue?

Which products have the highest profit margins?

What is the average stock level for each product type?

Which suppliers are the most reliable (shortest lead times)?

How does the lead time impact order quantities?

Which locations have the highest stock levels?

Which suppliers have the highest defect rates?

What is the distribution of revenue across different customer demographics?

Which customer demographics are purchasing specific product types?

What is the average order value by customer demographic?

How does customer demographic affect defect rates?

Which shipping carriers are the most cost-effective?

Which shipping carriers are the most cost-effective?

Which routes have the longest shipping times?

How does transportation mode impact shipping costs?

Which locations incur the highest shipping costs?

What is the overall defect rate by product type?

How do defect rates vary by supplier?

Which inspection results are most common, and how do they impact sales?

What is the impact of manufacturing lead times on defect rates?

What are the total costs associated with each product type?

How do transportation costs vary by mode and route?

Which locations have the highest manufacturing costs?

What is the impact of order quantities on shipping costs?

**RESULT AND FINDINGS**

**Product Performance Analysis:** 

**Top Selling Products:**

- The top 2 highest-selling products is SKU10 and SKU94 under the "SKINCARE",”COSMETIC” category, with a total of 996units and 987 units sold respectively.
Highest Revenue Generating Products:
- The product SKU51 from Haircare,SKU38 from costmetic, and SKU31 from SKINCARE top the list of products each of which records approx. '9866.465457979697', '9692.318040218432', and '9655.135102719398 average generated revenue.

**Profit Margin Analysis:**
  
SKU2 (Haircare)  and SKU85 (cosmetic)has the highest profit margin, calculated by considering the difference between revenue generated and associated costs.
**Overall Defect Rates by Product Type:**
- SKU42(Skincare) products have a higher average defect rate of with a 4.94% defect rate while the SKU21(Cosmetic) have the least average defect rate of 0.0186.
**Insights:**

- Focus marketing efforts on high-revenue products like SKU51 and SKU38.
- Evaluate the pricing strategy for Haircare products to maintain profitability.
- Evaluate the defect rate strategy for SKU42(skincare) 

**Supply Chain and Inventory Management:**

**Stock Levels**

- The highest average stock level is observed is SKU12 (Haircare), SKU59('cosmetics'), and SKU51('haircare').
- SKU68 ('haircare'),SKU2('haircare'),SKU34,SKU16('skincare'),SKU24('skincare') has a  very low stock level of 1, with SKU68 (haircare) which is out of stock (0).

**Supplier Reliability**

- Supplier 4(Delhi) provides the shortest average lead time of 3 days, making them the most reliable supplier.
- Supplier 5 (Delhi) has the longest lead time, which may cause delays in product availability.

**Defect Rates by Supplier**

- Supplier 4 (delhi) has the shortest defect rate of (0.15%) and Supplier 2 (delhi) has the highest defect rate (3.34%), indicating quality issues that need addressing.

**Insights**

- Continue strong partnerships with Supplier 4 to ensure timely deliveries.
- Address quality control issues with Supplier 2 to reduce defect rates.
- Monitor stock levels of high-demand products to avoid stockouts.

**Customer Behavior and Segmentation**

**Revenue Distribution by Customer Demographics:**

- "Females" customers contribute the most revenue, with $'6460.58 generated across different SKUs.
- The highest quantity of product(haircare) was ordered by the UNKNOWN demograpghic set of customers. This is followed by the NON-BINARY customer that purchase most the skincare product.

**Product Type Preference by Demographics:**
- Haircare products are popular among "Non-binary" customers, whereas "Female" customers predominantly purchase Skincare items.

**Average Order Value:**
The highest average order value is observed among "Non-binary" customers, suggesting they are willing to spend more per purchase.

**Insights:**
- Tailor marketing campaigns to target "Non-binary" and "Female" customers, focusing on Haircare and Skincare products, respectively.
- Investigate potential quality concerns among products favored by the "Unknown" demographic.

**Shipping and Logistics Analysis**

**Cost-Effective Shipping Carriers:**

- Carrier B offers the most cost-effective shipping service with an average cost of $5.51per order and average shipping time of 5.30
- Carrier C is the most expensive, with an average shipping cost of $5.60, which could be reviewed for cost-saving opportunities however, Carrier A has the highest average shipping time of 6.14.

**Shipping Times and Cost by Route:**

- Route A has the cheapest shipping cost(5.38) but the slowest average shipping time (6.02 days), while Route C have the highest average shipping cost(5.90) and the fastest shipping time (5.25 days).
- Route B  (Air) has the most expensive average transportation cost and the Route A(Air) has the least expensive average cost.
- The  Route C (Sea) and Route A(AIr) has the least leadtime of 12.7500 and 13.73 respectively

**Insights:**

- Focus on using Carrier B and Route A for cost-effective and timely deliveries.
- Reevaluate the use of Air transportation to reduce shipping costs unless speed is a critical factor.

**Inspection Results and Sales Impact:**
		
- We have more pending products inspection(21444) than the failed product inspection(15610) and passed products inspection(9045).
- Supplier 1 has the highest number of product that passed inspection while the supplier 3 has the least number
- Supplier 4 has the highest number of product that failed inspection while the supplier 3 has the least number
- Supplier 3 has the highest number of product with inspection while the supplier 4 has the least number

**Cost Analysis:**

**Total Costs by Product Type:**

- The cosmetic product(SKU7) has the highest average manufacturing costs ('99.47’) while the skincare product ('SKU6') has the lowest average cost product('1.086’)
- The cosmetic product(SKU89) has the highest Average Shipping Cost ('9.93') while the skincare product ('SKU53') has the lowest Average Shipping Cost('1.086’)

**Transportation Costs by Mode and Route:**

- Route B  (Air) has the most expensive average transportation cost and the Route A(Air) has the least expensive average cost.

**Order Quantities and Shipping Costs:**

- Larger order quantities tend to reduce shipping costs per unit, indicating economies of scale in logistics.

**Insights:**

- Focus on reducing manufacturing and shipping costs for cosmetic products.
- Route A(Air) needs to be considered for cut transportation cost.
- Consider bulk shipping for larger orders to capitalize on cost efficiencies.

**Conclusion**
This analysis has provided a deep dive into various aspects of the business, highlighting key areas for improvement and offering actionable insights. By implementing the the insights outlined in this report, the business can enhance profitability, improve operational efficiency, and better serve its customers.# Supply-chain-Analysis
