build:
	go build -o server main.go

run: build
	./server

watch:
	ulimit -n 5000 #increase the file watch limit, might required on MacOS
	reflex -s -r '\.go$$' make run