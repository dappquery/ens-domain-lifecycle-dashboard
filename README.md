# ENS Domain Lifecycle Dashboard

* Search and filter domain by name.
* Search and filter domain by address
* Track domain lifecycle events like DomainRegistered, DomainRenewed, DomainTransferred for a ENS domain.

![ENS Domain Lifecycle](https://github.com/stevepro-lab/ens-domain-lifecycle-dashboard/blob/main/src/resources/screen1.png)

![Select Domain](https://github.com/stevepro-lab/ens-domain-lifecycle-dashboard/blob/main/src/resources/screen2.png)
![Life Cycle of One Domain](https://github.com/stevepro-lab/ens-domain-lifecycle-dashboard/blob/main/src/resources/screen2.png)

You can view dashboard from here: [ENS dashboard](http://analytics.dappquery.com/public/dashboard/8d66f6ab-e0c5-475b-b220-bc5a07d9e576)

## ENS Subgraph

Data is pulled from [ENS subgraph](https://thegraph.com/explorer/subgraph/ensdomains/ens).
Entities Fetched:
* RegistrationEvent
* Registration
* Domain
* NameRegistered
* NameRenewed
* NameTransferred

Subgraph data is tranformed to SQL tables for efficient join query.

## ENS Dashboard Details

* Data is pulled from subgraph and transformed to SQL tables in postgres database. Below tables are populated:
    * registration_events
    * registrations
    * domains
    * name_registereds
    * name_reneweds
    * name_transferreds
* You can search domain either by domain name or domain owner adress.
* Domain sequence of events is displayed in decreasing order. Events which happen last is shown first.
* Ordering is done based on block number.
* Different events of domain are mapped with different colours.

## Technology Stack

* Typescript
* Postgres database
* Sequelize Postgres client

## SQL Query

Refer src/ens_domain_lifecycle.sql for query to use.

## Contributing

If you want to contribute to this project, feel free to fork the project and open a PR.
