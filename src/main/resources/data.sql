-- Create the resource_estimates table
CREATE TABLE IF NOT EXISTS resource_estimates (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    application_type VARCHAR(255) NOT NULL,
    technologies VARCHAR(255) NOT NULL,
    user_range VARCHAR(50) NOT NULL,
    max_users INT NOT NULL,
    max_requests_per_second INT NOT NULL,
    cpu_cores INT NOT NULL,
    ram_gb INT NOT NULL,
    bandwidth_mbps INT NOT NULL,
    storage_gb INT NOT NULL
);
-- Insert data for CMS
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('CMS', 'WordPress, Joomla, Drupal', 'small', 10000, 5000, 2, 4, 200, 20),
('CMS', 'WordPress, Joomla, Drupal', 'medium', 50000, 20000, 4, 8, 500, 50),
('CMS', 'WordPress, Joomla, Drupal', 'high', 100000, 100000, 8, 16, 1000, 100);


-- Insert data for Static Website
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('Static Website', 'HTML, CSS, JavaScript, Bootstrap', 'small', 10000, 5000, 2, 2, 100, 10),
('Static Website', 'HTML, CSS, JavaScript, Bootstrap', 'medium', 50000, 20000, 4, 4, 400, 20),
('Static Website', 'HTML, CSS, JavaScript, Bootstrap', 'high', 100000, 100000, 8, 8, 1000, 50);

-- Insert data for Dynamic Website
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('Dynamic Website', 'PHP, Django, Node.js', 'small', 10000, 5000, 2, 4, 200, 20),
('Dynamic Website', 'PHP, Django, Node.js', 'medium', 50000, 20000, 4, 8, 500, 50),
('Dynamic Website', 'PHP, Django, Node.js', 'high', 100000, 100000, 8, 16, 1000, 100);

-- Insert data for Web Application
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('Web Application', 'React, Angular, Node.js, Django', 'small', 10000, 5000, 4, 4, 200, 20),
('Web Application', 'React, Angular, Node.js, Django', 'medium', 50000, 20000, 8, 8, 500, 50),
('Web Application', 'React, Angular, Node.js, Django', 'high', 100000, 100000, 16, 32, 1000, 100);

-- Insert data for API Services
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('API Services', 'Express, FastAPI, Django, Spring Boot', 'small', 10000, 5000, 2, 4, 200, 20),
('API Services', 'Express, FastAPI, Django, Spring Boot', 'medium', 50000, 20000, 4, 8, 500, 50),
('API Services', 'Express, FastAPI, Django, Spring Boot', 'high', 100000, 100000, 8, 16, 1000, 100);

-- Insert data for E-commerce Platform
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('E-commerce Platform', 'Magento, WooCommerce, Django', 'small', 10000, 5000, 4, 8, 200, 50),
('E-commerce Platform', 'Magento, WooCommerce, Django', 'medium', 50000, 20000, 8, 16, 1000, 100),
('E-commerce Platform', 'Magento, WooCommerce, Django', 'high', 100000, 100000, 16, 32, 2000, 200);

-- Insert data for SaaS Application
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('SaaS Application', 'Java, .NET, Ruby on Rails', 'small', 10000, 5000, 4, 8, 200, 50),
('SaaS Application', 'Java, .NET, Ruby on Rails', 'medium', 50000, 20000, 8, 16, 1000, 100),
('SaaS Application', 'Java, .NET, Ruby on Rails', 'high', 100000, 100000, 16, 32, 2000, 200);

-- Insert data for Mobile Application Backend
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('Mobile Application Backend', 'Node.js, Django, Firebase', 'small', 10000, 5000, 2, 4, 200, 20),
('Mobile Application Backend', 'Node.js, Django, Firebase', 'medium', 50000, 20000, 4, 8, 500, 50),
('Mobile Application Backend', 'Node.js, Django, Firebase', 'high', 100000, 100000, 8, 16, 1000, 100);

-- Insert data for Microservices Architecture
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('Microservices Architecture', 'Spring Boot, Docker, Kubernetes', 'small', 10000, 5000, 4, 8, 200, 50),
('Microservices Architecture', 'Spring Boot, Docker, Kubernetes', 'medium', 50000, 20000, 8, 16, 1000, 100),
('Microservices Architecture', 'Spring Boot, Docker, Kubernetes', 'high', 100000, 100000, 16, 32, 2000, 200);

-- Insert data for Data Analytics Platform
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('Data Analytics Platform', 'Hadoop, Spark, Python', 'small', 10000, 5000, 4, 16, 200, 100),
('Data Analytics Platform', 'Hadoop, Spark, Python', 'medium', 50000, 20000, 8, 32, 1000, 200),
('Data Analytics Platform', 'Hadoop, Spark, Python', 'high', 100000, 100000, 16, 64, 2000, 500);

-- Insert data for Game Server
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('Game Server', 'Unity, Unreal Engine, Node.js', 'small', 10000, 5000, 4, 8, 200, 50),
('Game Server', 'Unity, Unreal Engine, Node.js', 'medium', 50000, 20000, 8, 16, 1000, 100),
('Game Server', 'Unity, Unreal Engine, Node.js', 'high', 100000, 100000, 16, 32, 2000, 200);

-- Insert data for IoT Applications
INSERT INTO resource_estimates (application_type, technologies, user_range, max_users, max_requests_per_second, cpu_cores, ram_gb, bandwidth_mbps, storage_gb) VALUES
('IoT Applications', 'MQTT, Node.js, Python', 'small', 10000, 5000, 2, 4, 100, 10),
('IoT Applications', 'MQTT, Node.js, Python', 'medium', 50000, 20000, 4, 8, 200, 20),
('IoT Applications', 'MQTT, Node.js, Python', 'high', 100000, 100000, 8, 16, 400, 50);
