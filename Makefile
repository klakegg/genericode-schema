yaml-to-json:
	@mkdir -p example/json
	@for x in $$(ls example/yaml); do \
		yq . example/yaml/$$x > example/json/$$(echo $$x | sed "s:\.gcy:\.gcj:"); \
	done

validate:
	@justify -s schema/json/genericode-1.0.json -i $$(find example -name *.gcj)