---
title: "Conceptual Integrity"
date: 2022-09-02T11:30:03+00:00
# weight: 1
# aliases: ["/first"]
tags: ["first"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: false
TocOpen: true
draft: false
hidemeta: false
comments: false
description: "The most important consideration in system design."
canonicalURL: "https://canonical.url/to/page"
disableHLJS: true # to disable highlightjs
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
ShowWordCount: true
ShowRssButtonInSectionTermList: true
UseHugoToc: true
cover:
    image: "<image path/url>" # image path/url
    alt: "<alt text>" # alt text
    caption: "<text>" # display caption under cover
    relative: false # when using page bundles set this to true
    hidden: true # only hide on current single page
editPost:
    URL: "https://github.com/<path_to_repo>/content"
    Text: "Suggest Changes" # edit text
    appendFilePath: true # to append file path to Edit link
---

I recently started re-reading [The Mythical Man-Month](https://www.amazon.com/Mythical-Man-Month-Software-Engineering-Anniversary/dp/0201835959/ref=sr_1_1?keywords=the+mythical+man-month&qid=1638460439&sr=8-1) (it is a great book, if you haven't read it, you should), and I was reminded of *Conceptual Integrity*. [Fred Brooks](https://en.wikipedia.org/wiki/Fred_Brooks) contended "conceptual integrity is **the most** important consideration in system design."

![That's a bold statement](/images/thats-a-bold-statement-there-cotton.jpeg)

Having read such a bold statement I couldn't help but dig into it a little bit more. 

In this blog post we will cover:
* 📕 What is Conceptual Integrity?
* ❗Why is it important?
* 🔥 Tips to achieve it

--- 

### 📕 What is Conceptual Integrity?

Lets start by defining each part of the term:


> Conceptual: relating to or based on mental concepts.
> 
> Integrity:  the state of being whole and undivided.


Combining these two definitions we get: A whole and undivided mental concept.

If you search Google you can find this definition:

> the principle that anywhere you look in your system, you can tell that the design is part of the same overall design. This includes low-level issues such as formatting and identifier naming, but also issues such as how modules and classes are designed, etc.
> <br><br>Source: [UCSD](https://cseweb.ucsd.edu/~wgg/CSE131B/Design/node6.html#:~:text=Conceptual%20integrity%20is%20the%20principle,and%20classes%20are%20designed%2C%20etc)

My initial thoughts were that Conceptual Integrity was essentially a buzz word for consistency:


> conformity in the application of something, typically that
> which is necessary for the sake of logic, accuracy, or fairness.


However, as I did more research I came to realize that consistency is a subset of Conceptual Integrity much in the same way that User Interface (UI) Design is a subset of User Experience (UX) Design.

![UI vs UX](/images/UI-vs-UX-ketchup_2017_02.jpeg )
In fact, UX Design is the perfect analogy for Conceptual Integrity. Webflow defines UX Design as:

> UX design mainly involves research to understand things like customer pain points, potential market gaps, and competitor analysis. Besides focusing on a deep understanding of users and unmet market needs, UX also takes into account the business goals and objectives to build products that align with the company’s visions and missions. UX best practices improve user interactions and perceptions of products and services as desired by the company.
>
> Source: [Webflow](https://webflow.com/blog/ux-vs-ui-design)

If we make a few subtle change to the definition for UX, we can arrive at a definition for Conceptual Integrity:

> Conceptual Integrity mainly involves research to understand things like developer pain points, potential technological gaps, and tool/framework analysis. Besides focusing on a deep understanding of developers and unmet technological needs, Conceptual Integrity also takes into account the business goals and objectives to build products that align with the company’s visions and missions. Conceptual Integrity best practices improve developer interactions and perceptions of systems as desired by the company.

Consistency is a part of Conceptual Integrity as it helps to improve a developers interaction and perceptions of systems, but Conceptual Integrity takes into account much more than that. 

Conceptual Integrity asks questions such as:

* Will the developer experience be smooth, seamless, and intuitive, or is it confusing and unwieldy?
* Does using certain tooling/frameworks allow developers to work more efficiently?
* Which architectural patterns should be used and which avoided?
* How quickly are developers able to start productively contributing to the system?
* How will we release new features to our customers?

The same way UX Design aims to improve customer satisfaction, Conceptual Integrity will improve developer satisfaction.

Now that we have a common understanding of what it means, lets look at why it is so important.

---

### ❗Why is it important?

The importance of Conceptual Integrity is very clear in [Emergency Departments designs](https://hmcarchitects.com/news/emergency-department-design-for-a-more-efficient-and-safe-er-2019-02-27/).  Emergency Departments are literally a matter of life or death. They need to accommodate many factors including security, patient waiting time, safety, up/down staffing and shift changes, and staff effectiveness when treating patients. If Emergency Departments were poorly designed (i.e. lacked Conceptual Integrity) it could have significant consequences. For example, think about how hard it would be for doctors to do their job if each Emergency Room stored supplies in different or random locations. Luckily, each room has a standardized layout so the staff knows exactly where to find the tools that they need and can treat patients with ease no matter which room they are in.

Luckily, most software developers don't work in Emergency Rooms so lives are not on the line. However, the survival of your company could be. Let's look at the negative consequences for systems that do not have Conceptual Integrity.


#### Developer Attrition

What happens if you have a poor UX design? Your conversion rates decrease. Your users drop-off and stop using your product. Your users find alternatives.

Well, the same thing happens with developers!

Legacy/Tech Debt (i.e. code that does not have Conceptual Integrity) is one of the [reasons software engineers look for new jobs](https://www.shakebugs.com/blog/quitting-software-engineering/). Developers do not enjoy working on systems that are not easy to work on and with such a high demand for their talents they are able to change jobs at will.

![WTF](/images/wtf.webp)



* More expensive to onboard new engineers (lost productivity in onboarding and peering/pairing)
It costs [~$30k to replace a Software Engineer](https://codesubmit.io/blog/cost-of-hiring-a-software-developer/)



#### Competitive Disadvantage


* Worse developer productivity
* Longer time to deliver value to customers
* Longer build-measure-learn feedback loops

#### Poor User Experience

* 44% of users delete an app after first use if it doesn't work https://www.globalapptesting.com/blog/how-bugs-impact-your-company-infographic


#### Very costly/expensive to fix (see upcoming blog on architecture vs algorithms)

* Rewrites are difficult
* Refactorings are difficult
* https://softwareengineering.stackexchange.com/questions/6268/when-is-a-big-rewrite-the-answer



### 🔥 Tips to achieve it


##### Use code linters

Most developers are probably using code linters such as [Prettier](https://prettier.io/) to ensure all of their code is formatted in the same way (if you aren't, you should be). Code formatting is easy, we can automate it. Conceptual Integrity is harder to maintain when there is no automation to enforce consistency.

##### Style Guides

[Google](https://google.github.io/styleguide/jsguide.html#language-features) and [AirBnB](https://github.com/airbnb/javascript) have written exhaustive JavaScript style guides to reduce the amount of "options" available to developers. Their style guides make opinionated decisions based on performance and readability improvements. By creating a style guide and sharing it everyone enforcing conceptual integrity becomes a shared responsibility.

Here is an example from the AirBnB style guide:

```javascript
// 4.3 Use array spreads ... to copy arrays.
// bad
const len = items.length;
const itemsCopy = [];
let i;

for (i = 0; i < len; i += 1) {
  itemsCopy[i] = items[i];
}
// good
const itemsCopy = [...items];
```

#### Small Codebase

This approach is easy: the smaller your codebase is the easier it is to enforce consistency or migrate/refactor all of the code. This is a benefit of using microservices. And even if you don't maintain conceptual integrity the codebase is small and easy to reason about so it 

#### Architects

* Appoint one or two people to make architectural/design decisions
*

#### Golden Paths

#### Be Opinionated
This doesn't seem like a big deal, right?

![Not a big deal](/images/chill-out-its-not-a-big-deal.jpeg)

So why does Fred Brooks thing this is the most important consideration?

---

There are now **two** different ways to write a function and a developer on the project will inevitably ask: which approach should I be using?

> There should be one-- and preferably only one --obvious way to do it. - Zen of Python

The real issue is this: as the number of options increases, the number of questions a developer has to ask increases exponentially. In Big-O notation this would be O(2^N).

If you're a developer, you know this is not good. If you're not a developer - this is not good.

This is terrible for developer efficiency, morale and leads to lots of WTFs. It is a one-way street to the [Big Ball of Mud Architecture](http://www.laputan.org/mud/).



Once a developer is familiar with a well architected system with conceptual integrity adding or modifying code should be simple and boring. When a developer needs to implement a new feature it is clear where the code should be added and what pattern(s) to follow. Adding features is like working in an assembly line.

The challenging part is defining the architecture and subsequently maintaining conceptual integrity.

### Signs you have not maintained conceptual integrity
* Excessive documentation
* Significantly decreased developer productivity
* 

### examples of where conceptual integrity is enforced
* What frameworks are very opinionated? Django
* What frameworks allow you to do what you want? Flask
### Benefits of having conceptual integrity
* 
### Problems with de-centralized decision making/architectures
### Maintaining Conceptual Integrity within a single repo and across multiple repositories
