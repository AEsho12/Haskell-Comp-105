-- Do not alter the following line
module Assignment2 (transaction_to_string, trade_report_list, stock_test, 
get_trades, trade_report, update_money, profit, profit_report, 
complex_profit_report) where

type Transaction = (Char, Int, Int, String, Int) 

test_log :: [Transaction]
test_log = [('B', 100, 1104,  "VTI",  1),
            ('B', 200,   36, "ONEQ",  3),
            ('B',  50, 1223,  "VTI",  5),
            ('S', 150, 1240,  "VTI",  9),
            ('B', 100,  229, "IWRD", 10),
            ('S', 200,   32, "ONEQ", 11),
            ('S', 100,  210, "IWRD", 12)
            ]
            
-- Part A
--q1
transaction_to_string :: Transaction -> String
transaction_to_string (action, units, price_per_unit, stock, day)
                       |action == 'B' = "Brought " ++ show(units) ++ " units of " ++ (stock) ++ " for " ++ show(price_per_unit) ++ " pounds each on day " ++ show(day)
                       |action == 'S' = "Sold " ++ show(units) ++ " units of " ++ " for " ++ show(price_per_unit) ++ " pounds each on day " ++ show(day)                   
--transaction_to_string = error "Not implemented"

--q2
trade_report_list :: [Transaction] -> [String]
trade_report_list list = map transaction_to_string list 
--trade_report_list = error "Not implemented"

--q3
stock_test :: String -> Transaction -> Bool
stock_test stock (_,_,_,str,_)= if stock == str
                                then read "True" 
                                else read "False"
--stock_test = error "Not implemented"

--q4
get_trades :: String -> [Transaction] -> [Transaction]
get_trades stock list = filter(\a -> stock_test stock a) list
--get_trades = error "Not implemented"

--q5
trade_report :: String -> [Transaction] -> String
trade_report stock list = unlines(trade_report_list(get_trades stock list))
--trade_report = error "Not implemented"

--Part B 
--q6
update_money :: Transaction -> Int -> Int
update_money = error "Not implemented"

profit :: [Transaction] -> String -> Int
profit = error "Not implemented"

profit_report :: [String] -> [Transaction] -> String
profit_report = error "Not implemented"

--Part C 

test_str_log = "BUY 100 VTI 1\nBUY 200 ONEQ 3\nBUY 50 VTI 5\nSELL 150 VTI 9\nBUY 100 IWRD 10\nSELL 200 ONEQ 11\nSELL 100 IWRD 12\n"

type Prices = [(String, [Int])]

test_prices :: Prices
test_prices = [              
              ("VTI", [1689, 1785, 1772, 1765, 1739, 1725, 1615, 1683, 1655, 1725, 1703, 1726, 1725, 1742, 1707, 1688, 1697, 1688, 1675]),                
              ("ONEQ", [201, 203, 199, 199, 193, 189, 189, 183, 185, 190, 186, 182, 186, 182, 182, 186, 183, 179, 178]),               
              ("IWRD", [207, 211, 213, 221, 221, 222, 221, 218, 226, 234, 229, 229, 228, 222, 218, 223, 222, 218, 214])              
              ]

complex_profit_report :: String -> Prices -> String
complex_profit_report = error "Not implemented"







