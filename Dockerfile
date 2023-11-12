FROM python:3.11.5

ENV TZ=America/Sao_Paulo

WORKDIR /usr/app

ENV POETRY_VIRTUALENVS_CREATE=false

RUN pip install poetry

COPY . .

RUN poetry config installer.max-workers 10
RUN poetry install --no-interaction --no-ansi

EXPOSE 8000