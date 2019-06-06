build:
	cd ./dumpster-fire && go install
bindata:
	go-bindata -prefix ./frames/frames_txt/ -o ./dumpster-fire/bindata.go ./frames/frames_txt/