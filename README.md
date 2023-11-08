# Assembly Project Template

This is a template to compile, debug and run assembly code in a Docker container.

To test your setup, you can use the included `project.asm` file, which contains a simple "Hello World" application written in Assembly. Attempt to execute it within the container to verify that your environment is functioning correctly. You can find the exact commands in the section *1.1 Setup Example* after *1. Setup*.

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

In this repository there already is a `project.asm`, which is a Hello World application written in Assembly. You can test if your setup works, by using the `project.asm` and run it within the container:

1. `docker-compose run --rm ass_dbg`

    *After this command, you’ll see that your console is attached to the container’s console. So the below commands are being executed in the container.*

2. `nasm -f elf64 -o hello.o project.asm`
3. `ld -o hello hello.o`
4. `./hello`

Output:

```
Hello, World!
```
