yaml-to-json:
	@mkdir -p example/json
	@for x in $$(ls example/yaml); do \
		yq . example/yaml/$$x > example/json/$$(echo $$x | sed "s:\.gcy:\.gcj:"); \
	done