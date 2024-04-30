-- tables
users
adresses

products
brands
categories

reviews

carts
orders
order_details

payment_gateways
promotions



-- tables with columns
users
	user_id, name, email, mobile, is_email_verfied, is_mobile_verified, mobile_verified_on, email_verified_on, 
    gender, password, otp, otp_sent_on, otp_validity_in_mins, account_created_on, is_active, blocked_on, comments, 
    password_reset_token, token_valid_till

products
	product_id, title, decsription, media (json [image1, video1, image2] ), specifications (json), price, brand_id, category_id, stock, 
    is_active, created_on, blocked_on, comments

brands
	brand_id, name, category_id, is_active, created_on, deactivated_on

categories
	category_id, name, is_active, created_on, deacivated_on

reviews
	review_id, product_id, comments, media (json), is_verified, verified_on, created_on, is_active, blocked_on, blocking_comments

carts
	cart_id, product_id, quantity, created_on, deleted_on

orders
	order_id, price, payment_status, payment_mode, payment_gateway_id, created_on, order_status, cancelled_on, delivered_on, 

order_details
	order_detail_id, order_id, product_id, price, payment_status, payment_mode, payment_gateway_id, created_on, order_status, cancelled_on, delivered_on,
    is_returned, retuned_date, 

payment_gateways
	payment_gateway_id, provider_name, website, url, secret_key, is_active, created_on, blocked_on

promotions
	promotion_id, coupon_code, is_percentage, value, created_on, valid_till, is_active, 
	1, ABCD, yes, 10 
    2, EFGH, no, 100
    
adresses
	address_id, user_id, flat_no, street, address_line2, mandal, city, state, pincode, mobile, address_type, coordinates, is_active, created_on, deleted_on
    
