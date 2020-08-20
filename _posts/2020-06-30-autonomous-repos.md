---
layout: post
title: "Autonomous Repositories"
description: "Coming soon!"
---

If you are a developer, you have probably had the monorepo vs multirepo debate at some point in your career. You have probably read blogs like [this one](https://chengl.com/multirepo-vs-monorepo/) or [this one](https://medium.com/@patrickleet/mono-repo-or-multi-repo-why-choose-one-when-you-can-have-both-e9c77bd0c668) or [this one](http://blog.shippable.com/our-journey-to-microservices-and-a-mono-repository). You have probably heard big companies like Google and Facebook use monorepos while Amazon and Netflix prefer multirepos.

What you probably have **not** discussed is what *should* be in each multirepo -- if you decide to use this approach. (Un)Luckily Conway's Law fills the void.

>Any organization that designs a system (defined broadly) will produce a design whose structure is a copy of the organization's communication structure.
>
> --  Conway's Law

A typical organization is likely to have the following repositories:

###### Application Repositories
* user-service
* payment-service
* logging-library
* secrets-manager-library

###### DevOps/Platform Repositories
* terraform-modules
* terraform/cloudformation/Infrastructure as Code
* ansible/salt/puppet

This kind of repository structure results in two issues:

###### Developer Workflow
The workflow for a developer to create a new service or make required changes to infrastructure goes something like this:

1. Create a new repository for the new service.
2. Update the Infrastructure as Code repo.
3. Update the configuration management repo.
4. Coordinate deployments for each of the above.
4. Add documentation to one or more of the sources you use.

On the surface, this isn't terrible, but it's not great. When you dig deeper there is one big problem: the DevOps and application team priorities are different. Each team has a different roadmap, project manager, and daily standup. I have felt the frustration from both sides of this workflow. As a developer, you are dependent on the DevOps team to either add or approve the requested changes. Oftentime you also need the assistance of a DevOps team member to guide you through the required changes. As a DevOps team member, you have multiple interrupts distracting you from your planned work.

> the DevOps and application team priorities are different

###### Ownership
Each team has ownership of their respective repositories. The DevOps team will setup tooling (i.e. pre-commit, make, etc), standards, and processes to govern the repositories they manage; application developers will do the same. In the worst-case scenario, the DevOps team manages all infrastructure/configuration management. This approach works in organizations with small engineering teams, but it does not scale well. Eventually, DevOps becomes a bottleneck slowing down progress of application developers. There are two options: increase the size of the DevOps team or distribute the responsibility to application developers.


### Distributed Ownership
One way for the DevOps team to distribute ownership to pieces of the DevOps team repositories is through the use of [Codeowners](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/about-code-owners) in GitHub. Using Codeowners different teams are given the ability to approve and merge Pull Requests based on file paths. Application developers can then deploy changes to infrastructure/configuration that relates to their project without DevOps involvement. However, the code is still in a DevOps team repository which creates a shared ownership.

Another way to distribute ownership is to move the pieces of Infrastructure as Code and configuration management for an application into the application repo. The DevOps team is still responsible for s


### Autonomous Repositories
Autonomous means: having autonomy; not subject to control from outside; independent. Hence, an autonomonous repository is one that is not subject to control from the outside. It contains all code, documentation, provisioning, and configuration management to run an application in production. Autonomous repositories promote the DevOps philosophy by empowering engineers to work across the entire application lifecycle.

> a repository that contains all code, documentation, and provisioning and configuration management to run an application in production

In practice an autonomous repository might have the following structure:
```
configuration/
  alerts.yaml
  monitoring.yaml
docs/
  getting-started.md
  runbook.md
provisioning/
  provider.tf
  rds.tf
  s3.tf
src/
  index.js
package.json
README.md
```

This structure eliminates the dependency on DevOps by application developers.
By co-locating **ALL** elements of running a production application into the same repository, application developers have increased ownership; they become responsible for tooling, standards, and processes for everything related to their application; they are no longer dependent on DevOps to make, approve, or deploy changes; they become more efficient. 

 The result is a simplified workflow and better ownership for application developers.

#### Where does DevOps fit in?
The DevOps team is still necessary to provide guidance, auditing, and **easy** to use abstractions for application developers. 
## TODO: fill this in


8. Conclusion

    * Give more ownership to devz
    * Improve productivity
    * This may not work for everyone


