FROM python:3.11-slim-bookworm
WORKDIR /app
# Security updates + required build tools
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y curl build-essential \
    && rm -rf /var/lib/apt/lists/*
# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:$PATH"
# Copy dependency files first (layer caching)
COPY pyproject.toml poetry.lock ./
# Install only main dependencies (no dev deps inside Docker usually)
RUN poetry install --no-root --only main
# Copy full project
COPY . .
# Install Playwright browsers
RUN poetry run playwright install --with-deps
CMD ["poetry", "run", "pytest", "tests/"]