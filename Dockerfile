FROM apache/spark:3.5.1

# Switch to root and set working directory
USER 0
WORKDIR /opt/spark/work-dir

# Copy and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application files
COPY spark_consumer.py .