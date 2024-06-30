FROM odoo:16.0
USER root
COPY ./addons/ /opt/extra_addons/
RUN apt update
RUN apt install tesseract-ocr -y
RUN find /opt/extra_addons/ -type f -name "requirements.txt" -exec pip install -r {} \;
USER odoo