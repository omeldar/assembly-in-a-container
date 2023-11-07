# Assembly Project Template

This is a template to compile, debug and run assembly code in a Docker container.

## Setup

1. Start the Docker container by using following command:

```
docker-compose run --rm ass_dbg
```

This will start the container and immediately connect to the container console.

2. Compile your `.asm` file into an object file using `nasm`:

```
nasm -f elf64 -o <target_obj_file>.o <your_code>.asm
```

3. Link the object file into an executable:

```
ld -o <target_executable> <your_obj_file>.o
```

4. Execute the executable:

```
./<executable>
```

### Setup Example

To setup the example **Hello World** you can find in the `project.asm`, follow the steps below:

1. `docker-compose run --rm ass_dbg`
2. `nasm -f elf64 -o hello.o project.asm`
3. `ld -o hello hello.o`
4. `./hello`

Output:

```
Hello, World!
```
