---
title: "About Us"
# watermark text
watermark: "About"
# page header background image
page_header_image: "images/background/about.jpg"
# meta description
description : "Let us do all the boring CI stuff. We put our 20+ years of experience into your CI system so you can concentrate on your business. Our goal is to set up a continuous integration system for you and make it easy to use and understand."

layout : "about"
draft : false

############################## about ###############################
about:
  enable : true
  video_bg_image : "images/about/about-4.svg"
  video_thumbnail : "images/about/about-4.svg"
  subtitle : "Go Fast and Don't Break Things"
  title : "We're Faster. We're Safer."
  content : "Having a lot of small repositories is a very common practice in the software development industry, and for a good reason: it gives you a lot of agility. You can have multiple completely different projects running in parallel, each using different dependencies from other projects, and you don’t have to wait for everything to get merged into one monolithic repository before being able to start working again.<br><br>However, at some point, you'll want to apply the same change to every one of your CI environments. To do this manually is time-consuming and tedious. With Gitahxs you can do it in seconds."
  button:
    enable : true
    label : "Contact Us"
    link : "contact"

############################### counter #############################
funfacts:
  enable : true
  funfact_item:
  # funfact item loop
  - name : "Tasks run per day"
    count : "10000"
    
  # funfact item loop
  - name : "Tasks"
    count : "20"

  # funfact item loop
  - name : "Totally Satisfied Users"
    count : "10"

  # funfact item loop
  - name : "People behind this app"
    count : "5"


########################### Service ################################
service:
  enable : false
  section : "service"
  # service item comes from "content/*/service.md" file
---