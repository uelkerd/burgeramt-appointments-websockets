FROM python:3.10-slim
COPY . /var/appointments
WORKDIR /var/appointments
RUN pip install --no-cache-dir .
RUN playwright install chromium --with-deps
CMD ["appointments", "-q"]
