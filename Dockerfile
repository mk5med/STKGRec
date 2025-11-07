# FROM rocm/pytorch
FROM rocm/pytorch:rocm5.6_ubuntu20.04_py3.8_pytorch_2.0.1

COPY requirements.txt requirements.txt
RUN apt install gcc musl-dev
RUN pip3 install -r requirements.txt

WORKDIR /app