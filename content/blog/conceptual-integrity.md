---
title: "Conceptual Integrity"
date: 2021-12-01T22:53:58+05:30
draft: false
author: "Gabe Levasseur"
bg_image: ""
description: "To make a user-friendly system, the system must have conceptual integrity."
toc: 
---

I recently started re-reading [The Mythical Man-Month](https://www.amazon.com/Mythical-Man-Month-Software-Engineering-Anniversary/dp/0201835959/ref=sr_1_1?keywords=the+mythical+man-month&qid=1638460439&sr=8-1) and I was reminded of *Conceptual Integrity*:

> the principle that anywhere you look in your system, you can tell that the design is part of the same overall design. This includes low-level issues such as formatting and identifier naming, but also issues such as how modules and classes are designed, etc.
> <br><br>Source: [UCSD](https://cseweb.ucsd.edu/~wgg/CSE131B/Design/node6.html#:~:text=Conceptual%20integrity%20is%20the%20principle,and%20classes%20are%20designed%2C%20etc)

Frederick Brooks contends "that conceptual integrity is *the* most important consideration in system design.", and quite frankly - It. Makes. Sense.

> Which only makes me wonder why the lack of conceptual integrity is so commonplace in software.

Imagine going to a website and you see this element:

![first design](/images/design1.png "First Design")

And then later on you see this element:

![second design](/images/design2.png "Second Design")

---

What thoughts would you have about this product/company? You probably are wondering why the creators used different fonts, colors, and borders and your perception
of the company/product would justifiably be lower than if *conceptual integrity* was maintained.

The good news is no designer or product owner would allow this to happen  - which only makes me wonder why lack the of conceptual integrity is so commonplace in software. Why do CTOs, architects, Tech Leads or Senior Software Engineers allow this to happen with software?

If you're a developer, you undoubtedly have had a thought similar to "This code base would be much better if it used library/framework/architecture X instead of Y" which is typically followed by introducing said "improvement". However, as is always the case, the level of effort to do a full migration is too high and it is done one small step at a time. The migration may or may not ever be finished. This results in a break in *conceptual integrity* which makes the system harder to use for all current and future developers on the project.

---

Bringing back the analogy of website design, imagine updating the style of a website one element at a time with the process
taking many months to complete. What would happen to your users? They most likely would not be very impressed and may choose to do business with one of your competitors.

Here is the catch: once we break *conceptual integrity* enough times and accumulate Tech Debt, developers become frustrated dealing with the code and they become more
likely to leave and go work at a different company.

Before introducing new concepts into a code base ask yourself if the potential gains **really** outweigh making the code more difficult to reason about and when the expected gains will **actually** be realized.
