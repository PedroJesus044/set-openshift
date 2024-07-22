FROM ubi9
USER 0
RUN yum install -y git
RUN git clone https://github.com/trustedsec/social-engineer-toolkit.git
RUN cd social-engineer-toolkit
RUN pip3 install -r requirements.txt
RUN python3 setup.py