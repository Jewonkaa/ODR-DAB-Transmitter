import os
import select

input_fifo = "pad_fifo"
outputs = ["pad_fifo_1", "pad_fifo_2", "pad_fifo_3"]

# Utwórz deskryptory wyjściowe do FIFO (blokujące, dopóki nikt nie czyta)
output_fds = []
for path in outputs:
    print(f"Otwieranie {path}...")
    fd = os.open(path, os.O_WRONLY)
    output_fds.append(fd)

print("Otwieranie FIFO źródłowego...")
fd_in = os.open(input_fifo, os.O_RDONLY)

print("Start kopiowania...")
while True:
    rlist, _, _ = select.select([fd_in], [], [])
    if fd_in in rlist:
        data = os.read(fd_in, 4096)
        if not data:
            break
        for fd_out in output_fds:
            os.write(fd_out, data)
 
