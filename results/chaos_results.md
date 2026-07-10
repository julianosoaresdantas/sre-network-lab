juliano@juliano:~/sre-network-lab$ ab -n 1000 -c 10 http://localhost/
This is ApacheBench, Version 2.3 <$Revision: 1923142 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 100 requests
Completed 200 requests
Completed 300 requests
Completed 400 requests
Completed 500 requests
Completed 600 requests
Completed 700 requests
Completed 800 requests
Completed 900 requests
Completed 1000 requests
Finished 1000 requests


Server Software:        nginx/1.31.2
Server Hostname:        localhost
Server Port:            80

Document Path:          /
Document Length:        896 bytes

Concurrency Level:      10
Time taken for tests:   41.120 seconds
Complete requests:      1000
Failed requests:        0
Total transferred:      1129000 bytes
HTML transferred:       896000 bytes
Requests per second:    24.32 [#/sec] (mean)
Time per request:       411.196 [ms] (mean)
Time per request:       41.120 [ms] (mean, across all concurrent requests)
Transfer rate:          26.81 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:      182  201   7.9    201     220
Processing:   184  206   7.3    206     231
Waiting:      182  201   8.4    201     223
Total:        377  406  10.9    407     438

Percentage of the requests served within a certain time (ms)
  50%    407
  66%    411
  75%    414
  80%    416
  90%    420
  95%    424
  98%    428
  99%    430
 100%    438 (longest request)
