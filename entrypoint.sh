#!/bin/bash

remaining=100

while [ $remaining -gt 0 ]; do
    echo "$remaining seconds remaining to stat dbt run..."
    sleep 5
    remaining=$((remaining - 5))
done

echo "Countdown finished"


# Run dbt to build the project
echo "Running dbt run..."
dbt run

# Test the dbt project
echo "Running dbt test..."
dbt test

# Generate documentation
echo "Generating dbt documentation..."
dbt docs generate

# Serve the documentation
echo "Serving dbt documentation..."
dbt docs serve
