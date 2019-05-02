.PHONY: all clean

all: reports/system_pip reports/system_numpy reports/system_numpy_dev reports/from_github reports/from_github_latest

reports/%: Dockerfile_% | reports
	docker build -f $< --tag=$(@F) .
	docker run $(@F) &> $@

reports:
	mkdir reports

clean:
	rm -r reports
