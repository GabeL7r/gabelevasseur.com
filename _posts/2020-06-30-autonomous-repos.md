---
layout: post
title: "Autonomous Repositories"
description: "Coming soon!"
---

If you are a developer, you have probably had the monorepo vs multirepo debate at some point in your career. You have probably read blogs like [this one](https://chengl.com/multirepo-vs-monorepo/) or [this one](https://medium.com/@patrickleet/mono-repo-or-multi-repo-why-choose-one-when-you-can-have-both-e9c77bd0c668) or [this one](http://blog.shippable.com/our-journey-to-microservices-and-a-mono-repository). You have probably heard big companies like Google and Facebook use monorepos while Amazon and Netflix prefer multirepos.

You have probably **not** discussed what *should* be in each multirepo -- if you decide to use this approach. (Un)Luckily Conway's Law fills the void.

>Any organization that designs a system (defined broadly) will produce a design whose structure is a copy of the organization's communication structure.
>
> --  Conway's Law

If your organization has a DevOps or Platform Team, then according to Conway's Law the organization will have the following repositories:

###### Application Repositories
* user-service
* payment-service
* logging-library
* secrets-manager-library

###### DevOps/Platform Repositories
* terraform-modules
* terraform
* ansible/salt/puppet

From my experience, there are two issues that result:

##### Workflow
How does an application developer create a new service or add a new feature requiring infrastructure/configuration changes? The workflow I have experienced goes something like this:

1. Create a new repository for the service.
2. Update the terraform repo.
3. Update the configuration management repo.
4. Coordinate deployments for each of the above.
4. Add documentation to one or more of the sources you use.

On the surface, this isn't terrible, but it's not great. When you dig deeper there is one big problem: the DevOps and application team priorities are different. I have felt the frustration from both sides of this workflow. As a developer, you are dependent on the DevOps team to either add or approve the requested changes. As a DevOps team member, you have multiple interrupts distracting you from your planned work.

> the DevOps and application team priorities are different

##### Ownership
Each team has ownership of their respective repositories. The DevOps team will setup tooling (i.e. pre-commit, make, etc), standards, and processes to govern the repositories they manage; application developers will do the same. In the worst-case scenario, DevOps has full ownership -- eventually becoming a bottleneck as the engineering team grows; in the best-case scenario, there is shared ownership of infrastructure/configuration between DevOps and application developers; 

In the worst-case scenario, the DevOps team manages all infrastructure/configuration management. This approach works in organizations with small engineering teams, but it does not scale well. Eventually, DevOps becomes a bottleneck slowing down progress of application developers. There are two options: increase the size of the DevOps team or distribute the responsibility to application developers. The latter option is the better option in my opinion.

In the best-case scenario, the DevOps team promotes application developer ownership. The DevOps team gives application developers the ability to make, approve, and deploy changes to infrastructure/configuration that relates to the application developer's project. I have done this using Codeowners in GitHub. It does help, but the code is still in a "DevOps repo." ### Add more here

## TODO: figure out how to break this up here, maybe a picture?
How can we address this?

### Autonomous Repositories
Autonomous means: having autonomy; not subject to control from outside; independent. Using this definition, an autonomonous repository is one that is not subject to control from the outside. It should contain all code, documentation, provisioning, and configuration management to run an application in production. Autonomous repositories promote the DevOps philosophy by empowering engineers to work across the entire application lifecycle.

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


