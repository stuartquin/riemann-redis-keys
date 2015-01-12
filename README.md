# Riemann Redis Keys

[![Gem Version](https://badge.fury.io/rb/riemann-redis-keys.svg)](http://badge.fury.io/rb/riemann-redis-keys)

A simple redis riemann client based on https://github.com/riemann/riemann-redis
Supports reporting the size/cardinality/length of the following key types:

* list
* set
* zset
* hash
* string

## Installation

```bash
gem install riemann-redis-keys
```

## Usage

```bash
riemann-redis-keys --redis-key "key:one" --redis-key "other:key"
```

Specify additional conneciton info:
```
riemann-redis-keys --redis-key "other:key" --redis-url "redis://localhost:6379"
```

### Thresholds

The riemann state field can be controlled by setting thresholds for critical
and warning. Default value is "ok"

```
riemann-redis-keys --redis-key "test:key" --warning 3 --critical 5
```
