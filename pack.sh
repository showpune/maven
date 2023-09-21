rm -rf ./buildpack
create-package --source . --destination "./buildpack" --version "buildonly"
cp ./package.toml ./buildpack
cd ./buildpack
pack buildpack package showpune/maven:buildonly --config ./package.toml 
docker push showpune/maven:buildonly
cd ..