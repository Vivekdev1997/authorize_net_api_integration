-- db name authorize_payment
-- https://www.allphptricks.com/integrate-authorize-net-payment-gateway-using-php/

CREATE TABLE `authorize_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cc_brand` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cc_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `transaction_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `auth_code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `response_code` enum('1','2','3','4') COLLATE utf8_unicode_ci NOT NULL COMMENT '1=Approved | 2=Declined | 3=Error | 4=Held for Review',
  `response_desc` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Approved | Error',
  `payment_response` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;