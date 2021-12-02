---
title: "Configuration"
date: 2018-12-29T11:02:05+06:00
weight: 3
feedback: true
draft: false
layout : "doc-page"
---

### Basic Configuration


You must be an admin in your GitHub Organization to install or configure Tasks.


After you install the GitHub application you will be redirected to the [Githaxs Dashboard](https://my.githaxs.com/app/configuration/).

To configure your click on the edit icon and modify the settings.


All tasks are pre-configured with "sane" defaults. For example, Terraform Format will run for any repo that has the
HCL language (determined by GitHub).


#### Task Installation

A task can be configured to run in multiple different ways providing you maximum flexibility and convenience.

The first option is to install a task on your `Entire Org`. With this option the task will run on *every* repository the Githaxs application is installed on.

If you would like to run a task on only certain repos you can uncheck `Entire Org` and add a list of Repo Names or Repo Topics.


#### Task Settings
In addition to configuring which repos a task will run on, you can provide settings for tasks that are configurable.

As an example, the Title Lint task will check Pull Request titles to ensure they match a defined pattern which is provided by the `regex` parameter.

###### Org Default

Org Default settings will be used if no other settings for a task have been set.

###### Repo Topics

You can provide settings based on repo topics. For example, all repos with a topic `api` could be configured one way and repos with
a topic `web` could be configured a different way.

###### Repo Name

You can provide settings for a specific repo. Repo specific settings will override repo topic settings.

###### Org Final

Org Final settings will take final precedence and apply to all repos within the GitHub Organization.

###### Recap

Settings will be applied in the following order, with those coming later having higher precedence:

1. Org Default
2. Repo Topics
3. Repo Name
4. Org Final