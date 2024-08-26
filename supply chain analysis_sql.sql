SELECT * FROM `supply-chain-analysis`.supply_chain_data;

SELECT count(*) AS total FROM supply_chain_data;

#data preparation


#----PRODUCT PERFORMANCE, INVESTORY MANAGEMENT, SUPPLY CHAIN,COST ANALYSIS,QUALITY CONTROL AND COMPLIANCE-----

#What are the stock levels, average lead time, total revenue for each product type
SELECT Product_type, sum(Stock_levels) AS TotalStockLevels, sum(Revenue_generated) AS TotalRevenue, 
					 avg(Lead_time) AS AvgLeadTime FROM supply_chain_data group by Product_type ORDER BY AvgLeadTime;

#What are the average manufacturing costs, average production volumes by product type?
SELECT product_type,sku, avg(manufacturing_costs) AS AverageManufacturingCosts, 
					 avg(production_volumes) AS AverageProductionVolumes, avg(Shipping_costs) AS AvgShippingCost
					 FROM supply_chain_data group by product_type, sku order by AvgShippingCost desc ;

SELECT product_type, sku ,(sum(revenue_generated) - sum(Manufacturing_costs) - sum(Shipping_costs))
						  /sum(Numberofproductssold) AS ProfitMargin FROM supply_chain_data
                          group by product_type, sku order by Profitmargin desc;

#revenue geberated by sku
SELECT SKU,Product_type, SUM(revenue_generated) AS RevenueGenerated FROM supply_chain_data 
			 group by SKU,Product_type order by RevenueGenerated desc LIMIT 10;

#check for number of rate of sku sold per product
select product_type, sku,  Avg(Defect_rates) AS AvgDefectRate FROM supply_chain_data
					 group by product_type, sku order by AvgDefectRate desc;
                     
#check for number of rate of sku sold per product
select product_type, sku, sum(Stock_levels) AS StockLevel FROM supply_chain_data
					 group by product_type, sku order by StockLevel desc;

#What is the defect rate for each product type and supplier?
SELECT Supplier_name, Location, Avg(Manufacturing_lead_time) AS AvgManufactureLeadTime, 
					  Avg(lead_time) AS AvgLeadTime, Avg(defect_rates) AS AvgDefectRate 
                      FROM supply_chain_data group by Supplier_name, 
                      Location order by AvgDefectRate asc;

 #Profitability Analysis by Location
 SELECT Location, SUM(Stock_levels) AS SumStock, sum(revenue_generated-Manufacturing_costs-Shipping_costs)
				  AS TotalProfit FROM supply_chain_data group by Location order by TotalProfit;
                  
#.......................................CUSTOMER BEHAVIOUR AND SEGMENTATION...........................................

select Customer_demographics, count(*) AS Count from supply_chain_data group by Customer_demographics;

SELECT Customer_demographics, product_type, count(*) AS PurchaseCount FROM supply_chain_data 
	   group by Customer_demographics, Product_type order by PurchaseCount desc;

SELECT Customer_demographics, product_type, Sum(Order_quantities) AS SumOrderQuantities 
							FROM supply_chain_data group by Customer_demographics, product_type 
							order by SumOrderQuantities desc;

SELECT Customer_demographics, Avg(Revenue_generated) AS AvgRevenueGenerated FROM supply_chain_data
							  group by Customer_demographics order by AvgRevenueGenerated;

#.............................................SHIPPING AND LOGISTIC...........................................

#How do shipping costs vary by shipping carrier?
SELECT Shipping_carriers, avg(Shipping_costs) AS AvgShippingCost,
						  avg(shipping_times) AS AverageShippingTimes 
						  FROM supply_chain_data group by Shipping_carriers;
                          
#Which route incurd the highest transportation cost?
SELECT Routes, Avg(Shipping_times) AS AvgShippingTime, Avg(Shipping_costs) AS AvgShippingCost
			  FROM supply_chain_data group by Routes 
			   ORDER BY AvgShippingCost DESC;  

#Highest lead time for transportation modes
SELECT Routes, transportation_modes, avg(Costs) AS avgCost FROM supply_chain_data 
GROUP BY transportation_modes, Routes order by avgCost desc;

SELECT Routes, transportation_modes, avg(lead_time) AS AvgLeadTime FROM supply_chain_data 
GROUP BY Routes, transportation_modes order by AvgLeadTime asc;

#lead time on order quantities
SELECT Lead_time, Avg(Order_quantities) AS AvgOrderQuantity FROM supply_chain_data 
	   group by lead_time order by AvgOrderQuantity desc;

SELECT supplier_name, count(*) AS PassInspections FROM supply_chain_data
					  WHERE Inspection_results = "Pass" GROUP BY Supplier_name 
                      order by PassInspections  desc; 

SELECT supplier_name, count(*) AS FailedInspections FROM supply_chain_data
					  WHERE Inspection_results = "Fail" GROUP BY Supplier_name 
                      order by FailedInspections  desc; 

#which supplier has the highest number of pending inspections  
SELECT supplier_name, count(*) AS PendingInspections FROM supply_chain_data
					  WHERE Inspection_results = "Pending" GROUP BY Supplier_name
                      order by PendingInspections  desc; 
       
#---------------------------------------------------END----------------------------------------------------