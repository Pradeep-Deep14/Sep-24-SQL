--ZOMATO SQL INTERVIEW QUESTION

CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    user_id INT,
    submit_date DATE,
    restaurant_id INT,
    rating INT
);

INSERT INTO reviews (review_id, user_id, submit_date, restaurant_id, rating) VALUES
(1001, 501, '2022-01-15', 101, 4),
(1002, 502, '2022-01-20', 101, 5),
(1003, 503, '2022-01-25', 102, 3),
(1004, 504, '2022-01-15', 102, 4),
(1005, 505, '2022-02-20', 101, 5),
(1006, 506, '2022-02-26', 101, 4),
(1007, 507, '2022-03-01', 101, 4),
(1008, 508, '2022-03-05', 102, 2);


/*You are a data analyst working with Zomato. Your task is to
analyze restaurant ratings over time to understand how the
average rating of each restaurant changes monthly.

Objective: You need to calculate the average rating for each
restaurant for each month.

Note - Include restaurants that have received at least 2 reviews in a given month.
*/

-- Month
-- Avg(rating) for each restaurant for each month
-- Having 2 Reviews in a given month

SELECT
	  RESTAURANT_ID,
      EXTRACT(MONTH FROM SUBMIT_DATE) AS MONTH,
      ROUND(AVG(RATING),1)
FROM REVIEWS
GROUP BY 1,2
HAVING COUNT(REVIEW_ID) >=2
     
