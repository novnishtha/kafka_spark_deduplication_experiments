# Kafka-Spark Deduplication Experiments

Experiments with a Kafka-Spark pipeline to analyze batch job performance, featuring real-time data streaming and deduplication using Delta Lake.

## Overview

This project demonstrates:
- **Kafka Producer** — Streaming data into Kafka topics
- **Spark Consumer** — Processing and deduplicating events in real-time using Spark Structured Streaming
- **Delta Lake** — Storing deduplicated data for efficient analytics
- **ClickHouse** — Time-series database for querying processed events

## Architecture

- **Zookeeper + Kafka** (2 brokers) — Message broker with topics for `raw_events` and `processed_events`
- **Spark Job** — Consumes, deduplicates, and transforms events
- **ClickHouse** — Materialized view consuming processed events
- **Delta Lake** — Primary data lake storage

## Quick Start

### Prerequisites
- Docker & Docker Compose
- Python 3.9+

### Setup & Run

```bash
# Start all services (Zookeeper, Kafka, ClickHouse, Spark)
docker-compose up -d

# Generate test data and run producer
python producer.py

# Monitor Spark job logs
docker logs spark-job -f
```

#### Note:
This is a completely experimental repository for learning purpose.
