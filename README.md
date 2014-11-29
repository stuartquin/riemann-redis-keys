# Riemann Redis Keys

A simple redis riemann client based on https://github.com/riemann/riemann-redis
Supports reporting the size/cardinality/length of the following key types:

* list
* set
* zset
* hash
* string

## Usage

```bash
riemann-redis-keys --redis-key "enrichment_queue" --redis-key "other"
```
