## Installing

macOS/Linux

```bash
curl -fsSL https://raw.githubusercontent.com/mcserverkit/cli/main/install.sh | bash
```

Windows

1. Go to releases
2. Download mcserverkit.windows-x86_64.zip
3. Extract the zip file
4. Press `WIN + S` and search for Environment Variables
5. Press "Edit the system environment variables"
6. Click "Environment Variables..." in the bottom right
7. Look for "Path" in user variables and press "Edit..."
8. Click "New" and paste the executable path

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
