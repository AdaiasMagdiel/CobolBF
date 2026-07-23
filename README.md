# COBOL BF Interpreter

A [Brainfuck](https://en.wikipedia.org/wiki/Brainfuck) interpreter written in COBOL.

This is a study project, built to practice COBOL, especially text manipulation,
data structures (`OCCURS`), and control flow.

## Status

Current support for Brainfuck commands:

| Command | Description                        | Implemented |
|---------|-------------------------------------|:-----------:|
| `+`     | Increment the current cell          | ✅          |
| `-`     | Decrement the current cell          | ❌          |
| `>`     | Move the pointer right              | ❌          |
| `<`     | Move the pointer left               | ❌          |
| `.`     | Output the current cell as a char   | ✅          |
| `,`     | Read a character of input           | ❌          |
| `[` `]` | Loop (while cell != 0)              | ❌          |

## Requirements

- [GnuCOBOL](https://gnucobol.sourceforge.io/) (`cobc`)

## Build & run

```bash
cobc -x -o COBOLBF COBOLBF.cbl
./COBOLBF
```

The Brainfuck code to be interpreted is hardcoded in the `WS-SOURCE-CODE`
variable inside the `.cbl` file.

## Structure

- `COBOLBF.cbl` — the interpreter's source code.
