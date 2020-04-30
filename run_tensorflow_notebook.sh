
echo "Running Notebook Server"
echo "From Base Directory: ${PWD}"

docker pull jupyter/tensorflow-notebook

docker \
  run -p 8888:8888 \
  -v $PWD/notebooks:/home/jovyan \
  --rm \
  jupyter/tensorflow-notebook