
build-linux: 
	env GOOS=linux GOARCH=amd64 go build -o build/copyfast cmd/copyfast.go

build-window:
	env GOOS=window GOARCH=amd64 go build -o build/copyfast cmd/copyfast.go


build-darwing:
	env GOOS=darwin GOARCH=amd64 go build -o build/copyfast cmd/copyfast.go

run: 
	go run cmd/copyfast.go

test: 
	docker build
	docker build --force-rm -t locals/copyfast . 
	docker run locals/copyfast

git:
	git add -A .
	git commit -m "auto commit"
	git push 

