# PerfTrack

Performance tracking as a service written in [the Pen programming language](https://pen-lang.org/).

## Usage

To run it on a SQLite 3 database, run the following commands:

```sh
pen build
sqlite3 app.db
DATABASE_URI=sqlite://app.db SERVER_ADDRESS=127.0.0.1:8080 ./app
```

## License

[MIT](LICENSE)
