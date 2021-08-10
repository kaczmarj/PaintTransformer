FROM python:3.9-slim
RUN pip install --no-cache-dir -f https://download.pytorch.org/whl/torch_stable.html \
        torch==1.9.0+cpu \
        torchvision==0.10.0+cpu
RUN pip install --no-cache-dir click
COPY inference /opt/inference
WORKDIR /work
ENTRYPOINT ["python", "/opt/inference/inference.py"]
CMD ["--help"]
