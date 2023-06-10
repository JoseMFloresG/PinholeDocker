uuvp.build:
	@docker build -t uuvp:perception -f Dockerfile .
uuvp.up:
	@xhost +
	@docker start uuvp-perception
uuvp.down:
	@xhost +
	@docker stop uuvp-perception
uuvp.restart:
	@xhost +
	@docker restart uuvp-perception
uuvp.shell:
	@xhost +	
	@docker exec -it uuvp-perception bash
uuvp.nvidiacreate:
	@./nvidiaGPU.bash
uuvp.intelcreate:
	@./runIntelGpu.bash
