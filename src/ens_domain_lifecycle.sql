SELECT "ens"."registration_events"."typename" AS "typename", "ens"."registration_events"."block_number" AS "block_number", "ens"."registration_events"."transaction_i_d" AS "transaction_i_d", to_timestamp("Registrations"."registration_date") AS "registration_date", to_timestamp("Registrations"."expiry_date") AS "expiry_date", "Domains"."name" AS "name", "Domains"."label_name" AS "label_name", "Domains"."owner" AS "owner", "Domains"."resolver" AS "resolver"
FROM "ens"."registration_events"
LEFT JOIN "ens"."registrations" "Registrations" ON "ens"."registration_events"."registration" = "Registrations"."id" LEFT JOIN "ens"."domains" "Domains" ON "Registrations"."domain" = "Domains"."id"
WHERE ("Registrations"."domain" IS NOT NULL
   AND ("Registrations"."domain" <> ''
    OR "Registrations"."domain" IS NULL))
ORDER BY "ens"."registration_events"."block_number" DESC
LIMIT 1048576