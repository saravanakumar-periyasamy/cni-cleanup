FROM alpine
ADD cni-cleanup /
ENV CNI_PATH=/var/lib/cni/networks/cbr0
CMD ["/cni-cleanup","-cni.path=${CNI_PATH}"]