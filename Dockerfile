FROM python:3.11


# Copy using poetry.lock* in case it doesn't exist yet
COPY ./pyproject.toml ./poetry.lock* ./

COPY . .

ENTRYPOINT ["uvicorn", "agent.api:app", "--host", "0.0.0.0", "--port", "8001"]
# watch the logs
# CMD ["tail", "-f", "/dev/null"]