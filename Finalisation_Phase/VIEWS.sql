-- VIEW 1
CREATE VIEW PropertyReviews AS
SELECT 
    u.first_name,
    u.last_name,
    rt.type_name,
    r.comment
FROM 
    review r
JOIN 
    reservations res ON r.reservation_id = res.reservation_id
JOIN 
    user u ON res.user_id = u.id
JOIN 
    review_type rt ON r.review_type_id = rt.id
WHERE 
    res.property_id = property_id;

-- VIEW 2
CREATE VIEW PropertyPerformanceView AS
WITH ReviewStats AS (
    SELECT 
        id,
        AVG(rating) AS avg_rating,
        COUNT(*) AS num_reviews
    FROM review
    GROUP BY id
),
BookingStats AS (
    SELECT
        r.property_id,
        COUNT(*) AS num_bookings,
        SUM(r.rate_per_day * r.duration) AS total_revenue
    FROM reservations r
    GROUP BY r.property_id
)
SELECT 
    p.id AS property_id,
    p.name AS property_name,
    rs.avg_rating,
    rs.num_reviews,
    bs.num_bookings,
    bs.total_revenue
FROM property p
LEFT JOIN ReviewStats rs ON p.id = rs.id
LEFT JOIN BookingStats bs ON p.id = bs.property_id
ORDER BY p.id;

-- View 3

CREATE VIEW ReservationPaymentAnalysis AS
SELECT 
    COUNT(p.id) AS total_reservations,
    SUM(p.total_paid) AS total_amount_paid
FROM 
    payment p;

-- View 4

CREATE VIEW ReviewSentimentAnalysis AS
SELECT 
    id,
    reservation_id,
    rating,
    comment,
    CASE
        WHEN rating >= 4 THEN 'Positive'
        WHEN rating < 4 AND rating >= 3 THEN 'Neutral'
        ELSE 'Negative'
    END AS sentiment
FROM 
    review;

