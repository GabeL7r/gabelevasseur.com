---
title: "Conceptual Integrity"
date: 2021-12-01T22:53:58+05:30
draft: false
author: "Gabe Levasseur"
bg_image: ""
description: "To make a user-friendly system, the system must have conceptual integrity."
---

I recently started re-reading [The Mythical Man-Month](https://www.amazon.com/Mythical-Man-Month-Software-Engineering-Anniversary/dp/0201835959/ref=sr_1_1?keywords=the+mythical+man-month&qid=1638460439&sr=8-1) and I was reminded of *Conceptual Integrity*:

> the principle that anywhere you look in your system, you can tell that the design is part of the same overall design. This includes low-level issues such as formatting and identifier naming, but also issues such as how modules and classes are designed, etc.
> <br><br>Source: [UCSD](https://cseweb.ucsd.edu/~wgg/CSE131B/Design/node6.html#:~:text=Conceptual%20integrity%20is%20the%20principle,and%20classes%20are%20designed%2C%20etc)

Frederick Brooks contends "that conceptual integrity is *the* most important consideration in system design.", and quite frankly - It. Makes. Sense.

> Which only makes me wonder why the lack of conceptual integrity is so commonplace in software.

---


Imagine going to a website and you see this element:

![first design](/images/design1.png "First Design")

And then later on you see this element:

![second design](/images/design2.png "Second Design")

---

What impression would you have about this company? You would probably wonder why they used different fonts, colors, and borders. Your perception is more negative than if the design maintained *conceptual integrity* - and justifiably so.

The good news is *no* designer or product owner would allow this to happen  - which only makes me wonder why lack the of *conceptual integrity* is so commonplace in software.

###### (Note: I am the creator of the website the screenshots above came from and I can confirm the same style is used throught the site.)

---

Here is a snippet of code to illustrate a gap in *conceptual integrity* from a coding perspective, can you spot the discrepancy?

```python
    def ensure_object(self, object_type: t.Type[V]) -> V:
        """Like :meth:`find_object` but sets the innermost object to a
        new instance of `object_type` if it does not exist.
        """
        rv = self.find_object(object_type)
        if rv is None:
            self.obj = rv = object_type()
        return rv

    def find_root(self) -> "Context":
        """Finds the outermost context."""
        node = self
        while node.parent is not None:
            node = node.parent
        return node
```

The method `ensure_object` uses a variable named `rv` as a placeholder for the return value and `find_root` doesn't. If you examine [the code](https://github.com/pallets/click/blob/main/src/click/core.py) you'll find a pretty evenly split distribution of methods that use `rv` and those that do not -- leaving a developer adding a new feature to this code base with one question: Should I use `rv` or not?

This decision may seem trivial but I've seen developers debate topics like this for days. It is so common there is even a term for it: bikeshedding.

---

If you're a developer, you undoubtedly have had a thought similar to "This code base would be much better if it used library/framework/architecture X instead of Y" which is typically followed by introducing said "improvement". However, as is always the case, the level of effort to do a full migration is too high and it is done one small step at a time. The migration may or may not ever be finished. This results in a break in *conceptual integrity* which makes the system harder to use for all current and future developers on the project.

Bringing back the analogy of website design, imagine updating the style of a website one element at a time with the process
taking many months to complete. What would happen to your users? They most likely would not be very impressed and may choose to do business with one of your competitors.

Here is the catch: once we break *conceptual integrity* enough times and accumulate Tech Debt, developers become frustrated dealing with the code and they become more
likely to leave and go work at a different company.

---

Before introducing new concepts into a code base ensure there is a plan to completely replace the old concept with the new one.

And on that note, stay tuned for my next blog post: Completing Migrations.
