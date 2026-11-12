# Pod image for Wan clips and Qwen start frames: the software is preinstalled, the models stay on the network volume.
# Built and pushed to ghcr.io by .github/workflows/build.yml on every push.
FROM runpod/pytorch:2.8.0-py3.11-cuda12.8.1-cudnn-devel-ubuntu22.04
RUN apt-get update -qq && apt-get install -y -qq rsync && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir "diffusers==0.43.0" transformers accelerate ftfy imageio imageio-ffmpeg peft "huggingface_hub[cli]"
