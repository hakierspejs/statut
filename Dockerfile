FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && apt-get install -y texlive-latex-base texlive-latex-extra texlive-lang-polish

WORKDIR /work

#ENTRYPOINT ["bash", "-c", "ls"]
ENTRYPOINT ["bash", "-c", "pdflatex statut.tex"]
