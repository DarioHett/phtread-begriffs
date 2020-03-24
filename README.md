# pthread Examples in C
Reproducing ["Concurrent programming" (begriffs.com)](https://begriffs.com/posts/2020-03-23-concurrent-programming).

  *This is an introduction rather than a reference. Plenty of reference material exists for pthreads – whole books in fact. I won’t dwell on all the options of the API, but will briskly give you the big picture. None of the examples contain error handling because it would merely clutter them.*

I added a run.sh shell script to call compilation and timing.

---

Data racing (visualize by removing >/dev/null in run.sh)
```
./run.sh banker

Running: banker

real    0m0,859s
user    0m1,922s
sys     0m1,371s
```

Threads in deadlock
```
./run.sh banker2
Running: banker2
(will not finish as threads deadlock)
```

Fixing deadlock through a locking hierarchy.
```
./run.sh banker3
Running: banker3

real    0m1,148s
user    0m1,568s
sys     0m1,531s
```

Fixing deadlock through backoff.
```
./run.sh banker3_backoff
Running: banker3_backoff

real    0m1,967s
user    0m3,535s
sys     0m3,997s
```

Condition variables
```
./run.sh banker_stats
Running: banker_stats

real    0m6,607s
user    0m12,734s
sys     0m11,665s
```

---
