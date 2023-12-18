from ubuntu:22.04


run apt update && apt install -y python3 python3-pip
run pip install flask

copy app.py /
ENV app_for_vis = flaskApp
expose 8080
CMD ["flask", "run", "--host 0.0.0.0", "--port 8080"]
