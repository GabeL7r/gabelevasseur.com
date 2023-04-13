---
title: "Story Points: Time vs. Complexity"
date: 2023-04-13T11:30:03+00:00
# weight: 1
# aliases: ["/first"]
tags: []
author: "Me"
# author: ["Me", "You"] # multiple authors
description: "Clarifying why using complexity for story points is the better approach"
---

Story Points. Time? Complexity? Both?

I've worked on several engineering teams now and every one seems to use story points differently. In this post I want to
dive deep into story points and explain why I believe *complexity* is the most effective way to use story points and
the value it delivers to your team.


![Story Points Explained](/images/story_points_explained.jpeg)

--- 

## What are Story Points?

In the simplest terms Story Points are a unit of measure.

They are used by engineering teams to *estimate* the effort required to complete a piece of work. Teams will
use techniques such as planning poker to assign a point estimate to each task. From these estimates teams can
determine a velocity (i.e. how many points they complete per sprint) and estimate how long larger projects will take.

Before story points teams used time to estimate how long it would take to complete a task, but this had several pitfalls...

## What's wrong with time?

#### Hard to Estimate

Generally speaking people are overly optimistic about how much work they can get done within a givin amount of time. This
is true of developers as well.

> Hofstadter's Law: It always takes longer than you expect, even when you take into account Hofstadter's Law.

Software Engineering is inherently a complex field and contains a lot of known-unknowns and unknown-unknowns - either
of this will quickly ruin an estimate based on time.

#### Doesn't Account for Different Ability Levels

If your team is made up of junior and senior engineers it is likely a task will take the junior engineer longer than
the senior. When it comes to estimating tickets, which perspective do you use? This leads to the person doing the ticket
also creating the estimate, however, if that person has to leave unexpectedly then it throws your planning off. 

#### Masks Value of Work

When using time as a means to estimate work it gives equal credit to low-value repetitive work as it does to high-value
complicated work. Most companies want their brightest people solving their hardest problems - not doing a repetitive
manual task that takes 40 hours. When using time as a basis for story points it is unclear if the team is solving
your biggest challenges.

#### Hides Capacity To Do More

When using a time based approach there are only two ways to increase the capacity of your team: add more people or
work more overtime. Otherwise your capacity is fixed over time (i.e. 40 hours/week). However,
as your team continues to improve their skills and gain experience their capacity to handle complexity will increase. A
junior developer will spend more time doing a complicated task today then they will after having two years of experience. When using time as a basis for story points it will not reval this increased capacity of the team.

![Time Based Points](/images/time_based_story_points.png)

---

## Use Complexity

When you base story points on complexity instead of time all of these issues go away. Lets take a look...

#### Easy to Estimate

With complexity based story points you are ranking the stories based on how complex they are relative to each other. When taking this approach it becomes easier for people to categorize issues. Complexity based points don't require you to be as precise as time based estimates. As we all know, when you make an *estimate* as an engineer you are held to it, therefore, you put a lot of time debating something will take 4 or 6 hours. With complexity there is no need to be precise, you only need to know that a given task is more or less complex than something you have done previously.

#### Ability Level Unimportant

The ability levels of the engineers on your team do not factor into the estimates when using complexity as a basis for story points . Whether you are a junior or senior you would agree implementing an API is more complex than creating a "Hello World" application. Once someone gets acclimated to your team they will have a good feel on whether a given task is more or less complex than one done previously.

#### Displays Value of Work

Repetitive tasks that take a long time typically have a low complexity. If your team is doing a bunch of this type of
work it will reveal itself in how many points got completed at the end of the sprint. Tasks that are complex and require
your engineers to solve them will have a greater value and reflect a higher velocity.

#### Demonstrates Capacity To Do More

As members on your team get more acclimated to the codebase and gain more experience you would expect them to be able
to accomplish tasks of the same complexity in less time. If it took a developer five hours to do a five story point task
six months ago it should take them less time to do the same task today. What you'll see is the velocity of the team increases over time. However, it is not because your team added new people or worked over time, it is because they
have more experience and skills that enable them to solve problems faster.

![Complexity Based Points](/images/complexity_based_points.png)

It is important to keep the task complexity constant over time unless the task has become inherently less complicated. For example, if adding a new API endpoint is three points today it will be three points six months from now. The complexity
of the task doesn't change because the team members have more experience/skills and are able to complete it in less
time. 

> It is important to keep task complexity constant over time (unless the task has become less complicated)

![Increase in Capacity](/images/increase_in_capacity.png)

However, if you make a task inherently less complicated by creating an automation, a library, or a module, etc then
you have created *leverage* and reduced the complexity of the task the next time you do it. The initial implementation
may have been five points but every subsequent time you need to do it the task will only be one point because of the
leverage you created.

---

## Common Pitfalls

#### Treating Story Points as Precise Measures

I've been on teams where story points are treated as precise measures rather than rough estimates. They will have a
spreadsheet that will track how many days a developer plans to take off, points completed per developer per day, etc. Then
they will analyze the spreadsheet after every sprint and talk about discrepancies of a few points or less.

The basis behind using story points and the fibonacci sequence is for the measures to be **imprecise** and **relative**. If story
points were meant to be precise we would use all of the numbers and revert back to time estimates. Splitting hairs on minor deviations or treating the **estimates** as precise measures is a futile effort.

#### Confusing Effort With Time

The definitions of effort are:

1. The use of physical or mental energy to do something; exertion.
2. A difficult exertion of strength or will.
3. A usually earnest attempt.

I've seen teams conflate effort with time. They may have a chart that says if a task will take ~1 day of effort then
the task is two story points. However, effort is more related to complexity than it is time. I could do a mundane
task that takes three days and expend very little effort because it is easy. Or I could expend a lot of effort
on a complex problem and solve it in four hours.

By conflating effort with time you revert back to basing your story points based on time.

#### Trying To Do Math With The Numbers

Are 13 one-point tickets the same complexity as one 13-point ticket?

*The answer in no.*

A misconception I see frequently is people using math with story points and assuming a two-point ticket
is twice as complex as a one-point ticket. This isn't the case nor is it the point of story points. They are
used to weight relative complexity but doing the same repetitive task 144 times is not the same as
implementing a multi-cloud architecture.
