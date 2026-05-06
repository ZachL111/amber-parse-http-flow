# amber-parse-http-flow

`amber-parse-http-flow` keeps a focused Ruby implementation around parsers. The project goal is to implement a Ruby parsers project for http format conversion, using round-trip fixtures and lossless normalization checks.

## Reason For The Project

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Amber Parse HTTP Flow Review Notes

The first comparison I would make is `error locality` against `token drift` because it shows where the rule is most opinionated.

## What It Does

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/amber-parse-http-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `error locality` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `token drift`, `grammar width`, `label quality`, and `error locality`.

The Ruby implementation avoids hidden state so fixture changes are easy to reason about.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Boundaries

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
