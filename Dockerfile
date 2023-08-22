FROM neilpang/acme.sh:3.0.5 as base

RUN curl -o /kubectl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl

RUN chmod +x /kubectl && mv /kubectl /usr/local/bin/kubectl

ENTRYPOINT ["/entry.sh"]

CMD ["--help"]