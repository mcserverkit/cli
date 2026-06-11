## Usage

`install <version>`

Install the Minecraft version the server should run on.

`create <name> [flags]`

Creates the server folder and signs eula.txt.

- `--eula` Bool, set to true if you have read and agreed to [Minecraft's EULA](https://www.minecraft.net/en-us/eula)

`start <name> [flags]`

Start the server and allocate how much memory can be used.

- `--memory` Maximum memory that can be used, ex: 4G, 1024M

## Compiling

```bash
# Linux/Mac
go build -o mcserver ./src

# Windows
go build -o mcserver.exe ./src
```

## Development

```bash
go run ./src
```
