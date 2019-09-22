FROM alekseyyaroslavcev/windows-builder:2019-09-22
MAINTAINER Aleksey Yaroslavcev <a.yaroslavcev@gmail.com>

#Make toolchain
USER devel
RUN cd /opt/mxe && \
  make -j`nproc` qtbase qtcharts qtdeclarative qtquickcontrols qtquickcontrols2 qtscript qttools qttranslations MXE_TARGETS=i686-w64-mingw32.shared 
