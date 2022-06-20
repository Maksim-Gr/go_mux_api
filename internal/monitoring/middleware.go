package middleware

import "github.com/prometheus/client_golang/prometheus"

var totalRequests = prometheus.NewCounterVec(
	prometheus.CounterOpts{
		Name: "http_requests_total",
		Help: "Number of requests",
	}, []string{"path"},
)
