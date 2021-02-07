SELECT "ens"."registration_events"."typename"            AS "typename",
       "ens"."registration_events"."block_number"        AS "block_number",
       "ens"."registration_events"."transaction_i_d"     AS "transaction_i_d",
       To_timestamp("registrations"."registration_date") AS "registration_date",
       To_timestamp("registrations"."expiry_date")       AS "expiry_date",
       "domains"."name"                                  AS "name",
       "domains"."label_name"                            AS "label_name",
       "domains"."owner"                                 AS "owner",
       "domains"."resolver"                              AS "resolver"
FROM   "ens"."registration_events"
       LEFT JOIN "ens"."registrations" "Registrations"
              ON "ens"."registration_events"."registration" =
                 "registrations"."id"
       LEFT JOIN "ens"."domains" "Domains"
              ON "registrations"."domain" = "domains"."id"
WHERE  ( "registrations"."domain" IS NOT NULL
         AND ( "registrations"."domain" <> ''
                OR "registrations"."domain" IS NULL ) )
ORDER  BY "ens"."registration_events"."block_number" DESC
LIMIT  1048576 