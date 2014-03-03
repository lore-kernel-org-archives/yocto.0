Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2BD2E009ED
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 09:38:15 -0800 (PST)
Received: by mail-vc0-f172.google.com with SMTP id lf12so3957811vcb.3
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 09:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=rkQCvlaWF+4ddVqeJKdywG69GfvfiIwVTaxbW5ldxbY=;
	b=tKYu2tWs9TWHnkpH2UvPOnIqqwtSO5zrmLLSvPgJpkW71Ce/Zlwk+R/EAeLe1Tt1Ia
	hekneG5gswx99DXyNHQ+e3dSGCF3mcPMq1XuUVNYar2ldANZ4PESpTjA8AHrEb9Lu0Cf
	16akodn/UUlbxI4aY7Tw/4sC1jrY4kd/9YVvgHtYNqbs5xOuq7POzGNdbmNUXhN92txx
	O3M007DTsjnW79Ar2KqjboXT5d/UKWv1xRprtxghyhfIBaGV0o/kGhV9D7oBisgXy/hK
	FXyAwZi4IBC1a8jQot5KcsYk6sGtK3ScrHvrXaSNO46ru99heRfkWaq3Zrj0ob0IzgVf
	ieMA==
MIME-Version: 1.0
X-Received: by 10.58.190.99 with SMTP id gp3mr3610422vec.32.1393868294369;
	Mon, 03 Mar 2014 09:38:14 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Mon, 3 Mar 2014 09:38:14 -0800 (PST)
In-Reply-To: <4303806.mO7WsDBPPN@peggleto-mobl5.ger.corp.intel.com>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
	<CAA7h+ErXKX-M=VsC2GDqe5DGNE-y_VtEPv0YdO+ws+HHGTa9FA@mail.gmail.com>
	<2400828.naZC4e9eTT@peggleto-mobl5.ger.corp.intel.com>
	<4303806.mO7WsDBPPN@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 3 Mar 2014 10:38:14 -0700
Message-ID: <CAA7h+EoviZNZb=yxt_fumhnkefCXK9UzJ3TX+ZtZfNPbMFnQHA@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: WARNING: Failed to fetch URL http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz, attempting MIRRORS if available
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 03 Mar 2014 17:38:18 -0000
Content-Type: multipart/alternative; boundary=047d7b675bf08cb5ad04f3b7400b

--047d7b675bf08cb5ad04f3b7400b
Content-Type: text/plain; charset=ISO-8859-1

Here you go:

@LAPTOP-002:~$ dpkg-query -W -f='${Package}\t${Version}\t${Architecture}\n'
accountsservice 0.6.15-2ubuntu9.7 amd64
acidrip 0.14-0.2ubuntu6 all
acl 2.2.51-5ubuntu1 amd64
acpi-support 0.140.1 amd64
acpid 1:2.0.10-1ubuntu3 amd64
acroread 9.5.5-1precise1 amd64
acroread-bin 9.5.5-1precise1 i386
activity-log-manager-common 0.9.4-0ubuntu3.2 all
activity-log-manager-control-center 0.9.4-0ubuntu3.2 amd64
adduser 3.113ubuntu2 all
adium-theme-ubuntu 0.3.2-0ubuntu1 all
adobe-flash-properties-gtk 11.2.202.341-0precise1 amd64
adobe-flashplugin 11.2.202.341-0precise1 amd64
aften 0.0.8+git20100105-0ubuntu2 amd64
aisleriot 1:3.2.3.2-0ubuntu1 amd64
alacarte 0.13.2-2ubuntu4 all
alsa-base 1.0.25+dfsg-0ubuntu1.1 all
alsa-firmware-loaders 1.0.25-1ubuntu1 amd64
alsa-oss 1.0.25-1 amd64
alsa-source 1.0.25+dfsg-0ubuntu1.1 all
alsa-tools 1.0.25-1ubuntu1 amd64
alsa-tools-gui 1.0.25-1ubuntu1 amd64
alsa-utils 1.0.25-1ubuntu5.2 amd64
alsamixergui 0.9.0rc2-1-9.1 amd64
amarok 2:2.8.0-0ubuntu2~ubuntu12.04~ppa1 amd64
amarok-common 2:2.8.0-0ubuntu2~ubuntu12.04~ppa1 all
amarok-utils 2:2.8.0-0ubuntu2~ubuntu12.04~ppa1 amd64
anacron 2.3-14ubuntu1 amd64
apg 2.2.3.dfsg.1-2 amd64
app-install-data 0.12.04.4 all
app-install-data-partner 12.12.04.1 all
apparmor 2.7.102-0ubuntu3.9 amd64
appmenu-gtk 0.3.92-0ubuntu1.1 amd64
appmenu-gtk3 0.3.92-0ubuntu1.1 amd64
appmenu-qt 0.2.6-0ubuntu1 amd64
apport-symptoms 0.16.1 all
apt 0.8.16~exp12ubuntu10.16 amd64
apt-transport-https 0.8.16~exp12ubuntu10.16 amd64
apt-utils 0.8.16~exp12ubuntu10.16 amd64
apt-xapian-index 0.44ubuntu5.1 all
aptdaemon 0.43+bzr805-0ubuntu9 all
aptdaemon-data 0.43+bzr805-0ubuntu9 all
aptitude 0.6.6-1ubuntu1.2 amd64
apturl 0.5.1ubuntu3 amd64
apturl-common 0.5.1ubuntu3 amd64
arj 3.10.22-10 amd64
aspell 0.60.7~20110707-1 amd64
aspell-en 6.0-0-6ubuntu2 all
at 3.1.13-1ubuntu1 amd64
at-spi2-core 2.4.2-0ubuntu0.1 amd64
audacity 2.0.0-1ubuntu0.1 amd64
audacity-data 2.0.0-1ubuntu0.1 all
audio-recorder 0.9.1~precise amd64
augeas-lenses 0.10.0-0ubuntu4 all
autoconf 2.68-1ubuntu2 all
automake 1:1.11.3-1ubuntu2 all
automake1.9 1.9.6+nogfdl-3.1ubuntu1 all
automoc 1.0~version-0.9.88-5 amd64
autotools-dev 20120210.1ubuntu1 all
avahi-autoipd 0.6.30-5ubuntu2.1 amd64
avahi-daemon 0.6.30-5ubuntu2.1 amd64
avahi-utils 0.6.30-5ubuntu2.1 amd64
bamfdaemon 0.2.126-0ubuntu1 amd64
baobab 3.4.1-0ubuntu1 amd64
base-files 6.5ubuntu6.7 amd64
base-passwd 3.5.24 amd64
bash 4.2-2ubuntu2.1 amd64
bash-completion 1:1.3-1ubuntu8.1 all
bc 1.06.95-2ubuntu1 amd64
bcmwl-kernel-source 6.20.155.1+bdcom-0ubuntu0.0.2 amd64
bind9-host 1:9.8.1.dfsg.P1-4ubuntu0.8 amd64
binfmt-support 2.0.8 amd64
binutils 2.22-6ubuntu1.1 amd64
binutils-arm-linux-gnueabi 2.22-6ubuntu1cross1.82 amd64
binutils-doc 2.22-6ubuntu1.1 all
binutils-gold 2.22-6ubuntu1.1 amd64
bison 1:2.5.dfsg-2.1 amd64
bitbake 1.12.0-1 all
blubuntu-wallpapers 0.3.1 all
bluez 4.98-2ubuntu7 amd64
bluez-alsa 4.98-2ubuntu7 amd64
bluez-alsa 4.98-2ubuntu7 i386
bluez-cups 4.98-2ubuntu7 amd64
bluez-gstreamer 4.98-2ubuntu7 amd64
branding-ubuntu 0.7 all
brasero 3.4.1-0ubuntu1.1 amd64
brasero-cdrkit 3.4.1-0ubuntu1.1 amd64
brasero-common 3.4.1-0ubuntu1.1 all
bridge-utils 1.5-2ubuntu7 amd64
brltty 4.3-1ubuntu5 amd64
bsdmainutils 8.2.3ubuntu1 amd64
bsdutils 1:2.20.1-1ubuntu3 amd64
btrfs-tools 0.19+20100601-3ubuntu3 amd64
build-essential 11.5ubuntu2.1 amd64
busybox-initramfs 1:1.18.5-1ubuntu4.1 amd64
busybox-static 1:1.18.5-1ubuntu4.1 amd64
bzip2 1.0.6-1 amd64
bzr 2.5.1-0ubuntu2 all
bzr-builddeb 2.8.4 all
ca-certificates 20111211 all
cabextract 1.4-1 amd64
calligra-data 1:2.7.1-0ubuntu1~ubuntu12.04.3~ppa5 all
calligra-libs 1:2.7.1-0ubuntu1~ubuntu12.04.3~ppa5 amd64
cdbs 0.4.100ubuntu2 all
cdparanoia 3.10.2+debian-10ubuntu1 amd64
cdrdao 1:1.2.3-0.1ubuntu3 amd64
checkbox 0.13.10 amd64
checkbox-qt 0.13.10 amd64
chromium-browser 32.0.1700.107-0ubuntu0.12.04.1~20140204.866.1 amd64
chromium-browser-l10n 32.0.1700.107-0ubuntu0.12.04.1~20140204.866.1 all
chromium-codecs-ffmpeg-extra 32.0.1700.107-0ubuntu0.12.04.1~20140204.866.1
amd64
chrpath 0.13-2build2 amd64
ckermit 302-1 amd64
cmake 2.8.12.2-0ubuntu1~ubuntu12.04.1~ppa2 amd64
cmake-data 2.8.12.2-0ubuntu1~ubuntu12.04.1~ppa2 all
cmap-adobe-japan2 0+20090930-2 all
colord 0.1.16-2ubuntu0.1 amd64
comerr-dev 2.1-1.42-1ubuntu2 amd64
command-not-found 0.2.46ubuntu6 all
command-not-found-data 0.2.46ubuntu6 amd64
compiz 1:0.9.7.12-0ubuntu3 all
compiz-core 1:0.9.7.12-0ubuntu3 amd64
compiz-gnome 1:0.9.7.12-0ubuntu3 amd64
compiz-plugins-default 1:0.9.7.12-0ubuntu3 amd64
compiz-plugins-main-default 1:0.9.7.0~bzr19-0ubuntu10.1 amd64
compizconfig-backend-gconf 0.9.5.92-0ubuntu5 amd64
console-setup 1.70ubuntu5 all
consolekit 0.4.5-2ubuntu0.1 amd64
coreutils 8.13-3ubuntu3.2 amd64
cpio 2.11-7ubuntu3 amd64
cpp 4:4.6.3-1ubuntu5 amd64
cpp-4.5 4.5.3-12ubuntu2 amd64
cpp-4.5-arm-linux-gnueabi 4.5.3-12ubuntu2cross1.61 amd64
cpp-4.6 4.6.3-1ubuntu5 amd64
cpp-4.6-arm-linux-gnueabi 4.6.3-1ubuntu5cross1.62 amd64
cpp-4.6-doc 4.6.3-1ubuntu5 all
cpp-arm-linux-gnueabi 4:4.6.2-7 amd64
cpp-doc 4:4.6.3-1ubuntu5 amd64
cpu-checker 0.7-0ubuntu1 amd64
cron 3.0pl1-120ubuntu4 amd64
cryptsetup 2:1.4.1-2ubuntu4 amd64
cryptsetup-bin 2:1.4.1-2ubuntu4 amd64
cups 1.5.3-0ubuntu8 amd64
cups-bsd 1.5.3-0ubuntu8 amd64
cups-client 1.5.3-0ubuntu8 amd64
cups-common 1.5.3-0ubuntu8 all
cups-driver-gutenprint 5.2.8~pre1-0ubuntu2.1 all
cups-filters 1.0.18-0ubuntu0.1 amd64
cups-pdf 2.6.1-6 amd64
cups-pk-helper 0.2.1.2-1ubuntu0.1 amd64
cups-ppdc 1.5.3-0ubuntu8 amd64
curl 7.22.0-3ubuntu4.7 amd64
cutecom 0.22.0-2 amd64
cvs 2:1.12.13+real-8 amd64
dash 0.5.7-2ubuntu2 amd64
dblatex 0.3.2-2 all
dbus 1.4.18-1ubuntu1.4 amd64
dbus-x11 1.4.18-1ubuntu1.4 amd64
dc 1.06.95-2ubuntu1 amd64
dconf-gsettings-backend 0.12.0-0ubuntu1.1 amd64
dconf-service 0.12.0-0ubuntu1.1 amd64
dctrl-tools 2.18ubuntu1 amd64
debconf 1.5.42ubuntu1 all
debconf-i18n 1.5.42ubuntu1 all
debconf-utils 1.5.42ubuntu1 all
debhelper 9.20131127ubuntu2~ubuntu12.04.1~ppa3 all
debian-archive-keyring 2010.08.28 all
debian-keyring 2012.02.22 all
debianutils 4.2.1ubuntu2 amd64
debootstrap 1.0.46ubuntu1 all
deja-dup 22.0-0ubuntu4 amd64
desktop-file-utils 0.20-0ubuntu3 amd64
devscripts 2.11.6ubuntu1.6 amd64
dh-apparmor 2.7.102-0ubuntu3.9 all
dh-make 0.59ubuntu1 all
dh-modaliases 0.9.7-0ubuntu7.14 all
dh-translations 116 all
dictionaries-common 1.12.1ubuntu2 all
diff 1:3.2-1ubuntu1 all
diffstat 1.54-1 amd64
diffuse 0.4.7 all
diffutils 1:3.2-1ubuntu1 amd64
distro-info 0.8.2 amd64
distro-info-data 0.8ubuntu0.5 all
dkms 2.2.0.3-1ubuntu3.2 all
dmidecode 2.11-4 amd64
dmsetup 2:1.02.48-4ubuntu7.4 amd64
dmz-cursor-theme 0.4.3 all
dnsmasq-base 2.59-4ubuntu0.1 amd64
dnsutils 1:9.8.1.dfsg.P1-4ubuntu0.8 amd64
doc-base 0.10.3 all
docbook 4.5-4ubuntu1 all
docbook-to-man 1:2.0.0-28ubuntu1 amd64
docbook-xml 4.5-7ubuntu1 all
docbook-xsl 1.76.1+dfsg-1ubuntu1 all
dosfstools 3.0.12-1ubuntu1.1 amd64
dpatch 2.0.34ubuntu1 all
dpkg 1.16.1.2ubuntu7.2 amd64
dpkg-dev 1.16.1.2ubuntu7.2 all
dput 0.9.6.2ubuntu1 all
duplicity 0.6.18-0ubuntu3.4 amd64
dvd+rw-tools 7.1-10 amd64
dvd95 1.6p0+git20100528.ef7c-0ubuntu3 amd64
dvdauthor 0.7.0-1.1build1 amd64
dvdrip 1:0.98.11-0ubuntu3 all
dvdrip-doc 2:0.98.11-0ubuntu1 all
dvdrip-queue 0.1.3-0.1ubuntu2 all
dvdrip-utils 1:0.98.11-0ubuntu3 amd64
e2fslibs 1.42-1ubuntu2 amd64
e2fsprogs 1.42-1ubuntu2 amd64
ed 1.5-3 amd64
edubuntu-wallpapers 12.04.4 all
eject 2.1.5+deb1+cvs20081104-9 amd64
elementary-icon-theme 2.7.1-0ubuntu6 all
emacsen-common 2.0.7~ubuntu12.04.1~ppa1 all
empathy 3.4.2.3-0ubuntu1.1 amd64
empathy-common 3.4.2.3-0ubuntu1.1 all
enchant 1.6.0-7 amd64
eog 3.4.2-0ubuntu1.1 amd64
esound-common 0.2.41-10build3 all
espeak 1.46.02-0ubuntu1 amd64
espeak-data 1.46.02-0ubuntu1 amd64
evince 3.4.0-0ubuntu1.7 amd64
evince-common 3.4.0-0ubuntu1.7 all
evolution-data-server 3.2.3-0ubuntu7.1 amd64
evolution-data-server-common 3.2.3-0ubuntu7.1 all
example-content 46 all
faac 1.28-0ubuntu2 amd64
faad 2.7-7 amd64
fakeroot 1.18.2-1 amd64
febootstrap 3.14-2 amd64
ffmpeg 4:0.8.10-0ubuntu0.12.04.1 all
ffmpeg2theora 0.27-1.1ubuntu1 amd64
file 5.09-2ubuntu0.2 amd64
file-roller 3.4.1-0ubuntu1 amd64
filezilla 3.5.3-1ubuntu2 amd64
filezilla-common 3.5.3-1ubuntu2 all
findutils 4.4.2-4ubuntu1 amd64
firefox 27.0.1+build1-0ubuntu0.12.04.1 amd64
firefox-gnome-support 22.0+build2-0ubuntu0.12.04.2 amd64
firefox-locale-en 27.0.1+build1-0ubuntu0.12.04.1 amd64
flac 1.2.1-6 amd64
flashplugin-installer 11.2.202.336ubuntu0.12.04.1 amd64
flex 2.5.35-10ubuntu3 amd64
folks-common 0.6.8-2 all
fontconfig 2.8.0-3ubuntu9.1 amd64
fontconfig-config 2.8.0-3ubuntu9.1 all
fonts-droid 20101110+git-2 all
fonts-horai-umefont 434-1 all
fonts-kacst 2.01+mry-3 all
fonts-kacst-one 5.0+svn11846-2 all
fonts-khmeros-core 5.0-5ubuntu1 all
fonts-lao 0.0.20060226-8 all
fonts-liberation 1.07.0-2ubuntu0.1 all
fonts-nanum 3.010-2 all
fonts-opensymbol 2:102.2+LibO3.5.7-0ubuntu5 all
fonts-takao-pgothic 003.02.01-5ubuntu1 all
fonts-thai-tlwg 1:0.4.17-1ubuntu1 all
fonts-tlwg-garuda 1:0.4.17-1ubuntu1 all
fonts-tlwg-kinnari 1:0.4.17-1ubuntu1 all
fonts-tlwg-loma 1:0.4.17-1ubuntu1 all
fonts-tlwg-mono 1:0.4.17-1ubuntu1 all
fonts-tlwg-norasi 1:0.4.17-1ubuntu1 all
fonts-tlwg-purisa 1:0.4.17-1ubuntu1 all
fonts-tlwg-sawasdee 1:0.4.17-1ubuntu1 all
fonts-tlwg-typewriter 1:0.4.17-1ubuntu1 all
fonts-tlwg-typist 1:0.4.17-1ubuntu1 all
fonts-tlwg-typo 1:0.4.17-1ubuntu1 all
fonts-tlwg-umpush 1:0.4.17-1ubuntu1 all
fonts-tlwg-waree 1:0.4.17-1ubuntu1 all
fonts-unfonts-core 1.0.3.is.1.0.2-080608-5ubuntu1 all
foomatic-db 20120322-0ubuntu1 all
foomatic-db-engine 4.0.8-2ubuntu1 amd64
foomatic-filters 4.0.16-0ubuntu0.2 amd64
fping 2.4b2-to-ipv6-16.1 amd64
freepats 20060219-1 all
frei0r-plugins 1.1.22git20091109-1.1ubuntu1 amd64
friendly-recovery 0.2.25 all
ftp 0.17-25 amd64
fuse 2.8.6-2ubuntu2 amd64
fuse-utils 2.8.6-2ubuntu2 all
fuseext2 0.3-1 amd64
fxload 0.0.20081013-1ubuntu1 amd64
g++ 4:4.6.3-1ubuntu5 amd64
g++-4.5-arm-linux-gnueabi 4.5.3-12ubuntu2cross1.61 amd64
g++-4.6 4.6.3-1ubuntu5 amd64
gawk 1:3.1.8+dfsg-0.1ubuntu1 amd64
gcalctool 6.4.1.1-0ubuntu3 amd64
gcc 4:4.6.3-1ubuntu5 amd64
gcc-4.5 4.5.3-12ubuntu2 amd64
gcc-4.5-arm-linux-gnueabi 4.5.3-12ubuntu2cross1.61 amd64
gcc-4.5-arm-linux-gnueabi-base 4.5.3-12ubuntu2cross1.61 all
gcc-4.5-base 4.5.3-12ubuntu2 amd64
gcc-4.5-doc 4.5.3-12ubuntu2 all
gcc-4.5-locales 4.5.3-12ubuntu2 all
gcc-4.6 4.6.3-1ubuntu5 amd64
gcc-4.6-arm-linux-gnueabi 4.6.3-1ubuntu5cross1.62 amd64
gcc-4.6-arm-linux-gnueabi-base 4.6.3-1ubuntu5cross1.62 all
gcc-4.6-base 4.6.3-1ubuntu5 amd64
gcc-4.6-base 4.6.3-1ubuntu5 i386
gcc-4.6-doc 4.6.3-1ubuntu5 all
gcc-4.6-locales 4.6.3-1ubuntu5 all
gcc-4.6-multilib 4.6.3-1ubuntu5 amd64
gcc-4.6-multilib-arm-linux-gnueabi 4.6.3-1ubuntu5cross1.62 all
gcc-arm-linux-gnueabi 4:4.6.2-7 amd64
gcc-multilib 4:4.6.3-1ubuntu5 amd64
gccxml 0.9.0+cvs20111013-1 amd64
gconf-service 3.2.5-0ubuntu2 amd64
gconf-service-backend 3.2.5-0ubuntu2 amd64
gconf2 3.2.5-0ubuntu2 amd64
gconf2-common 3.2.5-0ubuntu2 all
gdb 7.4-2012.04-0ubuntu2.1 amd64
gedit 3.4.1-0ubuntu1 amd64
gedit-common 3.4.1-0ubuntu1 all
genext2fs 1.4.1-4 amd64
genisoimage 9:1.1.11-2ubuntu2 amd64
geoclue 0.12.0-1ubuntu12 amd64
geoclue-ubuntu-geoip 0.0.2-0ubuntu6.3 amd64
geoip-database 20111220-1 all
gettext 0.18.1.1-5ubuntu3 amd64
gettext-base 0.18.1.1-5ubuntu3 amd64
ghostscript 9.05~dfsg-0ubuntu4.2 amd64
ghostscript-cups 9.05~dfsg-0ubuntu4.2 amd64
ghostscript-x 9.05~dfsg-0ubuntu4.2 amd64
gimp 2.8.10-0precise3~ppa amd64
gimp-cbmplugs 1.2.2-1 amd64
gimp-data 2.8.10-0precise3~ppa all
gimp-data-extras 1:2.0.1-3 all
gimp-dbg 2.8.10-0precise3~ppa amd64
gimp-dds 2.0.9-3 amd64
gimp-dimage-color 1.1.0-3ubuntu1 amd64
gimp-flegita 0.6.2-1.1ubuntu1 amd64
gimp-gap 2.6.0+dfsg-2 amd64
gimp-gluas 0.1.20-1 amd64
gimp-gmic 1:1.5.8.3-0precise0~ppa amd64
gimp-gutenprint 5.2.8~pre1-0ubuntu2.1 amd64
gimp-help-common 1:2.8.1-0precise6~ppa all
gimp-help-en 1:2.8.1-0precise6~ppa all
gimp-lensfun 0.2.3-0precise0~ppa amd64
gimp-plugin-registry 5.20121030-1ubuntu0ppa9~precise amd64
gimp-texturize 2.1-1 amd64
gimp-ufraw 0.18-1.1build1 amd64
ginn 0.2.4.1-0ubuntu1 amd64
gir1.2-accountsservice-1.0 0.6.15-2ubuntu9.7 amd64
gir1.2-appindicator3-0.1 0.4.92-0ubuntu1.1 amd64
gir1.2-atk-1.0 2.4.0-0ubuntu1 amd64
gir1.2-atspi-2.0 2.4.2-0ubuntu0.1 amd64
gir1.2-caribou-1.0 0.4.2-1ubuntu1 amd64
gir1.2-clutter-1.0 1.10.6-1~precise1 amd64
gir1.2-cogl-1.0 1.10.0-0ubuntu2 amd64
gir1.2-coglpango-1.0 1.10.0-0ubuntu2 amd64
gir1.2-dbusmenu-glib-0.4 0.6.2-0ubuntu0.2 amd64
gir1.2-dbusmenu-gtk-0.4 0.6.2-0ubuntu0.2 amd64
gir1.2-dee-1.0 1.0.10-0ubuntu1.1 amd64
gir1.2-folks-0.6 0.6.8-2 amd64
gir1.2-freedesktop 1.32.0-1 amd64
gir1.2-gconf-2.0 3.2.5-0ubuntu2 amd64
gir1.2-gdesktopenums-3.0 3.4.1-0ubuntu1 amd64
gir1.2-gdkpixbuf-2.0 2.26.1-1 amd64
gir1.2-gee-1.0 0.6.4-1 amd64
gir1.2-gjsdbus-1.0 1.32.0-1ubuntu1 amd64
gir1.2-gkbd-3.0 3.4.0.2-1ubuntu0.1 amd64
gir1.2-glib-2.0 1.32.0-1 amd64
gir1.2-gmenu-3.0 3.4.0-0ubuntu1 amd64
gir1.2-gnomebluetooth-1.0 3.2.2-0ubuntu5.1 amd64
gir1.2-gnomekeyring-1.0 3.2.2-2 amd64
gir1.2-gst-plugins-base-0.10 0.10.36-1ubuntu0.1 amd64
gir1.2-gstreamer-0.10 0.10.36-1ubuntu1 amd64
gir1.2-gtk-2.0 2.24.10-0ubuntu6 amd64
gir1.2-gtk-3.0 3.4.2-0ubuntu0.6 amd64
gir1.2-gtksource-3.0 3.4.2-0ubuntu1 amd64
gir1.2-gudev-1.0 175-0ubuntu9.4 amd64
gir1.2-indicate-0.7 0.6.92-0ubuntu1 amd64
gir1.2-javascriptcoregtk-3.0 1.8.3-0ubuntu0.12.04.1 amd64
gir1.2-json-1.0 0.14.2-1 amd64
gir1.2-launchpad-integration-3.0 0.1.56.1 amd64
gir1.2-mutter-3.0 3.4.1-0ubuntu1 amd64
gir1.2-nautilus-3.0 1:3.4.2-0ubuntu9 amd64
gir1.2-networkmanager-1.0 0.9.4.0-0ubuntu4.3 amd64
gir1.2-notify-0.7 0.7.5-1 amd64
gir1.2-panelapplet-4.0 1:3.4.1-0ubuntu1.2 amd64
gir1.2-pango-1.0 1.30.0-0ubuntu3.1 amd64
gir1.2-peas-1.0 1.2.0-1ubuntu1 amd64
gir1.2-polkit-1.0 0.104-1ubuntu1.1 amd64
gir1.2-rb-3.0 2.96-0ubuntu4.3 amd64
gir1.2-soup-2.4 2.38.1-1 amd64
gir1.2-telepathyglib-0.12 0.18.2-0ubuntu1 amd64
gir1.2-telepathylogger-0.2 0.4.0-0ubuntu1 amd64
gir1.2-totem-1.0 3.0.1-0ubuntu21.1 amd64
gir1.2-totem-plparser-1.0 3.4.1-1 amd64
gir1.2-unity-5.0 5.12.0-0ubuntu1.1 amd64
gir1.2-upowerglib-1.0 0.9.15-3git1ubuntu0.1 amd64
gir1.2-vte-2.90 1:0.32.1-0ubuntu1 amd64
gir1.2-webkit-3.0 1.8.3-0ubuntu0.12.04.1 amd64
gir1.2-wnck-3.0 3.4.0-0ubuntu1 amd64
gir1.2-xkl-1.0 5.2.1-1ubuntu1 amd64
git 1:1.7.9.5-1 amd64
git-core 1:1.7.9.5-1 all
git-man 1:1.7.9.5-1 all
gjs 1.32.0-1ubuntu1 amd64
gksu 2.0.2-6ubuntu1 amd64
glib-networking 2.32.1-1ubuntu2 amd64
glib-networking 2.32.1-1ubuntu2 i386
glib-networking-common 2.32.1-1ubuntu2 all
glib-networking-services 2.32.1-1ubuntu2 amd64
gnome-accessibility-themes 3.4.1-0ubuntu1.2 all
gnome-applets 3.4.1-0ubuntu1 amd64
gnome-applets-data 3.4.1-0ubuntu1 all
gnome-bluetooth 3.2.2-0ubuntu5.1 amd64
gnome-contacts 3.4.0-1 amd64
gnome-control-center 1:3.4.2-0ubuntu0.13.1 amd64
gnome-control-center-data 1:3.4.2-0ubuntu0.13.1 all
gnome-desktop3-data 3.4.2-0ubuntu0.2 all
gnome-disk-utility 3.0.2-2ubuntu7 amd64
gnome-doc-utils 0.20.10-1 all
gnome-font-viewer 3.4.0-1 amd64
gnome-games-data 1:3.4.1-0ubuntu2.2 all
gnome-icon-theme 3.4.0-0ubuntu1.1 all
gnome-icon-theme-full 3.4.0-0ubuntu1.1 all
gnome-icon-theme-symbolic 3.4.0-1 all
gnome-keyring 3.2.2-2ubuntu4.1 amd64
gnome-media 3.4.0-0ubuntu3.1 amd64
gnome-menus 3.4.0-0ubuntu1 amd64
gnome-nettool 3.2.0-0ubuntu1 amd64
gnome-online-accounts 3.4.0-0ubuntu1.1 amd64
gnome-orca 3.4.2-0ubuntu0.1 all
gnome-panel 1:3.4.1-0ubuntu1.2 amd64
gnome-panel-data 1:3.4.1-0ubuntu1.2 all
gnome-pkg-tools 0.19.1ubuntu3 all
gnome-power-manager 3.4.0-0ubuntu1.1 amd64
gnome-scan-common 0.6.2-1.1ubuntu1 all
gnome-screensaver 3.4.1-0ubuntu1 amd64
gnome-screenshot 3.4.1-0ubuntu1.1 amd64
gnome-session 3.2.1-0ubuntu8 all
gnome-session-bin 3.2.1-0ubuntu8 amd64
gnome-session-canberra 0.28-3ubuntu3 amd64
gnome-session-common 3.2.1-0ubuntu8 all
gnome-session-fallback 3.2.1-0ubuntu8 all
gnome-settings-daemon 3.4.2-0ubuntu0.6.4 amd64
gnome-shell 3.4.1-0ubuntu2 amd64
gnome-shell-common 3.4.1-0ubuntu2 all
gnome-sudoku 1:3.4.1-0ubuntu2.2 all
gnome-system-log 3.4.1-0ubuntu1 amd64
gnome-system-monitor 3.4.1-0ubuntu1 amd64
gnome-system-tools 3.0.0-2ubuntu1 amd64
gnome-terminal 3.4.1.1-0ubuntu1 amd64
gnome-terminal-data 3.4.1.1-0ubuntu1 all
gnome-themes-standard 3.4.1-0ubuntu1.2 amd64
gnome-tweak-tool 3.3.4-0ubuntu1 all
gnome-user-guide 3.4.1-1 all
gnome-user-share 3.0.2-0ubuntu1 amd64
gnomine 1:3.4.1-0ubuntu2.2 amd64
gnupg 1.4.11-3ubuntu2.5 amd64
gocr 0.49-1 amd64
google-talkplugin 5.1.5.0-1 amd64
gpac 0.4.5+svn3462~dfsg0-1 amd64
gpac-modules-base 0.4.5+svn3462~dfsg0-1 amd64
gpaint 0.3.3-6 amd64
gparted 0.11.0-2 amd64
gpgv 1.4.11-3ubuntu2.5 amd64
grep 2.10-1 amd64
groff-base 1.21-7 amd64
growisofs 7.1-10 amd64
grub-common 1.99-21ubuntu3.14 amd64
grub-gfxpayload-lists 0.6 amd64
grub-pc 1.99-21ubuntu3.14 amd64
grub-pc-bin 1.99-21ubuntu3.14 amd64
grub2-common 1.99-21ubuntu3.14 amd64
gs-cjk-resource 1.20100103-3 all
gsettings-desktop-schemas 3.4.1-0ubuntu1 all
gsfonts 1:8.11+urwcyr1.0.7~pre44-4.2ubuntu1 all
gsfonts-x11 0.22 all
gstreamer-tools 0.10.36-1ubuntu1 amd64
gstreamer0.10-alsa 0.10.36-1ubuntu0.1 amd64
gstreamer0.10-ffmpeg 0.10.13-1 amd64
gstreamer0.10-fluendo-mp3 0.10.15.debian-1ubuntu1 amd64
gstreamer0.10-gconf 0.10.31-1ubuntu1.2 amd64
gstreamer0.10-nice 0.1.1-2ubuntu1 amd64
gstreamer0.10-plugins-bad 0.10.22.3-2ubuntu2.2 amd64
gstreamer0.10-plugins-bad-multiverse 0.10.21-1 amd64
gstreamer0.10-plugins-base 0.10.36-1ubuntu0.1 amd64
gstreamer0.10-plugins-base 0.10.36-1ubuntu0.1 i386
gstreamer0.10-plugins-base-apps 0.10.36-1ubuntu0.1 amd64
gstreamer0.10-plugins-good 0.10.31-1ubuntu1.2 amd64
gstreamer0.10-plugins-good 0.10.31-1ubuntu1.2 i386
gstreamer0.10-plugins-ugly 0.10.18.3-1ubuntu1 amd64
gstreamer0.10-pulseaudio 0.10.31-1ubuntu1.2 amd64
gstreamer0.10-tools 0.10.36-1ubuntu1 amd64
gstreamer0.10-x 0.10.36-1ubuntu0.1 amd64
gstreamer0.10-x 0.10.36-1ubuntu0.1 i386
gtk2-engines 1:2.20.2-1ubuntu1 amd64
gtk2-engines 1:2.20.2-1ubuntu1 i386
gtk2-engines-murrine 0.98.2-0ubuntu1 amd64
gtk2-engines-murrine 0.98.2-0ubuntu1 i386
gtk2-engines-oxygen 1.2.2-0ubuntu1.1 i386
gtk2-engines-pixbuf 2.24.10-0ubuntu6 amd64
gtk2-engines-pixbuf 2.24.10-0ubuntu6 i386
gtk3-engines-unico 1.0.2-0ubuntu1 amd64
gucharmap 1:3.4.1.1-0ubuntu1 amd64
guestmount 1:1.14.8-1 amd64
guile-1.8-libs 1.8.8+1-6ubuntu2 amd64
gutenprint-locales 5.2.8~pre1-0ubuntu2.1 all
gvfs 1.12.1-0ubuntu1.2 amd64
gvfs 1.12.1-0ubuntu1.2 i386
gvfs-backends 1.12.1-0ubuntu1.2 amd64
gvfs-bin 1.12.1-0ubuntu1.2 amd64
gvfs-common 1.12.1-0ubuntu1.2 all
gvfs-daemons 1.12.1-0ubuntu1.2 amd64
gvfs-fuse 1.12.1-0ubuntu1.2 amd64
gvfs-libs 1.12.1-0ubuntu1.2 amd64
gvfs-libs 1.12.1-0ubuntu1.2 i386
gwibber 3.4.2-0ubuntu2.3 amd64
gwibber-service 3.4.2-0ubuntu2.3 all
gwibber-service-facebook 3.4.2-0ubuntu2.3 all
gwibber-service-identica 3.4.2-0ubuntu2.3 all
gwibber-service-twitter 3.4.2-0ubuntu2.3 all
gzip 1.4-1ubuntu2 amd64
hal 0.5.14-8 amd64
hal-doc 0.5.14-8 all
hal-info 20091130-1 all
hdparm 9.37-0ubuntu3.1 amd64
help2man 1.40.4ubuntu1 amd64
hicolor-icon-theme 0.12-1ubuntu2 all
hostname 3.06ubuntu1 amd64
hplip 3.12.2-1ubuntu3.4 amd64
hplip-data 3.12.2-1ubuntu3.4 all
html2text 1.3.2a-15 amd64
humanity-icon-theme 0.5.3.11 all
hunspell-en-us 20070829-4ubuntu3 all
hwdata 0.233-1ubuntu1 all
hyphen-en-us 2.8.3-1 all
ia32-libs 20090808ubuntu36 amd64
ia32-libs-multiarch 20090808ubuntu36 i386
ibus 1.4.2-0ubuntu1~ubuntu12.04.1~ppa1 amd64
ibus-gtk 1.4.2-0ubuntu1~ubuntu12.04.1~ppa1 amd64
ibus-gtk 1.4.2-0ubuntu1~ubuntu12.04.1~ppa1 i386
ibus-gtk3 1.4.2-0ubuntu1~ubuntu12.04.1~ppa1 amd64
ibus-pinyin 1.4.0-1 amd64
ibus-pinyin-db-android 1.4.0-1 all
ibus-table 1.3.9.20110827-1ubuntu1 all
icedax 9:1.1.11-2ubuntu2 amd64
icoutils 0.29.1-2 amd64
id3v2 0.1.12-2 amd64
ifupdown 0.7~beta2ubuntu10 amd64
im-switch 1.20ubuntu5.2 all
imagemagick 8:6.6.9.7-5ubuntu3.2 amd64
imagemagick-common 8:6.6.9.7-5ubuntu3.2 all
indicator-applet-complete 0.5.0-0ubuntu1 amd64
indicator-application 0.5.0-0ubuntu1 amd64
indicator-appmenu 0.3.97-0ubuntu1 amd64
indicator-datetime 0.3.94-0ubuntu2 amd64
indicator-messages 0.6.0-0ubuntu2 amd64
indicator-power 2.0-0ubuntu1 amd64
indicator-printers 0.1.6-0ubuntu1 amd64
indicator-session 0.3.96-0ubuntu1 amd64
indicator-sound 0.8.5.0-0ubuntu2.1 amd64
indicator-status-provider-mc5 0.6.0-0ubuntu2 amd64
indicator-status-provider-pidgin 0.6.0-0ubuntu2 amd64
info 4.13a.dfsg.1-8ubuntu2 amd64
info2man 1.1-6 all
initramfs-tools 0.99ubuntu13.4 all
initramfs-tools-bin 0.99ubuntu13.4 amd64
initscripts 2.88dsf-13.10ubuntu11.1 amd64
inputattach 1:1.4.2-1 amd64
insserv 1.14.0-2.1ubuntu2 amd64
install-info 4.13a.dfsg.1-8ubuntu2 amd64
intel-gpu-tools 1.2-1 amd64
intltool 0.50.2-2 all
intltool-debian 0.35.0+20060710.1 all
iproute 20111117-1ubuntu2.1 amd64
ipscan 3.2.1-1 amd64
iptables 1.4.12-1ubuntu5 amd64
iputils-arping 3:20101006-1ubuntu1 amd64
iputils-ping 3:20101006-1ubuntu1 amd64
iputils-tracepath 3:20101006-1ubuntu1 amd64
irqbalance 0.56-1ubuntu4 amd64
isc-dhcp-client 4.1.ESV-R4-0ubuntu5.9 amd64
isc-dhcp-common 4.1.ESV-R4-0ubuntu5.9 amd64
iso-codes 3.31-1 all
java-common 0.43ubuntu2 all
jfsutils 1.1.15-2 amd64
jockey-common 0.9.7-0ubuntu7.14 all
jockey-gtk 0.9.7-0ubuntu7.14 all
k3b 2.0.2-3ubuntu4 amd64
k3b-data 2.0.2-3ubuntu4 all
k9copy 2.3.8-1 amd64
kaffeine 1.2.2-1ubuntu3.12.04.1 amd64
kate-data 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa2 all
katepart 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa2 amd64
kbd 1.15.2-3ubuntu4 amd64
kde-runtime 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
kde-runtime-data 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 all
kdebase-runtime 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 all
kdelibs-bin 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
kdelibs5-data 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 all
kdelibs5-dev 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
kdelibs5-plugins 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
kdemultimedia-kio-plugins 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 all
kdoctools 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
kerneloops-daemon 0.12+git20090217-1ubuntu19 amd64
keyboard-configuration 1.70ubuntu5 all
kio-audiocd 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
klibc-utils 1.5.25-1ubuntu2 amd64
konsole 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
krb5-locales 1.10+dfsg~beta1-2ubuntu0.3 all
krb5-multidev 1.10+dfsg~beta1-2ubuntu0.3 amd64
ktorrent 4.1.3-1ubuntu1 amd64
ktorrent-data 4.1.3-1ubuntu1 all
kubuntu-debug-installer 11.10ubuntu1 amd64
kvm-ipxe 1.0.0+git-3.55f6c88-0ubuntu1 all
lacheck 1.26-14 amd64
lame 3.99.3+repack1-1 amd64
landscape-client-ui-install 13.07.3-0ubuntu0.12.04 amd64
language-pack-en 1:12.04+20140106 all
language-pack-en-base 1:12.04+20140106 all
language-pack-gnome-en 1:12.04+20140106 all
language-pack-gnome-en-base 1:12.04+20140106 all
language-selector-common 0.79.4 all
language-selector-gnome 0.79.4 all
laptop-detect 0.13.7ubuntu2 amd64
latex-beamer 3.10-1 all
latex-xcolor 2.11-1 all
launchpad-integration 0.1.56.1 all
less 444-1ubuntu1 amd64
lha 1.14i-10.3 amd64
lib32gcc1 1:4.6.3-1ubuntu5 amd64
lib32gomp1 4.6.3-1ubuntu5 amd64
lib32quadmath0 4.6.3-1ubuntu5 amd64
liba52-0.7.4 0.7.4-16build1 amd64
liba52-0.7.4-dev 0.7.4-16build1 amd64
libaa1 1.4p5-39ubuntu1 amd64
libaa1 1.4p5-39ubuntu1 i386
libaacs0 0.3.0-4 amd64
libaccountsservice0 0.6.15-2ubuntu9.7 amd64
libacl1 2.2.51-5ubuntu1 amd64
libacl1 2.2.51-5ubuntu1 i386
libaio-dev 0.3.109-2ubuntu1 amd64
libaio1 0.3.109-2ubuntu1 amd64
libaio1 0.3.109-2ubuntu1 i386
libalgorithm-diff-perl 1.19.02-2 all
libalgorithm-diff-xs-perl 0.04-2build2 amd64
libalgorithm-merge-perl 0.08-2 all
libamd2.2.0 1:3.4.0-2ubuntu3 amd64
libanyevent-perl 6.120-1 amd64
libao-common 1.1.0-1ubuntu2 all
libao4 1.1.0-1ubuntu2 amd64
libao4 1.1.0-1ubuntu2 i386
libapparmor1 2.7.102-0ubuntu3.9 amd64
libappindicator1 0.4.92-0ubuntu1.1 amd64
libappindicator3-1 0.4.92-0ubuntu1.1 amd64
libapr1 1.4.6-1 amd64
libapr1-dev 1.4.6-1 amd64
libaprutil1 1.3.12+dfsg-3 amd64
libaprutil1-dev 1.3.12+dfsg-3 amd64
libapt-inst1.4 0.8.16~exp12ubuntu10.16 amd64
libapt-pkg-perl 0.1.25build2 amd64
libapt-pkg4.12 0.8.16~exp12ubuntu10.16 amd64
libarchive12 3.0.3-6ubuntu1 amd64
libart-2.0-2 2.3.21-1ubuntu0.1 amd64
libasn1-8-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 amd64
libasn1-8-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 i386
libasound2 1.0.25-1ubuntu10.2 amd64
libasound2 1.0.25-1ubuntu10.2 i386
libasound2-dev 1.0.25-1ubuntu10.2 amd64
libasound2-plugins 1.0.25-1ubuntu1 amd64
libasound2-plugins 1.0.25-1ubuntu1 i386
libaspell15 0.60.7~20110707-1 amd64
libass4 0.10.0-3 amd64
libasyncns0 0.8-4 amd64
libasyncns0 0.8-4 i386
libatasmart4 0.18-3 amd64
libatk-adaptor 2.4.0-1ubuntu2 amd64
libatk-adaptor-schemas 2.4.0-1ubuntu2 amd64
libatk1.0-0 2.4.0-0ubuntu1 amd64
libatk1.0-0 2.4.0-0ubuntu1 i386
libatk1.0-data 2.4.0-0ubuntu1 all
libatkmm-1.6-1 2.22.6-1ubuntu1 amd64
libatspi2.0-0 2.4.2-0ubuntu0.1 amd64
libattica0.3 0.3.0-0ubuntu2 amd64
libattica0.4 0.4.2-0ubuntu1~ubuntu12.04~ppa1 amd64
libattr1 1:2.4.46-5ubuntu1 amd64
libattr1 1:2.4.46-5ubuntu1 i386
libattr1-dev 1:2.4.46-5ubuntu1 amd64
libaudclient2 3.2.1-2 amd64
libaudio-flac-header-perl 2.4-1build2 amd64
libaudio-scrobbler-perl 0.01-2.1 all
libaudio-wav-perl 0.12-1 all
libaudio2 1.9.3-4ubuntu0.1 amd64
libaudio2 1.9.3-4ubuntu0.1 i386
libaudiofile1 0.3.3-2 amd64
libaudiofile1 0.3.3-2 i386
libaugeas0 0.10.0-0ubuntu4 amd64
libav-tools 4:0.8.10-0ubuntu0.12.04.1 amd64
libavahi-client-dev 0.6.30-5ubuntu2.1 amd64
libavahi-client3 0.6.30-5ubuntu2.1 amd64
libavahi-client3 0.6.30-5ubuntu2.1 i386
libavahi-common-data 0.6.30-5ubuntu2.1 amd64
libavahi-common-data 0.6.30-5ubuntu2.1 i386
libavahi-common-dev 0.6.30-5ubuntu2.1 amd64
libavahi-common3 0.6.30-5ubuntu2.1 amd64
libavahi-common3 0.6.30-5ubuntu2.1 i386
libavahi-core7 0.6.30-5ubuntu2.1 amd64
libavahi-glib1 0.6.30-5ubuntu2.1 amd64
libavahi-gobject0 0.6.30-5ubuntu2.1 amd64
libavahi-ui-gtk3-0 0.6.30-5ubuntu2.1 amd64
libavc1394-0 0.5.3-1ubuntu2 amd64
libavc1394-0 0.5.3-1ubuntu2 i386
libavcodec-extra-53 4:0.8.10ubuntu0.12.04.1 amd64
libavcodec53 4:0.8.9-0ubuntu0.12.04.1 amd64
libavdevice53 4:0.8.10-0ubuntu0.12.04.1 amd64
libavfilter2 4:0.8.10-0ubuntu0.12.04.1 amd64
libavformat-extra-53 4:0.8.10ubuntu0.12.04.1 amd64
libavformat53 4:0.8.9-0ubuntu0.12.04.1 amd64
libavutil-extra-51 4:0.8.10ubuntu0.12.04.1 amd64
libavutil51 4:0.8.9-0ubuntu0.12.04.1 amd64
libbabl-0.0-0 0.0.22-1.1 amd64
libbabl-0.1-0 0.1.11-1precise0~ppa amd64
libbamf0 0.2.126-0ubuntu1 amd64
libbamf3-0 0.2.126-0ubuntu1 amd64
libbind9-80 1:9.8.1.dfsg.P1-4ubuntu0.8 amd64
libbison-dev 1:2.5.dfsg-2.1 amd64
libblas3gf 1.2.20110419-2ubuntu1 amd64
libblkid1 2.20.1-1ubuntu3 amd64
libbluetooth3 4.98-2ubuntu7 amd64
libbluray1 1:0.2.1+git20111208.63e308d-3 amd64
libbonobo2-0 2.32.1-0ubuntu1.1 amd64
libbonobo2-common 2.32.1-0ubuntu1.1 all
libbonoboui2-0 2.24.5-0ubuntu1.1 amd64
libbonoboui2-common 2.24.5-0ubuntu1.1 all
libboost-all-dev 1.48.0.2 amd64
libboost-date-time-dev 1.48.0.2 amd64
libboost-date-time1.46-dev 1.46.1-7ubuntu3 amd64
libboost-date-time1.46.1 1.46.1-7ubuntu3 amd64
libboost-dev 1.48.0.2 amd64
libboost-filesystem-dev 1.48.0.2 amd64
libboost-filesystem1.46-dev 1.46.1-7ubuntu3 amd64
libboost-filesystem1.46.1 1.46.1-7ubuntu3 amd64
libboost-graph-dev 1.48.0.2 amd64
libboost-graph-parallel-dev 1.48.0.2 amd64
libboost-graph-parallel1.46-dev 1.46.1-7ubuntu3 amd64
libboost-graph-parallel1.46.1 1.46.1-7ubuntu3 amd64
libboost-graph1.46-dev 1.46.1-7ubuntu3 amd64
libboost-graph1.46.1 1.46.1-7ubuntu3 amd64
libboost-iostreams-dev 1.48.0.2 amd64
libboost-iostreams1.46-dev 1.46.1-7ubuntu3 amd64
libboost-iostreams1.46.1 1.46.1-7ubuntu3 amd64
libboost-math-dev 1.48.0.2 amd64
libboost-math1.46-dev 1.46.1-7ubuntu3 amd64
libboost-math1.46.1 1.46.1-7ubuntu3 amd64
libboost-mpi-dev 1.48.0.2 amd64
libboost-mpi-python-dev 1.48.0.2 amd64
libboost-mpi1.46-dev 1.46.1-7ubuntu3 amd64
libboost-mpi1.46.1 1.46.1-7ubuntu3 amd64
libboost-program-options-dev 1.48.0.2 amd64
libboost-program-options1.46-dev 1.46.1-7ubuntu3 amd64
libboost-program-options1.46.1 1.46.1-7ubuntu3 amd64
libboost-python-dev 1.48.0.2 amd64
libboost-python1.46-dev 1.46.1-7ubuntu3 amd64
libboost-python1.46.1 1.46.1-7ubuntu3 amd64
libboost-regex-dev 1.48.0.2 amd64
libboost-regex1.46-dev 1.46.1-7ubuntu3 amd64
libboost-regex1.46.1 1.46.1-7ubuntu3 amd64
libboost-serialization-dev 1.48.0.2 amd64
libboost-serialization1.46-dev 1.46.1-7ubuntu3 amd64
libboost-serialization1.46.1 1.46.1-7ubuntu3 amd64
libboost-signals-dev 1.48.0.2 amd64
libboost-signals1.46-dev 1.46.1-7ubuntu3 amd64
libboost-signals1.46.1 1.46.1-7ubuntu3 amd64
libboost-system-dev 1.48.0.2 amd64
libboost-system1.46-dev 1.46.1-7ubuntu3 amd64
libboost-system1.46.1 1.46.1-7ubuntu3 amd64
libboost-test-dev 1.48.0.2 amd64
libboost-test1.46-dev 1.46.1-7ubuntu3 amd64
libboost-test1.46.1 1.46.1-7ubuntu3 amd64
libboost-thread-dev 1.48.0.2 amd64
libboost-thread1.46-dev 1.46.1-7ubuntu3 amd64
libboost-thread1.46.1 1.46.1-7ubuntu3 amd64
libboost-wave-dev 1.48.0.2 amd64
libboost-wave1.46-dev 1.46.1-7ubuntu3 amd64
libboost-wave1.46.1 1.46.1-7ubuntu3 amd64
libboost1.46-dev 1.46.1-7ubuntu3 amd64
libbrasero-media3-1 3.4.1-0ubuntu1.1 amd64
libbrlapi-dev 4.3-1ubuntu5 amd64
libbrlapi0.5 4.3-1ubuntu5 amd64
libbsd0 0.3.0-2 amd64
libburn4 1.1.8-1 amd64
libbz2-1.0 1.0.6-1 amd64
libbz2-1.0 1.0.6-1 i386
libbz2-dev 1.0.6-1 amd64
libc-ares2 1.7.5-1 amd64
libc-bin 2.15-0ubuntu10.5 amd64
libc-dev-bin 2.15-0ubuntu10.5 amd64
libc6 2.15-0ubuntu10.5 amd64
libc6 2.15-0ubuntu10.5 i386
libc6-armel-cross 2.15-0ubuntu9cross1.82 all
libc6-armhf-armel-cross 2.15-0ubuntu9cross1.82 all
libc6-armhf-cross 2.15-0ubuntu9cross1.82 all
libc6-dbg-armel-cross 2.15-0ubuntu9cross1.82 all
libc6-dev 2.15-0ubuntu10.5 amd64
libc6-dev-armel-cross 2.15-0ubuntu9cross1.82 all
libc6-dev-armhf-armel-cross 2.15-0ubuntu9cross1.82 all
libc6-dev-armhf-cross 2.15-0ubuntu9cross1.82 all
libc6-dev-i386 2.15-0ubuntu10.5 amd64
libc6-i386 2.15-0ubuntu10.5 amd64
libcaca-dev 0.99.beta17-2.1ubuntu2 amd64
libcaca0 0.99.beta17-2.1ubuntu2 amd64
libcaca0 0.99.beta17-2.1ubuntu2 i386
libcairo-gobject2 1.10.2-6.1ubuntu3 amd64
libcairo-gobject2 1.10.2-6.1ubuntu3 i386
libcairo-perl 1.081-1build2 amd64
libcairo2 1.10.2-6.1ubuntu3 amd64
libcairo2 1.10.2-6.1ubuntu3 i386
libcairomm-1.0-1 1.10.0-1ubuntu1 amd64
libcamel-1.2-29 3.2.3-0ubuntu7.1 amd64
libcanberra-gtk-module 0.28-3ubuntu3 amd64
libcanberra-gtk-module 0.28-3ubuntu3 i386
libcanberra-gtk0 0.28-3ubuntu3 amd64
libcanberra-gtk0 0.28-3ubuntu3 i386
libcanberra-gtk3-0 0.28-3ubuntu3 amd64
libcanberra-gtk3-module 0.28-3ubuntu3 amd64
libcanberra-pulse 0.28-3ubuntu3 amd64
libcanberra0 0.28-3ubuntu3 amd64
libcanberra0 0.28-3ubuntu3 i386
libcap-dev 1:2.22-1ubuntu3 amd64
libcap-ng0 0.6.6-1ubuntu1 amd64
libcap2 1:2.22-1ubuntu3 amd64
libcap2 1:2.22-1ubuntu3 i386
libcap2-bin 1:2.22-1ubuntu3 amd64
libcapi20-3 1:3.12.20071127-0ubuntu11 amd64
libcapi20-3 1:3.12.20071127-0ubuntu11 i386
libcaribou-common 0.4.2-1ubuntu1 all
libcaribou0 0.4.2-1ubuntu1 amd64
libcdaudio1 0.99.12p2-10build1 amd64
libcddb-get-perl 2.27-1 all
libcddb2 1.3.2-3fakesync1 amd64
libcdio-cdda1 0.83-1 amd64
libcdio-paranoia1 0.83-1 amd64
libcdio13 0.83-1 amd64
libcdparanoia0 3.10.2+debian-10ubuntu1 amd64
libcdparanoia0 3.10.2+debian-10ubuntu1 i386
libcdt4 2.26.3-10ubuntu1.1 amd64
libcelt0-0 0.7.1-1 amd64
libchm1 2:0.40a-1 amd64
libck-connector0 0.4.5-2ubuntu0.1 amd64
libclass-accessor-perl 0.34-1 all
libclass-isa-perl 0.36-3 all
libclone-perl 0.31-1build3 amd64
libcloog-ppl0 0.15.11-4 amd64
libclucene0ldbl 0.9.21b-2 amd64
libclutter-1.0-0 1.10.6-1~precise1 amd64
libclutter-1.0-common 1.10.6-1~precise1 all
libcmis-0.2-0 0.1.0-1 amd64
libcogl-common 1.10.0-0ubuntu2 all
libcogl-pango0 1.10.0-0ubuntu2 amd64
libcogl9 1.10.0-0ubuntu2 amd64
libcolord1 0.1.16-2ubuntu0.1 amd64
libcomerr2 1.42-1ubuntu2 amd64
libcomerr2 1.42-1ubuntu2 i386
libcommon-sense-perl 3.4-1 all
libcompizconfig0 0.9.7.0~bzr428-0ubuntu6 amd64
libconfig-inifiles-perl 2.68-1ubuntu0.12.04.1 all
libconfig-simple-perl 4.59-5 all
libconfig8 1.3.2-2ubuntu2 amd64
libcroco3 0.6.5-1ubuntu0.1 amd64
libcroco3 0.6.5-1ubuntu0.1 i386
libcrypt-passwdmd5-perl 1.3-10 all
libcryptsetup4 2:1.4.1-2ubuntu4 amd64
libcrystalhd3 1:0.0~git20110715.fdd2f19-4.1 amd64
libcups2 1.5.3-0ubuntu8 amd64
libcups2 1.5.3-0ubuntu8 i386
libcupscgi1 1.5.3-0ubuntu8 amd64
libcupsdriver1 1.5.3-0ubuntu8 amd64
libcupsfilters1 1.0.18-0ubuntu0.1 amd64
libcupsimage2 1.5.3-0ubuntu8 amd64
libcupsimage2 1.5.3-0ubuntu8 i386
libcupsmime1 1.5.3-0ubuntu8 amd64
libcupsppdc1 1.5.3-0ubuntu8 amd64
libcurl3 7.22.0-3ubuntu4.7 amd64
libcurl3 7.22.0-3ubuntu4.7 i386
libcurl3-gnutls 7.22.0-3ubuntu4.7 amd64
libcurl3-nss 7.22.0-3ubuntu4.7 amd64
libcwidget3 0.5.16-3.1ubuntu1 amd64
libdaemon0 0.14-2 amd64
libdatrie1 0.2.5-3 amd64
libdatrie1 0.2.5-3 i386
libdb4.8 4.8.30-11ubuntu1 amd64
libdb5.1 5.1.25-11build1 amd64
libdb5.1 5.1.25-11build1 i386
libdbus-1-3 1.4.18-1ubuntu1.4 amd64
libdbus-1-3 1.4.18-1ubuntu1.4 i386
libdbus-1-dev 1.4.18-1ubuntu1.4 amd64
libdbus-glib-1-2 0.98-1ubuntu1.1 amd64
libdbus-glib-1-2 0.98-1ubuntu1.1 i386
libdbusmenu-glib4 0.6.2-0ubuntu0.2 amd64
libdbusmenu-gtk3-4 0.6.2-0ubuntu0.2 amd64
libdbusmenu-gtk4 0.6.2-0ubuntu0.2 amd64
libdbusmenu-qt2 0.9.2-0ubuntu1 amd64
libdc1394-22 2.2.0-2 amd64
libdca0 0.0.5-5 amd64
libdconf-dbus-1-0 0.12.0-0ubuntu1.1 amd64
libdconf-qt0 0.0.0.110722-0ubuntu4 amd64
libdconf0 0.12.0-0ubuntu1.1 amd64
libdecoration0 1:0.9.7.12-0ubuntu3 amd64
libdee-1.0-4 1.0.10-0ubuntu1.1 amd64
libdevmapper-event1.02.1 2:1.02.48-4ubuntu7.4 amd64
libdevmapper1.02.1 2:1.02.48-4ubuntu7.4 amd64
libdigest-hmac-perl 1.03+dfsg-1 all
libdirac-decoder0 1.0.2-4build1 amd64
libdirac-encoder0 1.0.2-4build1 amd64
libdirectfb-1.2-9 1.2.10.0-4.3ubuntu1 amd64
libdiscid0 0.2.2-3 amd64
libdjvulibre-text 3.5.24-9ubuntu0.1 amd64
libdjvulibre21 3.5.24-9ubuntu0.1 amd64
libdlrestrictions1 0.15.7ubuntu2~ubuntu12.04.1~ppa1 amd64
libdmapsharing-3.0-2 2.9.14-1 amd64
libdns81 1:9.8.1.dfsg.P1-4ubuntu0.8 amd64
libdotconf1.0 1.0.13-3 amd64
libdpkg-perl 1.16.1.2ubuntu7.2 all
libdrm-dev 2.4.46-1ubuntu0.0.0.1 amd64
libdrm-intel1 2.4.46-1ubuntu0.0.0.1 amd64
libdrm-intel1 2.4.46-1ubuntu0.0.0.1 i386
libdrm-nouveau1a 2.4.46-1ubuntu0.0.0.1 amd64
libdrm-nouveau2 2.4.46-1ubuntu0.0.0.1 amd64
libdrm-nouveau2 2.4.46-1ubuntu0.0.0.1 i386
libdrm-radeon1 2.4.46-1ubuntu0.0.0.1 amd64
libdrm-radeon1 2.4.46-1ubuntu0.0.0.1 i386
libdrm2 2.4.46-1ubuntu0.0.0.1 amd64
libdrm2 2.4.46-1ubuntu0.0.0.1 i386
libdv4 1.0.0-3ubuntu1 amd64
libdv4 1.0.0-3ubuntu1 i386
libdvbpsi7 0.2.2-1 amd64
libdvdcss2 1.2.13-0 amd64
libdvdnav4 4.2.0-1 amd64
libdvdread4 4.2.0-1ubuntu4 amd64
libebackend-1.2-1 3.2.3-0ubuntu7.1 amd64
libebml3 1.2.2-2 amd64
libebook-1.2-12 3.2.3-0ubuntu7.1 amd64
libecal-1.2-10 3.2.3-0ubuntu7.1 amd64
libedata-book-1.2-11 3.2.3-0ubuntu7.1 amd64
libedata-cal-1.2-13 3.2.3-0ubuntu7.1 amd64
libedataserver-1.2-15 3.2.3-0ubuntu7.1 amd64
libedataserverui-3.0-1 3.2.3-0ubuntu7.1 amd64
libedit2 2.11-20080614-3ubuntu2 amd64
libegl1-mesa-drivers-lts-saucy 9.2.1-1ubuntu3~precise1 amd64
libegl1-mesa-lts-saucy 9.2.1-1ubuntu3~precise1 amd64
libelf1 0.152-1ubuntu3 amd64
libelf1 0.152-1ubuntu3 i386
libelfg0 0.8.13-3 amd64
libemail-valid-perl 0.185-1 all
libenca0 1.13-4 amd64
libenchant1c2a 1.6.0-7 amd64
libencode-locale-perl 1.02-2 all
libept1.4.12 1.0.6~exp1ubuntu1 amd64
libepub0 0.2.1-2build1 amd64
liberror-perl 0.17-1 all
libesd0 0.2.41-10build3 amd64
libesd0 0.2.41-10build3 i386
libespeak1 1.46.02-0ubuntu1 amd64
libevent-2.0-5 2.0.16-stable-1 amd64
libevent-execflow-perl 0.64-0ubuntu2 all
libevent-perl 1.15-1build1 amd64
libevent-rpc-perl 1.01-2 all
libevince3-3 3.4.0-0ubuntu1.7 amd64
libexempi3 2.2.0-1 amd64
libexif12 0.6.20-2ubuntu0.1 amd64
libexif12 0.6.20-2ubuntu0.1 i386
libexiv2-11 0.22-2 amd64
libexpat1 2.0.1-7.2ubuntu1.1 amd64
libexpat1 2.0.1-7.2ubuntu1.1 i386
libexpat1-dev 2.0.1-7.2ubuntu1.1 amd64
libexporter-lite-perl 0.02-2 all
libexttextcat-data 3.2.0-1ubuntu1 all
libexttextcat0 3.2.0-1ubuntu1 amd64
libfaac0 1.28-0ubuntu2 amd64
libfaad2 2.7-7 amd64
libfarstream-0.1-0 0.1.2-0ubuntu1 amd64
libfdt-dev 1.4.0-0.1linaro1 amd64
libfdt1 1.4.0-0.1linaro1 amd64
libffi6 3.0.11~rc1-5 amd64
libffi6 3.0.11~rc1-5 i386
libfftw3-3 3.3-1ubuntu1 amd64
libfile-basedir-perl 0.03-1fakesync1 all
libfile-copy-recursive-perl 0.38-1 all
libfile-desktopentry-perl 0.04-3 all
libfile-listing-perl 6.03-1 all
libfile-mimeinfo-perl 0.15-2 all
libfile-mmagic-perl 1.27-1 all
libfile-type-perl 0.22-1.1 all
libfl-dev 2.5.35-10ubuntu3 amd64
libflac++6 1.2.1-6 amd64
libflac8 1.2.1-6 amd64
libflac8 1.2.1-6 i386
libflite1 1.4-release-4 amd64
libfltk1.1 1.1.10-10 amd64
libfolks-eds25 0.6.8-2 amd64
libfolks-telepathy25 0.6.8-2 amd64
libfolks25 0.6.8-2 amd64
libfont-afm-perl 1.20-1 all
libfont-ttf-perl 0.48-1 all
libfontconfig1 2.8.0-3ubuntu9.1 amd64
libfontconfig1 2.8.0-3ubuntu9.1 i386
libfontenc1 1:1.1.0-1 amd64
libframe6 2.2.4-0ubuntu0.12.04.1 amd64
libfreerdp-plugins-standard 1.0.2-1ubuntu1~ubuntu12.04.1~ppa1 amd64
libfreerdp1 1.0.2-1ubuntu1~ubuntu12.04.1~ppa1 amd64
libfreetype6 2.4.8-1ubuntu2.1 amd64
libfreetype6 2.4.8-1ubuntu2.1 i386
libfribidi0 0.19.2-1 amd64
libfs6 2:1.0.3-1ubuntu0.1 amd64
libfuse2 2.8.6-2ubuntu2 amd64
libgail-3-0 3.4.2-0ubuntu0.6 amd64
libgail-common 2.24.10-0ubuntu6 amd64
libgail-common 2.24.10-0ubuntu6 i386
libgail18 2.24.10-0ubuntu6 amd64
libgail18 2.24.10-0ubuntu6 i386
libgavl1 1.2.0-4 amd64
libgbm1-lts-saucy 9.2.1-1ubuntu3~precise1 amd64
libgcc1 1:4.6.3-1ubuntu5 amd64
libgcc1 1:4.6.3-1ubuntu5 i386
libgcc1-armel-cross 1:4.6.3-1ubuntu5cross1.82 all
libgcc1-armhf-cross 1:4.6.3-1ubuntu5cross1.82 all
libgcc1-dbg-armel-cross 1:4.6.3-1ubuntu5cross1.82 all
libgck-1-0 3.2.2-2ubuntu4.1 amd64
libgconf-2-4 3.2.5-0ubuntu2 amd64
libgconf-2-4 3.2.5-0ubuntu2 i386
libgconf2-4 3.2.5-0ubuntu2 amd64
libgcr-3-1 3.2.2-2ubuntu4.1 amd64
libgcr-3-common 3.2.2-2ubuntu4.1 all
libgcrypt11 1.5.0-3ubuntu0.2 amd64
libgcrypt11 1.5.0-3ubuntu0.2 i386
libgd2-xpm 2.0.36~rc1~dfsg-6ubuntu2 amd64
libgd2-xpm 2.0.36~rc1~dfsg-6ubuntu2 i386
libgdata-common 0.12.0-1 all
libgdata13 0.12.0-1 amd64
libgdbm3 1.8.3-10 amd64
libgdbm3 1.8.3-10 i386
libgdk-pixbuf2.0-0 2.26.1-1 amd64
libgdk-pixbuf2.0-0 2.26.1-1 i386
libgdk-pixbuf2.0-common 2.26.1-1 all
libgdu-gtk0 3.0.2-2ubuntu7 amd64
libgdu0 3.0.2-2ubuntu7 amd64
libgee2 0.6.4-1 amd64
libgegl-0.0-0 0.0.22-2ubuntu3 amd64
libgegl-0.2-0 0.2.1-1precise0~ppa amd64
libgeis1 2.2.9.2-0ubuntu1 amd64
libgeoclue0 0.12.0-1ubuntu12 amd64
libgeoip1 1.4.8+dfsg-2 amd64
libgetopt-argvfile-perl 1.11-1 all
libgettextpo0 0.18.1.1-5ubuntu3 amd64
libgettextpo0 0.18.1.1-5ubuntu3 i386
libgexiv2-1 0.4.1-1build1 amd64
libgfortran3 4.6.3-1ubuntu5 amd64
libgif4 4.1.6-9ubuntu1 amd64
libgif4 4.1.6-9ubuntu1 i386
libgimp2.0 2.8.10-0precise3~ppa amd64
libgirepository-1.0-1 1.32.0-1 amd64
libgjs0c 1.32.0-1ubuntu1 amd64
libgksu2-0 2.0.13~pre1-5ubuntu2 amd64
libgl1-mesa-dev 8.0.4-0ubuntu0.7 amd64
libgl1-mesa-dri-lts-saucy 9.2.1-1ubuntu3~precise1 amd64
libgl1-mesa-dri-lts-saucy 9.2.1-1ubuntu3~precise1 i386
libgl1-mesa-glx-lts-saucy 9.2.1-1ubuntu3~precise1 amd64
libgl1-mesa-glx-lts-saucy 9.2.1-1ubuntu3~precise1 i386
libglade2-0 1:2.6.4-1ubuntu1.1 amd64
libglamor-ltss0 0.5.1-0ubuntu4.2~precise2 amd64
libglapi-mesa-lts-saucy 9.2.1-1ubuntu3~precise1 amd64
libglapi-mesa-lts-saucy 9.2.1-1ubuntu3~precise1 i386
libglew1.6 1.6.0-4 amd64
libglewmx1.6 1.6.0-4 amd64
libglib-perl 2:1.241-1 amd64
libglib2.0-0 2.32.4-0ubuntu1 amd64
libglib2.0-0 2.32.4-0ubuntu1 i386
libglib2.0-bin 2.32.4-0ubuntu1 amd64
libglib2.0-data 2.32.4-0ubuntu1 all
libglib2.0-dev 2.32.4-0ubuntu1 amd64
libglibmm-2.4-1c2a 2.32.0-0ubuntu1 amd64
libglu1-mesa 8.0.4-0ubuntu0.7 amd64
libglu1-mesa 8.0.4-0ubuntu0.7 i386
libglu1-mesa-dev 8.0.4-0ubuntu0.7 amd64
libgme0 0.5.5-2 amd64
libgmime-2.6-0 2.6.7-1 amd64
libgmp-dev 2:5.0.2+dfsg-2ubuntu1 amd64
libgmp10 2:5.0.2+dfsg-2ubuntu1 amd64
libgmp3-dev 2:5.0.2+dfsg-2ubuntu1 amd64
libgmpxx4ldbl 2:5.0.2+dfsg-2ubuntu1 amd64
libgnome-bluetooth8 3.2.2-0ubuntu5.1 amd64
libgnome-control-center1 1:3.4.2-0ubuntu0.13.1 amd64
libgnome-desktop-3-2 3.4.2-0ubuntu0.2 amd64
libgnome-keyring-common 3.2.2-2 all
libgnome-keyring0 3.2.2-2 amd64
libgnome-keyring0 3.2.2-2 i386
libgnome-media-profiles-3.0-0 3.0.0-1 amd64
libgnome-menu-3-0 3.4.0-0ubuntu1 amd64
libgnome-menu2 3.0.1-0ubuntu7 amd64
libgnome2-0 2.32.1-2ubuntu1.1 amd64
libgnome2-bin 2.32.1-2ubuntu1.1 amd64
libgnome2-common 2.32.1-2ubuntu1.1 all
libgnomecanvas2-0 2.30.3-1ubuntu1.1 amd64
libgnomecanvas2-common 2.30.3-1ubuntu1.1 all
libgnomekbd-common 3.4.0.2-1ubuntu0.1 all
libgnomekbd7 3.4.0.2-1ubuntu0.1 amd64
libgnomescan0 0.6.2-1.1ubuntu1 amd64
libgnomeui-0 2.24.5-2ubuntu2 amd64
libgnomeui-common 2.24.5-2ubuntu2 all
libgnomevfs2-0 1:2.24.4-1ubuntu2.1 amd64
libgnomevfs2-common 1:2.24.4-1ubuntu2.1 amd64
libgnutls26 2.12.14-5ubuntu3.6 amd64
libgnutls26 2.12.14-5ubuntu3.6 i386
libgoa-1.0-0 3.4.0-0ubuntu1.1 amd64
libgoa-1.0-common 3.4.0-0ubuntu1.1 all
libgomp1 4.6.3-1ubuntu5 amd64
libgomp1 4.6.3-1ubuntu5 i386
libgomp1-armel-cross 4.6.3-1ubuntu5cross1.62 all
libgomp1-dbg-armel-cross 4.6.3-1ubuntu5cross1.62 all
libgoocanvas-common 0.15-1 all
libgoocanvas3 0.15-1 amd64
libgpac1 0.4.5+svn3462~dfsg0-1 amd64
libgpg-error0 1.10-2ubuntu1 amd64
libgpg-error0 1.10-2ubuntu1 i386
libgpgme++2 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libgpgme11 1.2.0-1.4ubuntu2 amd64
libgphoto2-2 2.4.13-1ubuntu1.2 amd64
libgphoto2-2 2.4.13-1ubuntu1.2 i386
libgphoto2-l10n 2.4.13-1ubuntu1.2 all
libgphoto2-port0 2.4.13-1ubuntu1.2 amd64
libgphoto2-port0 2.4.13-1ubuntu1.2 i386
libgpm2 1.20.4-4 amd64
libgpm2 1.20.4-4 i386
libgpod-common 0.8.2-4 amd64
libgpod4 0.8.2-4 amd64
libgrail5 3.0.6-0ubuntu0.12.04.01 amd64
libgraph4 2.26.3-10ubuntu1.1 amd64
libgraphicsmagick3 1.3.12-1.1build1 amd64
libgrip0 0.3.5-0ubuntu1~12.04.1 amd64
libgs9 9.05~dfsg-0ubuntu4.2 amd64
libgs9-common 9.05~dfsg-0ubuntu4.2 all
libgsm1 1.0.13-3 amd64
libgssapi-krb5-2 1.10+dfsg~beta1-2ubuntu0.3 amd64
libgssapi-krb5-2 1.10+dfsg~beta1-2ubuntu0.3 i386
libgssapi3-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 amd64
libgssapi3-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 i386
libgssdp-1.0-3 0.12.1-2 amd64
libgssrpc4 1.10+dfsg~beta1-2ubuntu0.3 amd64
libgstreamer-plugins-bad0.10-0 0.10.22.3-2ubuntu2.2 amd64
libgstreamer-plugins-base0.10-0 0.10.36-1ubuntu0.1 amd64
libgstreamer-plugins-base0.10-0 0.10.36-1ubuntu0.1 i386
libgstreamer0.10-0 0.10.36-1ubuntu1 amd64
libgstreamer0.10-0 0.10.36-1ubuntu1 i386
libgtest-dev 1.6.0-1ubuntu4 amd64
libgtk-3-0 3.4.2-0ubuntu0.6 amd64
libgtk-3-bin 3.4.2-0ubuntu0.6 amd64
libgtk-3-common 3.4.2-0ubuntu0.6 all
libgtk-vnc-2.0-0 0.5.0-1ubuntu1 amd64
libgtk2-ex-formfactory-perl 0.66-0ubuntu2 all
libgtk2-perl 2:1.223-1build3 amd64
libgtk2.0-0 2.24.10-0ubuntu6 amd64
libgtk2.0-0 2.24.10-0ubuntu6 i386
libgtk2.0-bin 2.24.10-0ubuntu6 amd64
libgtk2.0-common 2.24.10-0ubuntu6 all
libgtkglext1 1.2.0-2fakesync1 amd64
libgtkimageview0 1.6.4-1 amd64
libgtkmm-2.4-1c2a 1:2.24.2-1ubuntu1 amd64
libgtkmm-3.0-1 3.4.0-0ubuntu1 amd64
libgtksourceview-3.0-0 3.4.2-0ubuntu1 amd64
libgtksourceview-3.0-common 3.4.2-0ubuntu1 all
libgtkspell-3-0 3.0.0~hg20110814-1 amd64
libgtkspell0 2.0.16-1ubuntu5 amd64
libgtop2-7 2.28.4-2 amd64
libgtop2-common 2.28.4-2 all
libgucharmap-2-90-7 1:3.4.1.1-0ubuntu1 amd64
libgudev-1.0-0 1:175-0ubuntu9.4 amd64
libgudev-1.0-0 1:175-0ubuntu9.4 i386
libguestfs0 1:1.14.8-1 amd64
libgupnp-1.0-4 0.18.1-2 amd64
libgupnp-igd-1.0-4 0.2.1-2 amd64
libgutenprint2 5.2.8~pre1-0ubuntu2.1 amd64
libgutenprintui2-1 5.2.8~pre1-0ubuntu2.1 amd64
libgvc5 2.26.3-10ubuntu1.1 amd64
libgvnc-1.0-0 0.5.0-1ubuntu1 amd64
libgweather-3-0 3.4.1-0ubuntu1 amd64
libgweather-common 3.4.1-0ubuntu1 all
libgwibber-gtk2 3.4.2-0ubuntu2.3 amd64
libgwibber2 3.4.2-0ubuntu2.3 amd64
libhal-storage1 0.5.14-8 amd64
libhal1 0.5.14-8 amd64
libhcrypto4-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 amd64
libhcrypto4-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 i386
libheimbase1-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 amd64
libheimbase1-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 i386
libheimntlm0-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 amd64
libheimntlm0-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 i386
libhfgcc1-armel-cross 1:4.6.3-1ubuntu5cross1.62 all
libhfgomp1-armel-cross 4.6.3-1ubuntu5cross1.62 all
libhivex0 1.3.3-1 amd64
libhpmud0 3.12.2-1ubuntu3.4 amd64
libhtml-form-perl 6.00-1 all
libhtml-format-perl 2.10-1 all
libhtml-parser-perl 3.69-1build1 amd64
libhtml-tagset-perl 3.20-2 all
libhtml-tree-perl 4.2-1 all
libhttp-cookies-perl 6.00-2 all
libhttp-daemon-perl 6.00-1 all
libhttp-date-perl 6.00-1 all
libhttp-message-perl 6.01-1 all
libhttp-negotiate-perl 6.00-2 all
libhunspell-1.3-0 1.3.2-4 amd64
libhx509-5-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 amd64
libhx509-5-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 i386
libhyphen0 2.8.3-1 amd64
libibus-1.0-0 1.4.2-0ubuntu1~ubuntu12.04.1~ppa1 amd64
libibus-1.0-0 1.4.2-0ubuntu1~ubuntu12.04.1~ppa1 i386
libibverbs-dev 1.1.5-1ubuntu1 amd64
libibverbs1 1.1.5-1ubuntu1 amd64
libical0 0.48-1ubuntu3 amd64
libical1 1.0-0ubuntu1~ubuntu12.04.1~ppa1 amd64
libice-dev 2:1.0.7-2build1 amd64
libice6 2:1.0.7-2build1 amd64
libice6 2:1.0.7-2build1 i386
libicu-dev 4.8.1.1-3ubuntu0.1 amd64
libicu48 4.8.1.1-3ubuntu0.1 amd64
libid3-3.8.3c2a 3.8.3-14 amd64
libid3tag0 0.15.1b-10build2 amd64
libidl-common 0.8.14-0.2ubuntu2 all
libidl0 0.8.14-0.2ubuntu2 amd64
libidn11 1.23-2 amd64
libidn11 1.23-2 i386
libido3-0.1-0 0.3.4-0ubuntu1 amd64
libiec61883-0 1.2.0-0.1ubuntu1 amd64
libiec61883-0 1.2.0-0.1ubuntu1 i386
libieee1284-3 0.2.11-10build1 amd64
libieee1284-3 0.2.11-10build1 i386
libijs-0.35 0.35-8 amd64
libilmbase6 1.0.1-3build2 amd64
libimage-size-perl 3.230-1 all
libimobiledevice2 1.1.1-4 amd64
libindicate-gtk3 0.6.92-0ubuntu1 amd64
libindicate5 0.6.92-0ubuntu1 amd64
libindicator-messages-status-provider1 0.6.0-0ubuntu2 amd64
libindicator3-7 0.5.0-0ubuntu1 amd64
libindicator7 0.5.0-0ubuntu1 amd64
libinline-files-perl 0.68-1 all
libinline-perl 0.49-1 all
libintl-perl 1.20-1build2 all
libio-pty-perl 1:1.08-1build2 amd64
libio-socket-inet6-perl 2.69-2 all
libio-socket-ssl-perl 1.53-1 all
libio-string-perl 1.08-2 all
libio-stringy-perl 2.110-5 all
libipc-run-perl 0.90-1 all
libisc83 1:9.8.1.dfsg.P1-4ubuntu0.8 amd64
libisccc80 1:9.8.1.dfsg.P1-4ubuntu0.8 amd64
libisccfg82 1:9.8.1.dfsg.P1-4ubuntu0.8 amd64
libiso9660-8 0.83-1 amd64
libisofs6 1.1.6-1ubuntu1 amd64
libiw30 30~pre9-5ubuntu2 amd64
libjack-jackd2-0 1.9.8~dfsg.1-1ubuntu2 amd64
libjack-jackd2-0 1.9.8~dfsg.1-1ubuntu2 i386
libjasper1 1.900.1-13 amd64
libjasper1 1.900.1-13 i386
libjavascriptcoregtk-1.0-0 1.8.3-0ubuntu0.12.04.1 amd64
libjavascriptcoregtk-3.0-0 1.8.3-0ubuntu0.12.04.1 amd64
libjbig2dec0 0.11-1ubuntu1 amd64
libjpeg-dev 8c-2ubuntu7 all
libjpeg-progs 8c-2ubuntu7 amd64
libjpeg-turbo-progs 1.1.90+svn733-0ubuntu4.3 amd64
libjpeg-turbo8 1.1.90+svn733-0ubuntu4.3 amd64
libjpeg-turbo8 1.1.90+svn733-0ubuntu4.3 i386
libjpeg-turbo8-dev 1.1.90+svn733-0ubuntu4.3 amd64
libjpeg8 8c-2ubuntu7 amd64
libjpeg8 8c-2ubuntu7 i386
libjpeg8-dev 8c-2ubuntu7 amd64
libjs-jquery 1.7.1-1ubuntu1 all
libjson-glib-1.0-0 0.14.2-1 amd64
libjson-perl 2.53-1 all
libjson-xs-perl 2.320-1build1 amd64
libjson0 0.9-1ubuntu1 amd64
libjson0 0.9-1ubuntu1 i386
libjte1 1.19-1 amd64
libk3b6 2.0.2-3ubuntu4 amd64
libk3b6-extracodecs 2.0.2-3ubuntu4 amd64
libk5crypto3 1.10+dfsg~beta1-2ubuntu0.3 amd64
libk5crypto3 1.10+dfsg~beta1-2ubuntu0.3 i386
libkabc4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkactivities-bin 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkactivities-models1 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkactivities6 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkadm5clnt-mit8 1.10+dfsg~beta1-2ubuntu0.3 amd64
libkadm5srv-mit8 1.10+dfsg~beta1-2ubuntu0.3 amd64
libkate1 0.4.1-1 amd64
libkatepartinterfaces4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa2 amd64
libkcal4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkcddb4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkcmutils4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkcompactdisc4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkdb5-6 1.10+dfsg~beta1-2ubuntu0.3 amd64
libkde3support4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkdeclarative5 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkdecore5 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkdesu5 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkdeui5 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkdewebkit5 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkdnssd4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkemoticons4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkexiv2-11 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkexiv2-data 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 all
libkeyutils1 1.5.2-2 amd64
libkeyutils1 1.5.2-2 i386
libkfile4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkhtml5 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkidletime4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkimproxy4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkio5 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkjsapi4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkjsembed4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkldap4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libklibc 1.5.25-1ubuntu2 amd64
libkmediaplayer4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkmime4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkms1 2.4.46-1ubuntu0.0.0.1 amd64
libknewstuff2-4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libknewstuff3-4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libknotifyconfig4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkntlm4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkonq-common 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkonq5-templates 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 all
libkonq5abi1 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkparts4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkpathsea5 2009-11ubuntu2 amd64
libkpimutils4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkprintutils4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkpty4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkrb5-26-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 amd64
libkrb5-26-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 i386
libkrb5-3 1.10+dfsg~beta1-2ubuntu0.3 amd64
libkrb5-3 1.10+dfsg~beta1-2ubuntu0.3 i386
libkrb5-dev 1.10+dfsg~beta1-2ubuntu0.3 amd64
libkrb5support0 1.10+dfsg~beta1-2ubuntu0.3 amd64
libkrb5support0 1.10+dfsg~beta1-2ubuntu0.3 i386
libkresources4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkrosscore4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkrossui4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libktexteditor4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libktorrent-l10n 1.1.3-1 all
libktorrent3 1.1.3-1 amd64
libkunitconversion4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkutils4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libkworkspace4abi1 4:4.8.5-0ubuntu0.3 amd64
libkxmlrpcclient4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
liblapack3gf 3.3.1-1 amd64
liblastfm1 1.0.3-0ubuntu1~ubuntu12.04.1~ppa2 amd64
liblaunchpad-integration-3.0-1 0.1.56.1 amd64
liblaunchpad-integration-common 0.1.56.1 all
liblaunchpad-integration1 0.1.56.1 amd64
liblcms1 1.19.dfsg-1ubuntu3 amd64
liblcms1 1.19.dfsg-1ubuntu3 i386
liblcms2-2 2.4-0ubuntu1~ubuntu12.04.2~ppa1 amd64
libldap-2.4-2 2.4.28-1.1ubuntu4.4 amd64
libldap-2.4-2 2.4.28-1.1ubuntu4.4 i386
libldap2-dev 2.4.28-1.1ubuntu4.4 amd64
liblensfun-data 0.2.7-0ubuntu1~ubuntu12.04.2~ppa1 all
liblensfun0 0.2.7-0ubuntu1~ubuntu12.04.2~ppa1 amd64
liblightdm-gobject-1-0 1.2.3-0ubuntu2.4 amd64
liblircclient0 0.9.0-0ubuntu1 amd64
libllvm3.3 1:3.3-5ubuntu4~precise1 amd64
libllvm3.3 1:3.3-5ubuntu4~precise1 i386
liblocale-gettext-perl 1.05-7build1 amd64
liblockfile-bin 1.09-3ubuntu0.1 amd64
liblockfile1 1.09-3ubuntu0.1 amd64
liblog4cxx10 0.10.0-1.2ubuntu2 amd64
liblog4cxx10-dev 0.10.0-1.2ubuntu2 amd64
libloudmouth1-0 1.4.3-8 amd64
liblouis-data 2.3.0-3 all
liblouis2 2.3.0-3 amd64
liblqr-1-0 0.4.1-1.1 amd64
libltdl-dev 2.4.2-1ubuntu1 amd64
libltdl7 2.4.2-1ubuntu1 amd64
libltdl7 2.4.2-1ubuntu1 i386
liblua5.1-0 5.1.4-12ubuntu1 amd64
liblvm2app2.2 2.02.66-4ubuntu7.4 amd64
liblwp-mediatypes-perl 6.01-1 all
liblwp-protocol-https-perl 6.02-1 all
liblwres80 1:9.8.1.dfsg.P1-4ubuntu0.8 amd64
liblzma5 5.1.1alpha+20110809-3 amd64
liblzo2-2 2.06-1 amd64
libmad0 0.15.1b-7ubuntu1 amd64
libmad0 0.15.1b-7ubuntu1 i386
libmagic1 5.09-2ubuntu0.2 amd64
libmagickcore4 8:6.6.9.7-5ubuntu3.2 amd64
libmagickcore4-extra 8:6.6.9.7-5ubuntu3.2 amd64
libmagickwand4 8:6.6.9.7-5ubuntu3.2 amd64
libmail-sendmail-perl 0.79.16-1 all
libmailtools-perl 2.08-1 all
libmatroska5 1.3.0-1 amd64
libmeanwhile1 1.0.2-4ubuntu1 amd64
libmetacity-private0 1:2.34.1-1ubuntu11 amd64
libmhash2 0.9.9.9-1 amd64
libmikmod2 3.1.12-2 i386
libmimic0 1.0.4-2.1build1 amd64
libminiupnpc8 1.6-3ubuntu1 amd64
libmission-control-plugins0 1:5.12.0-0ubuntu2.1 amd64
libmjpegtools-1.9 1:1.9.0-0.5ubuntu7 amd64
libmlt++3 0.7.6+git20120204-2 amd64
libmlt-data 0.7.6+git20120204-2 all
libmlt4 0.7.6+git20120204-2 amd64
libmms0 0.6.2-2 amd64
libmng1 1.0.10-3 amd64
libmng1 1.0.10-3 i386
libmodplug1 1:0.8.8.4-1 amd64
libmount1 2.20.1-1ubuntu3 amd64
libmozjs185-1.0 1.8.5-1.0.0-0ubuntu8 amd64
libmp3-info-perl 1.24-1 all
libmp3lame0 3.99.3+repack1-1 amd64
libmp3splt-mp3 0.7.1-0ubuntu1 amd64
libmp3splt-ogg 0.7.1-0ubuntu1 amd64
libmp3splt0 0.7.1-0ubuntu1 amd64
libmpc2 0.9-4 amd64
libmpcdec6 2:0.1~r459-1ubuntu1 amd64
libmpeg2-4 0.4.1-3 amd64
libmpeg3-1 1.5.4-5ubuntu1 amd64
libmpfr4 3.1.0-3ubuntu2 amd64
libmpg123-0 1.12.1-3.2ubuntu1 amd64
libmpg123-0 1.12.1-3.2ubuntu1 i386
libmtdev1 1.1.0-2ubuntu1 amd64
libmtp-common 1.1.3-1ubuntu0.1 all
libmtp-runtime 1.1.3-1ubuntu0.1 amd64
libmtp9 1.1.3-1ubuntu0.1 amd64
libmudflap0-4.5-dev-armel-cross 4.5.3-12ubuntu2cross1.61 all
libmudflap0-4.6-dev-armel-cross 4.6.3-1ubuntu5cross1.62 all
libmudflap0-armel-cross 4.6.3-1ubuntu5cross1.62 all
libmudflap0-dbg-armel-cross 4.6.3-1ubuntu5cross1.62 all
libmusicbrainz-discid-perl 0.03-1build2 amd64
libmusicbrainz3-6 3.0.2-2.1 amd64
libmutter0 3.4.1-0ubuntu1 amd64
libmygpo-qt1 1.0.7-0ubuntu1~ubuntu12.04~ppa1 amd64
libmysqlclient-dev 5.5.35-0ubuntu0.12.04.2 amd64
libmysqlclient18 5.5.35-0ubuntu0.12.04.2 amd64
libmysqlclient18 5.5.35-0ubuntu0.12.04.2 i386
libmythes-1.2-0 2:1.2.2-1 amd64
libnautilus-extension1a 1:3.4.2-0ubuntu9 amd64
libncurses5 5.9-4 amd64
libncurses5 5.9-4 i386
libncurses5-dev 5.9-4 amd64
libncursesw5 5.9-4 amd64
libncursesw5 5.9-4 i386
libneon27-gnutls 0.29.6-1ubuntu1 amd64
libnepomuk4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libnepomukcleaner4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libnepomukcore4abi1 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libnepomukdatamanagement4 4:4.8.5-0ubuntu0.2 amd64
libnepomukquery4a 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libnepomuksync4 4:4.8.5-0ubuntu0.2 amd64
libnepomukutils4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libnet-dbus-perl 1.0.0-1build1 amd64
libnet-dns-perl 0.66-2ubuntu3 amd64
libnet-domain-tld-perl 1.69-1 all
libnet-http-perl 6.02-1 all
libnet-ip-perl 1.25-3 all
libnet-ssleay-perl 1.42-1build1 amd64
libnetfilter-conntrack3 0.9.1-1ubuntu1 amd64
libnetpbm10 2:10.0-15 amd64
libnettle4 2.4-1 amd64
libnewt0.52 0.52.11-2ubuntu10 amd64
libnfnetlink0 1.0.0-1 amd64
libnice10 0.1.1-2ubuntu1 amd64
libnih-dbus1 1.0.3-4ubuntu9.1 amd64
libnih1 1.0.3-4ubuntu9.1 amd64
libnl-3-200 3.2.3-2ubuntu2 amd64
libnl-genl-3-200 3.2.3-2ubuntu2 amd64
libnl-route-3-200 3.2.3-2ubuntu2 amd64
libnm-glib-vpn1 0.9.4.0-0ubuntu4.3 amd64
libnm-glib4 0.9.4.0-0ubuntu4.3 amd64
libnm-gtk-common 0.9.4.1-0ubuntu2.3 all
libnm-gtk0 0.9.4.1-0ubuntu2.3 amd64
libnm-util2 0.9.4.0-0ubuntu4.3 amd64
libnotify-bin 0.7.5-1 amd64
libnotify4 0.7.5-1 amd64
libnspr4 4.9.5-0ubuntu0.12.04.2 amd64
libnspr4 4.9.5-0ubuntu0.12.04.2 i386
libnspr4-0d 4.9.5-0ubuntu0.12.04.2 amd64
libnspr4-dev 4.9.5-0ubuntu0.12.04.2 amd64
libnss-mdns 0.10-3.2 amd64
libnss3 3.15.4-0ubuntu0.12.04.1 amd64
libnss3 3.15.4-0ubuntu0.12.04.1 i386
libnss3-1d 3.15.4-0ubuntu0.12.04.1 amd64
libnss3-dev 3.15.4-0ubuntu0.12.04.1 amd64
libntrack-qt4-1 016-1ubuntu1 amd64
libntrack0 016-1ubuntu1 amd64
libnuma1 2.0.8~rc3-1 amd64
libnux-2.0-0 2.14.1-0ubuntu1 amd64
libnux-2.0-common 2.14.1-0ubuntu1 all
liboauth0 0.9.4-3 amd64
libobasis4.2-base 4.2.1.1-1 amd64
libobasis4.2-calc 4.2.1.1-1 amd64
libobasis4.2-core01 4.2.1.1-1 amd64
libobasis4.2-core02 4.2.1.1-1 amd64
libobasis4.2-core03 4.2.1.1-1 amd64
libobasis4.2-core04 4.2.1.1-1 amd64
libobasis4.2-core05 4.2.1.1-1 amd64
libobasis4.2-core06 4.2.1.1-1 amd64
libobasis4.2-core07 4.2.1.1-1 amd64
libobasis4.2-draw 4.2.1.1-1 amd64
libobasis4.2-en-us 4.2.1.1-1 amd64
libobasis4.2-en-us-base 4.2.1.1-1 amd64
libobasis4.2-en-us-calc 4.2.1.1-1 amd64
libobasis4.2-en-us-math 4.2.1.1-1 amd64
libobasis4.2-en-us-res 4.2.1.1-1 amd64
libobasis4.2-en-us-writer 4.2.1.1-1 amd64
libobasis4.2-extension-beanshell-script-provider 4.2.1.1-1 amd64
libobasis4.2-extension-javascript-script-provider 4.2.1.1-1 amd64
libobasis4.2-extension-mediawiki-publisher 4.2.1.1-1 amd64
libobasis4.2-extension-nlpsolver 4.2.1.1-1 amd64
libobasis4.2-extension-pdf-import 4.2.1.1-1 amd64
libobasis4.2-extension-report-builder 4.2.1.1-1 amd64
libobasis4.2-gnome-integration 4.2.1.1-1 amd64
libobasis4.2-graphicfilter 4.2.1.1-1 amd64
libobasis4.2-images 4.2.1.1-1 amd64
libobasis4.2-impress 4.2.1.1-1 amd64
libobasis4.2-kde-integration 4.2.1.1-1 amd64
libobasis4.2-librelogo 4.2.1.1-1 amd64
libobasis4.2-math 4.2.1.1-1 amd64
libobasis4.2-ogltrans 4.2.1.1-1 amd64
libobasis4.2-onlineupdate 4.2.1.1-1 amd64
libobasis4.2-ooofonts 4.2.1.1-1 amd64
libobasis4.2-ooolinguistic 4.2.1.1-1 amd64
libobasis4.2-postgresql-sdbc 4.2.1.1-1 amd64
libobasis4.2-python-script-provider 4.2.1.1-1 amd64
libobasis4.2-pyuno 4.2.1.1-1 amd64
libobasis4.2-writer 4.2.1.1-1 amd64
libobasis4.2-xsltfilter 4.2.1.1-1 amd64
libodbc1 2.2.14p2-5ubuntu3 amd64
libodbc1 2.2.14p2-5ubuntu3 i386
libofa0 0.9.3-4 amd64
libogg-vorbis-header-perl 0.03-3build2 amd64
libogg0 1.2.2~dfsg-1ubuntu1 amd64
libogg0 1.2.2~dfsg-1ubuntu1 i386
liboggkate1 0.4.1-1 amd64
liboggz2 1.1.1-1 amd64
libogmrip1 0.13.6-0ubuntu4 amd64
liboil0.3 0.3.17-2ubuntu3 amd64
libokularcore2abi1 4:4.10.5-0ubuntu0.1~ubuntu12.04~ppa1 amd64
libokularcore3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
liboobs-1-5 3.0.0-1 amd64
libopenal-data 1:1.13-4ubuntu3 all
libopenal1 1:1.13-4ubuntu3 amd64
libopenal1 1:1.13-4ubuntu3 i386
libopencc1 0.3.0-1 amd64
libopencore-amrnb0 0.1.2-1 amd64
libopencore-amrwb0 0.1.2-1 amd64
libopencv-calib3d2.3 2.3.1-7 amd64
libopencv-core2.3 2.3.1-7 amd64
libopencv-features2d2.3 2.3.1-7 amd64
libopencv-flann2.3 2.3.1-7 amd64
libopencv-highgui2.3 2.3.1-7 amd64
libopencv-imgproc2.3 2.3.1-7 amd64
libopencv-objdetect2.3 2.3.1-7 amd64
libopenexr6 1.6.1-4.1 amd64
libopenjpeg2 1.3+dfsg-4+squeeze2build0.12.04.1 amd64
libopenmpi-dev 1.4.3-2.1ubuntu3 amd64
libopenmpi1.3 1.4.3-2.1ubuntu3 amd64
libopenobex1 1.5-2build1 amd64
libopenraw1 0.0.8-3build1 amd64
libopenvg1-mesa-lts-saucy 9.2.1-1ubuntu3~precise1 amd64
liborbit2 1:2.14.19-0.1ubuntu1 amd64
liborc-0.4-0 1:0.4.16-1ubuntu2 amd64
liborc-0.4-0 1:0.4.16-1ubuntu2 i386
liboverlay-scrollbar-0.2-0 0.2.16-0ubuntu1.1 amd64
liboverlay-scrollbar3-0.2-0 0.2.16-0ubuntu1.1 amd64
libp11-kit0 0.12-2ubuntu1 amd64
libp11-kit0 0.12-2ubuntu1 i386
libpackagekit-glib2-14 0.7.2-4ubuntu3 amd64
libpam-cap 1:2.22-1ubuntu3 amd64
libpam-ck-connector 0.4.5-2ubuntu0.1 amd64
libpam-gnome-keyring 3.2.2-2ubuntu4.1 amd64
libpam-modules 1.1.3-7ubuntu2 amd64
libpam-modules-bin 1.1.3-7ubuntu2 amd64
libpam-runtime 1.1.3-7ubuntu2 all
libpam-winbind 2:3.6.3-2ubuntu2.9 amd64
libpam0g 1.1.3-7ubuntu2 amd64
libpanel-applet-4-0 1:3.4.1-0ubuntu1.2 amd64
libpango-perl 1.222-1build1 amd64
libpango1.0-0 1.30.0-0ubuntu3.1 amd64
libpango1.0-0 1.30.0-0ubuntu3.1 i386
libpangomm-1.4-1 2.28.4-1ubuntu1 amd64
libpaper-utils 1.1.24+nmu1build1 amd64
libpaper1 1.1.24+nmu1build1 amd64
libparse-debcontrol-perl 2.005-3 all
libparse-debianchangelog-perl 1.2.0-1ubuntu1 all
libparse-recdescent-perl 1.965001+dfsg-1 all
libparted0debian1 2.3-8ubuntu5.1 amd64
libpathplan4 2.26.3-10ubuntu1.1 amd64
libpcap0.8 1.1.1-10 amd64
libpci3 1:3.1.8-2ubuntu6 amd64
libpciaccess0 0.12.902-1ubuntu0.2 amd64
libpciaccess0 0.12.902-1ubuntu0.2 i386
libpcre3 8.12-4 amd64
libpcre3 8.12-4 i386
libpcre3-dev 8.12-4 amd64
libpcrecpp0 8.12-4 amd64
libpcsclite1 1.7.4-2ubuntu2 amd64
libpdf-api2-perl 2.019-1 all
libpeas-1.0-0 1.2.0-1ubuntu1 amd64
libpeas-common 1.2.0-1ubuntu1 all
libperl5.14 5.14.2-6ubuntu2.4 amd64
libphonon-dev 4:4.7.0really4.6.0-0ubuntu1 amd64
libphonon4 4:4.7.0really4.6.0-0ubuntu1 amd64
libphononexperimental4 4:4.7.0really4.6.0-0ubuntu1 amd64
libpipeline1 1.2.1-1 amd64
libpixman-1-0 0.30.2-1ubuntu0.0.0.0.1 amd64
libpixman-1-0 0.30.2-1ubuntu0.0.0.0.1 i386
libpkcs11-helper1 1.09-1 amd64
libplasma3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libplist1 1.8-1 amd64
libplymouth2 0.8.2-2ubuntu31.1 amd64
libpng12-0 1.2.46-3ubuntu4 amd64
libpng12-0 1.2.46-3ubuntu4 i386
libpng12-dev 1.2.46-3ubuntu4 amd64
libpolkit-agent-1-0 0.104-1ubuntu1.1 amd64
libpolkit-backend-1-0 0.104-1ubuntu1.1 amd64
libpolkit-gobject-1-0 0.104-1ubuntu1.1 amd64
libpolkit-qt-1-1 0.103.0-1 amd64
libpoppler-glib8 0.18.4-1ubuntu3.1 amd64
libpoppler-qt4-3 0.18.4-1ubuntu3.1 amd64
libpoppler19 0.18.4-1ubuntu3.1 amd64
libpopt0 1.16-3ubuntu1 amd64
libportaudio2 19+svn20111121-1 amd64
libportsmf0 0.1~svn20101010-3 amd64
libpostproc-extra-52 4:0.8.10ubuntu0.12.04.1 amd64
libpostproc52 4:0.8.9-0ubuntu0.12.04.1 amd64
libppl-c4 0.11.2-6ubuntu3 amd64
libppl0.11-dev 0.11.2-6ubuntu3 amd64
libppl9 0.11.2-6ubuntu3 amd64
libpq-dev 9.1.12-0ubuntu0.12.04 amd64
libpq5 9.1.12-0ubuntu0.12.04 amd64
libprotobuf7 2.4.1-1ubuntu2 amd64
libprotoc7 2.4.1-1ubuntu2 amd64
libproxy1 0.4.7-0ubuntu4.1 amd64
libproxy1 0.4.7-0ubuntu4.1 i386
libproxy1-plugin-gsettings 0.4.7-0ubuntu4.1 amd64
libproxy1-plugin-networkmanager 0.4.7-0ubuntu4.1 amd64
libpth20 2.0.7-16ubuntu3 amd64
libpthread-stubs0 0.3-3 amd64
libpthread-stubs0-dev 0.3-3 amd64
libpulse-dev 1:1.1-0ubuntu15.4 amd64
libpulse-mainloop-glib0 1:1.1-0ubuntu15.4 amd64
libpulse-mainloop-glib0 1:1.1-0ubuntu15.4 i386
libpulse0 1:1.1-0ubuntu15.4 amd64
libpulse0 1:1.1-0ubuntu15.4 i386
libpulsedsp 1:1.1-0ubuntu15.4 amd64
libpulsedsp 1:1.1-0ubuntu15.4 i386
libpurple-bin 1:2.10.3-0ubuntu1.4 all
libpurple0 1:2.10.3-0ubuntu1.4 amd64
libpwl5 0.11.2-6ubuntu3 amd64
libpython2.7 2.7.3-0ubuntu3.4 amd64
libqapt-runtime 1.3.1-0ubuntu2 amd64
libqapt1 1.3.1-0ubuntu2 amd64
libqca2 2.0.3-2 amd64
libqca2-plugin-ossl 2.0.0~beta3-1 amd64
libqimageblitz4 1:0.0.6-4 amd64
libqjson0 0.8.1-1~ubuntu12.04.1~ppa1 amd64
libqmobipocket1 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libqt4-dbus 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-dbus 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-declarative 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-declarative 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-designer 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-designer 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-dev 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-dev-bin 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-help 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-network 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-network 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-opengl 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-opengl 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-opengl-dev 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-qt3support 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-qt3support 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-script 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-script 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-scripttools 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-scripttools 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-sql 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-sql 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-sql-mysql 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-sql-sqlite 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-svg 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-svg 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-test 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-test 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-xml 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-xml 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqt4-xmlpatterns 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqt4-xmlpatterns 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqtbamf1 0.2.4-0ubuntu1 amd64
libqtcore4 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqtcore4 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqtdee2 0.2.4-0ubuntu1 amd64
libqtgconf1 0.1-0ubuntu5 amd64
libqtgui4 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
libqtgui4 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 i386
libqtruby4shared2 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libqtscript4-core 0.2.0-0ubuntu1 amd64
libqtscript4-gui 0.2.0-0ubuntu1 amd64
libqtscript4-network 0.2.0-0ubuntu1 amd64
libqtscript4-sql 0.2.0-0ubuntu1 amd64
libqtscript4-uitools 0.2.0-0ubuntu1 amd64
libqtscript4-xml 0.2.0-0ubuntu1 amd64
libqtwebkit-dev 2.2.1-1ubuntu4 amd64
libqtwebkit4 2.2.1-1ubuntu4 amd64
libqtwebkit4 2.2.1-1ubuntu4 i386
libquadmath0 4.6.3-1ubuntu5 amd64
libquicktime2 2:1.2.3-4build2 amd64
libquvi-scripts 0.4.2-1 all
libquvi7 0.4.0-1 amd64
librados2 0.41-1ubuntu2.1 amd64
libraptor2-0 2.0.6-1ubuntu0.1 amd64
librarian0 0.8.1-5 amd64
librasqal3 0.9.28-1 amd64
libraw1394-11 2.0.7-1ubuntu1 amd64
libraw1394-11 2.0.7-1ubuntu1 i386
libraw5 0.14.4-0ubuntu2.2 amd64
librbd1 0.41-1ubuntu2.1 amd64
librdf0 1.0.14-1 amd64
libreadline5 5.2-11 amd64
libreadline6 6.2-8 amd64
libreoffice4.2 4.2.1.1-1 amd64
libreoffice4.2-base 4.2.1.1-1 amd64
libreoffice4.2-calc 4.2.1.1-1 amd64
libreoffice4.2-debian-menus 4.2.1-1 all
libreoffice4.2-dict-en 4.2.1.1-1 amd64
libreoffice4.2-dict-es 4.2.1.1-1 amd64
libreoffice4.2-dict-fr 4.2.1.1-1 amd64
libreoffice4.2-draw 4.2.1.1-1 amd64
libreoffice4.2-en-us 4.2.1.1-1 amd64
libreoffice4.2-impress 4.2.1.1-1 amd64
libreoffice4.2-math 4.2.1.1-1 amd64
libreoffice4.2-ure 4.2.1.1-1 amd64
libreoffice4.2-writer 4.2.1.1-1 amd64
libresid-builder0c2a 2.1.1-12 amd64
librest-0.7-0 0.7.12-1ubuntu2 amd64
librhythmbox-core5 2.96-0ubuntu4.3 amd64
libripoff0 0.8.3-0ubuntu5 amd64
libroken18-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 amd64
libroken18-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 i386
librsvg2-2 2.36.1-0ubuntu1 amd64
librsvg2-2 2.36.1-0ubuntu1 i386
librsvg2-common 2.36.1-0ubuntu1 amd64
librsvg2-common 2.36.1-0ubuntu1 i386
librsync1 0.9.7-8build1 amd64
librtmp0 2.4~20110711.gitc28f1bab-1 amd64
librtmp0 2.4~20110711.gitc28f1bab-1 i386
libruby1.8 1.8.7.352-2ubuntu1.4 amd64
libsamplerate0 0.1.8-4 amd64
libsamplerate0 0.1.8-4 i386
libsane 1.0.22-7ubuntu1 amd64
libsane 1.0.22-7ubuntu1 i386
libsane-common 1.0.22-7ubuntu1 amd64
libsane-hpaio 3.12.2-1ubuntu3.4 amd64
libsasl2-2 2.1.25.dfsg1-3ubuntu0.1 amd64
libsasl2-2 2.1.25.dfsg1-3ubuntu0.1 i386
libsasl2-modules 2.1.25.dfsg1-3ubuntu0.1 amd64
libsasl2-modules 2.1.25.dfsg1-3ubuntu0.1 i386
libschroedinger-1.0-0 1.0.11-1 amd64
libsdl-image1.2 1.2.10-3 amd64
libsdl-image1.2 1.2.10-3 i386
libsdl-mixer1.2 1.2.11-7 i386
libsdl-net1.2 1.2.7-5 i386
libsdl-ttf2.0-0 2.0.9-1.1ubuntu1 i386
libsdl1.2-dev 1.2.14-6.4ubuntu3 amd64
libsdl1.2debian 1.2.14-6.4ubuntu3 amd64
libsdl1.2debian 1.2.14-6.4ubuntu3 i386
libselinux1 2.1.0-4.1ubuntu1 amd64
libselinux1 2.1.0-4.1ubuntu1 i386
libsensors4 1:3.3.1-2ubuntu1 amd64
libsgutils2-2 1.33-1 amd64
libshout3 2.2.2-7ubuntu1 amd64
libshout3 2.2.2-7ubuntu1 i386
libsidplay1 1.36.59-5 amd64
libsidplay2 2.1.1-12 amd64
libsigc++-2.0-0c2a 2.2.10-0ubuntu2 amd64
libsigsegv2 2.9-4ubuntu2 amd64
libslang2 2.2.4-3ubuntu1 amd64
libslang2 2.2.4-3ubuntu1 i386
libslang2-dev 2.2.4-3ubuntu1 amd64
libslp1 1.2.1-7.8ubuntu1 amd64
libslv2-9 0.6.6+dfsg1-1 amd64
libsm-dev 2:1.2.0-2build1 amd64
libsm6 2:1.2.0-2build1 amd64
libsm6 2:1.2.0-2build1 i386
libsmbclient 2:3.6.3-2ubuntu2.9 amd64
libsmi2ldbl 0.4.8+dfsg2-4build1 amd64
libsmokebase3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokekdecore4-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokekdeui4-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokekfile3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokekhtml3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokekio3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokeknewstuff2-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokeknewstuff3-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokekparts3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokektexteditor3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokekutils3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokenepomuk3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokeokular3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokeqtcore4-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokeqtdbus4-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokeqtgui4-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokeqtnetwork4-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokeqtopengl4-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokeqtsql4-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokeqtsvg4-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokeqtxml4-3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsmokesolid3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsndfile1 1.0.25-4 amd64
libsndfile1 1.0.25-4 i386
libsnmp-base 5.4.3~dfsg-2.4ubuntu1.1 all
libsnmp15 5.4.3~dfsg-2.4ubuntu1.1 amd64
libsocket6-perl 0.23-1build2 amd64
libsolid4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsonic0 0.1.17-1.1 amd64
libsoprano-dev 2.9.3+dfsg1-0ubuntu1~ubuntu12.04~ppa1 amd64
libsoprano4 2.9.3+dfsg1-0ubuntu1~ubuntu12.04~ppa1 amd64
libsoundtouch0 1.6.0-2build1 amd64
libsoup-gnome2.4-1 2.38.1-1 amd64
libsoup-gnome2.4-1 2.38.1-1 i386
libsoup2.4-1 2.38.1-1 amd64
libsoup2.4-1 2.38.1-1 i386
libsox-fmt-alsa 14.3.2-3 amd64
libsox-fmt-base 14.3.2-3 amd64
libsox-fmt-mp3 14.3.2-3 amd64
libsox1b 14.3.2-3 amd64
libsp1c2 1.3.4-1.2.1-47.1 amd64
libspandsp2 0.0.6~pre18-2build1 amd64
libspectre1 0.2.6-1build1 amd64
libspeechd2 0.7.1-6ubuntu3 amd64
libspeex1 1.2~rc1-3ubuntu2 amd64
libspeex1 1.2~rc1-3ubuntu2 i386
libspeexdsp1 1.2~rc1-3ubuntu2 amd64
libspeexdsp1 1.2~rc1-3ubuntu2 i386
libspnav0 0.2.2-1ubuntu1 amd64
libsqlite3-0 3.7.9-2ubuntu1.1 amd64
libsqlite3-0 3.7.9-2ubuntu1.1 i386
libsqlite3-dev 3.7.9-2ubuntu1.1 amd64
libss2 1.42-1ubuntu2 amd64
libssh-4 0.5.2-1ubuntu0.12.04.2 amd64
libssl-dev 1.0.1-4ubuntu5.11 amd64
libssl-doc 1.0.1-4ubuntu5.11 all
libssl0.9.8 0.9.8o-7ubuntu3.1 i386
libssl1.0.0 1.0.1-4ubuntu5.11 amd64
libssl1.0.0 1.0.1-4ubuntu5.11 i386
libstartup-notification0 0.12-1ubuntu1 amd64
libstdc++5 1:3.3.6-25ubuntu1 i386
libstdc++6 4.6.3-1ubuntu5 amd64
libstdc++6 4.6.3-1ubuntu5 i386
libstdc++6-4.5-dbg-armel-cross 4.5.3-12ubuntu2cross1.61 all
libstdc++6-4.5-dev-armel-cross 4.5.3-12ubuntu2cross1.61 all
libstdc++6-4.6-dev 4.6.3-1ubuntu5 amd64
libstdc++6-armel-cross 4.6.3-1ubuntu5cross1.62 all
libstreamanalyzer0 0.7.7-1.1ubuntu3 amd64
libstreams0 0.7.7-1.1ubuntu3 amd64
libstring-shellquote-perl 1.03-1 all
libsub-name-perl 0.05-1build2 amd64
libsvga1 1:1.4.3-31 amd64
libsvn1 1.6.17dfsg-3ubuntu3.3 amd64
libswitch-perl 2.16-2 all
libswscale-extra-2 4:0.8.10ubuntu0.12.04.1 amd64
libswscale2 4:0.8.9-0ubuntu0.12.04.1 amd64
libsyncdaemon-1.0-1 3.0.2-0ubuntu2 amd64
libsyndication4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libsys-hostname-long-perl 1.4-2 all
libsysfs-dev 2.1.0+repack-1 amd64
libsysfs2 2.1.0+repack-1 amd64
libt1-5 5.1.2-3.4ubuntu1 amd64
libtag-extras1 1.0.1-3 amd64
libtag1-vanilla 1.8-1~ubuntu12.04~ppa1 amd64
libtag1-vanilla 1.8-1~ubuntu12.04~ppa1 i386
libtag1c2a 1.8-1~ubuntu12.04~ppa1 amd64
libtag1c2a 1.8-1~ubuntu12.04~ppa1 i386
libtalloc2 2.0.7-3 amd64
libtar0 1.2.11-8 amd64
libtasn1-3 2.10-1ubuntu1.1 amd64
libtasn1-3 2.10-1ubuntu1.1 i386
libtdb1 1.2.9-4 amd64
libtdb1 1.2.9-4 i386
libtelepathy-farstream2 0.4.0-0ubuntu1 amd64
libtelepathy-glib0 0.18.2-0ubuntu1 amd64
libtelepathy-logger2 0.4.0-0ubuntu1 amd64
libterm-readkey-perl 2.30-4build3 amd64
libtext-charwidth-perl 0.04-7build1 amd64
libtext-iconv-perl 1.7-5 amd64
libtext-wrapi18n-perl 0.06-7 all
libthai-data 0.1.16-3 all
libthai0 0.1.16-3 amd64
libthai0 0.1.16-3 i386
libtheora0 1.1.1+dfsg.1-3ubuntu2 amd64
libtheora0 1.1.1+dfsg.1-3ubuntu2 i386
libthreadweaver4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
libtie-ixhash-perl 1.21-2 all
libtiff-tools 3.9.5-2ubuntu1.5 amd64
libtiff4 3.9.5-2ubuntu1.5 amd64
libtiff4 3.9.5-2ubuntu1.5 i386
libtimedate-perl 1.2000-1 all
libtimezonemap1 0.3.2 amd64
libtinfo-dev 5.9-4 amd64
libtinfo5 5.9-4 amd64
libtinfo5 5.9-4 i386
libtinyxml2.6.2 2.6.2-1build1 amd64
libtool 2.4.2-1ubuntu1 amd64
libtorque2 2.4.16+dfsg-1build1 amd64
libtotem-plparser17 3.4.1-1 amd64
libtotem0 3.0.1-0ubuntu21.1 amd64
libts-0.0-0 1.0-10 amd64
libtwolame0 0.3.13-1build1 amd64
libtxc-dxtn-s2tc0 0~git20110809-2.1 amd64
libtxc-dxtn-s2tc0 0~git20110809-2.1 i386
libudev0 175-0ubuntu9.4 amd64
libudev0 175-0ubuntu9.4 i386
libudisks2-0 2.1.0-4~ubuntu12.04~ppa1 amd64
libumfpack5.4.0 1:3.4.0-2ubuntu3 amd64
libunicode-string-perl 2.09-4build2 amd64
libunique-3.0-0 3.0.2-1 amd64
libunistring0 0.9.3-5 amd64
libunistring0 0.9.3-5 i386
libunity-2d-private0 5.14.0-0ubuntu2 amd64
libunity-core-5.0-5 5.20.0-0ubuntu3 amd64
libunity-misc4 4.0.4-0ubuntu2 amd64
libunity9 5.12.0-0ubuntu1.1 amd64
libupnp3 1:1.6.6-5.1ubuntu0.12.04.1 amd64
libupower-glib1 0.9.15-3git1ubuntu0.1 amd64
liburi-perl 1.59-1 all
libusb-0.1-4 2:0.1.12-20 amd64
libusb-0.1-4 2:0.1.12-20 i386
libusb-1.0-0 2:1.0.9~rc3-2ubuntu1 amd64
libusbmuxd1 1.0.7-2ubuntu0.1 amd64
libutempter0 1.1.5-4 amd64
libuu0 0.5.20-3.2 amd64
libuuid-perl 0.02-4ubuntu1 amd64
libuuid1 2.20.1-1ubuntu3 amd64
libuuid1 2.20.1-1ubuntu3 i386
libv4l-0 0.8.6-1ubuntu2 amd64
libv4l-0 0.8.6-1ubuntu2 i386
libv4lconvert0 0.8.6-1ubuntu2 amd64
libv4lconvert0 0.8.6-1ubuntu2 i386
libva-x11-1 1.0.15-4 amd64
libva1 1.0.15-4 amd64
libvamp-hostsdk3 2.1-1ubuntu0.12.04.1 amd64
libvcdinfo0 0.7.23-4.1ubuntu1 amd64
libvde-dev 2.2.3-3build2 amd64
libvde0 2.2.3-3build2 amd64
libvdeplug2 2.2.3-3build2 amd64
libvdeplug2-dev 2.2.3-3build2 amd64
libvdpau1 0.4.1-3ubuntu1.1 amd64
libvirt0 0.9.8-2ubuntu17.17 amd64
libvirtodbc0 6.1.6+repack-0ubuntu2~ubuntu12.04.3~ppa1 amd64
libvisual-0.4-0 0.4.0-4 amd64
libvisual-0.4-0 0.4.0-4 i386
libvisual-0.4-plugins 0.4.0.dfsg.1-7 amd64
libvisual-0.4-plugins 0.4.0.dfsg.1-7 i386
libvlc5 2.0.8+git20140211+r49186+4+5~ubuntu12.04.1 amd64
libvlccore5 2.0.8+git20140211+r49186+4+5~ubuntu12.04.1 amd64
libvncserver0 0.9.8.2-2ubuntu1 amd64
libvo-aacenc0 0.1.1-2 amd64
libvo-amrwbenc0 0.1.1-2 amd64
libvorbis0a 1.3.2-1ubuntu3 amd64
libvorbis0a 1.3.2-1ubuntu3 i386
libvorbisenc2 1.3.2-1ubuntu3 amd64
libvorbisenc2 1.3.2-1ubuntu3 i386
libvorbisfile3 1.3.2-1ubuntu3 amd64
libvorbisfile3 1.3.2-1ubuntu3 i386
libvpx1 1.0.0-1 amd64
libvte-2.90-9 1:0.32.1-0ubuntu1 amd64
libvte-2.90-common 1:0.32.1-0ubuntu1 all
libvte-common 1:0.28.2-3ubuntu2 all
libvte9 1:0.28.2-3ubuntu2 amd64
libwacom-common 0.4-1ubuntu1 all
libwacom2 0.4-1ubuntu1 amd64
libwavpack1 4.60.1-2 amd64
libwavpack1 4.60.1-2 i386
libwayland-ltss-client0 1.1.0-2ubuntu3~precise1 amd64
libwayland-ltss-server0 1.1.0-2ubuntu3~precise1 amd64
libwbclient0 2:3.6.3-2ubuntu2.9 amd64
libwebkitgtk-1.0-0 1.8.3-0ubuntu0.12.04.1 amd64
libwebkitgtk-1.0-common 1.8.3-0ubuntu0.12.04.1 all
libwebkitgtk-3.0-0 1.8.3-0ubuntu0.12.04.1 amd64
libwebkitgtk-3.0-common 1.8.3-0ubuntu0.12.04.1 all
libwebp2 0.1.3-2.1ubuntu1 amd64
libwebservice-musicbrainz-perl 0.93-1 all
libwildmidi-config 0.2.3.4-2.1precise1 all
libwildmidi1 0.2.3.4-2.1precise1 amd64
libwind0-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 amd64
libwind0-heimdal 1.6~git20120311.dfsg.1-2ubuntu0.1 i386
libwireshark-data 1.6.7-1 all
libwireshark1 1.6.7-1 amd64
libwiretap1 1.6.7-1 amd64
libwmf0.2-7 0.2.8.4-10ubuntu1 amd64
libwmf0.2-7-gtk 0.2.8.4-10ubuntu1 amd64
libwnck-3-0 3.4.0-0ubuntu1 amd64
libwnck-3-common 3.4.0-0ubuntu1 all
libwnck-common 1:2.30.7-0ubuntu1 all
libwnck22 1:2.30.7-0ubuntu1 amd64
libwpd-0.9-9 0.9.4-1 amd64
libwpg-0.2-2 0.2.1-1 amd64
libwps-0.2-2 0.2.4-1 amd64
libwrap0 7.6.q-21 amd64
libwrap0 7.6.q-21 i386
libwrap0-dev 7.6.q-21 amd64
libwsutil1 1.6.7-1 amd64
libwww-perl 6.03-1 all
libwww-robotrules-perl 6.01-1 all
libwxbase2.8-0 2.8.12.1-6ubuntu2 amd64
libwxgtk2.8-0 2.8.12.1-6ubuntu2 amd64
libx11-6 2:1.4.99.1-0ubuntu2.2 amd64
libx11-6 2:1.4.99.1-0ubuntu2.2 i386
libx11-data 2:1.4.99.1-0ubuntu2.2 all
libx11-dev 2:1.4.99.1-0ubuntu2.2 amd64
libx11-doc 2:1.4.99.1-0ubuntu2.2 all
libx11-xcb1 2:1.4.99.1-0ubuntu2.2 amd64
libx11-xcb1 2:1.4.99.1-0ubuntu2.2 i386
libx264-120 2:0.120.2151+gita3f4407-2 amd64
libx86-1 1.1+ds1-7ubuntu1 amd64
libxapian22 1.2.8-1 amd64
libxatracker1-lts-saucy 9.2.1-1ubuntu3~precise1 amd64
libxau-dev 1:1.0.6-4 amd64
libxau6 1:1.0.6-4 amd64
libxau6 1:1.0.6-4 i386
libxaw7 2:1.0.9-3ubuntu1 amd64
libxaw7 2:1.0.9-3ubuntu1 i386
libxcb-composite0 1.8.1-1ubuntu0.2 amd64
libxcb-dri2-0 1.8.1-1ubuntu0.2 amd64
libxcb-dri2-0 1.8.1-1ubuntu0.2 i386
libxcb-glx0 1.8.1-1ubuntu0.2 amd64
libxcb-glx0 1.8.1-1ubuntu0.2 i386
libxcb-keysyms1 0.3.8-1build1 amd64
libxcb-randr0 1.8.1-1ubuntu0.2 amd64
libxcb-render0 1.8.1-1ubuntu0.2 amd64
libxcb-render0 1.8.1-1ubuntu0.2 i386
libxcb-shape0 1.8.1-1ubuntu0.2 amd64
libxcb-shm0 1.8.1-1ubuntu0.2 amd64
libxcb-shm0 1.8.1-1ubuntu0.2 i386
libxcb-util0 0.3.8-2 amd64
libxcb-xfixes0 1.8.1-1ubuntu0.2 amd64
libxcb-xv0 1.8.1-1ubuntu0.2 amd64
libxcb1 1.8.1-1ubuntu0.2 amd64
libxcb1 1.8.1-1ubuntu0.2 i386
libxcb1-dev 1.8.1-1ubuntu0.2 amd64
libxcomposite1 1:0.4.3-2build1 amd64
libxcomposite1 1:0.4.3-2build1 i386
libxcursor1 1:1.1.12-1ubuntu0.1 amd64
libxcursor1 1:1.1.12-1ubuntu0.1 i386
libxdamage1 1:1.1.3-2build1 amd64
libxdamage1 1:1.1.3-2build1 i386
libxdelta2 1.1.3-9build1 amd64
libxdmcp-dev 1:1.1.0-4 amd64
libxdmcp6 1:1.1.0-4 amd64
libxdmcp6 1:1.1.0-4 i386
libxenstore3.0 4.1.5-0ubuntu0.12.04.3 amd64
libxext-dev 2:1.3.0-3ubuntu0.1 amd64
libxext6 2:1.3.0-3ubuntu0.1 amd64
libxext6 2:1.3.0-3ubuntu0.1 i386
libxfixes3 1:5.0-4ubuntu4.2 amd64
libxfixes3 1:5.0-4ubuntu4.2 i386
libxfont1 1:1.4.4-1ubuntu0.1 amd64
libxft2 2.2.0-3ubuntu2 amd64
libxft2 2.2.0-3ubuntu2 i386
libxi6 2:1.7.1.901-1ubuntu1~precise1 amd64
libxi6 2:1.7.1.901-1ubuntu1~precise1 i386
libxine1 1.1.20-2build1 amd64
libxine1-bin 1.1.20-2build1 amd64
libxine1-console 1.1.20-2build1 amd64
libxine1-ffmpeg 1.1.20-2build1 amd64
libxine1-misc-plugins 1.1.20-2build1 amd64
libxine1-plugins 1.1.20-2build1 all
libxine1-x 1.1.20-2build1 amd64
libxinerama1 2:1.1.1-3ubuntu0.1 amd64
libxinerama1 2:1.1.1-3ubuntu0.1 i386
libxkbfile1 1:1.0.7-1ubuntu0.1 amd64
libxklavier16 5.2.1-1ubuntu1 amd64
libxml-libxml-perl 1.89+dfsg-1 amd64
libxml-namespacesupport-perl 1.09-3 all
libxml-parser-perl 2.41-1build1 amd64
libxml-sax-base-perl 1.07-1 all
libxml-sax-expat-perl 0.40-2 all
libxml-sax-perl 0.99+dfsg-1ubuntu0.1 all
libxml-twig-perl 1:3.39-1ubuntu1 all
libxml-xpath-perl 1.13-7 all
libxml2 2.7.8.dfsg-5.1ubuntu4.6 amd64
libxml2 2.7.8.dfsg-5.1ubuntu4.6 i386
libxml2-utils 2.7.8.dfsg-5.1ubuntu4.6 amd64
libxmu6 2:1.1.0-3 amd64
libxmu6 2:1.1.0-3 i386
libxmuu1 2:1.1.0-3 amd64
libxp6 1:1.0.1-2ubuntu0.12.04.1 amd64
libxp6 1:1.0.1-2ubuntu0.12.04.1 i386
libxpm4 1:3.5.9-4 amd64
libxpm4 1:3.5.9-4 i386
libxrandr-ltss2 2:1.4.0-1ubuntu2~precise1 amd64
libxrandr2 2:1.3.2-2ubuntu0.2 amd64
libxrandr2 2:1.3.2-2ubuntu0.2 i386
libxrender1 1:0.9.6-2ubuntu0.1 amd64
libxrender1 1:0.9.6-2ubuntu0.1 i386
libxres1 2:1.0.5-1ubuntu0.1 amd64
libxslt1.1 1.1.26-8ubuntu1.3 amd64
libxslt1.1 1.1.26-8ubuntu1.3 i386
libxss1 1:1.2.1-2 amd64
libxss1 1:1.2.1-2 i386
libxt-dev 1:1.1.1-2ubuntu0.1 amd64
libxt6 1:1.1.1-2ubuntu0.1 amd64
libxt6 1:1.1.1-2ubuntu0.1 i386
libxtst6 2:1.2.0-4ubuntu0.1 amd64
libxtst6 2:1.2.0-4ubuntu0.1 i386
libxv1 2:1.0.6-2ubuntu0.1 amd64
libxv1 2:1.0.6-2ubuntu0.1 i386
libxvidcore4 2:1.3.2-6 amd64
libxvmc1 2:1.0.6-1ubuntu2.1 amd64
libxxf86dga1 2:1.1.2-1ubuntu0.1 amd64
libxxf86vm1 1:1.1.1-2ubuntu0.1 amd64
libxxf86vm1 1:1.1.1-2ubuntu0.1 i386
libyajl1 1.0.12-2 amd64
libyaml-0-2 0.1.4-2ubuntu0.12.04.2 amd64
libyaml-tiny-perl 1.50-1 all
libyelp0 3.4.1-0ubuntu1 amd64
libzbar0 0.10+doc-7build2 amd64
libzeitgeist-1.0-1 0.3.18-1ubuntu1 amd64
libzephyr4 3.0.1-1 amd64
libzip2 0.10-1ubuntu1 amd64
libzvbi-common 0.2.33-4 all
libzvbi0 0.2.33-4 amd64
light-themes 0.1.9.1-0ubuntu1.2 all
lightdm 1.2.3-0ubuntu2.4 amd64
linaro-image-tools 2013.12+git6+111d7b3-0ubuntu1~linaro1 all
lintian 2.5.6ubuntu0.1 all
linux-firmware 1.79.10 all
linux-generic-lts-saucy 3.11.0.17.16 amd64
linux-headers-3.11.0-15 3.11.0-15.25~precise1 all
linux-headers-3.11.0-15-generic 3.11.0-15.25~precise1 amd64
linux-headers-3.11.0-17 3.11.0-17.31~precise1 all
linux-headers-3.11.0-17-generic 3.11.0-17.31~precise1 amd64
linux-headers-3.2.0-58 3.2.0-58.88 all
linux-headers-3.2.0-58-lowlatency 3.2.0-58.60 amd64
linux-headers-generic-lts-saucy 3.11.0.17.16 amd64
linux-image-3.11.0-15-generic 3.11.0-15.25~precise1 amd64
linux-image-3.11.0-17-generic 3.11.0-17.31~precise1 amd64
linux-image-generic-lts-saucy 3.11.0.17.16 amd64
linux-libc-dev 3.2.0-59.90 amd64
linux-libc-dev-armel-cross 3.2.0-23.36cross1.82 all
linux-libc-dev-armhf-cross 3.2.0-23.36cross1.82 all
linux-sound-base 1.0.25+dfsg-0ubuntu1.1 all
linux-source 3.2.0.59.70 all
linux-source-3.11.0 3.11.0-17.31 all
linux-source-3.2.0 3.2.0-59.90 all
lmodern 2.004.1-3.1ubuntu1 all
locales 2.13+git20120306-3 all
lockfile-progs 0.1.16 amd64
login 1:4.1.4.2+svn3283-3ubuntu5.1 amd64
logrotate 3.7.8-6ubuntu5 amd64
lrzsz 0.12.21-5 amd64
lsb-base 4.0-0ubuntu20.3 all
lsb-release 4.0-0ubuntu20.3 all
lsdvd 0.16-3ubuntu1 amd64
lshw 02.15-2 amd64
lsof 4.81.dfsg.1-1build1 amd64
ltrace 0.5.3-2.1ubuntu2 amd64
luatex 0.70.1-1ubuntu1 amd64
lvm2 2.02.66-4ubuntu7.4 amd64
m4 1.4.16-2ubuntu1 amd64
mahjongg 1:3.4.1-0ubuntu2.2 amd64
make 3.81-8.1ubuntu1.1 amd64
makedev 2.3.1-89ubuntu2 all
man-db 2.6.1-2ubuntu1 amd64
manpages 3.35-0.1ubuntu1 all
manpages-dev 3.35-0.1ubuntu1 all
mawk 1.3.3-17 amd64
media-player-info 16-1 all
melt 0.7.6+git20120204-2 amd64
memtest86+ 4.20-1.1ubuntu1 amd64
mencoder 2:1.0~rc4.dfsg1+svn34540-1 amd64
menu 2.1.46ubuntu1 amd64
mercurial 2.0.2-1ubuntu1 amd64
mercurial-common 2.0.2-1ubuntu1 all
mesa-common-dev 8.0.4-0ubuntu0.7 amd64
mesa-utils 8.0.1+git20110129+d8f7d6b-0ubuntu2 amd64
metacity 1:2.34.1-1ubuntu11 amd64
metacity-common 1:2.34.1-1ubuntu11 all
microcom 2009.6-1 amd64
mime-support 3.51-1ubuntu1 all
minicom 2.5-2 amd64
mjpegtools 1:1.9.0-0.5ubuntu7 amd64
mkvtoolnix 5.1.0-1ubuntu1 amd64
mlocate 0.23.1-1ubuntu2 amd64
mobile-broadband-provider-info 20120410-0ubuntu1 all
modemmanager 0.5.2.0-0ubuntu2 amd64
module-assistant 0.11.4 all
module-init-tools 3.16-1ubuntu2 amd64
mount 2.20.1-1ubuntu3 amd64
mountall 2.36.4 amd64
mousetweaks 3.4.1-0ubuntu1 amd64
mp3blaster 1:3.2.5-3ubuntu1 amd64
mp3burn 0.4.2-2 all
mp3cd 1.27.0-2 all
mp3check 0.8.3-2 amd64
mp3diags 1.0.10.065-1 amd64
mp3diags-doc 1.0.10.065-1 all
mp3fs 0.31-1 amd64
mp3gain 1.5.2-r2-2 amd64
mp3info 0.8.5a-1 amd64
mp3info-gtk 0.8.5a-1 amd64
mp3rename 0.6-9 amd64
mp3report 1.0.2-3 all
mp3roaster 0.3.0-5 all
mp3splt 2.4.1-0ubuntu1 amd64
mp3splt-gtk 0.7.1-0ubuntu3 amd64
mp3val 0.1.8-1 amd64
mp3wrap 0.5-3 amd64
mpack 1.6-7 amd64
mpeg2dec 0.4.1-3 amd64
mpeg3-utils 1.5.4-5ubuntu1 amd64
mpegdemux 0.1.4-2 amd64
mpg123 1.12.1-3.2ubuntu1 amd64
mpg321 0.2.13-4ubuntu1 amd64
mpi-default-dev 1.0.1 amd64
mplayer 2:1.0~rc4.dfsg1+svn34540-1 amd64
mscompress 0.3-3.1 amd64
msr-tools 1.2-3 amd64
mtools 4.0.12-1ubuntu0.12.04.1 amd64
mtr-tiny 0.80-1ubuntu1 amd64
multiarch-support 2.15-0ubuntu10.5 amd64
mutter-common 3.4.1-0ubuntu1 all
myspell-en-au 2.1-5.3ubuntu1 all
myspell-en-gb 1:3.3.0-2ubuntu3 all
myspell-en-za 1:3.3.0-2ubuntu3 all
mysql-common 5.5.35-0ubuntu0.12.04.2 all
nano 2.2.6-1 amd64
nautilus 1:3.4.2-0ubuntu9 amd64
nautilus-data 1:3.4.2-0ubuntu9 all
nautilus-open-as-root 3.6.1-0~10~precise1 all
nautilus-open-terminal 0.19-2build1 amd64
nautilus-sendto 3.0.1-2ubuntu2 amd64
nautilus-sendto-empathy 3.4.2.3-0ubuntu1.1 amd64
nautilus-share 0.7.3-1ubuntu2 amd64
ncurses-base 5.9-4 all
ncurses-bin 5.9-4 amd64
nepomuk-core-data 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 all
nepomuk-core-runtime 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
net-tools 1.60-24.1ubuntu2 amd64
netbase 4.47ubuntu1 all
netcat-openbsd 1.89-4ubuntu1 amd64
netpbm 2:10.0-15 amd64
network-manager 0.9.4.0-0ubuntu4.3 amd64
network-manager-gnome 0.9.4.1-0ubuntu2.3 amd64
network-manager-pptp 0.9.4.0-0ubuntu1 amd64
network-manager-pptp-gnome 0.9.4.0-0ubuntu1 amd64
normalize-audio 0.7.7-8build1 amd64
notify-osd 0.9.34-0ubuntu2.1 amd64
notify-osd-icons 0.8~precise all
nspluginviewer 1.4.4-0ubuntu4 i386
nspluginwrapper 1.4.4-0ubuntu4 amd64
ntfs-3g 1:2012.1.15AR.1-1ubuntu1.2 amd64
ntfsprogs 1:2012.1.15AR.1-1ubuntu1.2 all
ntpdate 1:4.2.6.p3+dfsg-1ubuntu3.1 amd64
ntrack-module-libnl-0 016-1ubuntu1 amd64
nux-tools 2.14.1-0ubuntu1 amd64
nvidia-common 1:0.2.44.2 amd64
obex-data-server 0.4.6-0ubuntu1 amd64
obexd-client 0.44-0ubuntu1 amd64
odbcinst 2.2.14p2-5ubuntu3 amd64
odbcinst1debian2 2.2.14p2-5ubuntu3 amd64
odbcinst1debian2 2.2.14p2-5ubuntu3 i386
oggz-tools 1.1.1-1 amd64
ogmrip 0.13.6-0ubuntu4 amd64
ogmrip-ac3 0.2-0.1ubuntu2 amd64
ogmrip-dirac 0.1-0.2build1 amd64
ogmrip-doc 0.13.6-0ubuntu4 all
ogmrip-mpeg 0.2-0.2ubuntu1 amd64
ogmrip-oggz 0.2-0.0 amd64
ogmrip-profiles 0.2-0.0 all
ogmrip-video-copy 0.3-0.0 amd64
ogmtools 1:1.5-3ubuntu1 amd64
okular 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
okular-backend-odp 1:2.7.1-0ubuntu1~ubuntu12.04.3~ppa5 amd64
okular-dev 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
okular-extra-backends 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
onboard 0.97.0-0ubuntu4 amd64
oneconf 0.2.8.1 all
openbsd-inetd 0.20091229-1ubuntu1 amd64
openmpi-common 1.4.3-2.1ubuntu3 all
openoffice.org-hyphenation 0.6 all
openprinting-ppds 20120322-0ubuntu1 all
openshot 1.4.3-1 all
openshot-doc 1.4.3-1 all
openssh-client 1:5.9p1-5ubuntu1.1 amd64
openssl 1.0.1-4ubuntu5.11 amd64
openvpn 2.2.1-8ubuntu1.1 amd64
opera 12.16.1860 amd64
oracle-java7-installer 7u51-0~webupd8~1 all
os-prober 1.51ubuntu3 amd64
oss-compat 1 all
overlay-scrollbar 0.2.16-0ubuntu1.1 all
oxygen-icon-theme 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 all
p7zip-full 9.20.1~dfsg.1-4 amd64
p7zip-rar 9.20.1~ds.1-3 amd64
parted 2.3-8ubuntu5.1 amd64
passwd 1:4.1.4.2+svn3283-3ubuntu5.1 amd64
patch 2.6.1-3 amd64
patchutils 0.3.2-1.1 amd64
pbuilder 0.208ubuntu1 all
pbzip2 1.1.6-1 amd64
pciutils 1:3.1.8-2ubuntu6 amd64
pcmciautils 018-6 amd64
perl 5.14.2-6ubuntu2.4 amd64
perl-base 5.14.2-6ubuntu2.4 amd64
perl-modules 5.14.2-6ubuntu2.4 all
pgf 2.10-1 all
phonon 4:4.7.0really4.6.0-0ubuntu1 amd64
phonon-backend-gstreamer 4:4.7.0really4.6.2-0ubuntu1~precise1~ppa1 amd64
pidgin 1:2.10.3-0ubuntu1.4 amd64
pidgin-data 1:2.10.3-0ubuntu1.4 all
pidgin-libnotify 0.14-4ubuntu10 amd64
piuparts 0.43ubuntu1 all
pkg-config 0.26-1ubuntu1 amd64
plasma-scriptengine-javascript 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
playonlinux 4.0.14-1 all
plymouth 0.8.2-2ubuntu31.1 amd64
plymouth-label 0.8.2-2ubuntu31.1 amd64
plymouth-theme-ubuntu-logo 0.8.2-2ubuntu31.1 amd64
plymouth-theme-ubuntu-text 0.8.2-2ubuntu31.1 amd64
pm-utils 1.4.1-9fix.ubuntu12.04 all
po-debconf 1.0.16+nmu2ubuntu1 all
pod2pdf 0.42-2 all
policykit-1 0.104-1ubuntu1.1 amd64
policykit-1-gnome 0.105-1ubuntu3.1 amd64
policykit-desktop-privileges 0.10 all
poppler-data 0.4.5-2 all
poppler-utils 0.18.4-1ubuntu3.1 amd64
popularity-contest 1.53ubuntu1 all
powermgmt-base 1.31 amd64
ppp 2.4.5-5ubuntu1 amd64
pppconfig 2.3.18+nmu3ubuntu1 all
pppoeconf 1.20ubuntu1 all
pptp-linux 1.7.2-6 amd64
preview-latex-style 11.86-2ubuntu1 all
printer-driver-c2esp 23-1 amd64
printer-driver-foo2zjs 20111202dfsg0-1ubuntu1 amd64
printer-driver-gutenprint 5.2.8~pre1-0ubuntu2.1 amd64
printer-driver-hpcups 3.12.2-1ubuntu3.4 amd64
printer-driver-hpijs 3.12.2-1ubuntu3.4 amd64
printer-driver-min12xxw 0.0.9-6ubuntu1 amd64
printer-driver-pnm2ppa 1.13+nondbs-0ubuntu1 amd64
printer-driver-ptouch 1.3-3ubuntu0.1 amd64
printer-driver-pxljr 1.3+repack0-2 amd64
printer-driver-sag-gdi 0.1-3 all
printer-driver-splix 2.0.0+svn300-1.1ubuntu2 amd64
pristine-tar 1.20ubuntu1 amd64
procps 1:3.2.8-11ubuntu6.3 amd64
prosper 1.00.4+cvs.2007.05.01-4 all
protobuf-compiler 2.4.1-1ubuntu2 amd64
ps2eps 1.68-1 amd64
psmisc 22.15-2ubuntu1.1 amd64
pulseaudio 1:1.1-0ubuntu15.4 amd64
pulseaudio-module-bluetooth 1:1.1-0ubuntu15.4 amd64
pulseaudio-module-gconf 1:1.1-0ubuntu15.4 amd64
pulseaudio-module-x11 1:1.1-0ubuntu15.4 amd64
pulseaudio-utils 1:1.1-0ubuntu15.4 amd64
putty 0.62-6ubuntu0.1 amd64
putty-tools 0.62-6ubuntu0.1 amd64
python 2.7.3-0ubuntu2.2 amd64
python-appindicator 0.4.92-0ubuntu1.1 amd64
python-apport 2.0.1-0ubuntu17.6 all
python-apt 0.8.3ubuntu7.2 amd64
python-apt-common 0.8.3ubuntu7.2 all
python-aptdaemon 0.43+bzr805-0ubuntu9 all
python-aptdaemon.gtk3widgets 0.43+bzr805-0ubuntu9 all
python-aptdaemon.pkcompat 0.43+bzr805-0ubuntu9 all
python-bluez 0.18-1build2 amd64
python-brlapi 4.3-1ubuntu5 amd64
python-bzrlib 2.5.1-0ubuntu2 amd64
python-cairo 1.8.8-1ubuntu3 amd64
python-central 0.6.17ubuntu2 all
python-chardet 2.0.1-2build1 all
python-configglue 1.0-1build1 all
python-configobj 4.7.2+ds-3build1 all
python-crypto 2.4.1-1ubuntu0.1 amd64
python-cups 1.9.61-0ubuntu2 amd64
python-cupshelpers 1.3.8+20120201-0ubuntu8.1 all
python-dateutil 1.5-1 all
python-dbus 1.0.0-1ubuntu1 amd64
python-dbus-dev 1.0.0-1ubuntu1 all
python-debian 0.1.21ubuntu1 all
python-debianbts 1.10build1 all
python-debtagshw 1.9+git20120320-0ubuntu1 all
python-defer 1.0.2+bzr481-1 all
python-dev 2.7.3-0ubuntu2.2 amd64
python-dirspec 3.0.0-0ubuntu1 all
python-distro-info 0.8.2 all
python-dns 2.3.6-1.12.04 all
python-egenix-mxdatetime 3.2.1-1ubuntu1 amd64
python-egenix-mxtools 3.2.1-1ubuntu1 amd64
python-empy 3.3-6ubuntu2 all
python-fpconst 0.7.2-4 all
python-gconf 2.28.1+dfsg-1 amd64
python-gdbm 2.7.3-1ubuntu1 amd64
python-gi 3.2.2-1~precise amd64
python-gi-cairo 3.2.2-1~precise amd64
python-glade2 2.24.0-3 amd64
python-gmenu 3.0.1-0ubuntu7 amd64
python-gnomekeyring 2.32.0+dfsg-1 amd64
python-gnupginterface 0.3.2-9.1ubuntu3 all
python-gobject 3.2.2-1~precise all
python-gobject-2 2.28.6-10ubuntu1 amd64
python-gst0.10 0.10.22-3ubuntu0.1 amd64
python-gtk2 2.24.0-3 amd64
python-httplib2 0.7.2-1ubuntu2.1 all
python-ibus 1.4.2-0ubuntu1~ubuntu12.04.1~ppa1 all
python-imaging 1.1.7-4 amd64
python-keyring 0.9.2-0ubuntu0.12.04.2 all
python-launchpadlib 1.9.12-1 all
python-lazr.restfulclient 0.12.0-1ubuntu1.1 all
python-lazr.uri 1.0.3-1 all
python-libproxy 0.4.7-0ubuntu4.1 all
python-libxml2 2.7.8.dfsg-5.1ubuntu4.6 amd64
python-linaro-image-tools 2013.12+git6+111d7b3-0ubuntu1~linaro1 all
python-louis 2.3.0-3 amd64
python-magic 5.09-2ubuntu0.2 amd64
python-mako 0.5.0-1 all
python-markupsafe 0.15-1 amd64
python-minimal 2.7.3-0ubuntu2.2 amd64
python-mlt3 0.7.6+git20120204-2 amd64
python-nautilus 1.1-3 amd64
python-nose 1.1.2-3 all
python-notify 0.1.1-3 amd64
python-oauth 1.0.1-3build1 all
python-openssl 0.12-1ubuntu2.1 amd64
python-packagekit 0.7.2-4ubuntu3 all
python-pam 0.4.2-12.2ubuntu4 amd64
python-paramiko 1.7.7.1-2ubuntu1 all
python-parted 3.6-4 amd64
python-pexpect 2.3-1ubuntu2 all
python-pip 1.0-1build1 all
python-piston-mini-client 0.7.2+bzr57-0ubuntu1 all
python-pkg-resources 0.6.24-1ubuntu1 all
python-ply 3.4-2build1 all
python-problem-report 2.0.1-0ubuntu17.6 all
python-progressbar 2.2-2 all
python-protobuf 2.4.1-1ubuntu2 amd64
python-pyatspi2 2.4.0+dfsg-0ubuntu3 all
python-pycurl 7.19.0-4ubuntu3 amd64
python-pygoocanvas 0.14.1-1ubuntu6 amd64
python-pyinotify 0.9.2-1 all
python-pysqlite2 2.6.3-2build1 amd64
python-renderpm 2.5-1.1build1 amd64
python-reportbug 6.3.1ubuntu1 all
python-reportlab 2.5-1.1build1 all
python-reportlab-accel 2.5-1.1build1 amd64
python-scour 0.26-3 all
python-serial 2.5-2.1build1 all
python-setuptools 0.6.24-1ubuntu1 all
python-simplejson 2.3.2-1 amd64
python-smbc 1.0.13-0ubuntu1 amd64
python-soappy 0.12.0-4 all
python-software-properties 0.82.7.7 all
python-speechd 0.7.1-6ubuntu3 all
python-support 1.0.14ubuntu2 all
python-twisted-bin 11.1.0-1ubuntu2 amd64
python-twisted-core 11.1.0-1ubuntu2 all
python-twisted-names 11.1.0-1 all
python-twisted-web 11.1.0-1 all
python-ubuntu-sso-client 3.0.2-0ubuntu3 all
python-ubuntuone-client 3.0.2-0ubuntu2 all
python-ubuntuone-control-panel 3.0.1-0ubuntu1 all
python-ubuntuone-storageprotocol 3.0.2-0ubuntu1 all
python-virtkey 0.60.0-0ubuntu5 amd64
python-wadllib 1.3.0-2 all
python-wxgtk2.8 2.8.12.1-6ubuntu2 amd64
python-wxversion 2.8.12.1-6ubuntu2 all
python-xapian 1.2.8-1 amd64
python-xdg 0.19-3ubuntu2 all
python-xkit 0.4.2.3build1 all
python-yaml 3.10-2 amd64
python-zeitgeist 0.9.0-1ubuntu1 all
python-zope.interface 3.6.1-1ubuntu3 amd64
python2.7 2.7.3-0ubuntu3.4 amd64
python2.7-dev 2.7.3-0ubuntu3.4 amd64
python2.7-minimal 2.7.3-0ubuntu3.4 amd64
qapt-batch 1.3.1-0ubuntu2 amd64
qdbus 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
qemu 1.0+noroms-0ubuntu14.13 amd64
qemu-common 1.0+noroms-0ubuntu14.13 all
qemu-keymaps 1.4.0-2013.03-0ubuntu1~linaro1 all
qemu-kvm 1.0+noroms-0ubuntu14.13 amd64
qemu-kvm-extras 1.5.0-2013.06+git74+20130802+ef1b0ae-3linaroprecise1 all
qemu-kvm-extras-static 1.5.0-2013.06+git74+20130802+ef1b0ae-3linaroprecise1
all
qemu-linaro-keymaps 1.5.0-2013.06+git74+20130802+ef1b0ae-3linaroprecise1 all
qemu-system 1.5.0-2013.06+git74+20130802+ef1b0ae-3linaroprecise1 amd64
qemu-user 1.5.0-2013.06+git74+20130802+ef1b0ae-3linaroprecise1 amd64
qemu-user-static 1.5.0-2013.06+git74+20130802+ef1b0ae-3linaroprecise1 amd64
qemu-utils 1.0+noroms-0ubuntu14.13 amd64
qt-at-spi 0.2.0+git20120411-0ubuntu1 amd64
qt4-linguist-tools 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
qt4-qmake 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6 amd64
quilt 0.50-2 all
radeontool 1.6.2-1.1 amd64
rar 2:4.2.0-0ubuntu0.12.04 amd64
rarian-compat 0.8.1-5 amd64
rdesktop 1.7.0-1ubuntu2 amd64
readline-common 6.2-8 all
reiserfsprogs 1:3.6.21-1build1 amd64
remmina 1.0.0-1ubuntu6.3 amd64
remmina-common 1.0.0-1ubuntu6.3 all
remmina-plugin-rdp 1.0.0-1ubuntu6.3 amd64
remmina-plugin-vnc 1.0.0-1ubuntu6.3 amd64
remuco-base 0.9.5-1.1build1 all
remuco-okular 0.9.5-1.1build1 all
reportbug 6.3.1ubuntu1 all
resolvconf 1.63ubuntu16 all
rfkill 0.4-1ubuntu2 amd64
rhythmbox 2.96-0ubuntu4.3 amd64
rhythmbox-data 2.96-0ubuntu4.3 all
rhythmbox-mozilla 2.96-0ubuntu4.3 amd64
rhythmbox-plugin-cdrecorder 2.96-0ubuntu4.3 amd64
rhythmbox-plugin-magnatune 2.96-0ubuntu4.3 amd64
rhythmbox-plugin-zeitgeist 2.96-0ubuntu4.3 all
rhythmbox-plugins 2.96-0ubuntu4.3 amd64
rhythmbox-ubuntuone 4.2.0-0ubuntu0.0.1 all
ripit 3.9.0-2 all
ripoff 0.8.3-0ubuntu5 amd64
ripoff-mp3-plugin 1.1-0ubuntu3 amd64
ripperx 2.7.3-1 amd64
rootstock 0.1.99.4-0ubuntu1 amd64
rsync 3.0.9-1ubuntu1 amd64
rsyslog 5.8.6-1ubuntu8.6 amd64
rtkit 0.10-2ubuntu0.12.04.1 amd64
ruby 4.8 all
ruby-kde4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
ruby-okular 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
ruby-qt4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 amd64
ruby1.8 1.8.7.352-2ubuntu1.4 amd64
samba-common 2:3.6.3-2ubuntu2.9 all
samba-common-bin 2:3.6.3-2ubuntu2.9 amd64
sane-utils 1.0.22-7ubuntu1 amd64
scrub 2.4-2build1 amd64
seabios 0.6.2-0ubuntu2.1 all
seahorse 3.2.2-0ubuntu2.1 amd64
sed 4.2.1-9 amd64
sensible-utils 0.0.6ubuntu2 all
sessioninstaller 0.20+bzr128-0ubuntu1.3 all
sgml-base 1.26+nmu1ubuntu1 all
sgml-data 2.0.6 all
shared-desktop-ontologies 0.11.0-1~ubuntu12.04~ppa1 all
shared-mime-info 1.0-0ubuntu4.1 amd64
sharutils 1:4.11-1 amd64
shotwell 0.12.3-0ubuntu0.1 amd64
simple-scan 3.4.3-0ubuntu1 amd64
smbclient 2:3.6.3-2ubuntu2.9 amd64
sni-qt 0.2.5-0ubuntu3 amd64
software-center 5.2.10 all
software-center-aptdaemon-plugins 0.1.2 all
software-properties-common 0.82.7.7 all
software-properties-gtk 0.82.7.7 all
soprano-daemon 2.9.3+dfsg1-0ubuntu1~ubuntu12.04~ppa1 amd64
sound-theme-freedesktop 0.7.pristine-2 all
sox 14.3.2-3 amd64
sp 1.3.4-1.2.1-47.1 amd64
speech-dispatcher 0.7.1-6ubuntu3 amd64
speedcrunch 0.10.1-2 amd64
spideroak 1:5.1.3 amd64
ssh-askpass-gnome 1:5.9p1-5ubuntu1.1 amd64
ssl-cert 1.0.28ubuntu0.1 all
strace 4.5.20-2.3ubuntu1 amd64
subtitleripper 0.3.4-0.5ubuntu2 amd64
subversion 1.6.17dfsg-3ubuntu3.3 amd64
sudo 1.8.3p1-1ubuntu3.4 amd64
synaptic 0.75.9ubuntu1 amd64
sysfsutils 2.1.0+repack-1 amd64
syslinux 2:4.05+dfsg-2 amd64
syslinux-common 2:4.05+dfsg-2 all
syslinux-legacy 2:3.63+dfsg-2ubuntu5 amd64
system-config-printer-common 1.3.8+20120201-0ubuntu8.1 all
system-config-printer-gnome 1.3.8+20120201-0ubuntu8.1 all
system-config-printer-udev 1.3.8+20120201-0ubuntu8.1 amd64
system-tools-backends 2.10.2-1ubuntu1 amd64
sysv-rc 2.88dsf-13.10ubuntu11.1 all
sysvinit-utils 2.88dsf-13.10ubuntu11.1 amd64
tar 1.26-4ubuntu1 amd64
tcpd 7.6.q-21 amd64
tcpdump 4.2.1-1ubuntu2 amd64
telepathy-gabble 0.16.0-0ubuntu3.1 amd64
telepathy-haze 0.6.0-0ubuntu1 amd64
telepathy-idle 0.1.11-2ubuntu0.1 amd64
telepathy-indicator 0.2.1-0ubuntu1 amd64
telepathy-logger 0.4.0-0ubuntu1 amd64
telepathy-mission-control-5 1:5.12.0-0ubuntu2.1 amd64
telepathy-salut 0.8.0-0ubuntu1 amd64
telnet 0.17-36build1 amd64
tex-common 2.10 all
texi2html 1.82-1ubuntu1 all
texinfo 4.13a.dfsg.1-8ubuntu2 amd64
texlive 2009-15 all
texlive-base 2009-15 all
texlive-bibtex-extra 2009-10ubuntu1 all
texlive-binaries 2009-11ubuntu2 amd64
texlive-common 2009-15 all
texlive-doc-base 2009-2 all
texlive-extra-utils 2009-10ubuntu1 all
texlive-font-utils 2009-10ubuntu1 all
texlive-fonts-recommended 2009-15 all
texlive-fonts-recommended-doc 2009-15 all
texlive-generic-recommended 2009-15 all
texlive-latex-base 2009-15 all
texlive-latex-base-doc 2009-15 all
texlive-latex-extra 2009-10ubuntu1 all
texlive-latex-extra-doc 2009-10ubuntu1 all
texlive-latex-recommended 2009-15 all
texlive-latex-recommended-doc 2009-15 all
texlive-luatex 2009-15 all
texlive-math-extra 2009-10ubuntu1 all
texlive-pictures 2009-15 all
texlive-pictures-doc 2009-15 all
texlive-pstricks 2009-10ubuntu1 all
texlive-pstricks-doc 2009-10ubuntu1 all
thunderbird 1:24.3.0+build2-0ubuntu0.12.04.1 amd64
thunderbird-gnome-support 1:24.3.0+build2-0ubuntu0.12.04.1 amd64
thunderbird-locale-en 1:24.3.0+build2-0ubuntu0.12.04.1 amd64
thunderbird-locale-en-us 1:24.3.0+build2-0ubuntu0.12.04.1 all
time 1.7-23.1 amd64
tipa 2:1.3-15 all
toshset 1.76-2 amd64
totem 3.0.1-0ubuntu21.1 amd64
totem-common 3.0.1-0ubuntu21.1 all
totem-mozilla 3.0.1-0ubuntu21.1 amd64
totem-plugins 3.0.1-0ubuntu21.1 amd64
transcode 3:1.1.5-0ubuntu10 amd64
transcode-doc 3:1.1.5-0ubuntu10 all
transcode-utils 3:1.1.5-0ubuntu10 amd64
transfig 1:3.2.5.d-1 amd64
transmission-common 2.51-0ubuntu1.3 all
transmission-gtk 2.51-0ubuntu1.3 amd64
tsconf 1.0-10 all
ttf-dejavu 2.33-2ubuntu1 all
ttf-dejavu-core 2.33-2ubuntu1 all
ttf-dejavu-extra 2.33-2ubuntu1 all
ttf-droid 20101110+git-2 all
ttf-freefont 20100919-1 all
ttf-indic-fonts-core 1:0.5.11ubuntu1 all
ttf-mscorefonts-installer 3.4ubuntu3 all
ttf-punjabi-fonts 1:0.5.11ubuntu1 all
ttf-ubuntu-font-family 0.80-0ubuntu2 all
ttf-umefont 434-1 all
ttf-unfonts-core 1.0.3.is.1.0.2-080608-5ubuntu1 all
ttf-wqy-microhei 0.2.0-beta-1ubuntu1 all
twolame 0.3.13-1build1 amd64
tzdata 2013g-0ubuntu0.12.04 all
u-boot-tools 2011.09-2 amd64
uboot-mkimage 2011.09-2 all
ubuntu-artwork 57 all
ubuntu-dev-tools 0.141ubuntu0.1 all
ubuntu-docs 12.04.6 all
ubuntu-extras-keyring 2010.09.27 all
ubuntu-keyring 2011.11.21.1 all
ubuntu-minimal 1.267.1 amd64
ubuntu-mono 0.0.40 all
ubuntu-restricted-addons 12 amd64
ubuntu-restricted-extras 57 amd64
ubuntu-sounds 0.13 all
ubuntu-sso-client 3.0.2-0ubuntu3 all
ubuntu-sso-client-gtk 3.0.2-0ubuntu3 all
ubuntu-standard 1.267.1 amd64
ubuntu-system-service 0.2.2.1 all
ubuntu-wallpapers 0.34.1 all
ubuntu-wallpapers-extra 0.34.1 all
ubuntu-wallpapers-karmic 0.34.1 all
ubuntu-wallpapers-lucid 0.34.1 all
ubuntu-wallpapers-maverick 0.34.1 all
ubuntu-wallpapers-natty 0.34.1 all
ubuntu-wallpapers-oneiric 0.34.1 all
ubuntu-wallpapers-precise 0.34.1 all
ubuntuone-client 3.0.2-0ubuntu2 all
ubuntuone-client-gnome 3.0.1-0ubuntu1 amd64
ubuntuone-control-panel 3.0.1-0ubuntu1 all
ubuntuone-couch 0.3.0-0ubuntu4 all
ubuntuone-installer 3.0.2-0ubuntu1.1 all
ucf 3.0025+nmu2ubuntu1 all
udev 175-0ubuntu9.4 amd64
udisks 1.0.4-5ubuntu2.1 amd64
udisks2 2.1.0-4~ubuntu12.04~ppa1 amd64
ufw 0.31.1-1 all
unace 1.2b-9 amd64
unattended-upgrades 0.76ubuntu1 all
unity 5.20.0-0ubuntu3 amd64
unity-2d 5.14.0-0ubuntu2 all
unity-2d-common 5.14.0-0ubuntu2 all
unity-2d-panel 5.14.0-0ubuntu2 amd64
unity-2d-shell 5.14.0-0ubuntu2 amd64
unity-2d-spread 5.14.0-0ubuntu2 amd64
unity-asset-pool 0.8.23-0ubuntu1 all
unity-common 5.20.0-0ubuntu3 all
unity-greeter 0.2.9-0ubuntu1.2 amd64
unity-lens-applications 5.18.0-0ubuntu1 amd64
unity-lens-files 5.10.0-0ubuntu1.1 amd64
unity-lens-music 5.12.0-0ubuntu2 amd64
unity-lens-video 0.3.5-0ubuntu1.3 all
unity-scope-musicstores 5.12.0-0ubuntu2 amd64
unity-scope-video-remote 0.3.5-0ubuntu2.2 all
unity-services 5.20.0-0ubuntu3 amd64
unixodbc 2.2.14p2-5ubuntu3 amd64
uno-libs3 3.5.7-0ubuntu5 amd64
unrar 1:4.0.3-1 amd64
unzip 6.0-4ubuntu2 amd64
update-inetd 4.41 all
update-manager 1:0.156.14.11 all
update-manager-core 1:0.156.14.11 amd64
update-notifier 0.119ubuntu8.6 amd64
update-notifier-common 0.119ubuntu8.6 all
upower 0.9.15-3git1ubuntu0.1 amd64
upstart 1.5-0ubuntu7.2 amd64
ure 3.5.7-0ubuntu5 amd64
ureadahead 0.100.0-12 amd64
usb-creator-common 0.2.38.2 amd64
usb-creator-gtk 0.2.38.2 amd64
usb-modeswitch 1.2.3+repack0-1ubuntu2 amd64
usb-modeswitch-data 20120120-0ubuntu1 all
usbmuxd 1.0.7-2ubuntu0.1 amd64
usbutils 1:005-1 amd64
util-linux 2.20.1-1ubuntu3 amd64
uudeview 0.5.20-3.2 amd64
uuid-dev 2.20.1-1ubuntu3 amd64
uuid-runtime 2.20.1-1ubuntu3 amd64
vbetool 1.1-2ubuntu1 amd64
vde2 2.2.3-3build2 amd64
vgabios 0.6c-2ubuntu3 all
vim-common 2:7.3.429-2ubuntu2.1 amd64
vim-tiny 2:7.3.429-2ubuntu2.1 amd64
vinagre 3.4.2-0ubuntu1 amd64
vino 3.4.2-0ubuntu1.3 amd64
virtualbox-4.3 4.3.8-92456~Ubuntu~precise amd64
virtuoso-minimal 6.1.6+repack-0ubuntu2~ubuntu12.04.3~ppa1 all
virtuoso-opensource-6.1-bin 6.1.6+repack-0ubuntu2~ubuntu12.04.3~ppa1 amd64
virtuoso-opensource-6.1-common 6.1.6+repack-0ubuntu2~ubuntu12.04.3~ppa1
amd64
vlc 2.0.8+git20140211+r49186+4+5~ubuntu12.04.1 amd64
vlc-data 2.0.8+git20140211+r49186+4+5~ubuntu12.04.1 all
vlc-nox 2.0.8+git20140211+r49186+4+5~ubuntu12.04.1 amd64
vlc-plugin-notify 2.0.8+git20140211+r49186+4+5~ubuntu12.04.1 amd64
vlc-plugin-pulse 2.0.8+git20140211+r49186+4+5~ubuntu12.04.1 amd64
vorbis-tools 1.4.0-1ubuntu2 amd64
w64codecs 1:20071007-dmo2 amd64
wamerican 7.1-1 all
watershed 6 amd64
wbritish 7.1-1 all
wdiff 0.6.5-1 amd64
wget 1.13.4-2ubuntu1 amd64
whiptail 0.52.11-2ubuntu10 amd64
whois 5.0.15ubuntu2 amd64
whoopsie 0.1.33 amd64
wifi-radar 2.0.s08+dfsg-1ubuntu1 all
winbind 2:3.6.3-2ubuntu2.9 amd64
wine-gecko1.4 1.4.0-0ubuntu2 amd64
wine-gecko1.4 1.4.0-0ubuntu2 i386
wine1.4 1.4-0ubuntu4.1 amd64
wine1.4-amd64 1.4-0ubuntu4.1 amd64
wine1.4-common 1.4-0ubuntu4.1 all
wine1.4-i386 1.4-0ubuntu4.1 i386
winetricks 0.0+20120308 amd64
wireless-tools 30~pre9-5ubuntu2 amd64
wireshark 1.6.7-1 amd64
wireshark-common 1.6.7-1 amd64
wodim 9:1.1.11-2ubuntu2 amd64
wpasupplicant 0.7.3-6ubuntu2.2 amd64
x11-apps 7.6+5ubuntu1 amd64
x11-common 1:7.6+12ubuntu2 all
x11-session-utils 7.6+2 amd64
x11-utils 7.6+4ubuntu0.1 amd64
x11-xfs-utils 7.6+1 amd64
x11-xkb-utils 7.6+4 amd64
x11-xserver-utils 7.6+3 amd64
x11-xserver-utils-lts-saucy 7.7+0ubuntu2~precise1 amd64
x11proto-core-dev 7.0.22-1ubuntu0.1 all
x11proto-input-dev 2.3-1~precise1 all
x11proto-kb-dev 1.0.5-2 all
x11proto-xext-dev 7.2.0-3 all
xauth 1:1.0.6-1 amd64
xaw3dg 1.5+E-18.1ubuntu1 i386
xbitmaps 1.1.1-1 all
xcursor-themes 1.0.3-1 all
xdelta 1.1.3-9build1 amd64
xdg-user-dirs 0.14-0ubuntu2 amd64
xdg-user-dirs-gtk 0.9-0ubuntu1 amd64
xdg-utils 1.1.0~rc1-2ubuntu6 all
xdiagnose 2.5.3 all
xfonts-base 1:1.0.3 all
xfonts-encodings 1:1.0.4-1ubuntu1 all
xfonts-mathml 4ubuntu1 all
xfonts-scalable 1:1.0.3-1 all
xfonts-utils 1:7.6+1 amd64
xfsprogs 3.1.7 amd64
xine-ui 0.99.6-1.1 amd64
xinit 1.3.1-1 amd64
xinput 1.5.99.1-0ubuntu2 amd64
xkb-data 2.5-1ubuntu1.3 all
xml-core 0.13 all
xmlto 0.0.25-1 amd64
xmltoman 0.4-3 all
xorg 1:7.6+12ubuntu2 amd64
xorg-docs-core 1:1.6-1ubuntu2 all
xorg-sgml-doctools 1:1.10-1 all
xserver-common 2:1.11.4-0ubuntu10.14 all
xserver-common-lts-saucy 2:1.14.5-1ubuntu2~saucy1~precise2 all
xserver-xorg-core-lts-saucy 2:1.14.5-1ubuntu2~saucy1~precise2 amd64
xserver-xorg-glamoregl-lts-saucy 0.5.1-0ubuntu4.2~precise2 amd64
xserver-xorg-input-all-lts-saucy 1:7.7+1ubuntu6~precise1 amd64
xserver-xorg-input-evdev-lts-saucy 1:2.7.3-0ubuntu3.1~precise1 amd64
xserver-xorg-input-mouse-lts-saucy 1:1.7.2-3build1~precise1 amd64
xserver-xorg-input-synaptics-lts-saucy 1.7.1-0ubuntu1~precise1 amd64
xserver-xorg-input-vmmouse-lts-saucy 1:12.9.0-0ubuntu4~precise1 amd64
xserver-xorg-input-wacom-lts-saucy 1:0.20.0-0ubuntu1~precise1 amd64
xserver-xorg-lts-saucy 1:7.7+1ubuntu6~precise1 amd64
xserver-xorg-video-all-lts-saucy 1:7.7+1ubuntu6~precise1 amd64
xserver-xorg-video-ati-lts-saucy 1:7.2.0-0ubuntu10~precise2 amd64
xserver-xorg-video-cirrus-lts-saucy 1:1.5.2-0ubuntu2~precise1 amd64
xserver-xorg-video-fbdev-lts-saucy 1:0.4.3-0ubuntu3~precise1 amd64
xserver-xorg-video-intel-lts-saucy 2:2.99.904-0ubuntu2.1~precise1 amd64
xserver-xorg-video-mach64-lts-saucy 6.9.3-0ubuntu3~precise1 amd64
xserver-xorg-video-mga-lts-saucy 1:1.6.2-0ubuntu2~precise1 amd64
xserver-xorg-video-modesetting-lts-saucy 0.8.0-0ubuntu1.1~precise1 amd64
xserver-xorg-video-neomagic-lts-saucy 1:1.2.7-0ubuntu3~precise1 amd64
xserver-xorg-video-nouveau-lts-saucy 1:1.0.9-2ubuntu1~precise2 amd64
xserver-xorg-video-openchrome-lts-saucy 1:0.3.1-0ubuntu2.1~precise1 amd64
xserver-xorg-video-r128-lts-saucy 6.9.1-0ubuntu2~precise1 amd64
xserver-xorg-video-radeon-lts-saucy 1:7.2.0-0ubuntu10~precise2 amd64
xserver-xorg-video-s3-lts-saucy 1:0.6.5-0ubuntu3.1~precise1 amd64
xserver-xorg-video-savage-lts-saucy 1:2.3.6-0ubuntu3~precise1 amd64
xserver-xorg-video-siliconmotion-lts-saucy 1:1.7.7-0ubuntu3~precise1 amd64
xserver-xorg-video-sis-lts-saucy 1:0.10.7-0ubuntu4~precise1 amd64
xserver-xorg-video-sisusb-lts-saucy 1:0.9.6-0ubuntu3~precise1 amd64
xserver-xorg-video-tdfx-lts-saucy 1:1.4.5-0ubuntu3~precise1 amd64
xserver-xorg-video-trident-lts-saucy 1:1.3.6-0ubuntu4~precise1 amd64
xserver-xorg-video-vesa-lts-saucy 1:2.3.2-0ubuntu3~precise1 amd64
xserver-xorg-video-vmware-lts-saucy 1:13.0.1-0ubuntu2~precise1 amd64
xsltproc 1.1.26-8ubuntu1.3 amd64
xterm 271-1ubuntu2.1 amd64
xtrans-dev 1.2.6-2 all
xubuntu-wallpapers 12.04.11 all
xul-ext-ubufox 2.7-0ubuntu0.12.04.1 all
xz-lzma 5.1.1alpha+20110809-3 all
xz-utils 5.1.1alpha+20110809-3 amd64
yakuake 2.9.8-1 amd64
yelp 3.4.1-0ubuntu1 amd64
yelp-xsl 3.4.1-1 all
zeitgeist 0.9.0-1ubuntu1 all
zeitgeist-core 0.9.0-1ubuntu1 amd64
zeitgeist-datahub 0.8.2-1ubuntu2 amd64
zenity 3.4.0-0ubuntu4 amd64
zenity-common 3.4.0-0ubuntu4 all
zerofree 1.0.1-2ubuntu1 amd64
zfs-fuse 0.6.9-1build1 amd64
zip 3.0-4 amd64
zlib1g 1:1.2.3.4.dfsg-3ubuntu4 amd64
zlib1g 1:1.2.3.4.dfsg-3ubuntu4 i386
zlib1g-dev 1:1.2.3.4.dfsg-3ubuntu4 amd64


On Mon, Mar 3, 2014 at 10:25 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday 03 March 2014 17:13:57 Paul Eggleton wrote:
> > On Monday 03 March 2014 09:56:59 Rick Bianchi wrote:
> > > undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
> >
> > This looks familiar - we've seen this issue before:
> >
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=2972
> >
> > Unfortunately we were never able to reproduce it, despite numerous people
> > running test builds on Ubuntu 12.04 / 12.10.
>
> Rick - It's a stab in the dark, but would you be able to send me a list of
> packages you have installed on your machine? Maybe I can have another go at
> reproducing the problem here or at the very least comparing the list to
> what I
> have installed. The most comprehensive list would be produced with the
> following command:
>
> dpkg-query -W -f='${Package}\t${Version}\t${Architecture}\n'
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7b675bf08cb5ad04f3b7400b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Here you go:<br></div><div><br></div><div>@LAPTOP-002=
:~$  dpkg-query -W -f=3D&#39;${Package}\t${Version}\t${Architecture}\n&#39;=
<br>accountsservice 0.6.15-2ubuntu9.7       amd64<br>acidrip 0.14-0.2ubuntu=
6 all<br>
acl     2.2.51-5ubuntu1 amd64<br>acpi-support    0.140.1 amd64<br>acpid   1=
:2.0.10-1ubuntu3       amd64<br>acroread        9.5.5-1precise1 amd64<br>ac=
roread-bin    9.5.5-1precise1 i386<br>activity-log-manager-common     0.9.4=
-0ubuntu3.2        all<br>
activity-log-manager-control-center     0.9.4-0ubuntu3.2        amd64<br>ad=
duser 3.113ubuntu2    all<br>adium-theme-ubuntu      0.3.2-0ubuntu1  all<br=
>adobe-flash-properties-gtk      11.2.202.341-0precise1  amd64<br>adobe-fla=
shplugin       11.2.202.341-0precise1  amd64<br>
aften   0.0.8+git20100105-0ubuntu2      amd64<br>aisleriot       1:3.2.3.2-=
0ubuntu1      amd64<br>alacarte        0.13.2-2ubuntu4 all<br>alsa-base    =
   1.0.25+dfsg-0ubuntu1.1  all<br>alsa-firmware-loaders   1.0.25-1ubuntu1 a=
md64<br>
alsa-oss        1.0.25-1        amd64<br>alsa-source     1.0.25+dfsg-0ubunt=
u1.1  all<br>alsa-tools      1.0.25-1ubuntu1 amd64<br>alsa-tools-gui  1.0.2=
5-1ubuntu1 amd64<br>alsa-utils      1.0.25-1ubuntu5.2       amd64<br>alsami=
xergui    0.9.0rc2-1-9.1  amd64<br>
amarok  2:2.8.0-0ubuntu2~ubuntu12.04~ppa1       amd64<br>amarok-common   2:=
2.8.0-0ubuntu2~ubuntu12.04~ppa1       all<br>amarok-utils    2:2.8.0-0ubunt=
u2~ubuntu12.04~ppa1       amd64<br>anacron 2.3-14ubuntu1   amd64<br>apg    =
 2.2.3.dfsg.1-2  amd64<br>
app-install-data        0.12.04.4       all<br>app-install-data-partner    =
    12.12.04.1      all<br>apparmor        2.7.102-0ubuntu3.9      amd64<br=
>appmenu-gtk     0.3.92-0ubuntu1.1       amd64<br>appmenu-gtk3    0.3.92-0u=
buntu1.1       amd64<br>
appmenu-qt      0.2.6-0ubuntu1  amd64<br>apport-symptoms 0.16.1  all<br>apt=
     0.8.16~exp12ubuntu10.16 amd64<br>apt-transport-https     0.8.16~exp12u=
buntu10.16 amd64<br>apt-utils       0.8.16~exp12ubuntu10.16 amd64<br>apt-xa=
pian-index        0.44ubuntu5.1   all<br>
aptdaemon       0.43+bzr805-0ubuntu9    all<br>aptdaemon-data  0.43+bzr805-=
0ubuntu9    all<br>aptitude        0.6.6-1ubuntu1.2        amd64<br>apturl =
 0.5.1ubuntu3    amd64<br>apturl-common   0.5.1ubuntu3    amd64<br>arj     =
3.10.22-10      amd64<br>
aspell  0.60.7~20110707-1       amd64<br>aspell-en       6.0-0-6ubuntu2  al=
l<br>at      3.1.13-1ubuntu1 amd64<br>at-spi2-core    2.4.2-0ubuntu0.1     =
   amd64<br>audacity        2.0.0-1ubuntu0.1        amd64<br>audacity-data =
  2.0.0-1ubuntu0.1        all<br>
audio-recorder  0.9.1~precise   amd64<br>augeas-lenses   0.10.0-0ubuntu4 al=
l<br>autoconf        2.68-1ubuntu2   all<br>automake        1:1.11.3-1ubunt=
u2       all<br>automake1.9     1.9.6+nogfdl-3.1ubuntu1 all<br>automoc 1.0~=
version-0.9.88-5    amd64<br>
autotools-dev   20120210.1ubuntu1       all<br>avahi-autoipd   0.6.30-5ubun=
tu2.1       amd64<br>avahi-daemon    0.6.30-5ubuntu2.1       amd64<br>avahi=
-utils     0.6.30-5ubuntu2.1       amd64<br>bamfdaemon      0.2.126-0ubuntu=
1        amd64<br>
baobab  3.4.1-0ubuntu1  amd64<br>base-files      6.5ubuntu6.7    amd64<br>b=
ase-passwd     3.5.24  amd64<br>bash    4.2-2ubuntu2.1  amd64<br>bash-compl=
etion 1:1.3-1ubuntu8.1        all<br>bc      1.06.95-2ubuntu1        amd64<=
br>
bcmwl-kernel-source     6.20.155.1+bdcom-0ubuntu0.0.2   amd64<br>bind9-host=
      1:9.8.1.dfsg.P1-4ubuntu0.8      amd64<br>binfmt-support  2.0.8   amd6=
4<br>binutils        2.22-6ubuntu1.1 amd64<br>binutils-arm-linux-gnueabi   =
   2.22-6ubuntu1cross1.82  amd64<br>
binutils-doc    2.22-6ubuntu1.1 all<br>binutils-gold   2.22-6ubuntu1.1 amd6=
4<br>bison   1:2.5.dfsg-2.1  amd64<br>bitbake 1.12.0-1        all<br>blubun=
tu-wallpapers     0.3.1   all<br>bluez   4.98-2ubuntu7   amd64<br>bluez-als=
a      4.98-2ubuntu7   amd64<br>
bluez-alsa      4.98-2ubuntu7   i386<br>bluez-cups      4.98-2ubuntu7   amd=
64<br>bluez-gstreamer 4.98-2ubuntu7   amd64<br>branding-ubuntu 0.7     all<=
br>brasero 3.4.1-0ubuntu1.1        amd64<br>brasero-cdrkit  3.4.1-0ubuntu1.=
1        amd64<br>
brasero-common  3.4.1-0ubuntu1.1        all<br>bridge-utils    1.5-2ubuntu7=
    amd64<br>brltty  4.3-1ubuntu5    amd64<br>bsdmainutils    8.2.3ubuntu1 =
   amd64<br>bsdutils        1:2.20.1-1ubuntu3       amd64<br>btrfs-tools   =
  0.19+20100601-3ubuntu3  amd64<br>
build-essential 11.5ubuntu2.1   amd64<br>busybox-initramfs       1:1.18.5-1=
ubuntu4.1     amd64<br>busybox-static  1:1.18.5-1ubuntu4.1     amd64<br>bzi=
p2   1.0.6-1 amd64<br>bzr     2.5.1-0ubuntu2  all<br>bzr-builddeb    2.8.4 =
  all<br>
ca-certificates 20111211        all<br>cabextract      1.4-1   amd64<br>cal=
ligra-data   1:2.7.1-0ubuntu1~ubuntu12.04.3~ppa5     all<br>calligra-libs  =
 1:2.7.1-0ubuntu1~ubuntu12.04.3~ppa5     amd64<br>cdbs    0.4.100ubuntu2  a=
ll<br>
cdparanoia      3.10.2+debian-10ubuntu1 amd64<br>cdrdao  1:1.2.3-0.1ubuntu3=
      amd64<br>checkbox        0.13.10 amd64<br>checkbox-qt     0.13.10 amd=
64<br>chromium-browser        32.0.1700.107-0ubuntu0.12.04.1~20140204.866.1=
   amd64<br>
chromium-browser-l10n   32.0.1700.107-0ubuntu0.12.04.1~20140204.866.1   all=
<br>chromium-codecs-ffmpeg-extra    32.0.1700.107-0ubuntu0.12.04.1~20140204=
.866.1   amd64<br>chrpath 0.13-2build2    amd64<br>ckermit 302-1   amd64<br=
>
cmake   2.8.12.2-0ubuntu1~ubuntu12.04.1~ppa2    amd64<br>cmake-data      2.=
8.12.2-0ubuntu1~ubuntu12.04.1~ppa2    all<br>cmap-adobe-japan2       0+2009=
0930-2    all<br>colord  0.1.16-2ubuntu0.1       amd64<br>comerr-dev      2=
.1-1.42-1ubuntu2       amd64<br>
command-not-found       0.2.46ubuntu6   all<br>command-not-found-data  0.2.=
46ubuntu6   amd64<br>compiz  1:0.9.7.12-0ubuntu3     all<br>compiz-core    =
 1:0.9.7.12-0ubuntu3     amd64<br>compiz-gnome    1:0.9.7.12-0ubuntu3     a=
md64<br>
compiz-plugins-default  1:0.9.7.12-0ubuntu3     amd64<br>compiz-plugins-mai=
n-default     1:0.9.7.0~bzr19-0ubuntu10.1     amd64<br>compizconfig-backend=
-gconf      0.9.5.92-0ubuntu5       amd64<br>console-setup   1.70ubuntu5   =
  all<br>
consolekit      0.4.5-2ubuntu0.1        amd64<br>coreutils       8.13-3ubun=
tu3.2 amd64<br>cpio    2.11-7ubuntu3   amd64<br>cpp     4:4.6.3-1ubuntu5   =
     amd64<br>cpp-4.5 4.5.3-12ubuntu2 amd64<br>cpp-4.5-arm-linux-gnueabi   =
    4.5.3-12ubuntu2cross1.61        amd64<br>
cpp-4.6 4.6.3-1ubuntu5  amd64<br>cpp-4.6-arm-linux-gnueabi       4.6.3-1ubu=
ntu5cross1.62 amd64<br>cpp-4.6-doc     4.6.3-1ubuntu5  all<br>cpp-arm-linux=
-gnueabi   4:4.6.2-7       amd64<br>cpp-doc 4:4.6.3-1ubuntu5        amd64<b=
r>
cpu-checker     0.7-0ubuntu1    amd64<br>cron    3.0pl1-120ubuntu4       am=
d64<br>cryptsetup      2:1.4.1-2ubuntu4        amd64<br>cryptsetup-bin  2:1=
.4.1-2ubuntu4        amd64<br>cups    1.5.3-0ubuntu8  amd64<br>cups-bsd    =
    1.5.3-0ubuntu8  amd64<br>
cups-client     1.5.3-0ubuntu8  amd64<br>cups-common     1.5.3-0ubuntu8  al=
l<br>cups-driver-gutenprint  5.2.8~pre1-0ubuntu2.1   all<br>cups-filters   =
 1.0.18-0ubuntu0.1       amd64<br>cups-pdf        2.6.1-6 amd64<br>cups-pk-=
helper  0.2.1.2-1ubuntu0.1      amd64<br>
cups-ppdc       1.5.3-0ubuntu8  amd64<br>curl    7.22.0-3ubuntu4.7       am=
d64<br>cutecom 0.22.0-2        amd64<br>cvs     2:1.12.13+real-8        amd=
64<br>dash    0.5.7-2ubuntu2  amd64<br>dblatex 0.3.2-2 all<br>dbus    1.4.1=
8-1ubuntu1.4       amd64<br>
dbus-x11        1.4.18-1ubuntu1.4       amd64<br>dc      1.06.95-2ubuntu1  =
      amd64<br>dconf-gsettings-backend 0.12.0-0ubuntu1.1       amd64<br>dco=
nf-service   0.12.0-0ubuntu1.1       amd64<br>dctrl-tools     2.18ubuntu1  =
   amd64<br>
debconf 1.5.42ubuntu1   all<br>debconf-i18n    1.5.42ubuntu1   all<br>debco=
nf-utils   1.5.42ubuntu1   all<br>debhelper       9.20131127ubuntu2~ubuntu1=
2.04.1~ppa3    all<br>debian-archive-keyring  2010.08.28      all<br>debian=
-keyring  2012.02.22      all<br>
debianutils     4.2.1ubuntu2    amd64<br>debootstrap     1.0.46ubuntu1   al=
l<br>deja-dup        22.0-0ubuntu4   amd64<br>desktop-file-utils      0.20-=
0ubuntu3   amd64<br>devscripts      2.11.6ubuntu1.6 amd64<br>dh-apparmor   =
  2.7.102-0ubuntu3.9      all<br>
dh-make 0.59ubuntu1     all<br>dh-modaliases   0.9.7-0ubuntu7.14       all<=
br>dh-translations 116     all<br>dictionaries-common     1.12.1ubuntu2   a=
ll<br>diff    1:3.2-1ubuntu1  all<br>diffstat        1.54-1  amd64<br>diffu=
se 0.4.7   all<br>
diffutils       1:3.2-1ubuntu1  amd64<br>distro-info     0.8.2   amd64<br>d=
istro-info-data        0.8ubuntu0.5    all<br>dkms    2.2.0.3-1ubuntu3.2   =
   all<br>dmidecode       2.11-4  amd64<br>dmsetup 2:1.02.48-4ubuntu7.4    =
amd64<br>
dmz-cursor-theme        0.4.3   all<br>dnsmasq-base    2.59-4ubuntu0.1 amd6=
4<br>dnsutils        1:9.8.1.dfsg.P1-4ubuntu0.8      amd64<br>doc-base     =
   0.10.3  all<br>docbook 4.5-4ubuntu1    all<br>docbook-to-man  1:2.0.0-28=
ubuntu1       amd64<br>
docbook-xml     4.5-7ubuntu1    all<br>docbook-xsl     1.76.1+dfsg-1ubuntu1=
    all<br>dosfstools      3.0.12-1ubuntu1.1       amd64<br>dpatch  2.0.34u=
buntu1   all<br>dpkg    1.16.1.2ubuntu7.2       amd64<br>dpkg-dev        1.=
16.1.2ubuntu7.2       all<br>
dput    0.9.6.2ubuntu1  all<br>duplicity       0.6.18-0ubuntu3.4       amd6=
4<br>dvd+rw-tools    7.1-10  amd64<br>dvd95   1.6p0+git20100528.ef7c-0ubunt=
u3 amd64<br>dvdauthor       0.7.0-1.1build1 amd64<br>dvdrip  1:0.98.11-0ubu=
ntu3      all<br>
dvdrip-doc      2:0.98.11-0ubuntu1      all<br>dvdrip-queue    0.1.3-0.1ubu=
ntu2        all<br>dvdrip-utils    1:0.98.11-0ubuntu3      amd64<br>e2fslib=
s        1.42-1ubuntu2   amd64<br>e2fsprogs       1.42-1ubuntu2   amd64<br>
ed      1.5-3   amd64<br>edubuntu-wallpapers     12.04.4 all<br>eject   2.1=
.5+deb1+cvs20081104-9        amd64<br>elementary-icon-theme   2.7.1-0ubuntu=
6  all<br>emacsen-common  2.0.7~ubuntu12.04.1~ppa1        all<br>empathy 3.=
4.2.3-0ubuntu1.1      amd64<br>
empathy-common  3.4.2.3-0ubuntu1.1      all<br>enchant 1.6.0-7 amd64<br>eog=
     3.4.2-0ubuntu1.1        amd64<br>esound-common   0.2.41-10build3 all<b=
r>espeak  1.46.02-0ubuntu1        amd64<br>espeak-data     1.46.02-0ubuntu1=
        amd64<br>
evince  3.4.0-0ubuntu1.7        amd64<br>evince-common   3.4.0-0ubuntu1.7  =
      all<br>evolution-data-server   3.2.3-0ubuntu7.1        amd64<br>evolu=
tion-data-server-common    3.2.3-0ubuntu7.1        all<br>example-content 4=
6      all<br>
faac    1.28-0ubuntu2   amd64<br>faad    2.7-7   amd64<br>fakeroot        1=
.18.2-1        amd64<br>febootstrap     3.14-2  amd64<br>ffmpeg  4:0.8.10-0=
ubuntu0.12.04.1       all<br>ffmpeg2theora   0.27-1.1ubuntu1 amd64<br>file =
   5.09-2ubuntu0.2 amd64<br>
file-roller     3.4.1-0ubuntu1  amd64<br>filezilla       3.5.3-1ubuntu2  am=
d64<br>filezilla-common        3.5.3-1ubuntu2  all<br>findutils       4.4.2=
-4ubuntu1  amd64<br>firefox 27.0.1+build1-0ubuntu0.12.04.1  amd64<br>firefo=
x-gnome-support   22.0+build2-0ubuntu0.12.04.2    amd64<br>
firefox-locale-en       27.0.1+build1-0ubuntu0.12.04.1  amd64<br>flac    1.=
2.1-6 amd64<br>flashplugin-installer   11.2.202.336ubuntu0.12.04.1     amd6=
4<br>flex    2.5.35-10ubuntu3        amd64<br>folks-common    0.6.8-2 all<b=
r>
fontconfig      2.8.0-3ubuntu9.1        amd64<br>fontconfig-config       2.=
8.0-3ubuntu9.1        all<br>fonts-droid     20101110+git-2  all<br>fonts-h=
orai-umefont     434-1   all<br>fonts-kacst     2.01+mry-3      all<br>
fonts-kacst-one 5.0+svn11846-2  all<br>fonts-khmeros-core      5.0-5ubuntu1=
    all<br>fonts-lao       0.0.20060226-8  all<br>fonts-liberation        1=
.07.0-2ubuntu0.1       all<br>fonts-nanum     3.010-2 all<br>fonts-opensymb=
ol        2:102.2+LibO3.5.7-0ubuntu5      all<br>
fonts-takao-pgothic     003.02.01-5ubuntu1      all<br>fonts-thai-tlwg 1:0.=
4.17-1ubuntu1       all<br>fonts-tlwg-garuda       1:0.4.17-1ubuntu1       =
all<br>fonts-tlwg-kinnari      1:0.4.17-1ubuntu1       all<br>fonts-tlwg-lo=
ma 1:0.4.17-1ubuntu1       all<br>
fonts-tlwg-mono 1:0.4.17-1ubuntu1       all<br>fonts-tlwg-norasi       1:0.=
4.17-1ubuntu1       all<br>fonts-tlwg-purisa       1:0.4.17-1ubuntu1       =
all<br>fonts-tlwg-sawasdee     1:0.4.17-1ubuntu1       all<br>fonts-tlwg-ty=
pewriter   1:0.4.17-1ubuntu1       all<br>
fonts-tlwg-typist       1:0.4.17-1ubuntu1       all<br>fonts-tlwg-typo 1:0.=
4.17-1ubuntu1       all<br>fonts-tlwg-umpush       1:0.4.17-1ubuntu1       =
all<br>fonts-tlwg-waree        1:0.4.17-1ubuntu1       all<br>fonts-unfonts=
-core      1.0.3.is.1.0.2-080608-5ubuntu1  all<br>
foomatic-db     20120322-0ubuntu1       all<br>foomatic-db-engine      4.0.=
8-2ubuntu1  amd64<br>foomatic-filters        4.0.16-0ubuntu0.2       amd64<=
br>fping   2.4b2-to-ipv6-16.1      amd64<br>freepats        20060219-1     =
 all<br>
frei0r-plugins  1.1.22git20091109-1.1ubuntu1    amd64<br>friendly-recovery =
      0.2.25  all<br>ftp     0.17-25 amd64<br>fuse    2.8.6-2ubuntu2  amd64=
<br>fuse-utils      2.8.6-2ubuntu2  all<br>fuseext2        0.3-1   amd64<br=
>
fxload  0.0.20081013-1ubuntu1   amd64<br>g++     4:4.6.3-1ubuntu5        am=
d64<br>g++-4.5-arm-linux-gnueabi       4.5.3-12ubuntu2cross1.61        amd6=
4<br>g++-4.6 4.6.3-1ubuntu5  amd64<br>gawk    1:3.1.8+dfsg-0.1ubuntu1 amd64=
<br>
gcalctool       6.4.1.1-0ubuntu3        amd64<br>gcc     4:4.6.3-1ubuntu5  =
      amd64<br>gcc-4.5 4.5.3-12ubuntu2 amd64<br>gcc-4.5-arm-linux-gnueabi  =
     4.5.3-12ubuntu2cross1.61        amd64<br>gcc-4.5-arm-linux-gnueabi-bas=
e  4.5.3-12ubuntu2cross1.61        all<br>
gcc-4.5-base    4.5.3-12ubuntu2 amd64<br>gcc-4.5-doc     4.5.3-12ubuntu2 al=
l<br>gcc-4.5-locales 4.5.3-12ubuntu2 all<br>gcc-4.6 4.6.3-1ubuntu5  amd64<b=
r>gcc-4.6-arm-linux-gnueabi       4.6.3-1ubuntu5cross1.62 amd64<br>gcc-4.6-=
arm-linux-gnueabi-base  4.6.3-1ubuntu5cross1.62 all<br>
gcc-4.6-base    4.6.3-1ubuntu5  amd64<br>gcc-4.6-base    4.6.3-1ubuntu5  i3=
86<br>gcc-4.6-doc     4.6.3-1ubuntu5  all<br>gcc-4.6-locales 4.6.3-1ubuntu5=
  all<br>gcc-4.6-multilib        4.6.3-1ubuntu5  amd64<br>gcc-4.6-multilib-=
arm-linux-gnueabi      4.6.3-1ubuntu5cross1.62 all<br>
gcc-arm-linux-gnueabi   4:4.6.2-7       amd64<br>gcc-multilib    4:4.6.3-1u=
buntu5        amd64<br>gccxml  0.9.0+cvs20111013-1     amd64<br>gconf-servi=
ce   3.2.5-0ubuntu2  amd64<br>gconf-service-backend   3.2.5-0ubuntu2  amd64=
<br>
gconf2  3.2.5-0ubuntu2  amd64<br>gconf2-common   3.2.5-0ubuntu2  all<br>gdb=
     7.4-2012.04-0ubuntu2.1  amd64<br>gedit   3.4.1-0ubuntu1  amd64<br>gedi=
t-common    3.4.1-0ubuntu1  all<br>genext2fs       1.4.1-4 amd64<br>genisoi=
mage     9:1.1.11-2ubuntu2       amd64<br>
geoclue 0.12.0-1ubuntu12        amd64<br>geoclue-ubuntu-geoip    0.0.2-0ubu=
ntu6.3        amd64<br>geoip-database  20111220-1      all<br>gettext 0.18.=
1.1-5ubuntu3       amd64<br>gettext-base    0.18.1.1-5ubuntu3       amd64<b=
r>
ghostscript     9.05~dfsg-0ubuntu4.2    amd64<br>ghostscript-cups        9.=
05~dfsg-0ubuntu4.2    amd64<br>ghostscript-x   9.05~dfsg-0ubuntu4.2    amd6=
4<br>gimp    2.8.10-0precise3~ppa    amd64<br>gimp-cbmplugs   1.2.2-1 amd64=
<br>
gimp-data       2.8.10-0precise3~ppa    all<br>gimp-data-extras        1:2.=
0.1-3       all<br>gimp-dbg        2.8.10-0precise3~ppa    amd64<br>gimp-dd=
s        2.0.9-3 amd64<br>gimp-dimage-color       1.1.0-3ubuntu1  amd64<br>
gimp-flegita    0.6.2-1.1ubuntu1        amd64<br>gimp-gap        2.6.0+dfsg=
-2    amd64<br>gimp-gluas      0.1.20-1        amd64<br>gimp-gmic       1:1=
.5.8.3-0precise0~ppa amd64<br>gimp-gutenprint 5.2.8~pre1-0ubuntu2.1   amd64=
<br>
gimp-help-common        1:2.8.1-0precise6~ppa   all<br>gimp-help-en    1:2.=
8.1-0precise6~ppa   all<br>gimp-lensfun    0.2.3-0precise0~ppa     amd64<br=
>gimp-plugin-registry    5.20121030-1ubuntu0ppa9~precise amd64<br>gimp-text=
urize  2.1-1   amd64<br>
gimp-ufraw      0.18-1.1build1  amd64<br>ginn    0.2.4.1-0ubuntu1        am=
d64<br>gir1.2-accountsservice-1.0      0.6.15-2ubuntu9.7       amd64<br>gir=
1.2-appindicator3-0.1        0.4.92-0ubuntu1.1       amd64<br>gir1.2-atk-1.=
0  2.4.0-0ubuntu1  amd64<br>
gir1.2-atspi-2.0        2.4.2-0ubuntu0.1        amd64<br>gir1.2-caribou-1.0=
      0.4.2-1ubuntu1  amd64<br>gir1.2-clutter-1.0      1.10.6-1~precise1   =
    amd64<br>gir1.2-cogl-1.0 1.10.0-0ubuntu2 amd64<br>gir1.2-coglpango-1.0 =
   1.10.0-0ubuntu2 amd64<br>
gir1.2-dbusmenu-glib-0.4        0.6.2-0ubuntu0.2        amd64<br>gir1.2-dbu=
smenu-gtk-0.4 0.6.2-0ubuntu0.2        amd64<br>gir1.2-dee-1.0  1.0.10-0ubun=
tu1.1       amd64<br>gir1.2-folks-0.6        0.6.8-2 amd64<br>gir1.2-freede=
sktop      1.32.0-1        amd64<br>
gir1.2-gconf-2.0        3.2.5-0ubuntu2  amd64<br>gir1.2-gdesktopenums-3.0  =
      3.4.1-0ubuntu1  amd64<br>gir1.2-gdkpixbuf-2.0    2.26.1-1        amd6=
4<br>gir1.2-gee-1.0  0.6.4-1 amd64<br>gir1.2-gjsdbus-1.0      1.32.0-1ubunt=
u1 amd64<br>
gir1.2-gkbd-3.0 3.4.0.2-1ubuntu0.1      amd64<br>gir1.2-glib-2.0 1.32.0-1  =
      amd64<br>gir1.2-gmenu-3.0        3.4.0-0ubuntu1  amd64<br>gir1.2-gnom=
ebluetooth-1.0       3.2.2-0ubuntu5.1        amd64<br>gir1.2-gnomekeyring-1=
.0 3.2.2-2 amd64<br>
gir1.2-gst-plugins-base-0.10    0.10.36-1ubuntu0.1      amd64<br>gir1.2-gst=
reamer-0.10   0.10.36-1ubuntu1        amd64<br>gir1.2-gtk-2.0  2.24.10-0ubu=
ntu6        amd64<br>gir1.2-gtk-3.0  3.4.2-0ubuntu0.6        amd64<br>gir1.=
2-gtksource-3.0    3.4.2-0ubuntu1  amd64<br>
gir1.2-gudev-1.0        175-0ubuntu9.4  amd64<br>gir1.2-indicate-0.7     0.=
6.92-0ubuntu1 amd64<br>gir1.2-javascriptcoregtk-3.0    1.8.3-0ubuntu0.12.04=
.1  amd64<br>gir1.2-json-1.0 0.14.2-1        amd64<br>gir1.2-launchpad-inte=
gration-3.0        0.1.56.1        amd64<br>
gir1.2-mutter-3.0       3.4.1-0ubuntu1  amd64<br>gir1.2-nautilus-3.0     1:=
3.4.2-0ubuntu9        amd64<br>gir1.2-networkmanager-1.0       0.9.4.0-0ubu=
ntu4.3      amd64<br>gir1.2-notify-0.7       0.7.5-1 amd64<br>gir1.2-panela=
pplet-4.0  1:3.4.1-0ubuntu1.2      amd64<br>
gir1.2-pango-1.0        1.30.0-0ubuntu3.1       amd64<br>gir1.2-peas-1.0 1.=
2.0-1ubuntu1  amd64<br>gir1.2-polkit-1.0       0.104-1ubuntu1.1        amd6=
4<br>gir1.2-rb-3.0   2.96-0ubuntu4.3 amd64<br>gir1.2-soup-2.4 2.38.1-1     =
   amd64<br>
gir1.2-telepathyglib-0.12       0.18.2-0ubuntu1 amd64<br>gir1.2-telepathylo=
gger-0.2      0.4.0-0ubuntu1  amd64<br>gir1.2-totem-1.0        3.0.1-0ubunt=
u21.1       amd64<br>gir1.2-totem-plparser-1.0       3.4.1-1 amd64<br>gir1.=
2-unity-5.0        5.12.0-0ubuntu1.1       amd64<br>
gir1.2-upowerglib-1.0   0.9.15-3git1ubuntu0.1   amd64<br>gir1.2-vte-2.90 1:=
0.32.1-0ubuntu1       amd64<br>gir1.2-webkit-3.0       1.8.3-0ubuntu0.12.04=
.1  amd64<br>gir1.2-wnck-3.0 3.4.0-0ubuntu1  amd64<br>gir1.2-xkl-1.0  5.2.1=
-1ubuntu1  amd64<br>
git     1:1.7.9.5-1     amd64<br>git-core        1:1.7.9.5-1     all<br>git=
-man 1:1.7.9.5-1     all<br>gjs     1.32.0-1ubuntu1 amd64<br>gksu    2.0.2-=
6ubuntu1  amd64<br>glib-networking 2.32.1-1ubuntu2 amd64<br>glib-networking=
 2.32.1-1ubuntu2 i386<br>
glib-networking-common  2.32.1-1ubuntu2 all<br>glib-networking-services    =
    2.32.1-1ubuntu2 amd64<br>gnome-accessibility-themes      3.4.1-0ubuntu1=
.2        all<br>gnome-applets   3.4.1-0ubuntu1  amd64<br>gnome-applets-dat=
a      3.4.1-0ubuntu1  all<br>
gnome-bluetooth 3.2.2-0ubuntu5.1        amd64<br>gnome-contacts  3.4.0-1 am=
d64<br>gnome-control-center    1:3.4.2-0ubuntu0.13.1   amd64<br>gnome-contr=
ol-center-data       1:3.4.2-0ubuntu0.13.1   all<br>gnome-desktop3-data    =
 3.4.2-0ubuntu0.2        all<br>
gnome-disk-utility      3.0.2-2ubuntu7  amd64<br>gnome-doc-utils 0.20.10-1 =
      all<br>gnome-font-viewer       3.4.0-1 amd64<br>gnome-games-data     =
   1:3.4.1-0ubuntu2.2      all<br>gnome-icon-theme        3.4.0-0ubuntu1.1 =
       all<br>
gnome-icon-theme-full   3.4.0-0ubuntu1.1        all<br>gnome-icon-theme-sym=
bolic       3.4.0-1 all<br>gnome-keyring   3.2.2-2ubuntu4.1        amd64<br=
>gnome-media     3.4.0-0ubuntu3.1        amd64<br>gnome-menus     3.4.0-0ub=
untu1  amd64<br>
gnome-nettool   3.2.0-0ubuntu1  amd64<br>gnome-online-accounts   3.4.0-0ubu=
ntu1.1        amd64<br>gnome-orca      3.4.2-0ubuntu0.1        all<br>gnome=
-panel     1:3.4.1-0ubuntu1.2      amd64<br>gnome-panel-data        1:3.4.1=
-0ubuntu1.2      all<br>
gnome-pkg-tools 0.19.1ubuntu3   all<br>gnome-power-manager     3.4.0-0ubunt=
u1.1        amd64<br>gnome-scan-common       0.6.2-1.1ubuntu1        all<br=
>gnome-screensaver       3.4.1-0ubuntu1  amd64<br>gnome-screenshot        3=
.4.1-0ubuntu1.1        amd64<br>
gnome-session   3.2.1-0ubuntu8  all<br>gnome-session-bin       3.2.1-0ubunt=
u8  amd64<br>gnome-session-canberra  0.28-3ubuntu3   amd64<br>gnome-session=
-common    3.2.1-0ubuntu8  all<br>gnome-session-fallback  3.2.1-0ubuntu8  a=
ll<br>
gnome-settings-daemon   3.4.2-0ubuntu0.6.4      amd64<br>gnome-shell     3.=
4.1-0ubuntu2  amd64<br>gnome-shell-common      3.4.1-0ubuntu2  all<br>gnome=
-sudoku    1:3.4.1-0ubuntu2.2      all<br>gnome-system-log        3.4.1-0ub=
untu1  amd64<br>
gnome-system-monitor    3.4.1-0ubuntu1  amd64<br>gnome-system-tools      3.=
0.0-2ubuntu1  amd64<br>gnome-terminal  3.4.1.1-0ubuntu1        amd64<br>gno=
me-terminal-data     3.4.1.1-0ubuntu1        all<br>gnome-themes-standard  =
 3.4.1-0ubuntu1.2        amd64<br>
gnome-tweak-tool        3.3.4-0ubuntu1  all<br>gnome-user-guide        3.4.=
1-1 all<br>gnome-user-share        3.0.2-0ubuntu1  amd64<br>gnomine 1:3.4.1=
-0ubuntu2.2      amd64<br>gnupg   1.4.11-3ubuntu2.5       amd64<br>gocr    =
0.49-1  amd64<br>
google-talkplugin       5.1.5.0-1       amd64<br>gpac    0.4.5+svn3462~dfsg=
0-1   amd64<br>gpac-modules-base       0.4.5+svn3462~dfsg0-1   amd64<br>gpa=
int  0.3.3-6 amd64<br>gparted 0.11.0-2        amd64<br>gpgv    1.4.11-3ubun=
tu2.5       amd64<br>
grep    2.10-1  amd64<br>groff-base      1.21-7  amd64<br>growisofs       7=
.1-10  amd64<br>grub-common     1.99-21ubuntu3.14       amd64<br>grub-gfxpa=
yload-lists   0.6     amd64<br>grub-pc 1.99-21ubuntu3.14       amd64<br>
grub-pc-bin     1.99-21ubuntu3.14       amd64<br>grub2-common    1.99-21ubu=
ntu3.14       amd64<br>gs-cjk-resource 1.20100103-3    all<br>gsettings-des=
ktop-schemas       3.4.1-0ubuntu1  all<br>gsfonts 1:8.11+urwcyr1.0.7~pre44-=
4.2ubuntu1     all<br>
gsfonts-x11     0.22    all<br>gstreamer-tools 0.10.36-1ubuntu1        amd6=
4<br>gstreamer0.10-alsa      0.10.36-1ubuntu0.1      amd64<br>gstreamer0.10=
-ffmpeg    0.10.13-1       amd64<br>gstreamer0.10-fluendo-mp3       0.10.15=
.debian-1ubuntu1 amd64<br>
gstreamer0.10-gconf     0.10.31-1ubuntu1.2      amd64<br>gstreamer0.10-nice=
      0.1.1-2ubuntu1  amd64<br>gstreamer0.10-plugins-bad       0.10.22.3-2u=
buntu2.2    amd64<br>gstreamer0.10-plugins-bad-multiverse    0.10.21-1     =
  amd64<br>
gstreamer0.10-plugins-base      0.10.36-1ubuntu0.1      amd64<br>gstreamer0=
.10-plugins-base      0.10.36-1ubuntu0.1      i386<br>gstreamer0.10-plugins=
-base-apps 0.10.36-1ubuntu0.1      amd64<br>gstreamer0.10-plugins-good     =
 0.10.31-1ubuntu1.2      amd64<br>
gstreamer0.10-plugins-good      0.10.31-1ubuntu1.2      i386<br>gstreamer0.=
10-plugins-ugly      0.10.18.3-1ubuntu1      amd64<br>gstreamer0.10-pulseau=
dio        0.10.31-1ubuntu1.2      amd64<br>gstreamer0.10-tools     0.10.36=
-1ubuntu1        amd64<br>
gstreamer0.10-x 0.10.36-1ubuntu0.1      amd64<br>gstreamer0.10-x 0.10.36-1u=
buntu0.1      i386<br>gtk2-engines    1:2.20.2-1ubuntu1       amd64<br>gtk2=
-engines    1:2.20.2-1ubuntu1       i386<br>gtk2-engines-murrine    0.98.2-=
0ubuntu1 amd64<br>
gtk2-engines-murrine    0.98.2-0ubuntu1 i386<br>gtk2-engines-oxygen     1.2=
.2-0ubuntu1.1        i386<br>gtk2-engines-pixbuf     2.24.10-0ubuntu6      =
  amd64<br>gtk2-engines-pixbuf     2.24.10-0ubuntu6        i386<br>gtk3-eng=
ines-unico      1.0.2-0ubuntu1  amd64<br>
gucharmap       1:3.4.1.1-0ubuntu1      amd64<br>guestmount      1:1.14.8-1=
      amd64<br>guile-1.8-libs  1.8.8+1-6ubuntu2        amd64<br>gutenprint-=
locales      5.2.8~pre1-0ubuntu2.1   all<br>gvfs    1.12.1-0ubuntu1.2      =
 amd64<br>
gvfs    1.12.1-0ubuntu1.2       i386<br>gvfs-backends   1.12.1-0ubuntu1.2  =
     amd64<br>gvfs-bin        1.12.1-0ubuntu1.2       amd64<br>gvfs-common =
    1.12.1-0ubuntu1.2       all<br>gvfs-daemons    1.12.1-0ubuntu1.2       =
amd64<br>
gvfs-fuse       1.12.1-0ubuntu1.2       amd64<br>gvfs-libs       1.12.1-0ub=
untu1.2       amd64<br>gvfs-libs       1.12.1-0ubuntu1.2       i386<br>gwib=
ber 3.4.2-0ubuntu2.3        amd64<br>gwibber-service 3.4.2-0ubuntu2.3      =
  all<br>
gwibber-service-facebook        3.4.2-0ubuntu2.3        all<br>gwibber-serv=
ice-identica        3.4.2-0ubuntu2.3        all<br>gwibber-service-twitter =
3.4.2-0ubuntu2.3        all<br>gzip    1.4-1ubuntu2    amd64<br>hal     0.5=
.14-8        amd64<br>
hal-doc 0.5.14-8        all<br>hal-info        20091130-1      all<br>hdpar=
m  9.37-0ubuntu3.1 amd64<br>help2man        1.40.4ubuntu1   amd64<br>hicolo=
r-icon-theme      0.12-1ubuntu2   all<br>hostname        3.06ubuntu1     am=
d64<br>
hplip   3.12.2-1ubuntu3.4       amd64<br>hplip-data      3.12.2-1ubuntu3.4 =
      all<br>html2text       1.3.2a-15       amd64<br>humanity-icon-theme  =
   0.5.3.11        all<br>hunspell-en-us  20070829-4ubuntu3       all<br>
hwdata  0.233-1ubuntu1  all<br>hyphen-en-us    2.8.3-1 all<br>ia32-libs    =
   20090808ubuntu36        amd64<br>ia32-libs-multiarch     20090808ubuntu3=
6        i386<br>ibus    1.4.2-0ubuntu1~ubuntu12.04.1~ppa1       amd64<br>
ibus-gtk        1.4.2-0ubuntu1~ubuntu12.04.1~ppa1       amd64<br>ibus-gtk  =
      1.4.2-0ubuntu1~ubuntu12.04.1~ppa1       i386<br>ibus-gtk3       1.4.2=
-0ubuntu1~ubuntu12.04.1~ppa1       amd64<br>ibus-pinyin     1.4.0-1 amd64<b=
r>
ibus-pinyin-db-android  1.4.0-1 all<br>ibus-table      1.3.9.20110827-1ubun=
tu1 all<br>icedax  9:1.1.11-2ubuntu2       amd64<br>icoutils        0.29.1-=
2        amd64<br>id3v2   0.1.12-2        amd64<br>ifupdown        0.7~beta=
2ubuntu10       amd64<br>
im-switch       1.20ubuntu5.2   all<br>imagemagick     8:6.6.9.7-5ubuntu3.2=
    amd64<br>imagemagick-common      8:6.6.9.7-5ubuntu3.2    all<br>indicat=
or-applet-complete       0.5.0-0ubuntu1  amd64<br>indicator-application   0=
.5.0-0ubuntu1  amd64<br>
indicator-appmenu       0.3.97-0ubuntu1 amd64<br>indicator-datetime      0.=
3.94-0ubuntu2 amd64<br>indicator-messages      0.6.0-0ubuntu2  amd64<br>ind=
icator-power 2.0-0ubuntu1    amd64<br>indicator-printers      0.1.6-0ubuntu=
1  amd64<br>
indicator-session       0.3.96-0ubuntu1 amd64<br>indicator-sound 0.8.5.0-0u=
buntu2.1      amd64<br>indicator-status-provider-mc5   0.6.0-0ubuntu2  amd6=
4<br>indicator-status-provider-pidgin        0.6.0-0ubuntu2  amd64<br>info =
   4.13a.dfsg.1-8ubuntu2   amd64<br>
info2man        1.1-6   all<br>initramfs-tools 0.99ubuntu13.4  all<br>initr=
amfs-tools-bin     0.99ubuntu13.4  amd64<br>initscripts     2.88dsf-13.10ub=
untu11.1 amd64<br>inputattach     1:1.4.2-1       amd64<br>insserv 1.14.0-2=
.1ubuntu2       amd64<br>
install-info    4.13a.dfsg.1-8ubuntu2   amd64<br>intel-gpu-tools 1.2-1   am=
d64<br>intltool        0.50.2-2        all<br>intltool-debian 0.35.0+200607=
10.1       all<br>iproute 20111117-1ubuntu2.1     amd64<br>ipscan  3.2.1-1 =
amd64<br>
iptables        1.4.12-1ubuntu5 amd64<br>iputils-arping  3:20101006-1ubuntu=
1     amd64<br>iputils-ping    3:20101006-1ubuntu1     amd64<br>iputils-tra=
cepath       3:20101006-1ubuntu1     amd64<br>irqbalance      0.56-1ubuntu4=
   amd64<br>
isc-dhcp-client 4.1.ESV-R4-0ubuntu5.9   amd64<br>isc-dhcp-common 4.1.ESV-R4=
-0ubuntu5.9   amd64<br>iso-codes       3.31-1  all<br>java-common     0.43u=
buntu2     all<br>jfsutils        1.1.15-2        amd64<br>jockey-common   =
0.9.7-0ubuntu7.14       all<br>
jockey-gtk      0.9.7-0ubuntu7.14       all<br>k3b     2.0.2-3ubuntu4  amd6=
4<br>k3b-data        2.0.2-3ubuntu4  all<br>k9copy  2.3.8-1 amd64<br>kaffei=
ne        1.2.2-1ubuntu3.12.04.1  amd64<br>kate-data       4:4.12.2-0ubuntu=
1~ubuntu12.04.4~ppa2    all<br>
katepart        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa2    amd64<br>kbd     1.=
15.2-3ubuntu4 amd64<br>kde-runtime     4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1=
    amd64<br>kde-runtime-data        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1  =
  all<br>
kdebase-runtime 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    all<br>kdelibs-bin =
    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>kdelibs5-data   4:4.12=
.2-0ubuntu1~ubuntu12.04.4~ppa1    all<br>kdelibs5-dev    4:4.12.2-0ubuntu1~=
ubuntu12.04.4~ppa1    amd64<br>
kdelibs5-plugins        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>kd=
emultimedia-kio-plugins       4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    all<b=
r>kdoctools       4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>kerneloo=
ps-daemon       0.12+git20090217-1ubuntu19      amd64<br>
keyboard-configuration  1.70ubuntu5     all<br>kio-audiocd     4:4.12.2-0ub=
untu1~ubuntu12.04.4~ppa1    amd64<br>klibc-utils     1.5.25-1ubuntu2 amd64<=
br>konsole 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>krb5-locales   =
 1.10+dfsg~beta1-2ubuntu0.3      all<br>
krb5-multidev   1.10+dfsg~beta1-2ubuntu0.3      amd64<br>ktorrent        4.=
1.3-1ubuntu1  amd64<br>ktorrent-data   4.1.3-1ubuntu1  all<br>kubuntu-debug=
-installer 11.10ubuntu1    amd64<br>kvm-ipxe        1.0.0+git-3.55f6c88-0ub=
untu1    all<br>
lacheck 1.26-14 amd64<br>lame    3.99.3+repack1-1        amd64<br>landscape=
-client-ui-install     13.07.3-0ubuntu0.12.04  amd64<br>language-pack-en   =
     1:12.04+20140106        all<br>language-pack-en-base   1:12.04+2014010=
6        all<br>
language-pack-gnome-en  1:12.04+20140106        all<br>language-pack-gnome-=
en-base     1:12.04+20140106        all<br>language-selector-common        =
0.79.4  all<br>language-selector-gnome 0.79.4  all<br>laptop-detect   0.13.=
7ubuntu2   amd64<br>
latex-beamer    3.10-1  all<br>latex-xcolor    2.11-1  all<br>launchpad-int=
egration   0.1.56.1        all<br>less    444-1ubuntu1    amd64<br>lha     =
1.14i-10.3      amd64<br>lib32gcc1       1:4.6.3-1ubuntu5        amd64<br>
lib32gomp1      4.6.3-1ubuntu5  amd64<br>lib32quadmath0  4.6.3-1ubuntu5  am=
d64<br>liba52-0.7.4    0.7.4-16build1  amd64<br>liba52-0.7.4-dev        0.7=
.4-16build1  amd64<br>libaa1  1.4p5-39ubuntu1 amd64<br>libaa1  1.4p5-39ubun=
tu1 i386<br>
libaacs0        0.3.0-4 amd64<br>libaccountsservice0     0.6.15-2ubuntu9.7 =
      amd64<br>libacl1 2.2.51-5ubuntu1 amd64<br>libacl1 2.2.51-5ubuntu1 i38=
6<br>libaio-dev      0.3.109-2ubuntu1        amd64<br>libaio1 0.3.109-2ubun=
tu1        amd64<br>
libaio1 0.3.109-2ubuntu1        i386<br>libalgorithm-diff-perl  1.19.02-2  =
     all<br>libalgorithm-diff-xs-perl       0.04-2build2    amd64<br>libalg=
orithm-merge-perl 0.08-2  all<br>libamd2.2.0     1:3.4.0-2ubuntu3        am=
d64<br>
libanyevent-perl        6.120-1 amd64<br>libao-common    1.1.0-1ubuntu2  al=
l<br>libao4  1.1.0-1ubuntu2  amd64<br>libao4  1.1.0-1ubuntu2  i386<br>libap=
parmor1    2.7.102-0ubuntu3.9      amd64<br>libappindicator1        0.4.92-=
0ubuntu1.1       amd64<br>
libappindicator3-1      0.4.92-0ubuntu1.1       amd64<br>libapr1 1.4.6-1 am=
d64<br>libapr1-dev     1.4.6-1 amd64<br>libaprutil1     1.3.12+dfsg-3   amd=
64<br>libaprutil1-dev 1.3.12+dfsg-3   amd64<br>libapt-inst1.4  0.8.16~exp12=
ubuntu10.16 amd64<br>
libapt-pkg-perl 0.1.25build2    amd64<br>libapt-pkg4.12  0.8.16~exp12ubuntu=
10.16 amd64<br>libarchive12    3.0.3-6ubuntu1  amd64<br>libart-2.0-2    2.3=
.21-1ubuntu0.1       amd64<br>libasn1-8-heimdal       1.6~git20120311.dfsg.=
1-2ubuntu0.1       amd64<br>
libasn1-8-heimdal       1.6~git20120311.dfsg.1-2ubuntu0.1       i386<br>lib=
asound2      1.0.25-1ubuntu10.2      amd64<br>libasound2      1.0.25-1ubunt=
u10.2      i386<br>libasound2-dev  1.0.25-1ubuntu10.2      amd64<br>libasou=
nd2-plugins      1.0.25-1ubuntu1 amd64<br>
libasound2-plugins      1.0.25-1ubuntu1 i386<br>libaspell15     0.60.7~2011=
0707-1       amd64<br>libass4 0.10.0-3        amd64<br>libasyncns0     0.8-=
4   amd64<br>libasyncns0     0.8-4   i386<br>libatasmart4    0.18-3  amd64<=
br>
libatk-adaptor  2.4.0-1ubuntu2  amd64<br>libatk-adaptor-schemas  2.4.0-1ubu=
ntu2  amd64<br>libatk1.0-0     2.4.0-0ubuntu1  amd64<br>libatk1.0-0     2.4=
.0-0ubuntu1  i386<br>libatk1.0-data  2.4.0-0ubuntu1  all<br>libatkmm-1.6-1 =
 2.22.6-1ubuntu1 amd64<br>
libatspi2.0-0   2.4.2-0ubuntu0.1        amd64<br>libattica0.3    0.3.0-0ubu=
ntu2  amd64<br>libattica0.4    0.4.2-0ubuntu1~ubuntu12.04~ppa1 amd64<br>lib=
attr1        1:2.4.46-5ubuntu1       amd64<br>libattr1        1:2.4.46-5ubu=
ntu1       i386<br>
libattr1-dev    1:2.4.46-5ubuntu1       amd64<br>libaudclient2   3.2.1-2 am=
d64<br>libaudio-flac-header-perl       2.4-1build2     amd64<br>libaudio-sc=
robbler-perl 0.01-2.1        all<br>libaudio-wav-perl       0.12-1  all<br>
libaudio2       1.9.3-4ubuntu0.1        amd64<br>libaudio2       1.9.3-4ubu=
ntu0.1        i386<br>libaudiofile1   0.3.3-2 amd64<br>libaudiofile1   0.3.=
3-2 i386<br>libaugeas0      0.10.0-0ubuntu4 amd64<br>libav-tools     4:0.8.=
10-0ubuntu0.12.04.1       amd64<br>
libavahi-client-dev     0.6.30-5ubuntu2.1       amd64<br>libavahi-client3  =
      0.6.30-5ubuntu2.1       amd64<br>libavahi-client3        0.6.30-5ubun=
tu2.1       i386<br>libavahi-common-data    0.6.30-5ubuntu2.1       amd64<b=
r>
libavahi-common-data    0.6.30-5ubuntu2.1       i386<br>libavahi-common-dev=
     0.6.30-5ubuntu2.1       amd64<br>libavahi-common3        0.6.30-5ubunt=
u2.1       amd64<br>libavahi-common3        0.6.30-5ubuntu2.1       i386<br=
>
libavahi-core7  0.6.30-5ubuntu2.1       amd64<br>libavahi-glib1  0.6.30-5ub=
untu2.1       amd64<br>libavahi-gobject0       0.6.30-5ubuntu2.1       amd6=
4<br>libavahi-ui-gtk3-0      0.6.30-5ubuntu2.1       amd64<br>libavc1394-0 =
   0.5.3-1ubuntu2  amd64<br>
libavc1394-0    0.5.3-1ubuntu2  i386<br>libavcodec-extra-53     4:0.8.10ubu=
ntu0.12.04.1 amd64<br>libavcodec53    4:0.8.9-0ubuntu0.12.04.1        amd64=
<br>libavdevice53   4:0.8.10-0ubuntu0.12.04.1       amd64<br>libavfilter2  =
  4:0.8.10-0ubuntu0.12.04.1       amd64<br>
libavformat-extra-53    4:0.8.10ubuntu0.12.04.1 amd64<br>libavformat53   4:=
0.8.9-0ubuntu0.12.04.1        amd64<br>libavutil-extra-51      4:0.8.10ubun=
tu0.12.04.1 amd64<br>libavutil51     4:0.8.9-0ubuntu0.12.04.1        amd64<=
br>
libbabl-0.0-0   0.0.22-1.1      amd64<br>libbabl-0.1-0   0.1.11-1precise0~p=
pa    amd64<br>libbamf0        0.2.126-0ubuntu1        amd64<br>libbamf3-0 =
     0.2.126-0ubuntu1        amd64<br>libbind9-80     1:9.8.1.dfsg.P1-4ubun=
tu0.8      amd64<br>
libbison-dev    1:2.5.dfsg-2.1  amd64<br>libblas3gf      1.2.20110419-2ubun=
tu1   amd64<br>libblkid1       2.20.1-1ubuntu3 amd64<br>libbluetooth3   4.9=
8-2ubuntu7   amd64<br>libbluray1      1:0.2.1+git20111208.63e308d-3   amd64=
<br>
libbonobo2-0    2.32.1-0ubuntu1.1       amd64<br>libbonobo2-common       2.=
32.1-0ubuntu1.1       all<br>libbonoboui2-0  2.24.5-0ubuntu1.1       amd64<=
br>libbonoboui2-common     2.24.5-0ubuntu1.1       all<br>libboost-all-dev =
       1.48.0.2        amd64<br>
libboost-date-time-dev  1.48.0.2        amd64<br>libboost-date-time1.46-dev=
      1.46.1-7ubuntu3 amd64<br>libboost-date-time1.46.1        1.46.1-7ubun=
tu3 amd64<br>libboost-dev    1.48.0.2        amd64<br>libboost-filesystem-d=
ev 1.48.0.2        amd64<br>
libboost-filesystem1.46-dev     1.46.1-7ubuntu3 amd64<br>libboost-filesyste=
m1.46.1       1.46.1-7ubuntu3 amd64<br>libboost-graph-dev      1.48.0.2    =
    amd64<br>libboost-graph-parallel-dev     1.48.0.2        amd64<br>libbo=
ost-graph-parallel1.46-dev 1.46.1-7ubuntu3 amd64<br>
libboost-graph-parallel1.46.1   1.46.1-7ubuntu3 amd64<br>libboost-graph1.46=
-dev  1.46.1-7ubuntu3 amd64<br>libboost-graph1.46.1    1.46.1-7ubuntu3 amd6=
4<br>libboost-iostreams-dev  1.48.0.2        amd64<br>libboost-iostreams1.4=
6-dev      1.46.1-7ubuntu3 amd64<br>
libboost-iostreams1.46.1        1.46.1-7ubuntu3 amd64<br>libboost-math-dev =
      1.48.0.2        amd64<br>libboost-math1.46-dev   1.46.1-7ubuntu3 amd6=
4<br>libboost-math1.46.1     1.46.1-7ubuntu3 amd64<br>libboost-mpi-dev     =
   1.48.0.2        amd64<br>
libboost-mpi-python-dev 1.48.0.2        amd64<br>libboost-mpi1.46-dev    1.=
46.1-7ubuntu3 amd64<br>libboost-mpi1.46.1      1.46.1-7ubuntu3 amd64<br>lib=
boost-program-options-dev    1.48.0.2        amd64<br>libboost-program-opti=
ons1.46-dev        1.46.1-7ubuntu3 amd64<br>
libboost-program-options1.46.1  1.46.1-7ubuntu3 amd64<br>libboost-python-de=
v     1.48.0.2        amd64<br>libboost-python1.46-dev 1.46.1-7ubuntu3 amd6=
4<br>libboost-python1.46.1   1.46.1-7ubuntu3 amd64<br>libboost-regex-dev   =
   1.48.0.2        amd64<br>
libboost-regex1.46-dev  1.46.1-7ubuntu3 amd64<br>libboost-regex1.46.1    1.=
46.1-7ubuntu3 amd64<br>libboost-serialization-dev      1.48.0.2        amd6=
4<br>libboost-serialization1.46-dev  1.46.1-7ubuntu3 amd64<br>libboost-seri=
alization1.46.1    1.46.1-7ubuntu3 amd64<br>
libboost-signals-dev    1.48.0.2        amd64<br>libboost-signals1.46-dev  =
      1.46.1-7ubuntu3 amd64<br>libboost-signals1.46.1  1.46.1-7ubuntu3 amd6=
4<br>libboost-system-dev     1.48.0.2        amd64<br>libboost-system1.46-d=
ev 1.46.1-7ubuntu3 amd64<br>
libboost-system1.46.1   1.46.1-7ubuntu3 amd64<br>libboost-test-dev       1.=
48.0.2        amd64<br>libboost-test1.46-dev   1.46.1-7ubuntu3 amd64<br>lib=
boost-test1.46.1     1.46.1-7ubuntu3 amd64<br>libboost-thread-dev     1.48.=
0.2        amd64<br>
libboost-thread1.46-dev 1.46.1-7ubuntu3 amd64<br>libboost-thread1.46.1   1.=
46.1-7ubuntu3 amd64<br>libboost-wave-dev       1.48.0.2        amd64<br>lib=
boost-wave1.46-dev   1.46.1-7ubuntu3 amd64<br>libboost-wave1.46.1     1.46.=
1-7ubuntu3 amd64<br>
libboost1.46-dev        1.46.1-7ubuntu3 amd64<br>libbrasero-media3-1     3.=
4.1-0ubuntu1.1        amd64<br>libbrlapi-dev   4.3-1ubuntu5    amd64<br>lib=
brlapi0.5    4.3-1ubuntu5    amd64<br>libbsd0 0.3.0-2 amd64<br>libburn4    =
    1.1.8-1 amd64<br>
libbz2-1.0      1.0.6-1 amd64<br>libbz2-1.0      1.0.6-1 i386<br>libbz2-dev=
      1.0.6-1 amd64<br>libc-ares2      1.7.5-1 amd64<br>libc-bin        2.1=
5-0ubuntu10.5        amd64<br>libc-dev-bin    2.15-0ubuntu10.5        amd64=
<br>
libc6   2.15-0ubuntu10.5        amd64<br>libc6   2.15-0ubuntu10.5        i3=
86<br>libc6-armel-cross       2.15-0ubuntu9cross1.82  all<br>libc6-armhf-ar=
mel-cross 2.15-0ubuntu9cross1.82  all<br>libc6-armhf-cross       2.15-0ubun=
tu9cross1.82  all<br>
libc6-dbg-armel-cross   2.15-0ubuntu9cross1.82  all<br>libc6-dev       2.15=
-0ubuntu10.5        amd64<br>libc6-dev-armel-cross   2.15-0ubuntu9cross1.82=
  all<br>libc6-dev-armhf-armel-cross     2.15-0ubuntu9cross1.82  all<br>
libc6-dev-armhf-cross   2.15-0ubuntu9cross1.82  all<br>libc6-dev-i386  2.15=
-0ubuntu10.5        amd64<br>libc6-i386      2.15-0ubuntu10.5        amd64<=
br>libcaca-dev     0.99.beta17-2.1ubuntu2  amd64<br>libcaca0        0.99.be=
ta17-2.1ubuntu2  amd64<br>
libcaca0        0.99.beta17-2.1ubuntu2  i386<br>libcairo-gobject2       1.1=
0.2-6.1ubuntu3       amd64<br>libcairo-gobject2       1.10.2-6.1ubuntu3    =
   i386<br>libcairo-perl   1.081-1build2   amd64<br>libcairo2       1.10.2-=
6.1ubuntu3       amd64<br>
libcairo2       1.10.2-6.1ubuntu3       i386<br>libcairomm-1.0-1        1.1=
0.0-1ubuntu1 amd64<br>libcamel-1.2-29 3.2.3-0ubuntu7.1        amd64<br>libc=
anberra-gtk-module  0.28-3ubuntu3   amd64<br>libcanberra-gtk-module  0.28-3=
ubuntu3   i386<br>
libcanberra-gtk0        0.28-3ubuntu3   amd64<br>libcanberra-gtk0        0.=
28-3ubuntu3   i386<br>libcanberra-gtk3-0      0.28-3ubuntu3   amd64<br>libc=
anberra-gtk3-module 0.28-3ubuntu3   amd64<br>libcanberra-pulse       0.28-3=
ubuntu3   amd64<br>
libcanberra0    0.28-3ubuntu3   amd64<br>libcanberra0    0.28-3ubuntu3   i3=
86<br>libcap-dev      1:2.22-1ubuntu3 amd64<br>libcap-ng0      0.6.6-1ubunt=
u1  amd64<br>libcap2 1:2.22-1ubuntu3 amd64<br>libcap2 1:2.22-1ubuntu3 i386<=
br>
libcap2-bin     1:2.22-1ubuntu3 amd64<br>libcapi20-3     1:3.12.20071127-0u=
buntu11       amd64<br>libcapi20-3     1:3.12.20071127-0ubuntu11       i386=
<br>libcaribou-common       0.4.2-1ubuntu1  all<br>libcaribou0     0.4.2-1u=
buntu1  amd64<br>
libcdaudio1     0.99.12p2-10build1      amd64<br>libcddb-get-perl        2.=
27-1  all<br>libcddb2        1.3.2-3fakesync1        amd64<br>libcdio-cdda1=
   0.83-1  amd64<br>libcdio-paranoia1       0.83-1  amd64<br>libcdio13     =
  0.83-1  amd64<br>
libcdparanoia0  3.10.2+debian-10ubuntu1 amd64<br>libcdparanoia0  3.10.2+deb=
ian-10ubuntu1 i386<br>libcdt4 2.26.3-10ubuntu1.1      amd64<br>libcelt0-0  =
    0.7.1-1 amd64<br>libchm1 2:0.40a-1       amd64<br>libck-connector0     =
   0.4.5-2ubuntu0.1        amd64<br>
libclass-accessor-perl  0.34-1  all<br>libclass-isa-perl       0.36-3  all<=
br>libclone-perl   0.31-1build3    amd64<br>libcloog-ppl0   0.15.11-4      =
 amd64<br>libclucene0ldbl 0.9.21b-2       amd64<br>libclutter-1.0-0        =
1.10.6-1~precise1       amd64<br>
libclutter-1.0-common   1.10.6-1~precise1       all<br>libcmis-0.2-0   0.1.=
0-1 amd64<br>libcogl-common  1.10.0-0ubuntu2 all<br>libcogl-pango0  1.10.0-=
0ubuntu2 amd64<br>libcogl9        1.10.0-0ubuntu2 amd64<br>libcolord1      =
0.1.16-2ubuntu0.1       amd64<br>
libcomerr2      1.42-1ubuntu2   amd64<br>libcomerr2      1.42-1ubuntu2   i3=
86<br>libcommon-sense-perl    3.4-1   all<br>libcompizconfig0        0.9.7.=
0~bzr428-0ubuntu6 amd64<br>libconfig-inifiles-perl 2.68-1ubuntu0.12.04.1   =
all<br>
libconfig-simple-perl   4.59-5  all<br>libconfig8      1.3.2-2ubuntu2  amd6=
4<br>libcroco3       0.6.5-1ubuntu0.1        amd64<br>libcroco3       0.6.5=
-1ubuntu0.1        i386<br>libcrypt-passwdmd5-perl 1.3-10  all<br>libcrypts=
etup4  2:1.4.1-2ubuntu4        amd64<br>
libcrystalhd3   1:0.0~git20110715.fdd2f19-4.1   amd64<br>libcups2        1.=
5.3-0ubuntu8  amd64<br>libcups2        1.5.3-0ubuntu8  i386<br>libcupscgi1 =
    1.5.3-0ubuntu8  amd64<br>libcupsdriver1  1.5.3-0ubuntu8  amd64<br>libcu=
psfilters1 1.0.18-0ubuntu0.1       amd64<br>
libcupsimage2   1.5.3-0ubuntu8  amd64<br>libcupsimage2   1.5.3-0ubuntu8  i3=
86<br>libcupsmime1    1.5.3-0ubuntu8  amd64<br>libcupsppdc1    1.5.3-0ubunt=
u8  amd64<br>libcurl3        7.22.0-3ubuntu4.7       amd64<br>libcurl3     =
   7.22.0-3ubuntu4.7       i386<br>
libcurl3-gnutls 7.22.0-3ubuntu4.7       amd64<br>libcurl3-nss    7.22.0-3ub=
untu4.7       amd64<br>libcwidget3     0.5.16-3.1ubuntu1       amd64<br>lib=
daemon0      0.14-2  amd64<br>libdatrie1      0.2.5-3 amd64<br>libdatrie1  =
    0.2.5-3 i386<br>
libdb4.8        4.8.30-11ubuntu1        amd64<br>libdb5.1        5.1.25-11b=
uild1 amd64<br>libdb5.1        5.1.25-11build1 i386<br>libdbus-1-3     1.4.=
18-1ubuntu1.4       amd64<br>libdbus-1-3     1.4.18-1ubuntu1.4       i386<b=
r>
libdbus-1-dev   1.4.18-1ubuntu1.4       amd64<br>libdbus-glib-1-2        0.=
98-1ubuntu1.1 amd64<br>libdbus-glib-1-2        0.98-1ubuntu1.1 i386<br>libd=
busmenu-glib4       0.6.2-0ubuntu0.2        amd64<br>libdbusmenu-gtk3-4    =
  0.6.2-0ubuntu0.2        amd64<br>
libdbusmenu-gtk4        0.6.2-0ubuntu0.2        amd64<br>libdbusmenu-qt2 0.=
9.2-0ubuntu1  amd64<br>libdc1394-22    2.2.0-2 amd64<br>libdca0 0.0.5-5 amd=
64<br>libdconf-dbus-1-0       0.12.0-0ubuntu1.1       amd64<br>libdconf-qt0=
    0.0.0.110722-0ubuntu4   amd64<br>
libdconf0       0.12.0-0ubuntu1.1       amd64<br>libdecoration0  1:0.9.7.12=
-0ubuntu3     amd64<br>libdee-1.0-4    1.0.10-0ubuntu1.1       amd64<br>lib=
devmapper-event1.02.1        2:1.02.48-4ubuntu7.4    amd64<br>libdevmapper1=
.02.1      2:1.02.48-4ubuntu7.4    amd64<br>
libdigest-hmac-perl     1.03+dfsg-1     all<br>libdirac-decoder0       1.0.=
2-4build1   amd64<br>libdirac-encoder0       1.0.2-4build1   amd64<br>libdi=
rectfb-1.2-9       1.2.10.0-4.3ubuntu1     amd64<br>libdiscid0      0.2.2-3=
 amd64<br>
libdjvulibre-text       3.5.24-9ubuntu0.1       amd64<br>libdjvulibre21  3.=
5.24-9ubuntu0.1       amd64<br>libdlrestrictions1      0.15.7ubuntu2~ubuntu=
12.04.1~ppa1        amd64<br>libdmapsharing-3.0-2    2.9.14-1        amd64<=
br>
libdns81        1:9.8.1.dfsg.P1-4ubuntu0.8      amd64<br>libdotconf1.0   1.=
0.13-3        amd64<br>libdpkg-perl    1.16.1.2ubuntu7.2       all<br>libdr=
m-dev      2.4.46-1ubuntu0.0.0.1   amd64<br>libdrm-intel1   2.4.46-1ubuntu0=
.0.0.1   amd64<br>
libdrm-intel1   2.4.46-1ubuntu0.0.0.1   i386<br>libdrm-nouveau1a        2.4=
.46-1ubuntu0.0.0.1   amd64<br>libdrm-nouveau2 2.4.46-1ubuntu0.0.0.1   amd64=
<br>libdrm-nouveau2 2.4.46-1ubuntu0.0.0.1   i386<br>libdrm-radeon1  2.4.46-=
1ubuntu0.0.0.1   amd64<br>
libdrm-radeon1  2.4.46-1ubuntu0.0.0.1   i386<br>libdrm2 2.4.46-1ubuntu0.0.0=
.1   amd64<br>libdrm2 2.4.46-1ubuntu0.0.0.1   i386<br>libdv4  1.0.0-3ubuntu=
1  amd64<br>libdv4  1.0.0-3ubuntu1  i386<br>libdvbpsi7      0.2.2-1 amd64<b=
r>
libdvdcss2      1.2.13-0        amd64<br>libdvdnav4      4.2.0-1 amd64<br>l=
ibdvdread4     4.2.0-1ubuntu4  amd64<br>libebackend-1.2-1       3.2.3-0ubun=
tu7.1        amd64<br>libebml3        1.2.2-2 amd64<br>libebook-1.2-12 3.2.=
3-0ubuntu7.1        amd64<br>
libecal-1.2-10  3.2.3-0ubuntu7.1        amd64<br>libedata-book-1.2-11    3.=
2.3-0ubuntu7.1        amd64<br>libedata-cal-1.2-13     3.2.3-0ubuntu7.1    =
    amd64<br>libedataserver-1.2-15   3.2.3-0ubuntu7.1        amd64<br>libed=
ataserverui-3.0-1  3.2.3-0ubuntu7.1        amd64<br>
libedit2        2.11-20080614-3ubuntu2  amd64<br>libegl1-mesa-drivers-lts-s=
aucy  9.2.1-1ubuntu3~precise1 amd64<br>libegl1-mesa-lts-saucy  9.2.1-1ubunt=
u3~precise1 amd64<br>libelf1 0.152-1ubuntu3  amd64<br>libelf1 0.152-1ubuntu=
3  i386<br>
libelfg0        0.8.13-3        amd64<br>libemail-valid-perl     0.185-1 al=
l<br>libenca0        1.13-4  amd64<br>libenchant1c2a  1.6.0-7 amd64<br>libe=
ncode-locale-perl   1.02-2  all<br>libept1.4.12    1.0.6~exp1ubuntu1       =
amd64<br>
libepub0        0.2.1-2build1   amd64<br>liberror-perl   0.17-1  all<br>lib=
esd0 0.2.41-10build3 amd64<br>libesd0 0.2.41-10build3 i386<br>libespeak1   =
   1.46.02-0ubuntu1        amd64<br>libevent-2.0-5  2.0.16-stable-1 amd64<b=
r>
libevent-execflow-perl  0.64-0ubuntu2   all<br>libevent-perl   1.15-1build1=
    amd64<br>libevent-rpc-perl       1.01-2  all<br>libevince3-3    3.4.0-0=
ubuntu1.7        amd64<br>libexempi3      2.2.0-1 amd64<br>libexif12       =
0.6.20-2ubuntu0.1       amd64<br>
libexif12       0.6.20-2ubuntu0.1       i386<br>libexiv2-11     0.22-2  amd=
64<br>libexpat1       2.0.1-7.2ubuntu1.1      amd64<br>libexpat1       2.0.=
1-7.2ubuntu1.1      i386<br>libexpat1-dev   2.0.1-7.2ubuntu1.1      amd64<b=
r>
libexporter-lite-perl   0.02-2  all<br>libexttextcat-data      3.2.0-1ubunt=
u1  all<br>libexttextcat0  3.2.0-1ubuntu1  amd64<br>libfaac0        1.28-0u=
buntu2   amd64<br>libfaad2        2.7-7   amd64<br>libfarstream-0.1-0      =
0.1.2-0ubuntu1  amd64<br>
libfdt-dev      1.4.0-0.1linaro1        amd64<br>libfdt1 1.4.0-0.1linaro1  =
      amd64<br>libffi6 3.0.11~rc1-5    amd64<br>libffi6 3.0.11~rc1-5    i38=
6<br>libfftw3-3      3.3-1ubuntu1    amd64<br>libfile-basedir-perl    0.03-=
1fakesync1 all<br>
libfile-copy-recursive-perl     0.38-1  all<br>libfile-desktopentry-perl   =
    0.04-3  all<br>libfile-listing-perl    6.03-1  all<br>libfile-mimeinfo-=
perl   0.15-2  all<br>libfile-mmagic-perl     1.27-1  all<br>libfile-type-p=
erl       0.22-1.1        all<br>
libfl-dev       2.5.35-10ubuntu3        amd64<br>libflac++6      1.2.1-6 am=
d64<br>libflac8        1.2.1-6 amd64<br>libflac8        1.2.1-6 i386<br>lib=
flite1       1.4-release-4   amd64<br>libfltk1.1      1.1.10-10       amd64=
<br>
libfolks-eds25  0.6.8-2 amd64<br>libfolks-telepathy25    0.6.8-2 amd64<br>l=
ibfolks25      0.6.8-2 amd64<br>libfont-afm-perl        1.20-1  all<br>libf=
ont-ttf-perl        0.48-1  all<br>libfontconfig1  2.8.0-3ubuntu9.1        =
amd64<br>
libfontconfig1  2.8.0-3ubuntu9.1        i386<br>libfontenc1     1:1.1.0-1  =
     amd64<br>libframe6       2.2.4-0ubuntu0.12.04.1  amd64<br>libfreerdp-p=
lugins-standard     1.0.2-1ubuntu1~ubuntu12.04.1~ppa1       amd64<br>libfre=
erdp1     1.0.2-1ubuntu1~ubuntu12.04.1~ppa1       amd64<br>
libfreetype6    2.4.8-1ubuntu2.1        amd64<br>libfreetype6    2.4.8-1ubu=
ntu2.1        i386<br>libfribidi0     0.19.2-1        amd64<br>libfs6  2:1.=
0.3-1ubuntu0.1      amd64<br>libfuse2        2.8.6-2ubuntu2  amd64<br>libga=
il-3-0     3.4.2-0ubuntu0.6        amd64<br>
libgail-common  2.24.10-0ubuntu6        amd64<br>libgail-common  2.24.10-0u=
buntu6        i386<br>libgail18       2.24.10-0ubuntu6        amd64<br>libg=
ail18       2.24.10-0ubuntu6        i386<br>libgavl1        1.2.0-4 amd64<b=
r>
libgbm1-lts-saucy       9.2.1-1ubuntu3~precise1 amd64<br>libgcc1 1:4.6.3-1u=
buntu5        amd64<br>libgcc1 1:4.6.3-1ubuntu5        i386<br>libgcc1-arme=
l-cross     1:4.6.3-1ubuntu5cross1.82       all<br>libgcc1-armhf-cross     =
1:4.6.3-1ubuntu5cross1.82       all<br>
libgcc1-dbg-armel-cross 1:4.6.3-1ubuntu5cross1.82       all<br>libgck-1-0  =
    3.2.2-2ubuntu4.1        amd64<br>libgconf-2-4    3.2.5-0ubuntu2  amd64<=
br>libgconf-2-4    3.2.5-0ubuntu2  i386<br>libgconf2-4     3.2.5-0ubuntu2  =
amd64<br>
libgcr-3-1      3.2.2-2ubuntu4.1        amd64<br>libgcr-3-common 3.2.2-2ubu=
ntu4.1        all<br>libgcrypt11     1.5.0-3ubuntu0.2        amd64<br>libgc=
rypt11     1.5.0-3ubuntu0.2        i386<br>libgd2-xpm      2.0.36~rc1~dfsg-=
6ubuntu2        amd64<br>
libgd2-xpm      2.0.36~rc1~dfsg-6ubuntu2        i386<br>libgdata-common 0.1=
2.0-1        all<br>libgdata13      0.12.0-1        amd64<br>libgdbm3      =
  1.8.3-10        amd64<br>libgdbm3        1.8.3-10        i386<br>libgdk-p=
ixbuf2.0-0      2.26.1-1        amd64<br>
libgdk-pixbuf2.0-0      2.26.1-1        i386<br>libgdk-pixbuf2.0-common 2.2=
6.1-1        all<br>libgdu-gtk0     3.0.2-2ubuntu7  amd64<br>libgdu0 3.0.2-=
2ubuntu7  amd64<br>libgee2 0.6.4-1 amd64<br>libgegl-0.0-0   0.0.22-2ubuntu3=
 amd64<br>
libgegl-0.2-0   0.2.1-1precise0~ppa     amd64<br>libgeis1        2.2.9.2-0u=
buntu1        amd64<br>libgeoclue0     0.12.0-1ubuntu12        amd64<br>lib=
geoip1       1.4.8+dfsg-2    amd64<br>libgetopt-argvfile-perl 1.11-1  all<b=
r>
libgettextpo0   0.18.1.1-5ubuntu3       amd64<br>libgettextpo0   0.18.1.1-5=
ubuntu3       i386<br>libgexiv2-1     0.4.1-1build1   amd64<br>libgfortran3=
    4.6.3-1ubuntu5  amd64<br>libgif4 4.1.6-9ubuntu1  amd64<br>libgif4 4.1.6=
-9ubuntu1  i386<br>
libgimp2.0      2.8.10-0precise3~ppa    amd64<br>libgirepository-1.0-1   1.=
32.0-1        amd64<br>libgjs0c        1.32.0-1ubuntu1 amd64<br>libgksu2-0 =
     2.0.13~pre1-5ubuntu2    amd64<br>libgl1-mesa-dev 8.0.4-0ubuntu0.7     =
   amd64<br>
libgl1-mesa-dri-lts-saucy       9.2.1-1ubuntu3~precise1 amd64<br>libgl1-mes=
a-dri-lts-saucy       9.2.1-1ubuntu3~precise1 i386<br>libgl1-mesa-glx-lts-s=
aucy       9.2.1-1ubuntu3~precise1 amd64<br>libgl1-mesa-glx-lts-saucy      =
 9.2.1-1ubuntu3~precise1 i386<br>
libglade2-0     1:2.6.4-1ubuntu1.1      amd64<br>libglamor-ltss0 0.5.1-0ubu=
ntu4.2~precise2       amd64<br>libglapi-mesa-lts-saucy 9.2.1-1ubuntu3~preci=
se1 amd64<br>libglapi-mesa-lts-saucy 9.2.1-1ubuntu3~precise1 i386<br>libgle=
w1.6      1.6.0-4 amd64<br>
libglewmx1.6    1.6.0-4 amd64<br>libglib-perl    2:1.241-1       amd64<br>l=
ibglib2.0-0    2.32.4-0ubuntu1 amd64<br>libglib2.0-0    2.32.4-0ubuntu1 i38=
6<br>libglib2.0-bin  2.32.4-0ubuntu1 amd64<br>libglib2.0-data 2.32.4-0ubunt=
u1 all<br>
libglib2.0-dev  2.32.4-0ubuntu1 amd64<br>libglibmm-2.4-1c2a      2.32.0-0ub=
untu1 amd64<br>libglu1-mesa    8.0.4-0ubuntu0.7        amd64<br>libglu1-mes=
a    8.0.4-0ubuntu0.7        i386<br>libglu1-mesa-dev        8.0.4-0ubuntu0=
.7        amd64<br>
libgme0 0.5.5-2 amd64<br>libgmime-2.6-0  2.6.7-1 amd64<br>libgmp-dev      2=
:5.0.2+dfsg-2ubuntu1   amd64<br>libgmp10        2:5.0.2+dfsg-2ubuntu1   amd=
64<br>libgmp3-dev     2:5.0.2+dfsg-2ubuntu1   amd64<br>libgmpxx4ldbl   2:5.=
0.2+dfsg-2ubuntu1   amd64<br>
libgnome-bluetooth8     3.2.2-0ubuntu5.1        amd64<br>libgnome-control-c=
enter1        1:3.4.2-0ubuntu0.13.1   amd64<br>libgnome-desktop-3-2    3.4.=
2-0ubuntu0.2        amd64<br>libgnome-keyring-common 3.2.2-2 all<br>libgnom=
e-keyring0       3.2.2-2 amd64<br>
libgnome-keyring0       3.2.2-2 i386<br>libgnome-media-profiles-3.0-0   3.0=
.0-1 amd64<br>libgnome-menu-3-0       3.4.0-0ubuntu1  amd64<br>libgnome-men=
u2  3.0.1-0ubuntu7  amd64<br>libgnome2-0     2.32.1-2ubuntu1.1       amd64<=
br>
libgnome2-bin   2.32.1-2ubuntu1.1       amd64<br>libgnome2-common        2.=
32.1-2ubuntu1.1       all<br>libgnomecanvas2-0       2.30.3-1ubuntu1.1     =
  amd64<br>libgnomecanvas2-common  2.30.3-1ubuntu1.1       all<br>libgnomek=
bd-common      3.4.0.2-1ubuntu0.1      all<br>
libgnomekbd7    3.4.0.2-1ubuntu0.1      amd64<br>libgnomescan0   0.6.2-1.1u=
buntu1        amd64<br>libgnomeui-0    2.24.5-2ubuntu2 amd64<br>libgnomeui-=
common       2.24.5-2ubuntu2 all<br>libgnomevfs2-0  1:2.24.4-1ubuntu2.1    =
 amd64<br>
libgnomevfs2-common     1:2.24.4-1ubuntu2.1     amd64<br>libgnutls26     2.=
12.14-5ubuntu3.6      amd64<br>libgnutls26     2.12.14-5ubuntu3.6      i386=
<br>libgoa-1.0-0    3.4.0-0ubuntu1.1        amd64<br>libgoa-1.0-common     =
  3.4.0-0ubuntu1.1        all<br>
libgomp1        4.6.3-1ubuntu5  amd64<br>libgomp1        4.6.3-1ubuntu5  i3=
86<br>libgomp1-armel-cross    4.6.3-1ubuntu5cross1.62 all<br>libgomp1-dbg-a=
rmel-cross        4.6.3-1ubuntu5cross1.62 all<br>libgoocanvas-common     0.=
15-1  all<br>
libgoocanvas3   0.15-1  amd64<br>libgpac1        0.4.5+svn3462~dfsg0-1   am=
d64<br>libgpg-error0   1.10-2ubuntu1   amd64<br>libgpg-error0   1.10-2ubunt=
u1   i386<br>libgpgme++2     4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<=
br>
libgpgme11      1.2.0-1.4ubuntu2        amd64<br>libgphoto2-2    2.4.13-1ub=
untu1.2       amd64<br>libgphoto2-2    2.4.13-1ubuntu1.2       i386<br>libg=
photo2-l10n 2.4.13-1ubuntu1.2       all<br>libgphoto2-port0        2.4.13-1=
ubuntu1.2       amd64<br>
libgphoto2-port0        2.4.13-1ubuntu1.2       i386<br>libgpm2 1.20.4-4   =
     amd64<br>libgpm2 1.20.4-4        i386<br>libgpod-common  0.8.2-4 amd64=
<br>libgpod4        0.8.2-4 amd64<br>libgrail5       3.0.6-0ubuntu0.12.04.0=
1 amd64<br>
libgraph4       2.26.3-10ubuntu1.1      amd64<br>libgraphicsmagick3      1.=
3.12-1.1build1        amd64<br>libgrip0        0.3.5-0ubuntu1~12.04.1  amd6=
4<br>libgs9  9.05~dfsg-0ubuntu4.2    amd64<br>libgs9-common   9.05~dfsg-0ub=
untu4.2    all<br>
libgsm1 1.0.13-3        amd64<br>libgssapi-krb5-2        1.10+dfsg~beta1-2u=
buntu0.3      amd64<br>libgssapi-krb5-2        1.10+dfsg~beta1-2ubuntu0.3  =
    i386<br>libgssapi3-heimdal      1.6~git20120311.dfsg.1-2ubuntu0.1      =
 amd64<br>
libgssapi3-heimdal      1.6~git20120311.dfsg.1-2ubuntu0.1       i386<br>lib=
gssdp-1.0-3  0.12.1-2        amd64<br>libgssrpc4      1.10+dfsg~beta1-2ubun=
tu0.3      amd64<br>libgstreamer-plugins-bad0.10-0  0.10.22.3-2ubuntu2.2   =
 amd64<br>
libgstreamer-plugins-base0.10-0 0.10.36-1ubuntu0.1      amd64<br>libgstream=
er-plugins-base0.10-0 0.10.36-1ubuntu0.1      i386<br>libgstreamer0.10-0   =
   0.10.36-1ubuntu1        amd64<br>libgstreamer0.10-0      0.10.36-1ubuntu=
1        i386<br>
libgtest-dev    1.6.0-1ubuntu4  amd64<br>libgtk-3-0      3.4.2-0ubuntu0.6  =
      amd64<br>libgtk-3-bin    3.4.2-0ubuntu0.6        amd64<br>libgtk-3-co=
mmon 3.4.2-0ubuntu0.6        all<br>libgtk-vnc-2.0-0        0.5.0-1ubuntu1 =
 amd64<br>
libgtk2-ex-formfactory-perl     0.66-0ubuntu2   all<br>libgtk2-perl    2:1.=
223-1build3 amd64<br>libgtk2.0-0     2.24.10-0ubuntu6        amd64<br>libgt=
k2.0-0     2.24.10-0ubuntu6        i386<br>libgtk2.0-bin   2.24.10-0ubuntu6=
        amd64<br>
libgtk2.0-common        2.24.10-0ubuntu6        all<br>libgtkglext1    1.2.=
0-2fakesync1        amd64<br>libgtkimageview0        1.6.4-1 amd64<br>libgt=
kmm-2.4-1c2a       1:2.24.2-1ubuntu1       amd64<br>libgtkmm-3.0-1  3.4.0-0=
ubuntu1  amd64<br>
libgtksourceview-3.0-0  3.4.2-0ubuntu1  amd64<br>libgtksourceview-3.0-commo=
n     3.4.2-0ubuntu1  all<br>libgtkspell-3-0 3.0.0~hg20110814-1      amd64<=
br>libgtkspell0    2.0.16-1ubuntu5 amd64<br>libgtop2-7      2.28.4-2       =
 amd64<br>
libgtop2-common 2.28.4-2        all<br>libgucharmap-2-90-7     1:3.4.1.1-0u=
buntu1      amd64<br>libgudev-1.0-0  1:175-0ubuntu9.4        amd64<br>libgu=
dev-1.0-0  1:175-0ubuntu9.4        i386<br>libguestfs0     1:1.14.8-1      =
amd64<br>
libgupnp-1.0-4  0.18.1-2        amd64<br>libgupnp-igd-1.0-4      0.2.1-2 am=
d64<br>libgutenprint2  5.2.8~pre1-0ubuntu2.1   amd64<br>libgutenprintui2-1 =
     5.2.8~pre1-0ubuntu2.1   amd64<br>libgvc5 2.26.3-10ubuntu1.1      amd64=
<br>
libgvnc-1.0-0   0.5.0-1ubuntu1  amd64<br>libgweather-3-0 3.4.1-0ubuntu1  am=
d64<br>libgweather-common      3.4.1-0ubuntu1  all<br>libgwibber-gtk2 3.4.2=
-0ubuntu2.3        amd64<br>libgwibber2     3.4.2-0ubuntu2.3        amd64<b=
r>
libhal-storage1 0.5.14-8        amd64<br>libhal1 0.5.14-8        amd64<br>l=
ibhcrypto4-heimdal     1.6~git20120311.dfsg.1-2ubuntu0.1       amd64<br>lib=
hcrypto4-heimdal     1.6~git20120311.dfsg.1-2ubuntu0.1       i386<br>libhei=
mbase1-heimdal    1.6~git20120311.dfsg.1-2ubuntu0.1       amd64<br>
libheimbase1-heimdal    1.6~git20120311.dfsg.1-2ubuntu0.1       i386<br>lib=
heimntlm0-heimdal    1.6~git20120311.dfsg.1-2ubuntu0.1       amd64<br>libhe=
imntlm0-heimdal    1.6~git20120311.dfsg.1-2ubuntu0.1       i386<br>libhfgcc=
1-armel-cross   1:4.6.3-1ubuntu5cross1.62       all<br>
libhfgomp1-armel-cross  4.6.3-1ubuntu5cross1.62 all<br>libhivex0       1.3.=
3-1 amd64<br>libhpmud0       3.12.2-1ubuntu3.4       amd64<br>libhtml-form-=
perl       6.00-1  all<br>libhtml-format-perl     2.10-1  all<br>libhtml-pa=
rser-perl     3.69-1build1    amd64<br>
libhtml-tagset-perl     3.20-2  all<br>libhtml-tree-perl       4.2-1   all<=
br>libhttp-cookies-perl    6.00-2  all<br>libhttp-daemon-perl     6.00-1  a=
ll<br>libhttp-date-perl       6.00-1  all<br>libhttp-message-perl    6.01-1=
  all<br>
libhttp-negotiate-perl  6.00-2  all<br>libhunspell-1.3-0       1.3.2-4 amd6=
4<br>libhx509-5-heimdal      1.6~git20120311.dfsg.1-2ubuntu0.1       amd64<=
br>libhx509-5-heimdal      1.6~git20120311.dfsg.1-2ubuntu0.1       i386<br>
libhyphen0      2.8.3-1 amd64<br>libibus-1.0-0   1.4.2-0ubuntu1~ubuntu12.04=
.1~ppa1       amd64<br>libibus-1.0-0   1.4.2-0ubuntu1~ubuntu12.04.1~ppa1   =
    i386<br>libibverbs-dev  1.1.5-1ubuntu1  amd64<br>libibverbs1     1.1.5-=
1ubuntu1  amd64<br>
libical0        0.48-1ubuntu3   amd64<br>libical1        1.0-0ubuntu1~ubunt=
u12.04.1~ppa1 amd64<br>libice-dev      2:1.0.7-2build1 amd64<br>libice6 2:1=
.0.7-2build1 amd64<br>libice6 2:1.0.7-2build1 i386<br>libicu-dev      4.8.1=
.1-3ubuntu0.1      amd64<br>
libicu48        4.8.1.1-3ubuntu0.1      amd64<br>libid3-3.8.3c2a 3.8.3-14  =
      amd64<br>libid3tag0      0.15.1b-10build2        amd64<br>libidl-comm=
on   0.8.14-0.2ubuntu2       all<br>libidl0 0.8.14-0.2ubuntu2       amd64<b=
r>
libidn11        1.23-2  amd64<br>libidn11        1.23-2  i386<br>libido3-0.=
1-0   0.3.4-0ubuntu1  amd64<br>libiec61883-0   1.2.0-0.1ubuntu1        amd6=
4<br>libiec61883-0   1.2.0-0.1ubuntu1        i386<br>libieee1284-3   0.2.11=
-10build1 amd64<br>
libieee1284-3   0.2.11-10build1 i386<br>libijs-0.35     0.35-8  amd64<br>li=
bilmbase6     1.0.1-3build2   amd64<br>libimage-size-perl      3.230-1 all<=
br>libimobiledevice2       1.1.1-4 amd64<br>libindicate-gtk3        0.6.92-=
0ubuntu1 amd64<br>
libindicate5    0.6.92-0ubuntu1 amd64<br>libindicator-messages-status-provi=
der1  0.6.0-0ubuntu2  amd64<br>libindicator3-7 0.5.0-0ubuntu1  amd64<br>lib=
indicator7   0.5.0-0ubuntu1  amd64<br>libinline-files-perl    0.68-1  all<b=
r>
libinline-perl  0.49-1  all<br>libintl-perl    1.20-1build2    all<br>libio=
-pty-perl  1:1.08-1build2  amd64<br>libio-socket-inet6-perl 2.69-2  all<br>=
libio-socket-ssl-perl   1.53-1  all<br>libio-string-perl       1.08-2  all<=
br>
libio-stringy-perl      2.110-5 all<br>libipc-run-perl 0.90-1  all<br>libis=
c83        1:9.8.1.dfsg.P1-4ubuntu0.8      amd64<br>libisccc80      1:9.8.1=
.dfsg.P1-4ubuntu0.8      amd64<br>libisccfg82     1:9.8.1.dfsg.P1-4ubuntu0.=
8      amd64<br>
libiso9660-8    0.83-1  amd64<br>libisofs6       1.1.6-1ubuntu1  amd64<br>l=
ibiw30 30~pre9-5ubuntu2        amd64<br>libjack-jackd2-0        1.9.8~dfsg.=
1-1ubuntu2   amd64<br>libjack-jackd2-0        1.9.8~dfsg.1-1ubuntu2   i386<=
br>
libjasper1      1.900.1-13      amd64<br>libjasper1      1.900.1-13      i3=
86<br>libjavascriptcoregtk-1.0-0      1.8.3-0ubuntu0.12.04.1  amd64<br>libj=
avascriptcoregtk-3.0-0      1.8.3-0ubuntu0.12.04.1  amd64<br>libjbig2dec0  =
  0.11-1ubuntu1   amd64<br>
libjpeg-dev     8c-2ubuntu7     all<br>libjpeg-progs   8c-2ubuntu7     amd6=
4<br>libjpeg-turbo-progs     1.1.90+svn733-0ubuntu4.3        amd64<br>libjp=
eg-turbo8  1.1.90+svn733-0ubuntu4.3        amd64<br>libjpeg-turbo8  1.1.90+=
svn733-0ubuntu4.3        i386<br>
libjpeg-turbo8-dev      1.1.90+svn733-0ubuntu4.3        amd64<br>libjpeg8  =
      8c-2ubuntu7     amd64<br>libjpeg8        8c-2ubuntu7     i386<br>libj=
peg8-dev    8c-2ubuntu7     amd64<br>libjs-jquery    1.7.1-1ubuntu1  all<br=
>
libjson-glib-1.0-0      0.14.2-1        amd64<br>libjson-perl    2.53-1  al=
l<br>libjson-xs-perl 2.320-1build1   amd64<br>libjson0        0.9-1ubuntu1 =
   amd64<br>libjson0        0.9-1ubuntu1    i386<br>libjte1 1.19-1  amd64<b=
r>
libk3b6 2.0.2-3ubuntu4  amd64<br>libk3b6-extracodecs     2.0.2-3ubuntu4  am=
d64<br>libk5crypto3    1.10+dfsg~beta1-2ubuntu0.3      amd64<br>libk5crypto=
3    1.10+dfsg~beta1-2ubuntu0.3      i386<br>libkabc4        4:4.12.2-0ubun=
tu1~ubuntu12.04.4~ppa1    amd64<br>
libkactivities-bin      4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>li=
bkactivities-models1  4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libk=
activities6 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkadm5clnt-m=
it8       1.10+dfsg~beta1-2ubuntu0.3      amd64<br>
libkadm5srv-mit8        1.10+dfsg~beta1-2ubuntu0.3      amd64<br>libkate1  =
      0.4.1-1 amd64<br>libkatepartinterfaces4  4:4.12.2-0ubuntu1~ubuntu12.0=
4.4~ppa2    amd64<br>libkcal4        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1  =
  amd64<br>
libkcddb4       4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkcmutil=
s4    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkcompactdisc4    =
    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkdb5-6       1.10+d=
fsg~beta1-2ubuntu0.3      amd64<br>
libkde3support4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkdeclar=
ative5        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkdecore5 =
    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkdesu5       4:4.12=
.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
libkdeui5       4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkdewebk=
it5   4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkdnssd4      4:4.=
12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkemoticons4  4:4.12.2-0ubun=
tu1~ubuntu12.04.4~ppa1    amd64<br>
libkexiv2-11    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkexiv2-=
data  4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    all<br>libkeyutils1    1.5.2-=
2 amd64<br>libkeyutils1    1.5.2-2 i386<br>libkfile4       4:4.12.2-0ubuntu=
1~ubuntu12.04.4~ppa1    amd64<br>
libkhtml5       4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkidleti=
me4   4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkimproxy4    4:4.=
12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkio5 4:4.12.2-0ubuntu1~ubun=
tu12.04.4~ppa1    amd64<br>
libkjsapi4      4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkjsembe=
d4    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkldap4       4:4.=
12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libklibc        1.5.25-1ubuntu=
2 amd64<br>
libkmediaplayer4        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>li=
bkmime4       4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkms1 2.4.=
46-1ubuntu0.0.0.1   amd64<br>libknewstuff2-4 4:4.12.2-0ubuntu1~ubuntu12.04.=
4~ppa1    amd64<br>
libknewstuff3-4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libknotify=
config4       4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkntlm4   =
    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkonq-common  4:4.12=
.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
libkonq5-templates      4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    all<br>libk=
onq5abi1    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkparts4    =
  4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkpathsea5    2009-11u=
buntu2  amd64<br>
libkpimutils4   4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkprintu=
tils4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkpty4        4:4.=
12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkrb5-26-heimdal      1.6~gi=
t20120311.dfsg.1-2ubuntu0.1       amd64<br>
libkrb5-26-heimdal      1.6~git20120311.dfsg.1-2ubuntu0.1       i386<br>lib=
krb5-3       1.10+dfsg~beta1-2ubuntu0.3      amd64<br>libkrb5-3       1.10+=
dfsg~beta1-2ubuntu0.3      i386<br>libkrb5-dev     1.10+dfsg~beta1-2ubuntu0=
.3      amd64<br>
libkrb5support0 1.10+dfsg~beta1-2ubuntu0.3      amd64<br>libkrb5support0 1.=
10+dfsg~beta1-2ubuntu0.3      i386<br>libkresources4  4:4.12.2-0ubuntu1~ubu=
ntu12.04.4~ppa1    amd64<br>libkrosscore4   4:4.12.2-0ubuntu1~ubuntu12.04.4=
~ppa1    amd64<br>
libkrossui4     4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libktexted=
itor4 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libktorrent-l10n    =
    1.1.3-1 all<br>libktorrent3    1.1.3-1 amd64<br>libkunitconversion4    =
 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
libkutils4      4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libkworksp=
ace4abi1      4:4.8.5-0ubuntu0.3      amd64<br>libkxmlrpcclient4       4:4.=
12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>liblapack3gf    3.3.1-1 amd64<=
br>
liblastfm1      1.0.3-0ubuntu1~ubuntu12.04.1~ppa2       amd64<br>liblaunchp=
ad-integration-3.0-1  0.1.56.1        amd64<br>liblaunchpad-integration-com=
mon 0.1.56.1        all<br>liblaunchpad-integration1       0.1.56.1        =
amd64<br>
liblcms1        1.19.dfsg-1ubuntu3      amd64<br>liblcms1        1.19.dfsg-=
1ubuntu3      i386<br>liblcms2-2      2.4-0ubuntu1~ubuntu12.04.2~ppa1 amd64=
<br>libldap-2.4-2   2.4.28-1.1ubuntu4.4     amd64<br>libldap-2.4-2   2.4.28=
-1.1ubuntu4.4     i386<br>
libldap2-dev    2.4.28-1.1ubuntu4.4     amd64<br>liblensfun-data 0.2.7-0ubu=
ntu1~ubuntu12.04.2~ppa1       all<br>liblensfun0     0.2.7-0ubuntu1~ubuntu1=
2.04.2~ppa1       amd64<br>liblightdm-gobject-1-0  1.2.3-0ubuntu2.4        =
amd64<br>
liblircclient0  0.9.0-0ubuntu1  amd64<br>libllvm3.3      1:3.3-5ubuntu4~pre=
cise1 amd64<br>libllvm3.3      1:3.3-5ubuntu4~precise1 i386<br>liblocale-ge=
ttext-perl  1.05-7build1    amd64<br>liblockfile-bin 1.09-3ubuntu0.1 amd64<=
br>
liblockfile1    1.09-3ubuntu0.1 amd64<br>liblog4cxx10    0.10.0-1.2ubuntu2 =
      amd64<br>liblog4cxx10-dev        0.10.0-1.2ubuntu2       amd64<br>lib=
loudmouth1-0 1.4.3-8 amd64<br>liblouis-data   2.3.0-3 all<br>liblouis2     =
  2.3.0-3 amd64<br>
liblqr-1-0      0.4.1-1.1       amd64<br>libltdl-dev     2.4.2-1ubuntu1  am=
d64<br>libltdl7        2.4.2-1ubuntu1  amd64<br>libltdl7        2.4.2-1ubun=
tu1  i386<br>liblua5.1-0     5.1.4-12ubuntu1 amd64<br>liblvm2app2.2   2.02.=
66-4ubuntu7.4      amd64<br>
liblwp-mediatypes-perl  6.01-1  all<br>liblwp-protocol-https-perl      6.02=
-1  all<br>liblwres80      1:9.8.1.dfsg.P1-4ubuntu0.8      amd64<br>liblzma=
5        5.1.1alpha+20110809-3   amd64<br>liblzo2-2       2.06-1  amd64<br>
libmad0 0.15.1b-7ubuntu1        amd64<br>libmad0 0.15.1b-7ubuntu1        i3=
86<br>libmagic1       5.09-2ubuntu0.2 amd64<br>libmagickcore4  8:6.6.9.7-5u=
buntu3.2    amd64<br>libmagickcore4-extra    8:6.6.9.7-5ubuntu3.2    amd64<=
br>
libmagickwand4  8:6.6.9.7-5ubuntu3.2    amd64<br>libmail-sendmail-perl   0.=
79.16-1       all<br>libmailtools-perl       2.08-1  all<br>libmatroska5   =
 1.3.0-1 amd64<br>libmeanwhile1   1.0.2-4ubuntu1  amd64<br>libmetacity-priv=
ate0    1:2.34.1-1ubuntu11      amd64<br>
libmhash2       0.9.9.9-1       amd64<br>libmikmod2      3.1.12-2        i3=
86<br>libmimic0       1.0.4-2.1build1 amd64<br>libminiupnpc8   1.6-3ubuntu1=
    amd64<br>libmission-control-plugins0     1:5.12.0-0ubuntu2.1     amd64<=
br>
libmjpegtools-1.9       1:1.9.0-0.5ubuntu7      amd64<br>libmlt++3       0.=
7.6+git20120204-2     amd64<br>libmlt-data     0.7.6+git20120204-2     all<=
br>libmlt4 0.7.6+git20120204-2     amd64<br>libmms0 0.6.2-2 amd64<br>libmng=
1 1.0.10-3        amd64<br>
libmng1 1.0.10-3        i386<br>libmodplug1     1:0.8.8.4-1     amd64<br>li=
bmount1       2.20.1-1ubuntu3 amd64<br>libmozjs185-1.0 1.8.5-1.0.0-0ubuntu8=
    amd64<br>libmp3-info-perl        1.24-1  all<br>libmp3lame0     3.99.3+=
repack1-1        amd64<br>
libmp3splt-mp3  0.7.1-0ubuntu1  amd64<br>libmp3splt-ogg  0.7.1-0ubuntu1  am=
d64<br>libmp3splt0     0.7.1-0ubuntu1  amd64<br>libmpc2 0.9-4   amd64<br>li=
bmpcdec6      2:0.1~r459-1ubuntu1     amd64<br>libmpeg2-4      0.4.1-3 amd6=
4<br>
libmpeg3-1      1.5.4-5ubuntu1  amd64<br>libmpfr4        3.1.0-3ubuntu2  am=
d64<br>libmpg123-0     1.12.1-3.2ubuntu1       amd64<br>libmpg123-0     1.1=
2.1-3.2ubuntu1       i386<br>libmtdev1       1.1.0-2ubuntu1  amd64<br>libmt=
p-common   1.1.3-1ubuntu0.1        all<br>
libmtp-runtime  1.1.3-1ubuntu0.1        amd64<br>libmtp9 1.1.3-1ubuntu0.1  =
      amd64<br>libmudflap0-4.5-dev-armel-cross 4.5.3-12ubuntu2cross1.61    =
    all<br>libmudflap0-4.6-dev-armel-cross 4.6.3-1ubuntu5cross1.62 all<br>
libmudflap0-armel-cross 4.6.3-1ubuntu5cross1.62 all<br>libmudflap0-dbg-arme=
l-cross     4.6.3-1ubuntu5cross1.62 all<br>libmusicbrainz-discid-perl      =
0.03-1build2    amd64<br>libmusicbrainz3-6       3.0.2-2.1       amd64<br>
libmutter0      3.4.1-0ubuntu1  amd64<br>libmygpo-qt1    1.0.7-0ubuntu1~ubu=
ntu12.04~ppa1 amd64<br>libmysqlclient-dev      5.5.35-0ubuntu0.12.04.2 amd6=
4<br>libmysqlclient18        5.5.35-0ubuntu0.12.04.2 amd64<br>libmysqlclien=
t18        5.5.35-0ubuntu0.12.04.2 i386<br>
libmythes-1.2-0 2:1.2.2-1       amd64<br>libnautilus-extension1a 1:3.4.2-0u=
buntu9        amd64<br>libncurses5     5.9-4   amd64<br>libncurses5     5.9=
-4   i386<br>libncurses5-dev 5.9-4   amd64<br>libncursesw5    5.9-4   amd64=
<br>
libncursesw5    5.9-4   i386<br>libneon27-gnutls        0.29.6-1ubuntu1 amd=
64<br>libnepomuk4     4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libn=
epomukcleaner4      4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libnep=
omukcore4abi1     4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
libnepomukdatamanagement4       4:4.8.5-0ubuntu0.2      amd64<br>libnepomuk=
query4a       4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libnepomuksy=
nc4 4:4.8.5-0ubuntu0.2      amd64<br>libnepomukutils4        4:4.12.2-0ubun=
tu1~ubuntu12.04.4~ppa1    amd64<br>
libnet-dbus-perl        1.0.0-1build1   amd64<br>libnet-dns-perl 0.66-2ubun=
tu3   amd64<br>libnet-domain-tld-perl  1.69-1  all<br>libnet-http-perl     =
   6.02-1  all<br>libnet-ip-perl  1.25-3  all<br>libnet-ssleay-perl      1.=
42-1build1    amd64<br>
libnetfilter-conntrack3 0.9.1-1ubuntu1  amd64<br>libnetpbm10     2:10.0-15 =
      amd64<br>libnettle4      2.4-1   amd64<br>libnewt0.52     0.52.11-2ub=
untu10       amd64<br>libnfnetlink0   1.0.0-1 amd64<br>libnice10       0.1.=
1-2ubuntu1  amd64<br>
libnih-dbus1    1.0.3-4ubuntu9.1        amd64<br>libnih1 1.0.3-4ubuntu9.1  =
      amd64<br>libnl-3-200     3.2.3-2ubuntu2  amd64<br>libnl-genl-3-200   =
     3.2.3-2ubuntu2  amd64<br>libnl-route-3-200       3.2.3-2ubuntu2  amd64=
<br>
libnm-glib-vpn1 0.9.4.0-0ubuntu4.3      amd64<br>libnm-glib4     0.9.4.0-0u=
buntu4.3      amd64<br>libnm-gtk-common        0.9.4.1-0ubuntu2.3      all<=
br>libnm-gtk0      0.9.4.1-0ubuntu2.3      amd64<br>libnm-util2     0.9.4.0=
-0ubuntu4.3      amd64<br>
libnotify-bin   0.7.5-1 amd64<br>libnotify4      0.7.5-1 amd64<br>libnspr4 =
       4.9.5-0ubuntu0.12.04.2  amd64<br>libnspr4        4.9.5-0ubuntu0.12.0=
4.2  i386<br>libnspr4-0d     4.9.5-0ubuntu0.12.04.2  amd64<br>libnspr4-dev =
   4.9.5-0ubuntu0.12.04.2  amd64<br>
libnss-mdns     0.10-3.2        amd64<br>libnss3 3.15.4-0ubuntu0.12.04.1 am=
d64<br>libnss3 3.15.4-0ubuntu0.12.04.1 i386<br>libnss3-1d      3.15.4-0ubun=
tu0.12.04.1 amd64<br>libnss3-dev     3.15.4-0ubuntu0.12.04.1 amd64<br>libnt=
rack-qt4-1 016-1ubuntu1    amd64<br>
libntrack0      016-1ubuntu1    amd64<br>libnuma1        2.0.8~rc3-1     am=
d64<br>libnux-2.0-0    2.14.1-0ubuntu1 amd64<br>libnux-2.0-common       2.1=
4.1-0ubuntu1 all<br>liboauth0       0.9.4-3 amd64<br>libobasis4.2-base     =
  4.2.1.1-1       amd64<br>
libobasis4.2-calc       4.2.1.1-1       amd64<br>libobasis4.2-core01     4.=
2.1.1-1       amd64<br>libobasis4.2-core02     4.2.1.1-1       amd64<br>lib=
obasis4.2-core03     4.2.1.1-1       amd64<br>libobasis4.2-core04     4.2.1=
.1-1       amd64<br>
libobasis4.2-core05     4.2.1.1-1       amd64<br>libobasis4.2-core06     4.=
2.1.1-1       amd64<br>libobasis4.2-core07     4.2.1.1-1       amd64<br>lib=
obasis4.2-draw       4.2.1.1-1       amd64<br>libobasis4.2-en-us      4.2.1=
.1-1       amd64<br>
libobasis4.2-en-us-base 4.2.1.1-1       amd64<br>libobasis4.2-en-us-calc 4.=
2.1.1-1       amd64<br>libobasis4.2-en-us-math 4.2.1.1-1       amd64<br>lib=
obasis4.2-en-us-res  4.2.1.1-1       amd64<br>libobasis4.2-en-us-writer    =
   4.2.1.1-1       amd64<br>
libobasis4.2-extension-beanshell-script-provider        4.2.1.1-1       amd=
64<br>libobasis4.2-extension-javascript-script-provider       4.2.1.1-1    =
   amd64<br>libobasis4.2-extension-mediawiki-publisher      4.2.1.1-1      =
 amd64<br>
libobasis4.2-extension-nlpsolver        4.2.1.1-1       amd64<br>libobasis4=
.2-extension-pdf-import       4.2.1.1-1       amd64<br>libobasis4.2-extensi=
on-report-builder   4.2.1.1-1       amd64<br>libobasis4.2-gnome-integration=
  4.2.1.1-1       amd64<br>
libobasis4.2-graphicfilter      4.2.1.1-1       amd64<br>libobasis4.2-image=
s     4.2.1.1-1       amd64<br>libobasis4.2-impress    4.2.1.1-1       amd6=
4<br>libobasis4.2-kde-integration    4.2.1.1-1       amd64<br>libobasis4.2-=
librelogo  4.2.1.1-1       amd64<br>
libobasis4.2-math       4.2.1.1-1       amd64<br>libobasis4.2-ogltrans   4.=
2.1.1-1       amd64<br>libobasis4.2-onlineupdate       4.2.1.1-1       amd6=
4<br>libobasis4.2-ooofonts   4.2.1.1-1       amd64<br>libobasis4.2-ooolingu=
istic      4.2.1.1-1       amd64<br>
libobasis4.2-postgresql-sdbc    4.2.1.1-1       amd64<br>libobasis4.2-pytho=
n-script-provider     4.2.1.1-1       amd64<br>libobasis4.2-pyuno      4.2.=
1.1-1       amd64<br>libobasis4.2-writer     4.2.1.1-1       amd64<br>libob=
asis4.2-xsltfilter 4.2.1.1-1       amd64<br>
libodbc1        2.2.14p2-5ubuntu3       amd64<br>libodbc1        2.2.14p2-5=
ubuntu3       i386<br>libofa0 0.9.3-4 amd64<br>libogg-vorbis-header-perl   =
    0.03-3build2    amd64<br>libogg0 1.2.2~dfsg-1ubuntu1     amd64<br>libog=
g0 1.2.2~dfsg-1ubuntu1     i386<br>
liboggkate1     0.4.1-1 amd64<br>liboggz2        1.1.1-1 amd64<br>libogmrip=
1      0.13.6-0ubuntu4 amd64<br>liboil0.3       0.3.17-2ubuntu3 amd64<br>li=
bokularcore2abi1      4:4.10.5-0ubuntu0.1~ubuntu12.04~ppa1    amd64<br>
libokularcore3  4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>liboobs-1-=
5     3.0.0-1 amd64<br>libopenal-data  1:1.13-4ubuntu3 all<br>libopenal1   =
   1:1.13-4ubuntu3 amd64<br>libopenal1      1:1.13-4ubuntu3 i386<br>libopen=
cc1      0.3.0-1 amd64<br>
libopencore-amrnb0      0.1.2-1 amd64<br>libopencore-amrwb0      0.1.2-1 am=
d64<br>libopencv-calib3d2.3    2.3.1-7 amd64<br>libopencv-core2.3       2.3=
.1-7 amd64<br>libopencv-features2d2.3 2.3.1-7 amd64<br>libopencv-flann2.3  =
    2.3.1-7 amd64<br>
libopencv-highgui2.3    2.3.1-7 amd64<br>libopencv-imgproc2.3    2.3.1-7 am=
d64<br>libopencv-objdetect2.3  2.3.1-7 amd64<br>libopenexr6     1.6.1-4.1  =
     amd64<br>libopenjpeg2    1.3+dfsg-4+squeeze2build0.12.04.1       amd64=
<br>
libopenmpi-dev  1.4.3-2.1ubuntu3        amd64<br>libopenmpi1.3   1.4.3-2.1u=
buntu3        amd64<br>libopenobex1    1.5-2build1     amd64<br>libopenraw1=
     0.0.8-3build1   amd64<br>libopenvg1-mesa-lts-saucy       9.2.1-1ubuntu=
3~precise1 amd64<br>
liborbit2       1:2.14.19-0.1ubuntu1    amd64<br>liborc-0.4-0    1:0.4.16-1=
ubuntu2       amd64<br>liborc-0.4-0    1:0.4.16-1ubuntu2       i386<br>libo=
verlay-scrollbar-0.2-0      0.2.16-0ubuntu1.1       amd64<br>liboverlay-scr=
ollbar3-0.2-0     0.2.16-0ubuntu1.1       amd64<br>
libp11-kit0     0.12-2ubuntu1   amd64<br>libp11-kit0     0.12-2ubuntu1   i3=
86<br>libpackagekit-glib2-14  0.7.2-4ubuntu3  amd64<br>libpam-cap      1:2.=
22-1ubuntu3 amd64<br>libpam-ck-connector     0.4.5-2ubuntu0.1        amd64<=
br>
libpam-gnome-keyring    3.2.2-2ubuntu4.1        amd64<br>libpam-modules  1.=
1.3-7ubuntu2  amd64<br>libpam-modules-bin      1.1.3-7ubuntu2  amd64<br>lib=
pam-runtime  1.1.3-7ubuntu2  all<br>libpam-winbind  2:3.6.3-2ubuntu2.9     =
 amd64<br>
libpam0g        1.1.3-7ubuntu2  amd64<br>libpanel-applet-4-0     1:3.4.1-0u=
buntu1.2      amd64<br>libpango-perl   1.222-1build1   amd64<br>libpango1.0=
-0   1.30.0-0ubuntu3.1       amd64<br>libpango1.0-0   1.30.0-0ubuntu3.1    =
   i386<br>
libpangomm-1.4-1        2.28.4-1ubuntu1 amd64<br>libpaper-utils  1.1.24+nmu=
1build1       amd64<br>libpaper1       1.1.24+nmu1build1       amd64<br>lib=
parse-debcontrol-perl        2.005-3 all<br>libparse-debianchangelog-perl  =
 1.2.0-1ubuntu1  all<br>
libparse-recdescent-perl        1.965001+dfsg-1 all<br>libparted0debian1   =
    2.3-8ubuntu5.1  amd64<br>libpathplan4    2.26.3-10ubuntu1.1      amd64<=
br>libpcap0.8      1.1.1-10        amd64<br>libpci3 1:3.1.8-2ubuntu6       =
 amd64<br>
libpciaccess0   0.12.902-1ubuntu0.2     amd64<br>libpciaccess0   0.12.902-1=
ubuntu0.2     i386<br>libpcre3        8.12-4  amd64<br>libpcre3        8.12=
-4  i386<br>libpcre3-dev    8.12-4  amd64<br>libpcrecpp0     8.12-4  amd64<=
br>
libpcsclite1    1.7.4-2ubuntu2  amd64<br>libpdf-api2-perl        2.019-1 al=
l<br>libpeas-1.0-0   1.2.0-1ubuntu1  amd64<br>libpeas-common  1.2.0-1ubuntu=
1  all<br>libperl5.14     5.14.2-6ubuntu2.4       amd64<br>libphonon-dev   =
4:4.7.0really4.6.0-0ubuntu1     amd64<br>
libphonon4      4:4.7.0really4.6.0-0ubuntu1     amd64<br>libphononexperimen=
tal4  4:4.7.0really4.6.0-0ubuntu1     amd64<br>libpipeline1    1.2.1-1 amd6=
4<br>libpixman-1-0   0.30.2-1ubuntu0.0.0.0.1 amd64<br>libpixman-1-0   0.30.=
2-1ubuntu0.0.0.0.1 i386<br>
libpkcs11-helper1       1.09-1  amd64<br>libplasma3      4:4.12.2-0ubuntu1~=
ubuntu12.04.4~ppa1    amd64<br>libplist1       1.8-1   amd64<br>libplymouth=
2    0.8.2-2ubuntu31.1       amd64<br>libpng12-0      1.2.46-3ubuntu4 amd64=
<br>
libpng12-0      1.2.46-3ubuntu4 i386<br>libpng12-dev    1.2.46-3ubuntu4 amd=
64<br>libpolkit-agent-1-0     0.104-1ubuntu1.1        amd64<br>libpolkit-ba=
ckend-1-0   0.104-1ubuntu1.1        amd64<br>libpolkit-gobject-1-0   0.104-=
1ubuntu1.1        amd64<br>
libpolkit-qt-1-1        0.103.0-1       amd64<br>libpoppler-glib8        0.=
18.4-1ubuntu3.1       amd64<br>libpoppler-qt4-3        0.18.4-1ubuntu3.1   =
    amd64<br>libpoppler19    0.18.4-1ubuntu3.1       amd64<br>libpopt0     =
   1.16-3ubuntu1   amd64<br>
libportaudio2   19+svn20111121-1        amd64<br>libportsmf0     0.1~svn201=
01010-3       amd64<br>libpostproc-extra-52    4:0.8.10ubuntu0.12.04.1 amd6=
4<br>libpostproc52   4:0.8.9-0ubuntu0.12.04.1        amd64<br>libppl-c4    =
   0.11.2-6ubuntu3 amd64<br>
libppl0.11-dev  0.11.2-6ubuntu3 amd64<br>libppl9 0.11.2-6ubuntu3 amd64<br>l=
ibpq-dev       9.1.12-0ubuntu0.12.04   amd64<br>libpq5  9.1.12-0ubuntu0.12.=
04   amd64<br>libprotobuf7    2.4.1-1ubuntu2  amd64<br>libprotoc7      2.4.=
1-1ubuntu2  amd64<br>
libproxy1       0.4.7-0ubuntu4.1        amd64<br>libproxy1       0.4.7-0ubu=
ntu4.1        i386<br>libproxy1-plugin-gsettings      0.4.7-0ubuntu4.1     =
   amd64<br>libproxy1-plugin-networkmanager 0.4.7-0ubuntu4.1        amd64<b=
r>
libpth20        2.0.7-16ubuntu3 amd64<br>libpthread-stubs0       0.3-3   am=
d64<br>libpthread-stubs0-dev   0.3-3   amd64<br>libpulse-dev    1:1.1-0ubun=
tu15.4       amd64<br>libpulse-mainloop-glib0 1:1.1-0ubuntu15.4       amd64=
<br>
libpulse-mainloop-glib0 1:1.1-0ubuntu15.4       i386<br>libpulse0       1:1=
.1-0ubuntu15.4       amd64<br>libpulse0       1:1.1-0ubuntu15.4       i386<=
br>libpulsedsp     1:1.1-0ubuntu15.4       amd64<br>libpulsedsp     1:1.1-0=
ubuntu15.4       i386<br>
libpurple-bin   1:2.10.3-0ubuntu1.4     all<br>libpurple0      1:2.10.3-0ub=
untu1.4     amd64<br>libpwl5 0.11.2-6ubuntu3 amd64<br>libpython2.7    2.7.3=
-0ubuntu3.4        amd64<br>libqapt-runtime 1.3.1-0ubuntu2  amd64<br>libqap=
t1        1.3.1-0ubuntu2  amd64<br>
libqca2 2.0.3-2 amd64<br>libqca2-plugin-ossl     2.0.0~beta3-1   amd64<br>l=
ibqimageblitz4 1:0.0.6-4       amd64<br>libqjson0       0.8.1-1~ubuntu12.04=
.1~ppa1      amd64<br>libqmobipocket1 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1 =
   amd64<br>
libqt4-dbus     4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-dbu=
s     4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>libqt4-declarative   =
   4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-declarative     =
 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>
libqt4-designer 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-des=
igner 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>libqt4-dev      4:4.8=
.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-dev-bin  4:4.8.2+dfsg-2u=
buntu1~precise1~ppa6     amd64<br>
libqt4-help     4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-net=
work  4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-network  4:4.=
8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>libqt4-opengl   4:4.8.2+dfsg-2u=
buntu1~precise1~ppa6     amd64<br>
libqt4-opengl   4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>libqt4-open=
gl-dev       4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-qt3sup=
port       4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-qt3suppo=
rt       4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>
libqt4-script   4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-scr=
ipt   4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>libqt4-scripttools   =
   4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-scripttools     =
 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>
libqt4-sql      4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-sql=
      4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>libqt4-sql-mysql     =
   4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>libqt4-sql-sqlite       =
4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>
libqt4-svg      4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-svg=
      4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>libqt4-test     4:4.8=
.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-test     4:4.8.2+dfsg-2u=
buntu1~precise1~ppa6     i386<br>
libqt4-xml      4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-xml=
      4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>libqt4-xmlpatterns   =
   4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqt4-xmlpatterns     =
 4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>
libqtbamf1      0.2.4-0ubuntu1  amd64<br>libqtcore4      4:4.8.2+dfsg-2ubun=
tu1~precise1~ppa6     amd64<br>libqtcore4      4:4.8.2+dfsg-2ubuntu1~precis=
e1~ppa6     i386<br>libqtdee2       0.2.4-0ubuntu1  amd64<br>libqtgconf1   =
  0.1-0ubuntu5    amd64<br>
libqtgui4       4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>libqtgui4 =
      4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     i386<br>libqtruby4shared2    =
   4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libqtscript4-core      =
 0.2.0-0ubuntu1  amd64<br>
libqtscript4-gui        0.2.0-0ubuntu1  amd64<br>libqtscript4-network    0.=
2.0-0ubuntu1  amd64<br>libqtscript4-sql        0.2.0-0ubuntu1  amd64<br>lib=
qtscript4-uitools    0.2.0-0ubuntu1  amd64<br>libqtscript4-xml        0.2.0=
-0ubuntu1  amd64<br>
libqtwebkit-dev 2.2.1-1ubuntu4  amd64<br>libqtwebkit4    2.2.1-1ubuntu4  am=
d64<br>libqtwebkit4    2.2.1-1ubuntu4  i386<br>libquadmath0    4.6.3-1ubunt=
u5  amd64<br>libquicktime2   2:1.2.3-4build2 amd64<br>libquvi-scripts 0.4.2=
-1 all<br>
libquvi7        0.4.0-1 amd64<br>librados2       0.41-1ubuntu2.1 amd64<br>l=
ibraptor2-0    2.0.6-1ubuntu0.1        amd64<br>librarian0      0.8.1-5 amd=
64<br>librasqal3      0.9.28-1        amd64<br>libraw1394-11   2.0.7-1ubunt=
u1  amd64<br>
libraw1394-11   2.0.7-1ubuntu1  i386<br>libraw5 0.14.4-0ubuntu2.2       amd=
64<br>librbd1 0.41-1ubuntu2.1 amd64<br>librdf0 1.0.14-1        amd64<br>lib=
readline5    5.2-11  amd64<br>libreadline6    6.2-8   amd64<br>libreoffice4=
.2  4.2.1.1-1       amd64<br>
libreoffice4.2-base     4.2.1.1-1       amd64<br>libreoffice4.2-calc     4.=
2.1.1-1       amd64<br>libreoffice4.2-debian-menus     4.2.1-1 all<br>libre=
office4.2-dict-en  4.2.1.1-1       amd64<br>libreoffice4.2-dict-es  4.2.1.1=
-1       amd64<br>
libreoffice4.2-dict-fr  4.2.1.1-1       amd64<br>libreoffice4.2-draw     4.=
2.1.1-1       amd64<br>libreoffice4.2-en-us    4.2.1.1-1       amd64<br>lib=
reoffice4.2-impress  4.2.1.1-1       amd64<br>libreoffice4.2-math     4.2.1=
.1-1       amd64<br>
libreoffice4.2-ure      4.2.1.1-1       amd64<br>libreoffice4.2-writer   4.=
2.1.1-1       amd64<br>libresid-builder0c2a    2.1.1-12        amd64<br>lib=
rest-0.7-0   0.7.12-1ubuntu2 amd64<br>librhythmbox-core5      2.96-0ubuntu4=
.3 amd64<br>
libripoff0      0.8.3-0ubuntu5  amd64<br>libroken18-heimdal      1.6~git201=
20311.dfsg.1-2ubuntu0.1       amd64<br>libroken18-heimdal      1.6~git20120=
311.dfsg.1-2ubuntu0.1       i386<br>librsvg2-2      2.36.1-0ubuntu1 amd64<b=
r>
librsvg2-2      2.36.1-0ubuntu1 i386<br>librsvg2-common 2.36.1-0ubuntu1 amd=
64<br>librsvg2-common 2.36.1-0ubuntu1 i386<br>librsync1       0.9.7-8build1=
   amd64<br>librtmp0        2.4~20110711.gitc28f1bab-1      amd64<br>librtm=
p0        2.4~20110711.gitc28f1bab-1      i386<br>
libruby1.8      1.8.7.352-2ubuntu1.4    amd64<br>libsamplerate0  0.1.8-4 am=
d64<br>libsamplerate0  0.1.8-4 i386<br>libsane 1.0.22-7ubuntu1 amd64<br>lib=
sane 1.0.22-7ubuntu1 i386<br>libsane-common  1.0.22-7ubuntu1 amd64<br>libsa=
ne-hpaio   3.12.2-1ubuntu3.4       amd64<br>
libsasl2-2      2.1.25.dfsg1-3ubuntu0.1 amd64<br>libsasl2-2      2.1.25.dfs=
g1-3ubuntu0.1 i386<br>libsasl2-modules        2.1.25.dfsg1-3ubuntu0.1 amd64=
<br>libsasl2-modules        2.1.25.dfsg1-3ubuntu0.1 i386<br>libschroedinger=
-1.0-0   1.0.11-1        amd64<br>
libsdl-image1.2 1.2.10-3        amd64<br>libsdl-image1.2 1.2.10-3        i3=
86<br>libsdl-mixer1.2 1.2.11-7        i386<br>libsdl-net1.2   1.2.7-5 i386<=
br>libsdl-ttf2.0-0 2.0.9-1.1ubuntu1        i386<br>libsdl1.2-dev   1.2.14-6=
.4ubuntu3       amd64<br>
libsdl1.2debian 1.2.14-6.4ubuntu3       amd64<br>libsdl1.2debian 1.2.14-6.4=
ubuntu3       i386<br>libselinux1     2.1.0-4.1ubuntu1        amd64<br>libs=
elinux1     2.1.0-4.1ubuntu1        i386<br>libsensors4     1:3.3.1-2ubuntu=
1        amd64<br>
libsgutils2-2   1.33-1  amd64<br>libshout3       2.2.2-7ubuntu1  amd64<br>l=
ibshout3       2.2.2-7ubuntu1  i386<br>libsidplay1     1.36.59-5       amd6=
4<br>libsidplay2     2.1.1-12        amd64<br>libsigc++-2.0-0c2a      2.2.1=
0-0ubuntu2 amd64<br>
libsigsegv2     2.9-4ubuntu2    amd64<br>libslang2       2.2.4-3ubuntu1  am=
d64<br>libslang2       2.2.4-3ubuntu1  i386<br>libslang2-dev   2.2.4-3ubunt=
u1  amd64<br>libslp1 1.2.1-7.8ubuntu1        amd64<br>libslv2-9       0.6.6=
+dfsg1-1   amd64<br>
libsm-dev       2:1.2.0-2build1 amd64<br>libsm6  2:1.2.0-2build1 amd64<br>l=
ibsm6  2:1.2.0-2build1 i386<br>libsmbclient    2:3.6.3-2ubuntu2.9      amd6=
4<br>libsmi2ldbl     0.4.8+dfsg2-4build1     amd64<br>libsmokebase3   4:4.1=
2.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
libsmokekdecore4-3      4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>li=
bsmokekdeui4-3        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libs=
mokekfile3  4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libsmokekhtml3=
  4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
libsmokekio3    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libsmokekn=
ewstuff2-3    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libsmokeknew=
stuff3-3    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libsmokekparts=
3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
libsmokektexteditor3    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>li=
bsmokekutils3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libsmokenepo=
muk3        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libsmokeokular=
3 4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
libsmokeqtcore4-3       4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>li=
bsmokeqtdbus4-3       4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libs=
mokeqtgui4-3        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libsmo=
keqtnetwork4-3    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
libsmokeqtopengl4-3     4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>li=
bsmokeqtsql4-3        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libs=
mokeqtsvg4-3        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libsmo=
keqtxml4-3        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
libsmokesolid3  4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libsndfile=
1     1.0.25-4        amd64<br>libsndfile1     1.0.25-4        i386<br>libs=
nmp-base    5.4.3~dfsg-2.4ubuntu1.1 all<br>libsnmp15       5.4.3~dfsg-2.4ub=
untu1.1 amd64<br>
libsocket6-perl 0.23-1build2    amd64<br>libsolid4       4:4.12.2-0ubuntu1~=
ubuntu12.04.4~ppa1    amd64<br>libsonic0       0.1.17-1.1      amd64<br>lib=
soprano-dev  2.9.3+dfsg1-0ubuntu1~ubuntu12.04~ppa1   amd64<br>libsoprano4  =
   2.9.3+dfsg1-0ubuntu1~ubuntu12.04~ppa1   amd64<br>
libsoundtouch0  1.6.0-2build1   amd64<br>libsoup-gnome2.4-1      2.38.1-1  =
      amd64<br>libsoup-gnome2.4-1      2.38.1-1        i386<br>libsoup2.4-1=
    2.38.1-1        amd64<br>libsoup2.4-1    2.38.1-1        i386<br>libsox=
-fmt-alsa 14.3.2-3        amd64<br>
libsox-fmt-base 14.3.2-3        amd64<br>libsox-fmt-mp3  14.3.2-3        am=
d64<br>libsox1b        14.3.2-3        amd64<br>libsp1c2        1.3.4-1.2.1=
-47.1        amd64<br>libspandsp2     0.0.6~pre18-2build1     amd64<br>
libspectre1     0.2.6-1build1   amd64<br>libspeechd2     0.7.1-6ubuntu3  am=
d64<br>libspeex1       1.2~rc1-3ubuntu2        amd64<br>libspeex1       1.2=
~rc1-3ubuntu2        i386<br>libspeexdsp1    1.2~rc1-3ubuntu2        amd64<=
br>
libspeexdsp1    1.2~rc1-3ubuntu2        i386<br>libspnav0       0.2.2-1ubun=
tu1  amd64<br>libsqlite3-0    3.7.9-2ubuntu1.1        amd64<br>libsqlite3-0=
    3.7.9-2ubuntu1.1        i386<br>libsqlite3-dev  3.7.9-2ubuntu1.1       =
 amd64<br>
libss2  1.42-1ubuntu2   amd64<br>libssh-4        0.5.2-1ubuntu0.12.04.2  am=
d64<br>libssl-dev      1.0.1-4ubuntu5.11       amd64<br>libssl-doc      1.0=
.1-4ubuntu5.11       all<br>libssl0.9.8     0.9.8o-7ubuntu3.1       i386<br=
>
libssl1.0.0     1.0.1-4ubuntu5.11       amd64<br>libssl1.0.0     1.0.1-4ubu=
ntu5.11       i386<br>libstartup-notification0        0.12-1ubuntu1   amd64=
<br>libstdc++5      1:3.3.6-25ubuntu1       i386<br>libstdc++6      4.6.3-1=
ubuntu5  amd64<br>
libstdc++6      4.6.3-1ubuntu5  i386<br>libstdc++6-4.5-dbg-armel-cross  4.5=
.3-12ubuntu2cross1.61        all<br>libstdc++6-4.5-dev-armel-cross  4.5.3-1=
2ubuntu2cross1.61        all<br>libstdc++6-4.6-dev      4.6.3-1ubuntu5  amd=
64<br>
libstdc++6-armel-cross  4.6.3-1ubuntu5cross1.62 all<br>libstreamanalyzer0  =
    0.7.7-1.1ubuntu3        amd64<br>libstreams0     0.7.7-1.1ubuntu3      =
  amd64<br>libstring-shellquote-perl       1.03-1  all<br>libsub-name-perl =
       0.05-1build2    amd64<br>
libsvga1        1:1.4.3-31      amd64<br>libsvn1 1.6.17dfsg-3ubuntu3.3   am=
d64<br>libswitch-perl  2.16-2  all<br>libswscale-extra-2      4:0.8.10ubunt=
u0.12.04.1 amd64<br>libswscale2     4:0.8.9-0ubuntu0.12.04.1        amd64<b=
r>
libsyncdaemon-1.0-1     3.0.2-0ubuntu2  amd64<br>libsyndication4 4:4.12.2-0=
ubuntu1~ubuntu12.04.4~ppa1    amd64<br>libsys-hostname-long-perl       1.4-=
2   all<br>libsysfs-dev    2.1.0+repack-1  amd64<br>libsysfs2       2.1.0+r=
epack-1  amd64<br>
libt1-5 5.1.2-3.4ubuntu1        amd64<br>libtag-extras1  1.0.1-3 amd64<br>l=
ibtag1-vanilla 1.8-1~ubuntu12.04~ppa1  amd64<br>libtag1-vanilla 1.8-1~ubunt=
u12.04~ppa1  i386<br>libtag1c2a      1.8-1~ubuntu12.04~ppa1  amd64<br>libta=
g1c2a      1.8-1~ubuntu12.04~ppa1  i386<br>
libtalloc2      2.0.7-3 amd64<br>libtar0 1.2.11-8        amd64<br>libtasn1-=
3      2.10-1ubuntu1.1 amd64<br>libtasn1-3      2.10-1ubuntu1.1 i386<br>lib=
tdb1 1.2.9-4 amd64<br>libtdb1 1.2.9-4 i386<br>libtelepathy-farstream2 0.4.0=
-0ubuntu1  amd64<br>
libtelepathy-glib0      0.18.2-0ubuntu1 amd64<br>libtelepathy-logger2    0.=
4.0-0ubuntu1  amd64<br>libterm-readkey-perl    2.30-4build3    amd64<br>lib=
text-charwidth-perl  0.04-7build1    amd64<br>libtext-iconv-perl      1.7-5=
   amd64<br>
libtext-wrapi18n-perl   0.06-7  all<br>libthai-data    0.1.16-3        all<=
br>libthai0        0.1.16-3        amd64<br>libthai0        0.1.16-3       =
 i386<br>libtheora0      1.1.1+dfsg.1-3ubuntu2   amd64<br>libtheora0      1=
.1.1+dfsg.1-3ubuntu2   i386<br>
libthreadweaver4        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>li=
btie-ixhash-perl      1.21-2  all<br>libtiff-tools   3.9.5-2ubuntu1.5      =
  amd64<br>libtiff4        3.9.5-2ubuntu1.5        amd64<br>libtiff4       =
 3.9.5-2ubuntu1.5        i386<br>
libtimedate-perl        1.2000-1        all<br>libtimezonemap1 0.3.2   amd6=
4<br>libtinfo-dev    5.9-4   amd64<br>libtinfo5       5.9-4   amd64<br>libt=
info5       5.9-4   i386<br>libtinyxml2.6.2 2.6.2-1build1   amd64<br>libtoo=
l 2.4.2-1ubuntu1  amd64<br>
libtorque2      2.4.16+dfsg-1build1     amd64<br>libtotem-plparser17     3.=
4.1-1 amd64<br>libtotem0       3.0.1-0ubuntu21.1       amd64<br>libts-0.0-0=
     1.0-10  amd64<br>libtwolame0     0.3.13-1build1  amd64<br>libtxc-dxtn-=
s2tc0       0~git20110809-2.1       amd64<br>
libtxc-dxtn-s2tc0       0~git20110809-2.1       i386<br>libudev0        175=
-0ubuntu9.4  amd64<br>libudev0        175-0ubuntu9.4  i386<br>libudisks2-0 =
   2.1.0-4~ubuntu12.04~ppa1        amd64<br>libumfpack5.4.0 1:3.4.0-2ubuntu=
3        amd64<br>
libunicode-string-perl  2.09-4build2    amd64<br>libunique-3.0-0 3.0.2-1 am=
d64<br>libunistring0   0.9.3-5 amd64<br>libunistring0   0.9.3-5 i386<br>lib=
unity-2d-private0    5.14.0-0ubuntu2 amd64<br>libunity-core-5.0-5     5.20.=
0-0ubuntu3 amd64<br>
libunity-misc4  4.0.4-0ubuntu2  amd64<br>libunity9       5.12.0-0ubuntu1.1 =
      amd64<br>libupnp3        1:1.6.6-5.1ubuntu0.12.04.1      amd64<br>lib=
upower-glib1 0.9.15-3git1ubuntu0.1   amd64<br>liburi-perl     1.59-1  all<b=
r>
libusb-0.1-4    2:0.1.12-20     amd64<br>libusb-0.1-4    2:0.1.12-20     i3=
86<br>libusb-1.0-0    2:1.0.9~rc3-2ubuntu1    amd64<br>libusbmuxd1     1.0.=
7-2ubuntu0.1        amd64<br>libutempter0    1.1.5-4 amd64<br>libuu0  0.5.2=
0-3.2      amd64<br>
libuuid-perl    0.02-4ubuntu1   amd64<br>libuuid1        2.20.1-1ubuntu3 am=
d64<br>libuuid1        2.20.1-1ubuntu3 i386<br>libv4l-0        0.8.6-1ubunt=
u2  amd64<br>libv4l-0        0.8.6-1ubuntu2  i386<br>libv4lconvert0  0.8.6-=
1ubuntu2  amd64<br>
libv4lconvert0  0.8.6-1ubuntu2  i386<br>libva-x11-1     1.0.15-4        amd=
64<br>libva1  1.0.15-4        amd64<br>libvamp-hostsdk3        2.1-1ubuntu0=
.12.04.1    amd64<br>libvcdinfo0     0.7.23-4.1ubuntu1       amd64<br>libvd=
e-dev      2.2.3-3build2   amd64<br>
libvde0 2.2.3-3build2   amd64<br>libvdeplug2     2.2.3-3build2   amd64<br>l=
ibvdeplug2-dev 2.2.3-3build2   amd64<br>libvdpau1       0.4.1-3ubuntu1.1   =
     amd64<br>libvirt0        0.9.8-2ubuntu17.17      amd64<br>libvirtodbc0=
    6.1.6+repack-0ubuntu2~ubuntu12.04.3~ppa1        amd64<br>
libvisual-0.4-0 0.4.0-4 amd64<br>libvisual-0.4-0 0.4.0-4 i386<br>libvisual-=
0.4-plugins   0.4.0.dfsg.1-7  amd64<br>libvisual-0.4-plugins   0.4.0.dfsg.1=
-7  i386<br>libvlc5 2.0.8+git20140211+r49186+4+5~ubuntu12.04.1      amd64<b=
r>
libvlccore5     2.0.8+git20140211+r49186+4+5~ubuntu12.04.1      amd64<br>li=
bvncserver0   0.9.8.2-2ubuntu1        amd64<br>libvo-aacenc0   0.1.1-2 amd6=
4<br>libvo-amrwbenc0 0.1.1-2 amd64<br>libvorbis0a     1.3.2-1ubuntu3  amd64=
<br>
libvorbis0a     1.3.2-1ubuntu3  i386<br>libvorbisenc2   1.3.2-1ubuntu3  amd=
64<br>libvorbisenc2   1.3.2-1ubuntu3  i386<br>libvorbisfile3  1.3.2-1ubuntu=
3  amd64<br>libvorbisfile3  1.3.2-1ubuntu3  i386<br>libvpx1 1.0.0-1 amd64<b=
r>
libvte-2.90-9   1:0.32.1-0ubuntu1       amd64<br>libvte-2.90-common      1:=
0.32.1-0ubuntu1       all<br>libvte-common   1:0.28.2-3ubuntu2       all<br=
>libvte9 1:0.28.2-3ubuntu2       amd64<br>libwacom-common 0.4-1ubuntu1    a=
ll<br>
libwacom2       0.4-1ubuntu1    amd64<br>libwavpack1     4.60.1-2        am=
d64<br>libwavpack1     4.60.1-2        i386<br>libwayland-ltss-client0 1.1.=
0-2ubuntu3~precise1 amd64<br>libwayland-ltss-server0 1.1.0-2ubuntu3~precise=
1 amd64<br>
libwbclient0    2:3.6.3-2ubuntu2.9      amd64<br>libwebkitgtk-1.0-0      1.=
8.3-0ubuntu0.12.04.1  amd64<br>libwebkitgtk-1.0-common 1.8.3-0ubuntu0.12.04=
.1  all<br>libwebkitgtk-3.0-0      1.8.3-0ubuntu0.12.04.1  amd64<br>libwebk=
itgtk-3.0-common 1.8.3-0ubuntu0.12.04.1  all<br>
libwebp2        0.1.3-2.1ubuntu1        amd64<br>libwebservice-musicbrainz-=
perl  0.93-1  all<br>libwildmidi-config      0.2.3.4-2.1precise1     all<br=
>libwildmidi1    0.2.3.4-2.1precise1     amd64<br>libwind0-heimdal        1=
.6~git20120311.dfsg.1-2ubuntu0.1       amd64<br>
libwind0-heimdal        1.6~git20120311.dfsg.1-2ubuntu0.1       i386<br>lib=
wireshark-data       1.6.7-1 all<br>libwireshark1   1.6.7-1 amd64<br>libwir=
etap1     1.6.7-1 amd64<br>libwmf0.2-7     0.2.8.4-10ubuntu1       amd64<br=
>
libwmf0.2-7-gtk 0.2.8.4-10ubuntu1       amd64<br>libwnck-3-0     3.4.0-0ubu=
ntu1  amd64<br>libwnck-3-common        3.4.0-0ubuntu1  all<br>libwnck-commo=
n  1:2.30.7-0ubuntu1       all<br>libwnck22       1:2.30.7-0ubuntu1       a=
md64<br>
libwpd-0.9-9    0.9.4-1 amd64<br>libwpg-0.2-2    0.2.1-1 amd64<br>libwps-0.=
2-2    0.2.4-1 amd64<br>libwrap0        7.6.q-21        amd64<br>libwrap0  =
      7.6.q-21        i386<br>libwrap0-dev    7.6.q-21        amd64<br>
libwsutil1      1.6.7-1 amd64<br>libwww-perl     6.03-1  all<br>libwww-robo=
trules-perl  6.01-1  all<br>libwxbase2.8-0  2.8.12.1-6ubuntu2       amd64<b=
r>libwxgtk2.8-0   2.8.12.1-6ubuntu2       amd64<br>libx11-6        2:1.4.99=
.1-0ubuntu2.2   amd64<br>
libx11-6        2:1.4.99.1-0ubuntu2.2   i386<br>libx11-data     2:1.4.99.1-=
0ubuntu2.2   all<br>libx11-dev      2:1.4.99.1-0ubuntu2.2   amd64<br>libx11=
-doc      2:1.4.99.1-0ubuntu2.2   all<br>libx11-xcb1     2:1.4.99.1-0ubuntu=
2.2   amd64<br>
libx11-xcb1     2:1.4.99.1-0ubuntu2.2   i386<br>libx264-120     2:0.120.215=
1+gita3f4407-2       amd64<br>libx86-1        1.1+ds1-7ubuntu1        amd64=
<br>libxapian22     1.2.8-1 amd64<br>libxatracker1-lts-saucy 9.2.1-1ubuntu3=
~precise1 amd64<br>
libxau-dev      1:1.0.6-4       amd64<br>libxau6 1:1.0.6-4       amd64<br>l=
ibxau6 1:1.0.6-4       i386<br>libxaw7 2:1.0.9-3ubuntu1        amd64<br>lib=
xaw7 2:1.0.9-3ubuntu1        i386<br>libxcb-composite0       1.8.1-1ubuntu0=
.2        amd64<br>
libxcb-dri2-0   1.8.1-1ubuntu0.2        amd64<br>libxcb-dri2-0   1.8.1-1ubu=
ntu0.2        i386<br>libxcb-glx0     1.8.1-1ubuntu0.2        amd64<br>libx=
cb-glx0     1.8.1-1ubuntu0.2        i386<br>libxcb-keysyms1 0.3.8-1build1  =
 amd64<br>
libxcb-randr0   1.8.1-1ubuntu0.2        amd64<br>libxcb-render0  1.8.1-1ubu=
ntu0.2        amd64<br>libxcb-render0  1.8.1-1ubuntu0.2        i386<br>libx=
cb-shape0   1.8.1-1ubuntu0.2        amd64<br>libxcb-shm0     1.8.1-1ubuntu0=
.2        amd64<br>
libxcb-shm0     1.8.1-1ubuntu0.2        i386<br>libxcb-util0    0.3.8-2 amd=
64<br>libxcb-xfixes0  1.8.1-1ubuntu0.2        amd64<br>libxcb-xv0      1.8.=
1-1ubuntu0.2        amd64<br>libxcb1 1.8.1-1ubuntu0.2        amd64<br>libxc=
b1 1.8.1-1ubuntu0.2        i386<br>
libxcb1-dev     1.8.1-1ubuntu0.2        amd64<br>libxcomposite1  1:0.4.3-2b=
uild1 amd64<br>libxcomposite1  1:0.4.3-2build1 i386<br>libxcursor1     1:1.=
1.12-1ubuntu0.1     amd64<br>libxcursor1     1:1.1.12-1ubuntu0.1     i386<b=
r>
libxdamage1     1:1.1.3-2build1 amd64<br>libxdamage1     1:1.1.3-2build1 i3=
86<br>libxdelta2      1.1.3-9build1   amd64<br>libxdmcp-dev    1:1.1.0-4   =
    amd64<br>libxdmcp6       1:1.1.0-4       amd64<br>libxdmcp6       1:1.1=
.0-4       i386<br>
libxenstore3.0  4.1.5-0ubuntu0.12.04.3  amd64<br>libxext-dev     2:1.3.0-3u=
buntu0.1      amd64<br>libxext6        2:1.3.0-3ubuntu0.1      amd64<br>lib=
xext6        2:1.3.0-3ubuntu0.1      i386<br>libxfixes3      1:5.0-4ubuntu4=
.2        amd64<br>
libxfixes3      1:5.0-4ubuntu4.2        i386<br>libxfont1       1:1.4.4-1ub=
untu0.1      amd64<br>libxft2 2.2.0-3ubuntu2  amd64<br>libxft2 2.2.0-3ubunt=
u2  i386<br>libxi6  2:1.7.1.901-1ubuntu1~precise1   amd64<br>libxi6  2:1.7.=
1.901-1ubuntu1~precise1   i386<br>
libxine1        1.1.20-2build1  amd64<br>libxine1-bin    1.1.20-2build1  am=
d64<br>libxine1-console        1.1.20-2build1  amd64<br>libxine1-ffmpeg 1.1=
.20-2build1  amd64<br>libxine1-misc-plugins   1.1.20-2build1  amd64<br>
libxine1-plugins        1.1.20-2build1  all<br>libxine1-x      1.1.20-2buil=
d1  amd64<br>libxinerama1    2:1.1.1-3ubuntu0.1      amd64<br>libxinerama1 =
   2:1.1.1-3ubuntu0.1      i386<br>libxkbfile1     1:1.0.7-1ubuntu0.1      =
amd64<br>
libxklavier16   5.2.1-1ubuntu1  amd64<br>libxml-libxml-perl      1.89+dfsg-=
1     amd64<br>libxml-namespacesupport-perl    1.09-3  all<br>libxml-parser=
-perl      2.41-1build1    amd64<br>libxml-sax-base-perl    1.07-1  all<br>
libxml-sax-expat-perl   0.40-2  all<br>libxml-sax-perl 0.99+dfsg-1ubuntu0.1=
    all<br>libxml-twig-perl        1:3.39-1ubuntu1 all<br>libxml-xpath-perl=
       1.13-7  all<br>libxml2 2.7.8.dfsg-5.1ubuntu4.6 amd64<br>libxml2 2.7.=
8.dfsg-5.1ubuntu4.6 i386<br>
libxml2-utils   2.7.8.dfsg-5.1ubuntu4.6 amd64<br>libxmu6 2:1.1.0-3       am=
d64<br>libxmu6 2:1.1.0-3       i386<br>libxmuu1        2:1.1.0-3       amd6=
4<br>libxp6  1:1.0.1-2ubuntu0.12.04.1        amd64<br>libxp6  1:1.0.1-2ubun=
tu0.12.04.1        i386<br>
libxpm4 1:3.5.9-4       amd64<br>libxpm4 1:3.5.9-4       i386<br>libxrandr-=
ltss2 2:1.4.0-1ubuntu2~precise1       amd64<br>libxrandr2      2:1.3.2-2ubu=
ntu0.2      amd64<br>libxrandr2      2:1.3.2-2ubuntu0.2      i386<br>libxre=
nder1     1:0.9.6-2ubuntu0.1      amd64<br>
libxrender1     1:0.9.6-2ubuntu0.1      i386<br>libxres1        2:1.0.5-1ub=
untu0.1      amd64<br>libxslt1.1      1.1.26-8ubuntu1.3       amd64<br>libx=
slt1.1      1.1.26-8ubuntu1.3       i386<br>libxss1 1:1.2.1-2       amd64<b=
r>
libxss1 1:1.2.1-2       i386<br>libxt-dev       1:1.1.1-2ubuntu0.1      amd=
64<br>libxt6  1:1.1.1-2ubuntu0.1      amd64<br>libxt6  1:1.1.1-2ubuntu0.1  =
    i386<br>libxtst6        2:1.2.0-4ubuntu0.1      amd64<br>libxtst6      =
  2:1.2.0-4ubuntu0.1      i386<br>
libxv1  2:1.0.6-2ubuntu0.1      amd64<br>libxv1  2:1.0.6-2ubuntu0.1      i3=
86<br>libxvidcore4    2:1.3.2-6       amd64<br>libxvmc1        2:1.0.6-1ubu=
ntu2.1      amd64<br>libxxf86dga1    2:1.1.2-1ubuntu0.1      amd64<br>libxx=
f86vm1     1:1.1.1-2ubuntu0.1      amd64<br>
libxxf86vm1     1:1.1.1-2ubuntu0.1      i386<br>libyajl1        1.0.12-2   =
     amd64<br>libyaml-0-2     0.1.4-2ubuntu0.12.04.2  amd64<br>libyaml-tiny=
-perl       1.50-1  all<br>libyelp0        3.4.1-0ubuntu1  amd64<br>libzbar=
0        0.10+doc-7build2        amd64<br>
libzeitgeist-1.0-1      0.3.18-1ubuntu1 amd64<br>libzephyr4      3.0.1-1 am=
d64<br>libzip2 0.10-1ubuntu1   amd64<br>libzvbi-common  0.2.33-4        all=
<br>libzvbi0        0.2.33-4        amd64<br>light-themes    0.1.9.1-0ubunt=
u1.2      all<br>
lightdm 1.2.3-0ubuntu2.4        amd64<br>linaro-image-tools      2013.12+gi=
t6+111d7b3-0ubuntu1~linaro1   all<br>lintian 2.5.6ubuntu0.1  all<br>linux-f=
irmware  1.79.10 all<br>linux-generic-lts-saucy 3.11.0.17.16    amd64<br>
linux-headers-3.11.0-15 3.11.0-15.25~precise1   all<br>linux-headers-3.11.0=
-15-generic 3.11.0-15.25~precise1   amd64<br>linux-headers-3.11.0-17 3.11.0=
-17.31~precise1   all<br>linux-headers-3.11.0-17-generic 3.11.0-17.31~preci=
se1   amd64<br>
linux-headers-3.2.0-58  3.2.0-58.88     all<br>linux-headers-3.2.0-58-lowla=
tency       3.2.0-58.60     amd64<br>linux-headers-generic-lts-saucy 3.11.0=
.17.16    amd64<br>linux-image-3.11.0-15-generic   3.11.0-15.25~precise1   =
amd64<br>
linux-image-3.11.0-17-generic   3.11.0-17.31~precise1   amd64<br>linux-imag=
e-generic-lts-saucy   3.11.0.17.16    amd64<br>linux-libc-dev  3.2.0-59.90 =
    amd64<br>linux-libc-dev-armel-cross      3.2.0-23.36cross1.82    all<br=
>
linux-libc-dev-armhf-cross      3.2.0-23.36cross1.82    all<br>linux-sound-=
base        1.0.25+dfsg-0ubuntu1.1  all<br>linux-source    3.2.0.59.70     =
all<br>linux-source-3.11.0     3.11.0-17.31    all<br>linux-source-3.2.0   =
   3.2.0-59.90     all<br>
lmodern 2.004.1-3.1ubuntu1      all<br>locales 2.13+git20120306-3      all<=
br>lockfile-progs  0.1.16  amd64<br>login   1:4.1.4.2+svn3283-3ubuntu5.1   =
 amd64<br>logrotate       3.7.8-6ubuntu5  amd64<br>lrzsz   0.12.21-5       =
amd64<br>
lsb-base        4.0-0ubuntu20.3 all<br>lsb-release     4.0-0ubuntu20.3 all<=
br>lsdvd   0.16-3ubuntu1   amd64<br>lshw    02.15-2 amd64<br>lsof    4.81.d=
fsg.1-1build1     amd64<br>ltrace  0.5.3-2.1ubuntu2        amd64<br>luatex =
 0.70.1-1ubuntu1 amd64<br>
lvm2    2.02.66-4ubuntu7.4      amd64<br>m4      1.4.16-2ubuntu1 amd64<br>m=
ahjongg        1:3.4.1-0ubuntu2.2      amd64<br>make    3.81-8.1ubuntu1.1  =
     amd64<br>makedev 2.3.1-89ubuntu2 all<br>man-db  2.6.1-2ubuntu1  amd64<=
br>
manpages        3.35-0.1ubuntu1 all<br>manpages-dev    3.35-0.1ubuntu1 all<=
br>mawk    1.3.3-17        amd64<br>media-player-info       16-1    all<br>=
melt    0.7.6+git20120204-2     amd64<br>memtest86+      4.20-1.1ubuntu1 am=
d64<br>
mencoder        2:1.0~rc4.dfsg1+svn34540-1      amd64<br>menu    2.1.46ubun=
tu1   amd64<br>mercurial       2.0.2-1ubuntu1  amd64<br>mercurial-common   =
     2.0.2-1ubuntu1  all<br>mesa-common-dev 8.0.4-0ubuntu0.7        amd64<b=
r>
mesa-utils      8.0.1+git20110129+d8f7d6b-0ubuntu2      amd64<br>metacity  =
      1:2.34.1-1ubuntu11      amd64<br>metacity-common 1:2.34.1-1ubuntu11  =
    all<br>microcom        2009.6-1        amd64<br>mime-support    3.51-1u=
buntu1   all<br>
minicom 2.5-2   amd64<br>mjpegtools      1:1.9.0-0.5ubuntu7      amd64<br>m=
kvtoolnix      5.1.0-1ubuntu1  amd64<br>mlocate 0.23.1-1ubuntu2 amd64<br>mo=
bile-broadband-provider-info  20120410-0ubuntu1       all<br>modemmanager  =
  0.5.2.0-0ubuntu2        amd64<br>
module-assistant        0.11.4  all<br>module-init-tools       3.16-1ubuntu=
2   amd64<br>mount   2.20.1-1ubuntu3 amd64<br>mountall        2.36.4  amd64=
<br>mousetweaks     3.4.1-0ubuntu1  amd64<br>mp3blaster      1:3.2.5-3ubunt=
u1        amd64<br>
mp3burn 0.4.2-2 all<br>mp3cd   1.27.0-2        all<br>mp3check        0.8.3=
-2 amd64<br>mp3diags        1.0.10.065-1    amd64<br>mp3diags-doc    1.0.10=
.065-1    all<br>mp3fs   0.31-1  amd64<br>mp3gain 1.5.2-r2-2      amd64<br>
mp3info 0.8.5a-1        amd64<br>mp3info-gtk     0.8.5a-1        amd64<br>m=
p3rename       0.6-9   amd64<br>mp3report       1.0.2-3 all<br>mp3roaster  =
    0.3.0-5 all<br>mp3splt 2.4.1-0ubuntu1  amd64<br>mp3splt-gtk     0.7.1-0=
ubuntu3  amd64<br>
mp3val  0.1.8-1 amd64<br>mp3wrap 0.5-3   amd64<br>mpack   1.6-7   amd64<br>=
mpeg2dec        0.4.1-3 amd64<br>mpeg3-utils     1.5.4-5ubuntu1  amd64<br>m=
pegdemux       0.1.4-2 amd64<br>mpg123  1.12.1-3.2ubuntu1       amd64<br>
mpg321  0.2.13-4ubuntu1 amd64<br>mpi-default-dev 1.0.1   amd64<br>mplayer 2=
:1.0~rc4.dfsg1+svn34540-1      amd64<br>mscompress      0.3-3.1 amd64<br>ms=
r-tools       1.2-3   amd64<br>mtools  4.0.12-1ubuntu0.12.04.1 amd64<br>
mtr-tiny        0.80-1ubuntu1   amd64<br>multiarch-support       2.15-0ubun=
tu10.5        amd64<br>mutter-common   3.4.1-0ubuntu1  all<br>myspell-en-au=
   2.1-5.3ubuntu1  all<br>myspell-en-gb   1:3.3.0-2ubuntu3        all<br>
myspell-en-za   1:3.3.0-2ubuntu3        all<br>mysql-common    5.5.35-0ubun=
tu0.12.04.2 all<br>nano    2.2.6-1 amd64<br>nautilus        1:3.4.2-0ubuntu=
9        amd64<br>nautilus-data   1:3.4.2-0ubuntu9        all<br>nautilus-o=
pen-as-root   3.6.1-0~10~precise1     all<br>
nautilus-open-terminal  0.19-2build1    amd64<br>nautilus-sendto 3.0.1-2ubu=
ntu2  amd64<br>nautilus-sendto-empathy 3.4.2.3-0ubuntu1.1      amd64<br>nau=
tilus-share  0.7.3-1ubuntu2  amd64<br>ncurses-base    5.9-4   all<br>ncurse=
s-bin     5.9-4   amd64<br>
nepomuk-core-data       4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    all<br>nepo=
muk-core-runtime    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>net-to=
ols       1.60-24.1ubuntu2        amd64<br>netbase 4.47ubuntu1     all<br>
netcat-openbsd  1.89-4ubuntu1   amd64<br>netpbm  2:10.0-15       amd64<br>n=
etwork-manager 0.9.4.0-0ubuntu4.3      amd64<br>network-manager-gnome   0.9=
.4.1-0ubuntu2.3      amd64<br>network-manager-pptp    0.9.4.0-0ubuntu1     =
   amd64<br>
network-manager-pptp-gnome      0.9.4.0-0ubuntu1        amd64<br>normalize-=
audio 0.7.7-8build1   amd64<br>notify-osd      0.9.34-0ubuntu2.1       amd6=
4<br>notify-osd-icons        0.8~precise     all<br>nspluginviewer  1.4.4-0=
ubuntu4  i386<br>
nspluginwrapper 1.4.4-0ubuntu4  amd64<br>ntfs-3g 1:2012.1.15AR.1-1ubuntu1.2=
      amd64<br>ntfsprogs       1:2012.1.15AR.1-1ubuntu1.2      all<br>ntpda=
te 1:4.2.6.p3+dfsg-1ubuntu3.1      amd64<br>ntrack-module-libnl-0   016-1ub=
untu1    amd64<br>
nux-tools       2.14.1-0ubuntu1 amd64<br>nvidia-common   1:0.2.44.2      am=
d64<br>obex-data-server        0.4.6-0ubuntu1  amd64<br>obexd-client    0.4=
4-0ubuntu1   amd64<br>odbcinst        2.2.14p2-5ubuntu3       amd64<br>
odbcinst1debian2        2.2.14p2-5ubuntu3       amd64<br>odbcinst1debian2  =
      2.2.14p2-5ubuntu3       i386<br>oggz-tools      1.1.1-1 amd64<br>ogmr=
ip  0.13.6-0ubuntu4 amd64<br>ogmrip-ac3      0.2-0.1ubuntu2  amd64<br>ogmri=
p-dirac    0.1-0.2build1   amd64<br>
ogmrip-doc      0.13.6-0ubuntu4 all<br>ogmrip-mpeg     0.2-0.2ubuntu1  amd6=
4<br>ogmrip-oggz     0.2-0.0 amd64<br>ogmrip-profiles 0.2-0.0 all<br>ogmrip=
-video-copy       0.3-0.0 amd64<br>ogmtools        1:1.5-3ubuntu1  amd64<br=
>
okular  4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>okular-backend-odp=
      1:2.7.1-0ubuntu1~ubuntu12.04.3~ppa5     amd64<br>okular-dev      4:4.=
12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>okular-extra-backends   4:4.12=
.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
onboard 0.97.0-0ubuntu4 amd64<br>oneconf 0.2.8.1 all<br>openbsd-inetd   0.2=
0091229-1ubuntu1     amd64<br>openmpi-common  1.4.3-2.1ubuntu3        all<b=
r>openoffice.org-hyphenation      0.6     all<br>openprinting-ppds       20=
120322-0ubuntu1       all<br>
openshot        1.4.3-1 all<br>openshot-doc    1.4.3-1 all<br>openssh-clien=
t  1:5.9p1-5ubuntu1.1      amd64<br>openssl 1.0.1-4ubuntu5.11       amd64<b=
r>openvpn 2.2.1-8ubuntu1.1        amd64<br>opera   12.16.1860      amd64<br=
>
oracle-java7-installer  7u51-0~webupd8~1        all<br>os-prober       1.51=
ubuntu3     amd64<br>oss-compat      1       all<br>overlay-scrollbar      =
 0.2.16-0ubuntu1.1       all<br>oxygen-icon-theme       4:4.12.2-0ubuntu1~u=
buntu12.04.4~ppa1    all<br>
p7zip-full      9.20.1~dfsg.1-4 amd64<br>p7zip-rar       9.20.1~ds.1-3   am=
d64<br>parted  2.3-8ubuntu5.1  amd64<br>passwd  1:4.1.4.2+svn3283-3ubuntu5.=
1    amd64<br>patch   2.6.1-3 amd64<br>patchutils      0.3.2-1.1       amd6=
4<br>
pbuilder        0.208ubuntu1    all<br>pbzip2  1.1.6-1 amd64<br>pciutils   =
     1:3.1.8-2ubuntu6        amd64<br>pcmciautils     018-6   amd64<br>perl=
    5.14.2-6ubuntu2.4       amd64<br>perl-base       5.14.2-6ubuntu2.4     =
  amd64<br>
perl-modules    5.14.2-6ubuntu2.4       all<br>pgf     2.10-1  all<br>phono=
n  4:4.7.0really4.6.0-0ubuntu1     amd64<br>phonon-backend-gstreamer       =
 4:4.7.0really4.6.2-0ubuntu1~precise1~ppa1       amd64<br>pidgin  1:2.10.3-=
0ubuntu1.4     amd64<br>
pidgin-data     1:2.10.3-0ubuntu1.4     all<br>pidgin-libnotify        0.14=
-4ubuntu10  amd64<br>piuparts        0.43ubuntu1     all<br>pkg-config     =
 0.26-1ubuntu1   amd64<br>plasma-scriptengine-javascript  4:4.12.2-0ubuntu1=
~ubuntu12.04.4~ppa1    amd64<br>
playonlinux     4.0.14-1        all<br>plymouth        0.8.2-2ubuntu31.1   =
    amd64<br>plymouth-label  0.8.2-2ubuntu31.1       amd64<br>plymouth-them=
e-ubuntu-logo      0.8.2-2ubuntu31.1       amd64<br>plymouth-theme-ubuntu-t=
ext      0.8.2-2ubuntu31.1       amd64<br>
pm-utils        1.4.1-9fix.ubuntu12.04  all<br>po-debconf      1.0.16+nmu2u=
buntu1      all<br>pod2pdf 0.42-2  all<br>policykit-1     0.104-1ubuntu1.1 =
       amd64<br>policykit-1-gnome       0.105-1ubuntu3.1        amd64<br>
policykit-desktop-privileges    0.10    all<br>poppler-data    0.4.5-2 all<=
br>poppler-utils   0.18.4-1ubuntu3.1       amd64<br>popularity-contest     =
 1.53ubuntu1     all<br>powermgmt-base  1.31    amd64<br>ppp     2.4.5-5ubu=
ntu1  amd64<br>
pppconfig       2.3.18+nmu3ubuntu1      all<br>pppoeconf       1.20ubuntu1 =
    all<br>pptp-linux      1.7.2-6 amd64<br>preview-latex-style     11.86-2=
ubuntu1  all<br>printer-driver-c2esp    23-1    amd64<br>printer-driver-foo=
2zjs  20111202dfsg0-1ubuntu1  amd64<br>
printer-driver-gutenprint       5.2.8~pre1-0ubuntu2.1   amd64<br>printer-dr=
iver-hpcups   3.12.2-1ubuntu3.4       amd64<br>printer-driver-hpijs    3.12=
.2-1ubuntu3.4       amd64<br>printer-driver-min12xxw 0.0.9-6ubuntu1  amd64<=
br>
printer-driver-pnm2ppa  1.13+nondbs-0ubuntu1    amd64<br>printer-driver-pto=
uch   1.3-3ubuntu0.1  amd64<br>printer-driver-pxljr    1.3+repack0-2   amd6=
4<br>printer-driver-sag-gdi  0.1-3   all<br>printer-driver-splix    2.0.0+s=
vn300-1.1ubuntu2 amd64<br>
pristine-tar    1.20ubuntu1     amd64<br>procps  1:3.2.8-11ubuntu6.3     am=
d64<br>prosper 1.00.4+cvs.2007.05.01-4 all<br>protobuf-compiler       2.4.1=
-1ubuntu2  amd64<br>ps2eps  1.68-1  amd64<br>psmisc  22.15-2ubuntu1.1      =
  amd64<br>
pulseaudio      1:1.1-0ubuntu15.4       amd64<br>pulseaudio-module-bluetoot=
h     1:1.1-0ubuntu15.4       amd64<br>pulseaudio-module-gconf 1:1.1-0ubunt=
u15.4       amd64<br>pulseaudio-module-x11   1:1.1-0ubuntu15.4       amd64<=
br>
pulseaudio-utils        1:1.1-0ubuntu15.4       amd64<br>putty   0.62-6ubun=
tu0.1 amd64<br>putty-tools     0.62-6ubuntu0.1 amd64<br>python  2.7.3-0ubun=
tu2.2        amd64<br>python-appindicator     0.4.92-0ubuntu1.1       amd64=
<br>
python-apport   2.0.1-0ubuntu17.6       all<br>python-apt      0.8.3ubuntu7=
.2  amd64<br>python-apt-common       0.8.3ubuntu7.2  all<br>python-aptdaemo=
n        0.43+bzr805-0ubuntu9    all<br>python-aptdaemon.gtk3widgets    0.4=
3+bzr805-0ubuntu9    all<br>
python-aptdaemon.pkcompat       0.43+bzr805-0ubuntu9    all<br>python-bluez=
    0.18-1build2    amd64<br>python-brlapi   4.3-1ubuntu5    amd64<br>pytho=
n-bzrlib   2.5.1-0ubuntu2  amd64<br>python-cairo    1.8.8-1ubuntu3  amd64<b=
r>
python-central  0.6.17ubuntu2   all<br>python-chardet  2.0.1-2build1   all<=
br>python-configglue       1.0-1build1     all<br>python-configobj        4=
.7.2+ds-3build1        all<br>python-crypto   2.4.1-1ubuntu0.1        amd64=
<br>
python-cups     1.9.61-0ubuntu2 amd64<br>python-cupshelpers      1.3.8+2012=
0201-0ubuntu8.1       all<br>python-dateutil 1.5-1   all<br>python-dbus    =
 1.0.0-1ubuntu1  amd64<br>python-dbus-dev 1.0.0-1ubuntu1  all<br>python-deb=
ian   0.1.21ubuntu1   all<br>
python-debianbts        1.10build1      all<br>python-debtagshw        1.9+=
git20120320-0ubuntu1        all<br>python-defer    1.0.2+bzr481-1  all<br>p=
ython-dev      2.7.3-0ubuntu2.2        amd64<br>python-dirspec  3.0.0-0ubun=
tu1  all<br>
python-distro-info      0.8.2   all<br>python-dns      2.3.6-1.12.04   all<=
br>python-egenix-mxdatetime        3.2.1-1ubuntu1  amd64<br>python-egenix-m=
xtools   3.2.1-1ubuntu1  amd64<br>python-empy     3.3-6ubuntu2    all<br>
python-fpconst  0.7.2-4 all<br>python-gconf    2.28.1+dfsg-1   amd64<br>pyt=
hon-gdbm     2.7.3-1ubuntu1  amd64<br>python-gi       3.2.2-1~precise amd64=
<br>python-gi-cairo 3.2.2-1~precise amd64<br>python-glade2   2.24.0-3      =
  amd64<br>
python-gmenu    3.0.1-0ubuntu7  amd64<br>python-gnomekeyring     2.32.0+dfs=
g-1   amd64<br>python-gnupginterface   0.3.2-9.1ubuntu3        all<br>pytho=
n-gobject  3.2.2-1~precise all<br>python-gobject-2        2.28.6-10ubuntu1 =
       amd64<br>
python-gst0.10  0.10.22-3ubuntu0.1      amd64<br>python-gtk2     2.24.0-3  =
      amd64<br>python-httplib2 0.7.2-1ubuntu2.1        all<br>python-ibus  =
   1.4.2-0ubuntu1~ubuntu12.04.1~ppa1       all<br>python-imaging  1.1.7-4 a=
md64<br>
python-keyring  0.9.2-0ubuntu0.12.04.2  all<br>python-launchpadlib     1.9.=
12-1        all<br>python-lazr.restfulclient       0.12.0-1ubuntu1.1       =
all<br>python-lazr.uri 1.0.3-1 all<br>python-libproxy 0.4.7-0ubuntu4.1     =
   all<br>
python-libxml2  2.7.8.dfsg-5.1ubuntu4.6 amd64<br>python-linaro-image-tools =
      2013.12+git6+111d7b3-0ubuntu1~linaro1   all<br>python-louis    2.3.0-=
3 amd64<br>python-magic    5.09-2ubuntu0.2 amd64<br>python-mako     0.5.0-1=
 all<br>
python-markupsafe       0.15-1  amd64<br>python-minimal  2.7.3-0ubuntu2.2  =
      amd64<br>python-mlt3     0.7.6+git20120204-2     amd64<br>python-naut=
ilus 1.1-3   amd64<br>python-nose     1.1.2-3 all<br>python-notify   0.1.1-=
3 amd64<br>
python-oauth    1.0.1-3build1   all<br>python-openssl  0.12-1ubuntu2.1 amd6=
4<br>python-packagekit       0.7.2-4ubuntu3  all<br>python-pam      0.4.2-1=
2.2ubuntu4       amd64<br>python-paramiko 1.7.7.1-2ubuntu1        all<br>
python-parted   3.6-4   amd64<br>python-pexpect  2.3-1ubuntu2    all<br>pyt=
hon-pip      1.0-1build1     all<br>python-piston-mini-client       0.7.2+b=
zr57-0ubuntu1    all<br>python-pkg-resources    0.6.24-1ubuntu1 all<br>
python-ply      3.4-2build1     all<br>python-problem-report   2.0.1-0ubunt=
u17.6       all<br>python-progressbar      2.2-2   all<br>python-protobuf 2=
.4.1-1ubuntu2  amd64<br>python-pyatspi2 2.4.0+dfsg-0ubuntu3     all<br>
python-pycurl   7.19.0-4ubuntu3 amd64<br>python-pygoocanvas      0.14.1-1ub=
untu6 amd64<br>python-pyinotify        0.9.2-1 all<br>python-pysqlite2     =
   2.6.3-2build1   amd64<br>python-renderpm 2.5-1.1build1   amd64<br>python=
-reportbug        6.3.1ubuntu1    all<br>
python-reportlab        2.5-1.1build1   all<br>python-reportlab-accel  2.5-=
1.1build1   amd64<br>python-scour    0.26-3  all<br>python-serial   2.5-2.1=
build1   all<br>python-setuptools       0.6.24-1ubuntu1 all<br>python-simpl=
ejson       2.3.2-1 amd64<br>
python-smbc     1.0.13-0ubuntu1 amd64<br>python-soappy   0.12.0-4        al=
l<br>python-software-properties      0.82.7.7        all<br>python-speechd =
 0.7.1-6ubuntu3  all<br>python-support  1.0.14ubuntu2   all<br>python-twist=
ed-bin      11.1.0-1ubuntu2 amd64<br>
python-twisted-core     11.1.0-1ubuntu2 all<br>python-twisted-names    11.1=
.0-1        all<br>python-twisted-web      11.1.0-1        all<br>python-ub=
untu-sso-client        3.0.2-0ubuntu3  all<br>python-ubuntuone-client 3.0.2=
-0ubuntu2  all<br>
python-ubuntuone-control-panel  3.0.1-0ubuntu1  all<br>python-ubuntuone-sto=
rageprotocol        3.0.2-0ubuntu1  all<br>python-virtkey  0.60.0-0ubuntu5 =
amd64<br>python-wadllib  1.3.0-2 all<br>python-wxgtk2.8 2.8.12.1-6ubuntu2  =
     amd64<br>
python-wxversion        2.8.12.1-6ubuntu2       all<br>python-xapian   1.2.=
8-1 amd64<br>python-xdg      0.19-3ubuntu2   all<br>python-xkit     0.4.2.3=
build1   all<br>python-yaml     3.10-2  amd64<br>python-zeitgeist        0.=
9.0-1ubuntu1  all<br>
python-zope.interface   3.6.1-1ubuntu3  amd64<br>python2.7       2.7.3-0ubu=
ntu3.4        amd64<br>python2.7-dev   2.7.3-0ubuntu3.4        amd64<br>pyt=
hon2.7-minimal       2.7.3-0ubuntu3.4        amd64<br>qapt-batch      1.3.1=
-0ubuntu2  amd64<br>
qdbus   4:4.8.2+dfsg-2ubuntu1~precise1~ppa6     amd64<br>qemu    1.0+noroms=
-0ubuntu14.13 amd64<br>qemu-common     1.0+noroms-0ubuntu14.13 all<br>qemu-=
keymaps    1.4.0-2013.03-0ubuntu1~linaro1  all<br>qemu-kvm        1.0+norom=
s-0ubuntu14.13 amd64<br>
qemu-kvm-extras 1.5.0-2013.06+git74+20130802+ef1b0ae-3linaroprecise1    all=
<br>qemu-kvm-extras-static  1.5.0-2013.06+git74+20130802+ef1b0ae-3linaropre=
cise1    all<br>qemu-linaro-keymaps     1.5.0-2013.06+git74+20130802+ef1b0a=
e-3linaroprecise1    all<br>
qemu-system     1.5.0-2013.06+git74+20130802+ef1b0ae-3linaroprecise1    amd=
64<br>qemu-user       1.5.0-2013.06+git74+20130802+ef1b0ae-3linaroprecise1 =
   amd64<br>qemu-user-static        1.5.0-2013.06+git74+20130802+ef1b0ae-3l=
inaroprecise1    amd64<br>
qemu-utils      1.0+noroms-0ubuntu14.13 amd64<br>qt-at-spi       0.2.0+git2=
0120411-0ubuntu1      amd64<br>qt4-linguist-tools      4:4.8.2+dfsg-2ubuntu=
1~precise1~ppa6     amd64<br>qt4-qmake       4:4.8.2+dfsg-2ubuntu1~precise1=
~ppa6     amd64<br>
quilt   0.50-2  all<br>radeontool      1.6.2-1.1       amd64<br>rar     2:4=
.2.0-0ubuntu0.12.04  amd64<br>rarian-compat   0.8.1-5 amd64<br>rdesktop    =
    1.7.0-1ubuntu2  amd64<br>readline-common 6.2-8   all<br>reiserfsprogs  =
 1:3.6.21-1build1        amd64<br>
remmina 1.0.0-1ubuntu6.3        amd64<br>remmina-common  1.0.0-1ubuntu6.3  =
      all<br>remmina-plugin-rdp      1.0.0-1ubuntu6.3        amd64<br>remmi=
na-plugin-vnc      1.0.0-1ubuntu6.3        amd64<br>remuco-base     0.9.5-1=
.1build1 all<br>
remuco-okular   0.9.5-1.1build1 all<br>reportbug       6.3.1ubuntu1    all<=
br>resolvconf      1.63ubuntu16    all<br>rfkill  0.4-1ubuntu2    amd64<br>=
rhythmbox       2.96-0ubuntu4.3 amd64<br>rhythmbox-data  2.96-0ubuntu4.3 al=
l<br>
rhythmbox-mozilla       2.96-0ubuntu4.3 amd64<br>rhythmbox-plugin-cdrecorde=
r     2.96-0ubuntu4.3 amd64<br>rhythmbox-plugin-magnatune      2.96-0ubuntu=
4.3 amd64<br>rhythmbox-plugin-zeitgeist      2.96-0ubuntu4.3 all<br>rhythmb=
ox-plugins       2.96-0ubuntu4.3 amd64<br>
rhythmbox-ubuntuone     4.2.0-0ubuntu0.0.1      all<br>ripit   3.9.0-2 all<=
br>ripoff  0.8.3-0ubuntu5  amd64<br>ripoff-mp3-plugin       1.1-0ubuntu3   =
 amd64<br>ripperx 2.7.3-1 amd64<br>rootstock       0.1.99.4-0ubuntu1       =
amd64<br>
rsync   3.0.9-1ubuntu1  amd64<br>rsyslog 5.8.6-1ubuntu8.6        amd64<br>r=
tkit   0.10-2ubuntu0.12.04.1   amd64<br>ruby    4.8     all<br>ruby-kde4   =
    4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>ruby-okular     4:4.12=
.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>
ruby-qt4        4:4.12.2-0ubuntu1~ubuntu12.04.4~ppa1    amd64<br>ruby1.8 1.=
8.7.352-2ubuntu1.4    amd64<br>samba-common    2:3.6.3-2ubuntu2.9      all<=
br>samba-common-bin        2:3.6.3-2ubuntu2.9      amd64<br>sane-utils     =
 1.0.22-7ubuntu1 amd64<br>
scrub   2.4-2build1     amd64<br>seabios 0.6.2-0ubuntu2.1        all<br>sea=
horse        3.2.2-0ubuntu2.1        amd64<br>sed     4.2.1-9 amd64<br>sens=
ible-utils  0.0.6ubuntu2    all<br>sessioninstaller        0.20+bzr128-0ubu=
ntu1.3  all<br>
sgml-base       1.26+nmu1ubuntu1        all<br>sgml-data       2.0.6   all<=
br>shared-desktop-ontologies       0.11.0-1~ubuntu12.04~ppa1       all<br>s=
hared-mime-info        1.0-0ubuntu4.1  amd64<br>sharutils       1:4.11-1   =
     amd64<br>
shotwell        0.12.3-0ubuntu0.1       amd64<br>simple-scan     3.4.3-0ubu=
ntu1  amd64<br>smbclient       2:3.6.3-2ubuntu2.9      amd64<br>sni-qt  0.2=
.5-0ubuntu3  amd64<br>software-center 5.2.10  all<br>software-center-aptdae=
mon-plugins       0.1.2   all<br>
software-properties-common      0.82.7.7        all<br>software-properties-=
gtk 0.82.7.7        all<br>soprano-daemon  2.9.3+dfsg1-0ubuntu1~ubuntu12.04=
~ppa1   amd64<br>sound-theme-freedesktop 0.7.pristine-2  all<br>sox     14.=
3.2-3        amd64<br>
sp      1.3.4-1.2.1-47.1        amd64<br>speech-dispatcher       0.7.1-6ubu=
ntu3  amd64<br>speedcrunch     0.10.1-2        amd64<br>spideroak       1:5=
.1.3 amd64<br>ssh-askpass-gnome       1:5.9p1-5ubuntu1.1      amd64<br>
ssl-cert        1.0.28ubuntu0.1 all<br>strace  4.5.20-2.3ubuntu1       amd6=
4<br>subtitleripper  0.3.4-0.5ubuntu2        amd64<br>subversion      1.6.1=
7dfsg-3ubuntu3.3   amd64<br>sudo    1.8.3p1-1ubuntu3.4      amd64<br>synapt=
ic        0.75.9ubuntu1   amd64<br>
sysfsutils      2.1.0+repack-1  amd64<br>syslinux        2:4.05+dfsg-2   am=
d64<br>syslinux-common 2:4.05+dfsg-2   all<br>syslinux-legacy 2:3.63+dfsg-2=
ubuntu5    amd64<br>system-config-printer-common    1.3.8+20120201-0ubuntu8=
.1       all<br>
system-config-printer-gnome     1.3.8+20120201-0ubuntu8.1       all<br>syst=
em-config-printer-udev      1.3.8+20120201-0ubuntu8.1       amd64<br>system=
-tools-backends   2.10.2-1ubuntu1 amd64<br>sysv-rc 2.88dsf-13.10ubuntu11.1 =
all<br>
sysvinit-utils  2.88dsf-13.10ubuntu11.1 amd64<br>tar     1.26-4ubuntu1   am=
d64<br>tcpd    7.6.q-21        amd64<br>tcpdump 4.2.1-1ubuntu2  amd64<br>te=
lepathy-gabble        0.16.0-0ubuntu3.1       amd64<br>telepathy-haze  0.6.=
0-0ubuntu1  amd64<br>
telepathy-idle  0.1.11-2ubuntu0.1       amd64<br>telepathy-indicator     0.=
2.1-0ubuntu1  amd64<br>telepathy-logger        0.4.0-0ubuntu1  amd64<br>tel=
epathy-mission-control-5     1:5.12.0-0ubuntu2.1     amd64<br>telepathy-sal=
ut 0.8.0-0ubuntu1  amd64<br>
telnet  0.17-36build1   amd64<br>tex-common      2.10    all<br>texi2html  =
     1.82-1ubuntu1   all<br>texinfo 4.13a.dfsg.1-8ubuntu2   amd64<br>texliv=
e 2009-15 all<br>texlive-base    2009-15 all<br>texlive-bibtex-extra    200=
9-10ubuntu1  all<br>
texlive-binaries        2009-11ubuntu2  amd64<br>texlive-common  2009-15 al=
l<br>texlive-doc-base        2009-2  all<br>texlive-extra-utils     2009-10=
ubuntu1  all<br>texlive-font-utils      2009-10ubuntu1  all<br>texlive-font=
s-recommended       2009-15 all<br>
texlive-fonts-recommended-doc   2009-15 all<br>texlive-generic-recommended =
    2009-15 all<br>texlive-latex-base      2009-15 all<br>texlive-latex-bas=
e-doc  2009-15 all<br>texlive-latex-extra     2009-10ubuntu1  all<br>texliv=
e-latex-extra-doc 2009-10ubuntu1  all<br>
texlive-latex-recommended       2009-15 all<br>texlive-latex-recommended-do=
c   2009-15 all<br>texlive-luatex  2009-15 all<br>texlive-math-extra      2=
009-10ubuntu1  all<br>texlive-pictures        2009-15 all<br>texlive-pictur=
es-doc    2009-15 all<br>
texlive-pstricks        2009-10ubuntu1  all<br>texlive-pstricks-doc    2009=
-10ubuntu1  all<br>thunderbird     1:24.3.0+build2-0ubuntu0.12.04.1        =
amd64<br>thunderbird-gnome-support       1:24.3.0+build2-0ubuntu0.12.04.1  =
      amd64<br>
thunderbird-locale-en   1:24.3.0+build2-0ubuntu0.12.04.1        amd64<br>th=
underbird-locale-en-us        1:24.3.0+build2-0ubuntu0.12.04.1        all<b=
r>time    1.7-23.1        amd64<br>tipa    2:1.3-15        all<br>toshset 1=
.76-2  amd64<br>
totem   3.0.1-0ubuntu21.1       amd64<br>totem-common    3.0.1-0ubuntu21.1 =
      all<br>totem-mozilla   3.0.1-0ubuntu21.1       amd64<br>totem-plugins=
   3.0.1-0ubuntu21.1       amd64<br>transcode       3:1.1.5-0ubuntu10      =
 amd64<br>
transcode-doc   3:1.1.5-0ubuntu10       all<br>transcode-utils 3:1.1.5-0ubu=
ntu10       amd64<br>transfig        1:3.2.5.d-1     amd64<br>transmission-=
common     2.51-0ubuntu1.3 all<br>transmission-gtk        2.51-0ubuntu1.3 a=
md64<br>
tsconf  1.0-10  all<br>ttf-dejavu      2.33-2ubuntu1   all<br>ttf-dejavu-co=
re 2.33-2ubuntu1   all<br>ttf-dejavu-extra        2.33-2ubuntu1   all<br>tt=
f-droid       20101110+git-2  all<br>ttf-freefont    20100919-1      all<br=
>
ttf-indic-fonts-core    1:0.5.11ubuntu1 all<br>ttf-mscorefonts-installer   =
    3.4ubuntu3      all<br>ttf-punjabi-fonts       1:0.5.11ubuntu1 all<br>t=
tf-ubuntu-font-family  0.80-0ubuntu2   all<br>ttf-umefont     434-1   all<b=
r>
ttf-unfonts-core        1.0.3.is.1.0.2-080608-5ubuntu1  all<br>ttf-wqy-micr=
ohei        0.2.0-beta-1ubuntu1     all<br>twolame 0.3.13-1build1  amd64<br=
>tzdata  2013g-0ubuntu0.12.04    all<br>u-boot-tools    2011.09-2       amd=
64<br>
uboot-mkimage   2011.09-2       all<br>ubuntu-artwork  57      all<br>ubunt=
u-dev-tools        0.141ubuntu0.1  all<br>ubuntu-docs     12.04.6 all<br>ub=
untu-extras-keyring   2010.09.27      all<br>ubuntu-keyring  2011.11.21.1  =
  all<br>
ubuntu-minimal  1.267.1 amd64<br>ubuntu-mono     0.0.40  all<br>ubuntu-rest=
ricted-addons        12      amd64<br>ubuntu-restricted-extras        57   =
   amd64<br>ubuntu-sounds   0.13    all<br>ubuntu-sso-client       3.0.2-0u=
buntu3  all<br>
ubuntu-sso-client-gtk   3.0.2-0ubuntu3  all<br>ubuntu-standard 1.267.1 amd6=
4<br>ubuntu-system-service   0.2.2.1 all<br>ubuntu-wallpapers       0.34.1 =
 all<br>ubuntu-wallpapers-extra 0.34.1  all<br>ubuntu-wallpapers-karmic    =
    0.34.1  all<br>
ubuntu-wallpapers-lucid 0.34.1  all<br>ubuntu-wallpapers-maverick      0.34=
.1  all<br>ubuntu-wallpapers-natty 0.34.1  all<br>ubuntu-wallpapers-oneiric=
       0.34.1  all<br>ubuntu-wallpapers-precise       0.34.1  all<br>ubuntu=
one-client        3.0.2-0ubuntu2  all<br>
ubuntuone-client-gnome  3.0.1-0ubuntu1  amd64<br>ubuntuone-control-panel 3.=
0.1-0ubuntu1  all<br>ubuntuone-couch 0.3.0-0ubuntu4  all<br>ubuntuone-insta=
ller     3.0.2-0ubuntu1.1        all<br>ucf     3.0025+nmu2ubuntu1      all=
<br>
udev    175-0ubuntu9.4  amd64<br>udisks  1.0.4-5ubuntu2.1        amd64<br>u=
disks2 2.1.0-4~ubuntu12.04~ppa1        amd64<br>ufw     0.31.1-1        all=
<br>unace   1.2b-9  amd64<br>unattended-upgrades     0.76ubuntu1     all<br=
>
unity   5.20.0-0ubuntu3 amd64<br>unity-2d        5.14.0-0ubuntu2 all<br>uni=
ty-2d-common 5.14.0-0ubuntu2 all<br>unity-2d-panel  5.14.0-0ubuntu2 amd64<b=
r>unity-2d-shell  5.14.0-0ubuntu2 amd64<br>unity-2d-spread 5.14.0-0ubuntu2 =
amd64<br>
unity-asset-pool        0.8.23-0ubuntu1 all<br>unity-common    5.20.0-0ubun=
tu3 all<br>unity-greeter   0.2.9-0ubuntu1.2        amd64<br>unity-lens-appl=
ications 5.18.0-0ubuntu1 amd64<br>unity-lens-files        5.10.0-0ubuntu1.1=
       amd64<br>
unity-lens-music        5.12.0-0ubuntu2 amd64<br>unity-lens-video        0.=
3.5-0ubuntu1.3        all<br>unity-scope-musicstores 5.12.0-0ubuntu2 amd64<=
br>unity-scope-video-remote        0.3.5-0ubuntu2.2        all<br>unity-ser=
vices  5.20.0-0ubuntu3 amd64<br>
unixodbc        2.2.14p2-5ubuntu3       amd64<br>uno-libs3       3.5.7-0ubu=
ntu5  amd64<br>unrar   1:4.0.3-1       amd64<br>unzip   6.0-4ubuntu2    amd=
64<br>update-inetd    4.41    all<br>update-manager  1:0.156.14.11   all<br=
>
update-manager-core     1:0.156.14.11   amd64<br>update-notifier 0.119ubunt=
u8.6  amd64<br>update-notifier-common  0.119ubuntu8.6  all<br>upower  0.9.1=
5-3git1ubuntu0.1   amd64<br>upstart 1.5-0ubuntu7.2  amd64<br>ure     3.5.7-=
0ubuntu5  amd64<br>
ureadahead      0.100.0-12      amd64<br>usb-creator-common      0.2.38.2  =
      amd64<br>usb-creator-gtk 0.2.38.2        amd64<br>usb-modeswitch  1.2=
.3+repack0-1ubuntu2  amd64<br>usb-modeswitch-data     20120120-0ubuntu1    =
   all<br>
usbmuxd 1.0.7-2ubuntu0.1        amd64<br>usbutils        1:005-1 amd64<br>u=
til-linux      2.20.1-1ubuntu3 amd64<br>uudeview        0.5.20-3.2      amd=
64<br>uuid-dev        2.20.1-1ubuntu3 amd64<br>uuid-runtime    2.20.1-1ubun=
tu3 amd64<br>
vbetool 1.1-2ubuntu1    amd64<br>vde2    2.2.3-3build2   amd64<br>vgabios 0=
.6c-2ubuntu3   all<br>vim-common      2:7.3.429-2ubuntu2.1    amd64<br>vim-=
tiny        2:7.3.429-2ubuntu2.1    amd64<br>vinagre 3.4.2-0ubuntu1  amd64<=
br>
vino    3.4.2-0ubuntu1.3        amd64<br>virtualbox-4.3  4.3.8-92456~Ubuntu=
~precise      amd64<br>virtuoso-minimal        6.1.6+repack-0ubuntu2~ubuntu=
12.04.3~ppa1        all<br>virtuoso-opensource-6.1-bin     6.1.6+repack-0ub=
untu2~ubuntu12.04.3~ppa1        amd64<br>
virtuoso-opensource-6.1-common  6.1.6+repack-0ubuntu2~ubuntu12.04.3~ppa1   =
     amd64<br>vlc     2.0.8+git20140211+r49186+4+5~ubuntu12.04.1      amd64=
<br>vlc-data        2.0.8+git20140211+r49186+4+5~ubuntu12.04.1      all<br>
vlc-nox 2.0.8+git20140211+r49186+4+5~ubuntu12.04.1      amd64<br>vlc-plugin=
-notify       2.0.8+git20140211+r49186+4+5~ubuntu12.04.1      amd64<br>vlc-=
plugin-pulse        2.0.8+git20140211+r49186+4+5~ubuntu12.04.1      amd64<b=
r>
vorbis-tools    1.4.0-1ubuntu2  amd64<br>w64codecs       1:20071007-dmo2 am=
d64<br>wamerican       7.1-1   all<br>watershed       6       amd64<br>wbri=
tish        7.1-1   all<br>wdiff   0.6.5-1 amd64<br>wget    1.13.4-2ubuntu1=
 amd64<br>
whiptail        0.52.11-2ubuntu10       amd64<br>whois   5.0.15ubuntu2   am=
d64<br>whoopsie        0.1.33  amd64<br>wifi-radar      2.0.s08+dfsg-1ubunt=
u1   all<br>winbind 2:3.6.3-2ubuntu2.9      amd64<br>wine-gecko1.4   1.4.0-=
0ubuntu2  amd64<br>
wine-gecko1.4   1.4.0-0ubuntu2  i386<br>wine1.4 1.4-0ubuntu4.1  amd64<br>wi=
ne1.4-amd64   1.4-0ubuntu4.1  amd64<br>wine1.4-common  1.4-0ubuntu4.1  all<=
br>wine1.4-i386    1.4-0ubuntu4.1  i386<br>winetricks      0.0+20120308    =
amd64<br>
wireless-tools  30~pre9-5ubuntu2        amd64<br>wireshark       1.6.7-1 am=
d64<br>wireshark-common        1.6.7-1 amd64<br>wodim   9:1.1.11-2ubuntu2  =
     amd64<br>wpasupplicant   0.7.3-6ubuntu2.2        amd64<br>x11-apps    =
    7.6+5ubuntu1    amd64<br>
x11-common      1:7.6+12ubuntu2 all<br>x11-session-utils       7.6+2   amd6=
4<br>x11-utils       7.6+4ubuntu0.1  amd64<br>x11-xfs-utils   7.6+1   amd64=
<br>x11-xkb-utils   7.6+4   amd64<br>x11-xserver-utils       7.6+3   amd64<=
br>
x11-xserver-utils-lts-saucy     7.7+0ubuntu2~precise1   amd64<br>x11proto-c=
ore-dev       7.0.22-1ubuntu0.1       all<br>x11proto-input-dev      2.3-1~=
precise1  all<br>x11proto-kb-dev 1.0.5-2 all<br>x11proto-xext-dev       7.2=
.0-3 all<br>
xauth   1:1.0.6-1       amd64<br>xaw3dg  1.5+E-18.1ubuntu1       i386<br>xb=
itmaps        1.1.1-1 all<br>xcursor-themes  1.0.3-1 all<br>xdelta  1.1.3-9=
build1   amd64<br>xdg-user-dirs   0.14-0ubuntu2   amd64<br>xdg-user-dirs-gt=
k       0.9-0ubuntu1    amd64<br>
xdg-utils       1.1.0~rc1-2ubuntu6      all<br>xdiagnose       2.5.3   all<=
br>xfonts-base     1:1.0.3 all<br>xfonts-encodings        1:1.0.4-1ubuntu1 =
       all<br>xfonts-mathml   4ubuntu1        all<br>xfonts-scalable 1:1.0.=
3-1       all<br>
xfonts-utils    1:7.6+1 amd64<br>xfsprogs        3.1.7   amd64<br>xine-ui 0=
.99.6-1.1      amd64<br>xinit   1.3.1-1 amd64<br>xinput  1.5.99.1-0ubuntu2 =
      amd64<br>xkb-data        2.5-1ubuntu1.3  all<br>xml-core        0.13 =
   all<br>
xmlto   0.0.25-1        amd64<br>xmltoman        0.4-3   all<br>xorg    1:7=
.6+12ubuntu2 amd64<br>xorg-docs-core  1:1.6-1ubuntu2  all<br>xorg-sgml-doct=
ools      1:1.10-1        all<br>xserver-common  2:1.11.4-0ubuntu10.14   al=
l<br>
xserver-common-lts-saucy        2:1.14.5-1ubuntu2~saucy1~precise2       all=
<br>xserver-xorg-core-lts-saucy     2:1.14.5-1ubuntu2~saucy1~precise2      =
 amd64<br>xserver-xorg-glamoregl-lts-saucy        0.5.1-0ubuntu4.2~precise2=
       amd64<br>
xserver-xorg-input-all-lts-saucy        1:7.7+1ubuntu6~precise1 amd64<br>xs=
erver-xorg-input-evdev-lts-saucy      1:2.7.3-0ubuntu3.1~precise1     amd64=
<br>xserver-xorg-input-mouse-lts-saucy      1:1.7.2-3build1~precise1       =
 amd64<br>
xserver-xorg-input-synaptics-lts-saucy  1.7.1-0ubuntu1~precise1 amd64<br>xs=
erver-xorg-input-vmmouse-lts-saucy    1:12.9.0-0ubuntu4~precise1      amd64=
<br>xserver-xorg-input-wacom-lts-saucy      1:0.20.0-0ubuntu1~precise1     =
 amd64<br>
xserver-xorg-lts-saucy  1:7.7+1ubuntu6~precise1 amd64<br>xserver-xorg-video=
-all-lts-saucy        1:7.7+1ubuntu6~precise1 amd64<br>xserver-xorg-video-a=
ti-lts-saucy        1:7.2.0-0ubuntu10~precise2      amd64<br>xserver-xorg-v=
ideo-cirrus-lts-saucy     1:1.5.2-0ubuntu2~precise1       amd64<br>
xserver-xorg-video-fbdev-lts-saucy      1:0.4.3-0ubuntu3~precise1       amd=
64<br>xserver-xorg-video-intel-lts-saucy      2:2.99.904-0ubuntu2.1~precise=
1  amd64<br>xserver-xorg-video-mach64-lts-saucy     6.9.3-0ubuntu3~precise1=
 amd64<br>
xserver-xorg-video-mga-lts-saucy        1:1.6.2-0ubuntu2~precise1       amd=
64<br>xserver-xorg-video-modesetting-lts-saucy        0.8.0-0ubuntu1.1~prec=
ise1       amd64<br>xserver-xorg-video-neomagic-lts-saucy   1:1.2.7-0ubuntu=
3~precise1       amd64<br>
xserver-xorg-video-nouveau-lts-saucy    1:1.0.9-2ubuntu1~precise2       amd=
64<br>xserver-xorg-video-openchrome-lts-saucy 1:0.3.1-0ubuntu2.1~precise1  =
   amd64<br>xserver-xorg-video-r128-lts-saucy       6.9.1-0ubuntu2~precise1=
 amd64<br>
xserver-xorg-video-radeon-lts-saucy     1:7.2.0-0ubuntu10~precise2      amd=
64<br>xserver-xorg-video-s3-lts-saucy 1:0.6.5-0ubuntu3.1~precise1     amd64=
<br>xserver-xorg-video-savage-lts-saucy     1:2.3.6-0ubuntu3~precise1      =
 amd64<br>
xserver-xorg-video-siliconmotion-lts-saucy      1:1.7.7-0ubuntu3~precise1  =
     amd64<br>xserver-xorg-video-sis-lts-saucy        1:0.10.7-0ubuntu4~pre=
cise1      amd64<br>xserver-xorg-video-sisusb-lts-saucy     1:0.9.6-0ubuntu=
3~precise1       amd64<br>
xserver-xorg-video-tdfx-lts-saucy       1:1.4.5-0ubuntu3~precise1       amd=
64<br>xserver-xorg-video-trident-lts-saucy    1:1.3.6-0ubuntu4~precise1    =
   amd64<br>xserver-xorg-video-vesa-lts-saucy       1:2.3.2-0ubuntu3~precis=
e1       amd64<br>
xserver-xorg-video-vmware-lts-saucy     1:13.0.1-0ubuntu2~precise1      amd=
64<br>xsltproc        1.1.26-8ubuntu1.3       amd64<br>xterm   271-1ubuntu2=
.1  amd64<br>xtrans-dev      1.2.6-2 all<br>xubuntu-wallpapers      12.04.1=
1        all<br>
xul-ext-ubufox  2.7-0ubuntu0.12.04.1    all<br>xz-lzma 5.1.1alpha+20110809-=
3   all<br>xz-utils        5.1.1alpha+20110809-3   amd64<br>yakuake 2.9.8-1=
 amd64<br>yelp    3.4.1-0ubuntu1  amd64<br>yelp-xsl        3.4.1-1 all<br>
zeitgeist       0.9.0-1ubuntu1  all<br>zeitgeist-core  0.9.0-1ubuntu1  amd6=
4<br>zeitgeist-datahub       0.8.2-1ubuntu2  amd64<br>zenity  3.4.0-0ubuntu=
4  amd64<br>zenity-common   3.4.0-0ubuntu4  all<br>zerofree        1.0.1-2u=
buntu1  amd64<br>
zfs-fuse        0.6.9-1build1   amd64<br>zip     3.0-4   amd64<br>zlib1g  1=
:1.2.3.4.dfsg-3ubuntu4 amd64<br>zlib1g  1:1.2.3.4.dfsg-3ubuntu4 i386<br>zli=
b1g-dev      1:1.2.3.4.dfsg-3ubuntu4 amd64<br></div></div><div class=3D"gma=
il_extra">
<br><br><div class=3D"gmail_quote">On Mon, Mar 3, 2014 at 10:25 AM, Paul Eg=
gleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.co=
m" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">
<div class=3D"">On Monday 03 March 2014 17:13:57 Paul Eggleton wrote:<br>
&gt; On Monday 03 March 2014 09:56:59 Rick Bianchi wrote:<br>
&gt; &gt; undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE<br>
&gt;<br>
&gt; This looks familiar - we&#39;ve seen this issue before:<br>
&gt;<br>
&gt; <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2972" t=
arget=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2972</=
a><br>
&gt;<br>
&gt; Unfortunately we were never able to reproduce it, despite numerous peo=
ple<br>
&gt; running test builds on Ubuntu 12.04 / 12.10.<br>
<br>
</div>Rick - It&#39;s a stab in the dark, but would you be able to send me =
a list of<br>
packages you have installed on your machine? Maybe I can have another go at=
<br>
reproducing the problem here or at the very least comparing the list to wha=
t I<br>
have installed. The most comprehensive list would be produced with the<br>
following command:<br>
<br>
dpkg-query -W -f=3D&#39;${Package}\t${Version}\t${Architecture}\n&#39;<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--047d7b675bf08cb5ad04f3b7400b--
