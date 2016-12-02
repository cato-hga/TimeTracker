# TimeTracker Application

Requirement: Building an application that tracks employees time for each week.

## Models
- X Post - date:date rationale:text 
- X User - Devise 
- X AdminUser -> STI 
- Auditlog

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- X Administrate Admin dashboard
- X Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- X Bootstrap -> formatting 
- X Icons from glyphicons
- X Update the styles for form 

## Refactor TODOS:
- X Refactor user association integration test in post_spec
- X Refactor posts/_form for admin user with status
- X Fix post_spec.rb:82 to use factories
- X Fix post_spec.rb:52 to have correct user reference and have right id.


