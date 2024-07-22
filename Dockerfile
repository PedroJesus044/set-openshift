FROM ubi9
USER 0
RUN yum install -y git python3-pip
RUN yum groupinstall -y "Development Tools"
RUN git clone https://github.com/trustedsec/social-engineer-toolkit.git
RUN chgrp -R 0 social-engineer-toolkit && \
    chmod -R g+rwX social-engineer-toolkit

# USER 1001
WORKDIR /social-engineer-toolkit
RUN pip3 install -r requirements.txt
#RUN python3 setup.py
USER 1001
CMD ["sleep", "inf"]