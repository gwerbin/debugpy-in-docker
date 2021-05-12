run: runtime/service.py
	docker compose up --build

runtime:
	mkdir -p $@
runtime/%.py: %.hy runtime
	hy2py $< > $@
