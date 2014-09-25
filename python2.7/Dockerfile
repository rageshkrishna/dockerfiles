FROM ubuntu:14.04
MAINTAINER ragesh@rageshkrishna.com

RUN sudo DEBIAN_FRONTEND=noninteractive apt-get update
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install -y python-pip git
#RUN useradd -d /home/ragesh -m -s /bin/bash -p f!zzb1n ragesh
#RUN chown -R ragesh:ragesh /home/ragesh
RUN useradd -d /home/shippable -m -s /bin/bash -p f!zzb1n shippable
RUN chown -R shippable:shippable /home/shippable

CMD ["/bin/bash"]
