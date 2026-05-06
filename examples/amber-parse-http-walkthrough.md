# Amber Parse HTTP Flow Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 173 | ship |
| stress | grammar width | 220 | ship |
| edge | label quality | 196 | ship |
| recovery | error locality | 235 | ship |
| stale | token drift | 198 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `baseline` becomes less cautious without a clear reason, I would inspect the drag input first.
