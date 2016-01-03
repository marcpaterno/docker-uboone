FROM paterno/centos67base
MAINTAINER Marc Paterno
LABEL Vendor="FNAL"
LABEL License="BSD"
RUN mkdir /products && cd /products && curl -O http://scisoft.fnal.gov/scisoft/bundles/tools/pullProducts && chmod u+x pullProducts && ./pullProducts $PWD slf6 uboone-04.31.00 e9 prof
COPY uboone_setup.sh /etc/uboone_setup.sh
RUN echo 'source /etc/uboone_setup.sh' >> /etc/profile

# Default command 
CMD ["/bin/bash", "-l"]
