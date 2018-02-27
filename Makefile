
clean:
	./gradlew clean

plugin:
	./gradlew :pandroid-plugin:uploadArchives                         \
	-c plugin-settings.gradle                                         \
	--console plain                                                   \
	--no-build-cache

run: plugin
	./gradlew commitCheck vcsCheck alphaBuild betaBuild releaseBuild  \
	--console plain                                                   \
	--no-build-cache

test: plugin
	./gradlew :pandroid-plugin:test                                   \
	--console plain                                                   \
	--no-build-cache
