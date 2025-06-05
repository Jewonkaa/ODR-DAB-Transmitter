import os
import time

main_fifo = "pad_fifo"
targets = ["pad_fifo_1", "pad_fifo_2", "pad_fifo_3"]

# Otwórz pliki FIFO do zapisu (blokuje się, dopóki nikt nie czyta)
def open_output_fifos():
    fds = []
    for path in targets:
        try:
            fd = os.open(path, os.O_WRONLY)
            fds.append(fd)
        except Exception as e:
            print(f"Nie można otworzyć {path}: {e}")
    return fds

# Otwórz FIFO do odczytu
with open(main_fifo, "rb") as main:
    output_fds = open_output_fifos()

    while True:
        data = main.read(1024)
        if not data:
            time.sleep(0.01)
            continue
        for fd in output_fds:
            try:
                os.write(fd, data)
            except BrokenPipeError:
                pass  # jeśli odbiornik zamknął FIFO
