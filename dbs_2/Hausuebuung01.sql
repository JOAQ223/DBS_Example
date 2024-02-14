CREATE TABLE "Packet" (
  "versandNr" SERIAL PRIMARY KEY,
  "full_name" varchar,
  "created_at" timestamp,
  "country_code" int
);

CREATE TABLE "Sender" (
  "versandNr" SERIAL PRIMARY KEY,
  "full_name" varchar,
  "created_at" timestamp,
  "country_code" int
);

ALTER TABLE "Sender" ADD FOREIGN KEY ("versandNr") REFERENCES "Packet" ("versandNr");
