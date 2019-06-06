install:
	cd ./dumpster-fire && go install
build:
	cd ./dumpster-fire && GOOS=linux go build
bindata:
	go-bindata -prefix ./frames/frames_txt/ -o ./dumpster-fire/bindata.go ./frames/frames_txt/
docker: build bindata
	docker build -t carflo/dumpster-fire .
publish: docker
	docker push carflo/dumpster-fire