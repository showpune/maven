rm -rf ./buildpack
rm -rf ./bin
create-package --source . --destination "./buildpack" --version "buildonly" --cache-location ./carton-cache --include-dependencies
cp ./package.toml ./buildpack
cd ./buildpack
pack buildpack package showpune/maven:buildonly --config ./package.toml 
docker push showpune/maven:buildonly
cd ..