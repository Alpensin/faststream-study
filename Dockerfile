FROM python:3.12-slim AS builder

COPY poetry.lock pyproject.toml ./
RUN python -m pip install --no-cache-dir poetry \
    && poetry export --without-hashes -f requirements.txt -o requirements.txt

FROM python:3.12-slim

WORKDIR /code

COPY --from=builder requirements.txt ./
RUN python -m pip install --no-cache-dir -r requirements.txt

COPY basic_usage.py .

CMD ["faststream", "run", "basic_usage:app"]
