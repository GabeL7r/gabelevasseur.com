---
title: "Our Pricing"
# watermark text
watermark: "Pricing"
# page header background image
page_header_image: "images/background/about.jpg"
# meta description
description : "Our business model is pretty simple. We charge a reasonable monthly fee, and we provide value and service in return."

layout: "pricing"
draft: false

pricing:
  subtitle : "Get Started with"
  title : "Simple Pricing"
  pricing_table:
  # pricing table loop
  - title : "Free"
    price : "Free"
    unit : ""
    description : "Just the basics"
    link : "/docs/basic-startup/quick-start/"
    services:
    - "Free Tasks"
    - "Public Support via GitHub Issues"
    - "Unlimited Repositories"
    - "Unlimited Concurrency"
      
  # pricing table loop
  - title : "Startup"
    price : "$299"
    unit : "month"
    plan: 20385
    description : "Best for small companies"
    link : "#"
    services:
    - "All Free Features"
    - "Linting/Formatting Tasks"
    - "Private Support via Email"
    - "Fix Formatting Errors via GitHub UI"
      
  # pricing table loop
  - title : "Growth"
    price : "$1499"
    unit : "month"
    plan: 20751
    description : "Best for medium companies"
    link : "#"
    services:
    - "All Startup Features"
    - "Static Analysis Tasks"
    - "Priority Support (24h response)"
    - "Githaxs Insights"
---