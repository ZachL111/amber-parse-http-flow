# Review Journal

The review surface for `amber-parse-http-flow` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 173, lane `ship`
- `stress`: `grammar width`, score 220, lane `ship`
- `edge`: `label quality`, score 196, lane `ship`
- `recovery`: `error locality`, score 235, lane `ship`
- `stale`: `token drift`, score 198, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
