Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 571EFE008B4; Sun, 30 Nov 2014 03:49:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.236 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail4.adam.net.au (webmail4.adam.net.au [202.136.110.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AC6BE007C1
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 03:49:19 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sAUBnF0w010884
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 22:19:15 +1030
Message-Id: <ef051ca22ec7ecbae732578a59c58ab58b6f8eac@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
Date: Sun, 30 Nov 2014 22:19:15 +1030
MIME-Version: 1.0
Subject: Difficulty in locating the specific build error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 30 Nov 2014 11:49:26 -0000
Content-Type: multipart/alternative;
	boundary="=_821356507b57e0a6e6f7d5c97c00308c"

--=_821356507b57e0a6e6f7d5c97c00308c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am using poky 1.6.1. I have built the follwing images successfully :=
=0Acore-image-sato-sdk & atmel-qt5-demo-image. I am tying to build the=
=0Afollowing image without success: atmel-qt5-demo-image -c populate_sdk=
=0AI get the error:=0A________________________________________-=0AERROR:=
 Function failed: do_populate_sdk=0AERROR: Logfile of failure stored in:=
=0A/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi=
/atmel-qt5-demo-image/1.0-r1/temp/log.do_populate_sdk.28982=0AERROR: Tas=
k 9=0A(/home/lachlan/poky/meta-atmel/recipes-qt/images/atmel-qt5-demo-im=
age.bb,=0Ado_populate_sdk) failed with exit code '1'=0ANOTE: Tasks Summa=
ry: Attempted 4591 tasks of which 4590 didn't need=0Ato be rerun and 1 f=
ailed.=0A=0ASummary: 1 task failed:=0A=C2=A0=0A/home/lachlan/poky/meta-a=
tmel/recipes-qt/images/atmel-qt5-demo-image.bb,=0Ado_populate_sdk=0ASumm=
ary: There were 2 ERROR messages shown, returning a non-zero exit=0Acode=
 =0A___________________________________________=0A=0AWhen i view the lo=
g file, there seems to be many errors and it is=0Adifficult to determine=
 the actual specific error. I have extracted a=0Anumber of what I believ=
e are errors in the log file, along with the 2=0Apreceeding and 3 follow=
ing debug lines, and have numbred these 1 to=0A23. If anyone can pojnt m=
e to the soure of the problem, i would=0Aappreciate it.=0A=0A=09DEBUG: E=
xecuting python function do_populate_sdk =0A=0A=09NOTE: Installing TARGE=
T packages =0A=0A=09NOTE: Executing=0A'/home/lachlan/poky/build-atmel/tm=
p/sysroots/x86_64-linux/usr/bin/opkg-make-index=0A-r /home/lachlan/poky/=
build-atmel/tmp/deploy/ipk/all/Packages -p=0A/home/lachlan/poky/build-at=
mel/tmp/deploy/ipk/all/Packages -m=0A/home/lachlan/poky/build-atmel/tmp/=
deploy/ipk/all' ... =0A=0A=09NOTE: Executing=0A'/home/lachlan/poky/build=
-atmel/tmp/sysroots/x86_64-linux/usr/bin/opkg-make-index=0A-r=0A/home/la=
chlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/Packages=0A-p=0A/=
home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/Packages=
=0A-m /home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp' ..=
=0A=0A=0A=09NOTE: Executing=0A'/home/lachlan/poky/build-atmel/tmp/sysro=
ots/x86_64-linux/usr/bin/opkg-make-index=0A-r /home/lachlan/poky/build-a=
tmel/tmp/deploy/ipk/sama5d3xek/Packages=0A-p /home/lachlan/poky/build-at=
mel/tmp/deploy/ipk/sama5d3xek/Packages=0A-m /home/lachlan/poky/build-atm=
el/tmp/deploy/ipk/sama5d3xek' ... =0A=0A=09NOTE: Executing=0A'/home/lach=
lan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/bin/opkg-make-index=
=0A-r /home/lachlan/poky/build-atmel/tmp/deploy/ipk/all/Packages -p=0A/h=
ome/lachlan/poky/build-atmel/tmp/deploy/ipk/all/Packages -m=0A/home/lach=
lan/poky/build-atmel/tmp/deploy/ipk/all' ... =0A=0A=09NOTE: Executing=0A=
'/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/bin/opkg-m=
ake-index=0A-r=0A/home/lachlan/poky/build-atmel/tmp/deploy/ipk/x86_64-na=
tivesdk/Packages=0A-p=0A/home/lachlan/poky/build-atmel/tmp/deploy/ipk/x8=
6_64-nativesdk/Packages=0A-m /home/lachlan/poky/build-atmel/tmp/deploy/i=
pk/x86_64-nativesdk' ...=0A=0A=0A=09NOTE: Installing the following packa=
ges:=0Agstreamer1.0-plugins-good-meta libqt5declarative5=0Agstreamer1.0-=
plugins-base-meta=0Apackagegroup-core-standalone-sdk-target-dbg qtmultim=
edia=0Asmartrefrigerator kernel-modules qtbase-fonts qtbase iptables lmb=
ench=0Alibv4l qtbase-plugins gstreamer1.0-plugins-ugly-meta libicui18n51=
=0Agdbserver opkg packagegroup-base-extended gstreamer1.0-libav canutils=
=0Alibqt5declarative-plugins dosfstools qtdeclarative setserial qtsystem=
s=0Aiperf obp-utils packagegroup-core-basic qtbase-tools qmlbrowser=0Aqt=
graphicaleffects-qmlplugins packagegroup-base-usbgadget qtscript=0Aptpde=
mo qtlocation-qmlplugins minehunt g1-binaries-dev ntp=0Apackagegroup-bas=
e-wifi qtmultimedia-plugins wget libqt5svg-plugins=0Ai2c-tools qtsystems=
-tools qtwebkit-qmlplugins tslib-calibrate=0Agstreamer1.0-plugins-bad-me=
ta openssh-sftp videoplayer=0Ag1-binaries-staticdev mtd-utils qtdeclarat=
ive-plugins=0Alinux-firmware-ralink bridge-utils packagegroup-core-ssh-o=
penssh=0Alibts-1.0-0 startup lrzsz qtconnectivity-qmlplugins=0Aqtlocatio=
n-plugins atmel-qt-demo-init nbench-byte libqt5svg5=0Apackagegroup-core-=
tools-debug packagegroup-core-boot=0Alinux-firmware-ath6k qtdeclarative-=
qmlplugins qtsystems-qmlplugins=0Alibqt5sensors5 libqt5declarative-qmlpl=
ugins openssh-sftp-server=0Aopkg-collateral gstreamer1.0-plugins-hantro=
=0Apackagegroup-core-eclipse-debug applicationlauncher samegame qtwebkit=
=0Azd1211-firmware packagegroup-base-bluetooth usbutils=0Aqtmultimedia-q=
mlplugins homeautomation tslib-tests iproute2=0Apackagegroup-core-standa=
lone-sdk-target gstreamer1.0=0Apoky-feed-config-opkg =0A=0A=09NOTE:=0A/h=
ome/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/bin/opkg-cl=
=0A-f=0A/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gn=
ueabi/atmel-qt5-demo-image/1.0-r1/opkg.conf=0A-o=0A/home/lachlan/poky/bu=
ild-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.=
0-r1/sdk/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-gnuea=
bi=0A--force_postinstall --prefer-arch-to-version install=0Agstreamer1.0=
-plugins-good-meta libqt5declarative5=0Agstreamer1.0-plugins-base-meta=
=0Apackagegroup-core-standalone-sdk-target-dbg qtmultimedia=0Asmartrefri=
gerator kernel-modules qtbase-fonts qtbase iptables lmbench=0Alibv4l qtb=
ase-plugins gstreamer1.0-plugins-ugly-meta libicui18n51=0Agdbserver opkg=
 packagegroup-base-extended gstreamer1.0-libav canutils=0Alibqt5declarat=
ive-plugins dosfstools qtdeclarative setserial qtsystems=0Aiperf obp-uti=
ls packagegroup-core-basic qtbase-tools qmlbrowser=0Aqtgraphicaleffects-=
qmlplugins packagegroup-base-usbgadget qtscript=0Aptpdemo qtlocation-qml=
plugins minehunt g1-binaries-dev ntp=0Apackagegroup-base-wifi qtmultimed=
ia-plugins wget libqt5svg-plugins=0Ai2c-tools qtsystems-tools qtwebkit-q=
mlplugins tslib-calibrate=0Agstreamer1.0-plugins-bad-meta openssh-sftp v=
ideoplayer=0Ag1-binaries-staticdev mtd-utils qtdeclarative-plugins=0Alin=
ux-firmware-ralink bridge-utils packagegroup-core-ssh-openssh=0Alibts-1.=
0-0 startup lrzsz qtconnectivity-qmlplugins=0Aqtlocation-plugins atmel-q=
t-demo-init nbench-byte libqt5svg5=0Apackagegroup-core-tools-debug packa=
gegroup-core-boot=0Alinux-firmware-ath6k qtdeclarative-qmlplugins qtsyst=
ems-qmlplugins=0Alibqt5sensors5 libqt5declarative-qmlplugins openssh-sft=
p-server=0Aopkg-collateral gstreamer1.0-plugins-hantro=0Apackagegroup-co=
re-eclipse-debug applicationlauncher samegame qtwebkit=0Azd1211-firmware=
 packagegroup-base-bluetooth usbutils=0Aqtmultimedia-qmlplugins homeauto=
mation tslib-tests iproute2=0Apackagegroup-core-standalone-sdk-target gs=
treamer1.0=0Apoky-feed-config-opkg =0A=0A=09ERROR: Unable to install pac=
kages.   =0A=0A=09Command=0A'/home/lachlan/poky/build-atmel/tmp/sysroots=
/x86_64-linux/usr/bin/opkg-cl=0A-f=0A/home/lachlan/poky/build-atmel/tmp/=
work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/opkg.conf=
=0A-o=0A/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gn=
ueabi/atmel-qt5-demo-image/1.0-r1/sdk/image/opt/poky/1.6.1/sysroots/cort=
exa5t2hf-vfp-poky-linux-gnueabi=0A--force_postinstall --prefer-arch-to-v=
ersion install=0Agstreamer1.0-plugins-good-meta libqt5declarative5=0Agst=
reamer1.0-plugins-base-meta=0Apackagegroup-core-standalone-sdk-target-db=
g qtmultimedia=0Asmartrefrigerator kernel-modules qtbase-fonts qtbase ip=
tables lmbench=0Alibv4l qtbase-plugins gstreamer1.0-plugins-ugly-meta li=
bicui18n51=0Agdbserver opkg packagegroup-base-extended gstreamer1.0-liba=
v canutils=0Alibqt5declarative-plugins dosfstools qtdeclarative setseria=
l qtsystems=0Aiperf obp-utils packagegroup-core-basic qtbase-tools qmlbr=
owser=0Aqtgraphicaleffects-qmlplugins packagegroup-base-usbgadget qtscri=
pt=0Aptpdemo qtlocation-qmlplugins minehunt g1-binaries-dev ntp=0Apackag=
egroup-base-wifi qtmultimedia-plugins wget libqt5svg-plugins=0Ai2c-tools=
 qtsystems-tools qtwebkit-qmlplugins tslib-calibrate=0Agstreamer1.0-plug=
ins-bad-meta openssh-sftp videoplayer=0Ag1-binaries-staticdev mtd-utils=
 qtdeclarative-plugins=0Alinux-firmware-ralink bridge-utils packagegroup=
-core-ssh-openssh=0Alibts-1.0-0 startup lrzsz qtconnectivity-qmlplugins=
=0Aqtlocation-plugins atmel-qt-demo-init nbench-byte libqt5svg5=0Apackag=
egroup-core-tools-debug packagegroup-core-boot=0Alinux-firmware-ath6k qt=
declarative-qmlplugins qtsystems-qmlplugins=0Alibqt5sensors5 libqt5decla=
rative-qmlplugins openssh-sftp-server=0Aopkg-collateral gstreamer1.0-plu=
gins-hantro=0Apackagegroup-core-eclipse-debug applicationlauncher samega=
me qtwebkit=0Azd1211-firmware packagegroup-base-bluetooth usbutils=0Aqtm=
ultimedia-qmlplugins homeautomation tslib-tests iproute2=0Apackagegroup-=
core-standalone-sdk-target gstreamer1.0=0Apoky-feed-config-opkg' returne=
d 255: =0A=0A=091. =0A=0A=09Installing initscripts-functions (1.0-r155)=
 to root... =0A=0A=09Downloading=0Afile:/home/lachlan/poky/build-atmel/t=
mp/deploy/ipk/cortexa5t2hf-vfp/initscripts-functions_1.0-r155_cortexa5t2=
hf-vfp.ipk.=0A=0A=0A=09update-rc.d: error: unknown option =0A=0A=09usage=
: update-rc.d [-n] [-f]  remove =0A=0A=09 update-rc.d [-n]  defaults [NN=
 | SS KK] =0A=0A=09 update-rc.d [-n]  start|stop NN runlvl [runlvl] [...=
] . =0A=0A=09 update-rc.d [-n]  disable|enable [S|2|3|4|5] =0A=0A=09 -n:=
 not really =0A=0A=09 -f: force =0A=0A=09The disable|enable API is not s=
table and might change in the future.=0A=0A=0A=09Running groupadd comman=
ds... =0A=0A=09NOTE: Performing groupadd with [--root=0A/home/lachlan/po=
ky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-ima=
ge/1.0-r1/sdk/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-=
gnueabi=0A-r netdev] and 10 times of retry =0A=0A=09Running useradd comm=
ands... =0A=0A=09NOTE: Performing useradd with [--root=0A/home/lachlan/p=
oky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-im=
age/1.0-r1/sdk/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux=
-gnueabi=0A--system --home /var/lib/dbus --no-create-home --shell /bin/f=
alse=0A--user-group messagebus] and 10 times of retry =0A=0A=09Installin=
g update-rc.d (0.7-r5) to root... =0A=0A=09Downloading=0Afile:/home/lach=
lan/poky/build-atmel/tmp/deploy/ipk/all/update-rc.d_0.7-r5_all.ipk.=0A=
=0A=0A=092. =0A=0A=09Installing packagegroup-core-standalone-sdk-target-=
dbg (1.0-r8) to=0Aroot... =0A=0A=09Downloading=0Afile:/home/lachlan/poky=
/build-atmel/tmp/deploy/ipk/all/packagegroup-core-standalone-sdk-target-=
dbg_1.0-r8_all.ipk.=0A=0A=0A=09packagegroup-core-standalone-sdk-target-d=
bg: unsatisfied=0Arecommendation for libsegfault-dbg =0A=0A=09packagegro=
up-core-standalone-sdk-target-dbg: unsatisfied=0Arecommendation for libs=
tdc++-dbg =0A=0A=09packagegroup-core-standalone-sdk-target-dbg: unsatisf=
ied=0Arecommendation for eglibc-utils-dbg =0A=0A=09packagegroup-core-sta=
ndalone-sdk-target-dbg: unsatisfied=0Arecommendation for eglibc-thread-d=
b-dbg =0A=0A=09packagegroup-core-standalone-sdk-target-dbg: unsatisfied=
=0Arecommendation for eglibc-gconv-ibm850-dbg =0A=0A=09packagegroup-core=
-standalone-sdk-target-dbg: unsatisfied=0Arecommendation for eglibc-gcon=
v-iso8859-15-dbg =0A=0A=09packagegroup-core-standalone-sdk-target-dbg: u=
nsatisfied=0Arecommendation for eglibc-gconv-cp1252-dbg =0A=0A=09package=
group-core-standalone-sdk-target-dbg: unsatisfied=0Arecommendation for e=
glibc-localedata-i18n-dbg =0A=0A=09packagegroup-core-standalone-sdk-targ=
et-dbg: unsatisfied=0Arecommendation for eglibc-gconv-iso8859-1-dbg =0A=
=0A=09Installing qemuwrapper-cross-dbg (1.0-r0) to root... =0A=0A=09Down=
loading=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2h=
f-vfp/qemuwrapper-cross-dbg_1.0-r0_cortexa5t2hf-vfp.ipk.=0A=0A=0A=093.=
 =0A=0A=09Installing run-postinsts (1.0-r9) to root... =0A=0A=09Download=
ing=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/all/run-postins=
ts_1.0-r9_all.ipk.=0A=0A=0A=09update-rc.d: error: unknown option =0A=0A=
=09usage: update-rc.d [-n] [-f]  remove =0A=0A=09The disable|enable API=
 is not stable and might change in the future.=0A=0A=0A=09Installing pac=
kagegroup-base-extended (1.0-r83) to root... =0A=0A=09Downloading=0Afile=
:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/sama5d3xek/packagegroup-b=
ase-extended_1.0-r83_sama5d3xek.ipk.=0A=0A=0A=09packagegroup-base-usbhos=
t: unsatisfied recommendation for=0Akernel-module-mousedev =0A=0A=09pack=
agegroup-base-usbhost: unsatisfied recommendation for=0Akernel-module-sc=
si-mod =0A=0A=09packagegroup-base-usbhost: unsatisfied recommendation fo=
r=0Akernel-module-uhci-hcd =0A=0A=09packagegroup-base-usbhost: unsatisfi=
ed recommendation for=0Akernel-module-usb-storage =0A=0A=09packagegroup-=
base-usbhost: unsatisfied recommendation for=0Akernel-module-usbcore =0A=
=0A=09packagegroup-base-usbhost: unsatisfied recommendation for=0Akernel=
-module-ohci-hcd =0A=0A=09packagegroup-base-usbhost: unsatisfied recomme=
ndation for=0Akernel-module-ehci-hcd =0A=0A=09packagegroup-base-usbhost:=
 unsatisfied recommendation for=0Akernel-module-sd-mod =0A=0A=09packageg=
roup-base-usbhost: unsatisfied recommendation for=0Akernel-module-usbser=
ial =0A=0A=09packagegroup-base-nfs: unsatisfied recommendation for=0Aker=
nel-module-nfs =0A=0A=09package libtinfo5 suggests installing ncurses-te=
rminfo =0A=0A=09packagegroup-base-alsa: unsatisfied recommendation for=
=0Akernel-module-snd-pcm-oss =0A=0A=09packagegroup-base-alsa: unsatisfie=
d recommendation for=0Akernel-module-snd-mixer-oss =0A=0A=09packagegroup=
-distro-base: unsatisfied recommendation for=0Akernel-module-af-packet=
 =0A=0A=09packagegroup-base-usbgadget: unsatisfied recommendation for=0A=
kernel-module-pxa27x_udc =0A=0A=09packagegroup-base-usbgadget: unsatisfi=
ed recommendation for=0Akernel-module-g-file-storage =0A=0A=09packagegro=
up-base-usbgadget: unsatisfied recommendation for=0Akernel-module-gadget=
fs =0A=0A=09packagegroup-base-ipv6: unsatisfied recommendation for=0Aker=
nel-module-ipv6 =0A=0A=09packagegroup-base: unsatisfied recommendation f=
or=0Akernel-module-rtc-sysfs =0A=0A=09packagegroup-base: unsatisfied rec=
ommendation for=0Akernel-module-rtc-proc =0A=0A=09packagegroup-base: uns=
atisfied recommendation for=0Akernel-module-nls-utf8 =0A=0A=09packagegro=
up-base: unsatisfied recommendation for=0Akernel-module-rtc-dev =0A=0A=
=09packagegroup-base: unsatisfied recommendation for=0Akernel-module-inp=
ut =0A=0A=09packagegroup-base: unsatisfied recommendation for kernel-mod=
ule-unix=0A=0A=0A=09packagegroup-base: unsatisfied recommendation for=0A=
kernel-module-uinput =0A=0A=09packagegroup-base-bluetooth: unsatisfied r=
ecommendation for=0Akernel-module-bluetooth =0A=0A=09packagegroup-base-b=
luetooth: unsatisfied recommendation for=0Akernel-module-hci-usb =0A=0A=
=09packagegroup-base-bluetooth: unsatisfied recommendation for=0Akernel-=
module-sco =0A=0A=09packagegroup-base-bluetooth: unsatisfied recommendat=
ion for=0Akernel-module-l2cap =0A=0A=09packagegroup-base-nfc: unsatisfie=
d recommendation for=0Akernel-module-nfc =0A=0A=09packagegroup-base-wifi=
: unsatisfied recommendation for=0Akernel-module-crypto_algapi =0A=0A=09=
packagegroup-base-wifi: unsatisfied recommendation for=0Akernel-module-i=
eee80211-crypt =0A=0A=09packagegroup-base-wifi: unsatisfied recommendati=
on for=0Akernel-module-ieee80211-crypt-tkip =0A=0A=09packagegroup-base-w=
ifi: unsatisfied recommendation for=0Akernel-module-aes =0A=0A=09package=
group-base-wifi: unsatisfied recommendation for=0Akernel-module-ecb =0A=
=0A=09packagegroup-base-wifi: unsatisfied recommendation for=0Akernel-mo=
dule-ieee80211-crypt-wep =0A=0A=09packagegroup-base-wifi: unsatisfied re=
commendation for=0Akernel-module-cryptomgr =0A=0A=09packagegroup-base-wi=
fi: unsatisfied recommendation for=0Akernel-module-ieee80211-crypt-ccmp=
 =0A=0A=09packagegroup-base-wifi: unsatisfied recommendation for=0Akerne=
l-module-aes-generic =0A=0A=09packagegroup-base-wifi: unsatisfied recomm=
endation for=0Akernel-module-arc4 =0A=0A=09Installing packagegroup-base=
 (1.0-r83) to root... =0A=0A=09Downloading=0Afile:/home/lachlan/poky/bui=
ld-atmel/tmp/deploy/ipk/sama5d3xek/packagegroup-base_1.0-r83_sama5d3xek.=
ipk.=0A=0A=0A=094. =0A=0A=09Installing libtirpc1 (0.2.4-r0) to root...=
 =0A=0A=09Downloading=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/i=
pk/cortexa5t2hf-vfp/libtirpc1_0.2.4-r0_cortexa5t2hf-vfp.ipk.=0A=0A=0A=09=
update-rc.d: error: unknown option =0A=0A=09The disable|enable API is no=
t stable and might change in the future.=0A=0A=0A=09Running useradd comm=
ands... =0A=0A=09NOTE: Performing useradd with [--root=0A/home/lachlan/p=
oky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-im=
age/1.0-r1/sdk/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux=
-gnueabi=0A--system --no-create-home --shell /bin/false --user-group rpc=
] and 10=0Atimes of retry =0A=0A=09Installing packagegroup-base-ext2 (1.=
0-r83) to root... =0A=0A=09Downloading=0Afile:/home/lachlan/poky/build-a=
tmel/tmp/deploy/ipk/sama5d3xek/packagegroup-base-ext2_1.0-r83_sama5d3xek=
ipk.=0A=0A=0A=095. =0A=0A=09Installing alsa-utils-alsactl (1.0.27.2-r0)=
 to root... =0A=0A=09Downloading=0Afile:/home/lachlan/poky/build-atmel/t=
mp/deploy/ipk/cortexa5t2hf-vfp/alsa-utils-alsactl_1.0.27.2-r0_cortexa5t2=
hf-vfp.ipk.=0A=0A=0A=09update-rc.d: error: unknown option =0A=0A=09The d=
isable|enable API is not stable and might change in the future.=0A=0A=0A=
=09Installing gstreamer1.0-libav (1.2.3-r0) to root... =0A=0A=09Download=
ing=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vf=
p/gstreamer1.0-libav_1.2.3-r0_cortexa5t2hf-vfp.ipk.=0A=0A=0A=096. =0A=0A=
=09Installing python-core (2.7.3-r0.3) to root... =0A=0A=09Breaking circ=
ular dependency on python-core for python-re. =0A=0A=09Breaking circular=
 dependency on python-core for libpython2.7-1.0. =0A=0A=09Breaking circu=
lar dependency on python-core for python-lang. =0A=0A=09Breaking circula=
r dependency on python-core for libpython2.7-1.0. =0A=0A=09Breaking circ=
ular dependency on python-core for python-lang. =0A=0A=09Installing pyth=
on-io (2.7.3-r0.3) to root... =0A=0A=09Downloading=0Afile:/home/lachlan/=
poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/python-io_2.7.3-r0.3_co=
rtexa5t2hf-vfp.ipk.=0A=0A=0A=097. =0A=0A=09Installing lighttpd-module-ac=
cesslog (1.4.33-r1) to root... =0A=0A=09Downloading=0Afile:/home/lachlan=
/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/lighttpd-module-access=
log_1.4.33-r1_cortexa5t2hf-vfp.ipk.=0A=0A=0A=09update-rc.d: error: unkno=
wn option =0A=0A=09The disable|enable API is not stable and might change=
 in the future.=0A=0A=0A=09Installing qtbase-tools (5.2.1-r0) to root...=
 =0A=0A=09Downloading=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/i=
pk/cortexa5t2hf-vfp/qtbase-tools_5.2.1-r0_cortexa5t2hf-vfp.ipk.=0A=0A=0A=
=098. =0A=0A=09Installing ntp-tickadj (4.2.6p5-r6.0) to root... =0A=0A=
=09Downloading=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/cort=
exa5t2hf-vfp/ntp-tickadj_4.2.6p5-r6.0_cortexa5t2hf-vfp.ipk.=0A=0A=0A=09u=
pdate-rc.d: error: unknown option =0A=0A=09The disable|enable API is not=
 stable and might change in the future.=0A=0A=0A=09Running useradd comma=
nds... =0A=0A=09NOTE: Performing useradd with [--root=0A/home/lachlan/po=
ky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-ima=
ge/1.0-r1/sdk/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-=
gnueabi=0A--system --home-dir /var/lib/ntp --shell /bin/false --user-gro=
up ntp]=0Aand 10 times of retry =0A=0A=09Installing packagegroup-base-wi=
fi (1.0-r83) to root... =0A=0A=09Downloading=0Afile:/home/lachlan/poky/b=
uild-atmel/tmp/deploy/ipk/sama5d3xek/packagegroup-base-wifi_1.0-r83_sama=
5d3xek.ipk.=0A=0A=0A=099. =0A=0A=09Installing openssh-sshd (6.5p1-r0) to=
 root... =0A=0A=09Downloading=0Afile:/home/lachlan/poky/build-atmel/tmp/=
deploy/ipk/cortexa5t2hf-vfp/openssh-sshd_6.5p1-r0_cortexa5t2hf-vfp.ipk.=
=0A=0A=0A=09update-rc.d: error: unknown option =0A=0A=09The disable|enab=
le API is not stable and might change in the future.=0A=0A=0A=09Running=
 useradd commands... =0A=0A=09NOTE: Performing useradd with [--root=0A/h=
ome/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atme=
l-qt5-demo-image/1.0-r1/sdk/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-v=
fp-poky-linux-gnueabi=0A--system --no-create-home --home-dir /var/run/ss=
hd --shell /bin/false=0A--user-group sshd] and 10 times of retry =0A=0A=
=09Package libts-1.0-0 (1.1-r0) installed in root is up to date. =0A=0A=
=09Installing startup (1.0-r0) to root... =0A=0A=09Downloading=0Afile:/h=
ome/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/startup_1.0=
-r0_cortexa5t2hf-vfp.ipk.=0A=0A=0A=0910. =0A=0A=09Installing atmel-qt-de=
mo-init (1.1-r2) to root... =0A=0A=09Downloading=0Afile:/home/lachlan/po=
ky/build-atmel/tmp/deploy/ipk/all/atmel-qt-demo-init_1.1-r2_all.ipk.=0A=
=0A=0A=09update-rc.d: error: unknown option =0A=0A=09The disable|enable=
 API is not stable and might change in the future.=0A=0A=0A=09Installing=
 nbench-byte (2.2.3-r0) to root... =0A=0A=09Downloading=0Afile:/home/lac=
hlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/nbench-byte_2.2.3-=
r0_cortexa5t2hf-vfp.ipk.=0A=0A=0A=0911. =0A=0A=09Installing modutils-ini=
tscripts (1.0-r7) to root... =0A=0A=09Downloading=0Afile:/home/lachlan/p=
oky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/modutils-initscripts_1.0=
-r7_cortexa5t2hf-vfp.ipk.=0A=0A=0A=09update-rc.d: error: unknown option=
 =0A=0A=09The disable|enable API is not stable and might change in the f=
uture.=0A=0A=0A=09Installing linux-firmware-ath6k (1:0.0+git0+600caefd83=
-r0) to=0Aroot... =0A=0A=09Downloading=0Afile:/home/lachlan/poky/build-a=
tmel/tmp/deploy/ipk/all/linux-firmware-ath6k_0.0+git0+600caefd83-r0_all.=
ipk.=0A=0A=0A=0912. =0A=0A=09Installing bash (4.3-r0) to root... =0A=0A=
=09Downloading=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/cort=
exa5t2hf-vfp/bash_4.3-r0_cortexa5t2hf-vfp.ipk.=0A=0A=0A=09update-rc.d: e=
rror: unknown option =0A=0A=09The disable|enable API is not stable and m=
ight change in the future.=0A=0A=0A=09Installing applicationlauncher (1.=
5-r3) to root... =0A=0A=09Downloading=0Afile:/home/lachlan/poky/build-at=
mel/tmp/deploy/ipk/cortexa5t2hf-vfp/applicationlauncher_1.5-r3_cortexa5t=
2hf-vfp.ipk.=0A=0A=0A=0913. =0A=0A=09Installing packagegroup-core-standa=
lone-sdk-target (1.0-r8) to=0Aroot... =0A=0A=09Downloading=0Afile:/home/=
lachlan/poky/build-atmel/tmp/deploy/ipk/all/packagegroup-core-standalone=
-sdk-target_1.0-r8_all.ipk.=0A=0A=0A=09libc6-dev: unsatisfied recommenda=
tion for eglibc-extra-nss-dev =0A=0A=09libc6-dev: unsatisfied recommenda=
tion for libsegfault-dev =0A=0A=09libc6-dev: unsatisfied recommendation=
 for eglibc-thread-db-dev =0A=0A=09libc6-dev: unsatisfied recommendation=
 for libcidn-dev =0A=0A=09Installing libgcc-s-dev (4.8.2-r0) to root...=
 =0A=0A=09Downloading=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/i=
pk/cortexa5t2hf-vfp/libgcc-s-dev_4.8.2-r0_cortexa5t2hf-vfp.ipk.=0A=0A=0A=
=0914. =0A=0A=09update-alternatives: Linking=0A/home/lachlan/poky/build-=
atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1=
/sdk/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-gnueabi//=
etc/init.d/functions=0Ato /etc/init.d/functions.initscripts =0A=0A=09upd=
ate-rc.d: error: unknown option =0A=0A=09The disable|enable API is not s=
table and might change in the future.=0A=0A=0A=09can't do u-a offline=
 =0A=0A=09Configuring gstreamer1.0-plugins-bad. =0A=0A=0916. =0A=0A=09up=
date-alternatives: Linking=0A/home/lachlan/poky/build-atmel/tmp/work/sam=
a5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/sdk/image/opt/pok=
y/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-gnueabi//usr/bin/ssh=0Ato /=
usr/bin/ssh.openssh =0A=0A=09update-rc.d: error: unknown option =0A=0A=
=09The disable|enable API is not stable and might change in the future.=
=0A=0A=0A=09update-alternatives: Linking=0A/home/lachlan/poky/build-atme=
l/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/sdk=
/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-gnueabi//usr/=
sbin/brctl=0Ato /usr/sbin/brctl.bridge-utils =0A=0A=0918. =0A=0A=09Confi=
guring kernel-modulupdate-rc.d: error: unknown option =0A=0A=09usage: up=
date-rc.d [-n] [-f]  remove =0A=0A=09The disable|enable API is not stabl=
e and might change in the future.=0A=0A=0A=09e-jc42. =0A=0A=09Configurin=
g kernel-module-garp. =0A=0A=0920. =0A=0A=09Configuring eglibc-localedat=
a-translit-compat. =0A=0A=09Configuupdate-rc.d: error: unknown option=
 =0A=0A=09The disable|enable API is not stable and might change in the f=
uture.=0A=0A=0A=09Updating certificates in /etc/ssl/certs... rm: cannot=
 remove=0A'ca-certificates.crt': Permission denied =0A=0A=09ring eglibc-=
localedata-translit-narrow. =0A=0A=09Configuring eglibc-localedata-trans=
lit-wide. =0A=0A=0915. =0A=0A=09Configuring dbus-1. =0A=0A=09dbus-1.post=
inst returned 1, marking as unpacked only, configuration=0Arequired on t=
arget. =0A=0A=0917. =0A=0A=09Configuring openssh-sshd. =0A=0A=09openssh-=
sshd.postinst returned 1, marking as unpacked only,=0Aconfiguration requ=
ired on target. =0A=0A=0919. =0A=0A=09Configuring rpcbind. =0A=0A=09rpcb=
ind.postinst returned 1, marking as unpacked only, configuration=0Arequi=
red on target. =0A=0A=0921. =0A=0A=09Configuring ntp. =0A=0A=09ntp.posti=
nst returned 1, marking as unpacked only, configuration=0Arequired on ta=
rget. =0A=0A=0922. =0A=0A=09Configuring ca-certificates. =0A=0A=09ca-cer=
tificates.postinst returned 1, marking as unpacked only,=0Aconfiguration=
 required on target. =0A=0A=0923. =0A=0A=09Collected errors: =0A=0A=09 *=
 preinst_configure: Aborting installation of run-postinsts. =0A=0A=09 *=
 opkg_install_cmd: Cannot install package opkg. =0A=0A=09 * preinst_conf=
igure: Aborting installation of alsa-state. =0A=0A=09 * opkg_install_cmd=
: Cannot install package=0Apackagegroup-base-extended. =0A=0A=09 * prein=
st_configure: Aborting installation of lighttpd. =0A=0A=09 * opkg_instal=
l_cmd: Cannot install package packagegroup-core-basic.=0A=0A=0A=09 * pre=
inst_configure: Aborting installation of atmel-qt-demo-init. =0A=0A=09 *=
 opkg_install_cmd: Cannot install package atmel-qt-demo-init. =0A=0A=09=
 * preinst_configure: Aborting installation of modutils-initscripts.=0A=
=0A=0A=09 * opkg_install_cmd: Cannot install package packagegroup-core-b=
oot. =0A=0A=09 * preinst_configure: Aborting installation of tcf-agent.=
 =0A=0A=09 * opkg_install_cmd: Cannot install package=0Apackagegroup-cor=
e-eclipse-debug. =0A=0A=09DEBUG: Python function do_populate_sdk finishe=
d =0A=0A=09ERROR: Function failed: do_populate_sdk =0A=0A Thanks for any=
 advise=0ARegards=0ALachlan=0A---- Message sent via Adam Internet WebMai=
l - http://www.adam.com.au/

--=_821356507b57e0a6e6f7d5c97c00308c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I am using poky 1.6.1. I have built the follwing images succ=
essfully : core-image-sato-sdk &amp; atmel-qt5-demo-image. I am tying to=
 build the following image without success: atmel-qt5-demo-image -c popu=
late_sdk<br />I get the error:<br />____________________________________=
____-<br />ERROR: Function failed: do_populate_sdk<br />ERROR: Logfile o=
f failure stored in: /home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-=
poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/temp/log.do_populate_sdk.=
28982<br />ERROR: Task 9 (/home/lachlan/poky/meta-atmel/recipes-qt/image=
s/atmel-qt5-demo-image.bb, do_populate_sdk) failed with exit code '1'<br=
 />NOTE: Tasks Summary: Attempted 4591 tasks of which 4590 didn't need t=
o be rerun and 1 failed.<br /><br />Summary: 1 task failed:<br />=C2=A0=
 /home/lachlan/poky/meta-atmel/recipes-qt/images/atmel-qt5-demo-image.bb=
, do_populate_sdk<br />Summary: There were 2 ERROR messages shown, retur=
ning a non-zero exit code. <br />_______________________________________=
____<br /><br />When i view the log file, there seems to be many errors=
 and it is difficult to determine the actual specific error. I have extr=
acted a number of what I believe are errors in the log file, along with=
 the 2 preceeding and 3 following debug lines, and have numbred these 1=
 to 23. If anyone can pojnt me to the soure of the problem, i would appr=
eciate it.<br /><br /><p style=3D"margin-bottom:0in;line-height:100%;"><=
font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"=
1"><span lang=3D"en-us" xml:lang=3D"en-us">DEBUG:=0AExecuting python fun=
ction do_populate_sdk</span></font></font></p>=0A<p style=3D"margin-bott=
om:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">N=
OTE:=0AInstalling TARGET packages</span></font></font></p>=0A=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">NOTE:=0AExecuting=0A'/home/lachlan/poky/build-atmel/tmp/sys=
roots/x86_64-linux/usr/bin/opkg-make-index=0A-r /home/lachlan/poky/build=
-atmel/tmp/deploy/ipk/all/Packages -p=0A/home/lachlan/poky/build-atmel/t=
mp/deploy/ipk/all/Packages -m=0A/home/lachlan/poky/build-atmel/tmp/deplo=
y/ipk/all' ...</span></font></font></p>=0A=0A<p style=3D"margin-bottom:0=
in;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"f=
ont-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">NOTE:=
=0AExecuting=0A'/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux=
/usr/bin/opkg-make-index=0A-r=0A/home/lachlan/poky/build-atmel/tmp/deplo=
y/ipk/cortexa5t2hf-vfp/Packages=0A-p=0A/home/lachlan/poky/build-atmel/tm=
p/deploy/ipk/cortexa5t2hf-vfp/Packages=0A-m /home/lachlan/poky/build-atm=
el/tmp/deploy/ipk/cortexa5t2hf-vfp'=0A...</span></font></font></p>=0A=0A=
<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier N=
ew, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us=
" xml:lang=3D"en-us">NOTE:=0AExecuting=0A'/home/lachlan/poky/build-atmel=
/tmp/sysroots/x86_64-linux/usr/bin/opkg-make-index=0A-r /home/lachlan/po=
ky/build-atmel/tmp/deploy/ipk/sama5d3xek/Packages=0A-p /home/lachlan/pok=
y/build-atmel/tmp/deploy/ipk/sama5d3xek/Packages=0A-m /home/lachlan/poky=
/build-atmel/tmp/deploy/ipk/sama5d3xek' ...</span></font></font></p>=0A=
=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courie=
r New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en=
-us" xml:lang=3D"en-us">NOTE:=0AExecuting=0A'/home/lachlan/poky/build-at=
mel/tmp/sysroots/x86_64-linux/usr/bin/opkg-make-index=0A-r /home/lachlan=
/poky/build-atmel/tmp/deploy/ipk/all/Packages -p=0A/home/lachlan/poky/bu=
ild-atmel/tmp/deploy/ipk/all/Packages -m=0A/home/lachlan/poky/build-atme=
l/tmp/deploy/ipk/all' ...</span></font></font></p>=0A=0A<p style=3D"marg=
in-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font=
 style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en=
-us">NOTE:=0AExecuting=0A'/home/lachlan/poky/build-atmel/tmp/sysroots/x8=
6_64-linux/usr/bin/opkg-make-index=0A-r=0A/home/lachlan/poky/build-atmel=
/tmp/deploy/ipk/x86_64-nativesdk/Packages=0A-p=0A/home/lachlan/poky/buil=
d-atmel/tmp/deploy/ipk/x86_64-nativesdk/Packages=0A-m /home/lachlan/poky=
/build-atmel/tmp/deploy/ipk/x86_64-nativesdk'=0A...</span></font></font>=
</p>=0A=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D=
"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lan=
g=3D"en-us" xml:lang=3D"en-us">NOTE:=0AInstalling the following packages=
: gstreamer1.0-plugins-good-meta=0Alibqt5declarative5 gstreamer1.0-plugi=
ns-base-meta=0Apackagegroup-core-standalone-sdk-target-dbg qtmultimedia=
=0Asmartrefrigerator kernel-modules qtbase-fonts qtbase iptables lmbench=
=0Alibv4l qtbase-plugins gstreamer1.0-plugins-ugly-meta libicui18n51=0Ag=
dbserver opkg packagegroup-base-extended gstreamer1.0-libav canutils=0Al=
ibqt5declarative-plugins dosfstools qtdeclarative setserial=0Aqtsystems=
 iperf obp-utils packagegroup-core-basic qtbase-tools=0Aqmlbrowser qtgra=
phicaleffects-qmlplugins packagegroup-base-usbgadget=0Aqtscript ptpdemo=
 qtlocation-qmlplugins minehunt g1-binaries-dev ntp=0Apackagegroup-base-=
wifi qtmultimedia-plugins wget libqt5svg-plugins=0Ai2c-tools qtsystems-t=
ools qtwebkit-qmlplugins tslib-calibrate=0Agstreamer1.0-plugins-bad-meta=
 openssh-sftp videoplayer=0Ag1-binaries-staticdev mtd-utils qtdeclarativ=
e-plugins=0Alinux-firmware-ralink bridge-utils packagegroup-core-ssh-ope=
nssh=0Alibts-1.0-0 startup lrzsz qtconnectivity-qmlplugins=0Aqtlocation-=
plugins atmel-qt-demo-init nbench-byte libqt5svg5=0Apackagegroup-core-to=
ols-debug packagegroup-core-boot=0Alinux-firmware-ath6k qtdeclarative-qm=
lplugins qtsystems-qmlplugins=0Alibqt5sensors5 libqt5declarative-qmlplug=
ins openssh-sftp-server=0Aopkg-collateral gstreamer1.0-plugins-hantro=0A=
packagegroup-core-eclipse-debug applicationlauncher samegame qtwebkit=0A=
zd1211-firmware packagegroup-base-bluetooth usbutils=0Aqtmultimedia-qmlp=
lugins homeautomation tslib-tests iproute2=0Apackagegroup-core-standalon=
e-sdk-target gstreamer1.0=0Apoky-feed-config-opkg</span></font></font></=
p>=0A=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"C=
ourier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=
=3D"en-us" xml:lang=3D"en-us">NOTE:=0A/home/lachlan/poky/build-atmel/tmp=
/sysroots/x86_64-linux/usr/bin/opkg-cl=0A-f=0A/home/lachlan/poky/build-a=
tmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/=
opkg.conf=0A-o=0A/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky=
-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/sdk/image/opt/poky/1.6.1/sysr=
oots/cortexa5t2hf-vfp-poky-linux-gnueabi=0A--force_postinstall --prefer-=
arch-to-version   install=0Agstreamer1.0-plugins-good-meta libqt5declara=
tive5=0Agstreamer1.0-plugins-base-meta=0Apackagegroup-core-standalone-sd=
k-target-dbg qtmultimedia=0Asmartrefrigerator kernel-modules qtbase-font=
s qtbase iptables lmbench=0Alibv4l qtbase-plugins gstreamer1.0-plugins-u=
gly-meta libicui18n51=0Agdbserver opkg packagegroup-base-extended gstrea=
mer1.0-libav canutils=0Alibqt5declarative-plugins dosfstools qtdeclarati=
ve setserial=0Aqtsystems iperf obp-utils packagegroup-core-basic qtbase-=
tools=0Aqmlbrowser qtgraphicaleffects-qmlplugins packagegroup-base-usbga=
dget=0Aqtscript ptpdemo qtlocation-qmlplugins minehunt g1-binaries-dev n=
tp=0Apackagegroup-base-wifi qtmultimedia-plugins wget libqt5svg-plugins=
=0Ai2c-tools qtsystems-tools qtwebkit-qmlplugins tslib-calibrate=0Agstre=
amer1.0-plugins-bad-meta openssh-sftp videoplayer=0Ag1-binaries-staticde=
v mtd-utils qtdeclarative-plugins=0Alinux-firmware-ralink bridge-utils p=
ackagegroup-core-ssh-openssh=0Alibts-1.0-0 startup lrzsz qtconnectivity-=
qmlplugins=0Aqtlocation-plugins atmel-qt-demo-init nbench-byte libqt5svg=
5=0Apackagegroup-core-tools-debug packagegroup-core-boot=0Alinux-firmwar=
e-ath6k qtdeclarative-qmlplugins qtsystems-qmlplugins=0Alibqt5sensors5 l=
ibqt5declarative-qmlplugins openssh-sftp-server=0Aopkg-collateral gstrea=
mer1.0-plugins-hantro=0Apackagegroup-core-eclipse-debug applicationlaunc=
her samegame qtwebkit=0Azd1211-firmware packagegroup-base-bluetooth usbu=
tils=0Aqtmultimedia-qmlplugins homeautomation tslib-tests iproute2=0Apac=
kagegroup-core-standalone-sdk-target gstreamer1.0=0Apoky-feed-config-opk=
g</span></font></font></p>=0A=0A<p style=3D"margin-bottom:0in;line-heigh=
t:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;=
" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">ERROR:=0AUnable to=
 install packages. </span></font></font>=0A</p>=0A<p style=3D"margin-bot=
tom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">C=
ommand=0A'/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/b=
in/opkg-cl=0A=09-f=0A/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-=
poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/opkg.conf=0A-o=0A/home/la=
chlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-=
demo-image/1.0-r1/sdk/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-pok=
y-linux-gnueabi=0A--force_postinstall --prefer-arch-to-version   install=
=0Agstreamer1.0-plugins-good-meta libqt5declarative5=0Agstreamer1.0-plug=
ins-base-meta=0Apackagegroup-core-standalone-sdk-target-dbg qtmultimedia=
=0Asmartrefrigerator kernel-modules qtbase-fonts qtbase iptables lmbench=
=0Alibv4l qtbase-plugins gstreamer1.0-plugins-ugly-meta libicui18n51=0Ag=
dbserver opkg packagegroup-base-extended gstreamer1.0-libav canutils=0Al=
ibqt5declarative-plugins dosfstools qtdeclarative setserial=0Aqtsystems=
 iperf obp-utils packagegroup-core-basic qtbase-tools=0Aqmlbrowser qtgra=
phicaleffects-qmlplugins packagegroup-base-usbgadget=0Aqtscript ptpdemo=
 qtlocation-qmlplugins minehunt g1-binaries-dev ntp=0Apackagegroup-base-=
wifi qtmultimedia-plugins wget libqt5svg-plugins=0Ai2c-tools qtsystems-t=
ools qtwebkit-qmlplugins tslib-calibrate=0Agstreamer1.0-plugins-bad-meta=
 openssh-sftp videoplayer=0Ag1-binaries-staticdev mtd-utils qtdeclarativ=
e-plugins=0Alinux-firmware-ralink bridge-utils packagegroup-core-ssh-ope=
nssh=0Alibts-1.0-0 startup lrzsz qtconnectivity-qmlplugins=0Aqtlocation-=
plugins atmel-qt-demo-init nbench-byte libqt5svg5=0Apackagegroup-core-to=
ols-debug packagegroup-core-boot=0Alinux-firmware-ath6k qtdeclarative-qm=
lplugins qtsystems-qmlplugins=0Alibqt5sensors5 libqt5declarative-qmlplug=
ins openssh-sftp-server=0Aopkg-collateral gstreamer1.0-plugins-hantro=0A=
packagegroup-core-eclipse-debug applicationlauncher samegame qtwebkit=0A=
zd1211-firmware packagegroup-base-bluetooth usbutils=0Aqtmultimedia-qmlp=
lugins homeautomation tslib-tests iproute2=0Apackagegroup-core-standalon=
e-sdk-target gstreamer1.0=0Apoky-feed-config-opkg' returned 255:</span><=
/font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><fo=
nt face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"=
><span lang=3D"en-us" xml:lang=3D"en-us"><br /></span></font></font></p>=
<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier N=
ew, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us=
" xml:lang=3D"en-us">1.</span></font></font></p>=0A<p style=3D"margin-bo=
ttom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font styl=
e=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">=
Installing=0Ainitscripts-functions (1.0-r155) to root...</span></font></=
font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">Downloading=0A</span></font></font><a=
><font color=3D"#0000ff"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"><=
u>file:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/in=
itscripts-functions_1.0-r155_cortexa5t2hf-vfp.ipk</u></span></font></fon=
t></font></a><font face=3D"Courier New, serif"><font style=3D"font-size:=
8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">.</span></font>=
</font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font fac=
e=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">update-rc.d:=0Aerror: unknown option<=
/span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100=
%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" siz=
e=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">usage:=0Aupdate-rc.d [-n=
] [-f] &lt;basename&gt; remove</span></font></font></p>=0A<p style=3D"ma=
rgin-bottom:0in;line-height:100%;">       <font face=3D"Courier New, ser=
if"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:l=
ang=3D"en-us">update-rc.d=0A[-n] &lt;basename&gt; defaults [NN | SS KK]<=
/span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100=
%;">       <font face=3D"Courier New, serif"><font style=3D"font-size:8p=
t;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">update-rc.d=0A[-n=
] &lt;basename&gt; start|stop NN runlvl [runlvl] [...] .</span></font></=
font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">       <fon=
t face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1">=
<span lang=3D"en-us" xml:lang=3D"en-us">update-rc.d=0A[-n] &lt;basename&=
gt; disable|enable [S|2|3|4|5]</span></font></font></p>=0A<p style=3D"ma=
rgin-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><fo=
nt style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"=
en-us">=09=09-n:=0Anot really</span></font></font></p>=0A<p style=3D"mar=
gin-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><fon=
t style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"e=
n-us">=09=09-f:=0Aforce</span></font></font></p>=0A=0A<p style=3D"margin=
-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font s=
tyle=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-u=
s">The=0Adisable|enable API is not stable and might change in the future=
</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:1=
00%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" s=
ize=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Running=0Agroupadd com=
mands...</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-h=
eight:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:=
8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">NOTE:=0APerform=
ing groupadd with [--root=0A/home/lachlan/poky/build-atmel/tmp/work/sama=
5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/sdk/image/opt/poky=
/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-gnueabi=0A-r netdev] and 10=
 times of retry</span></font></font></p>=0A<p style=3D"margin-bottom:0in=
;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"fon=
t-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Running=
=0Auseradd commands...</span></font></font></p>=0A<p style=3D"margin-bot=
tom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">N=
OTE:=0APerforming useradd with [--root=0A/home/lachlan/poky/build-atmel/=
tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/sdk/i=
mage/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-gnueabi=0A--sys=
tem --home /var/lib/dbus                        --no-create-home=0A--she=
ll /bin/false                        --user-group messagebus]=0Aand 10 t=
imes of retry</span></font></font></p>=0A<p style=3D"margin-bottom:0in;l=
ine-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-=
size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Installing=
=0Aupdate-rc.d (0.7-r5) to root...</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">Downloading=0A</span></font></font><a><font color=3D"#0000f=
f"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=
=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"><u>file:/home/lachlan/pok=
y/build-atmel/tmp/deploy/ipk/all/update-rc.d_0.7-r5_all.ipk</u></span></=
font></font></font></a><font face=3D"Courier New, serif"><font style=3D"=
font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">.</sp=
an></font></font></p>=0A=0A<p style=3D"margin-bottom:0in;line-height:100=
%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" siz=
e=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"><br /></span></font></fo=
nt></p><p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Co=
urier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=
=3D"en-us" xml:lang=3D"en-us">2.</span></font></font></p>=0A<p style=3D"=
margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><=
font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=
=3D"en-us">Installing=0Apackagegroup-core-standalone-sdk-target-dbg (1.0=
-r8) to root...</span></font></font></p>=0A<p style=3D"margin-bottom:0in=
;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"fon=
t-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Download=
ing=0A</span></font></font><a><font color=3D"#0000ff"><font face=3D"Cour=
ier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"=
en-us" xml:lang=3D"en-us"><u>file:/home/lachlan/poky/build-atmel/tmp/dep=
loy/ipk/all/packagegroup-core-standalone-sdk-target-dbg_1.0-r8_all.ipk</=
u></span></font></font></font></a><font face=3D"Courier New, serif"><fon=
t style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"e=
n-us">.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-he=
ight:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8=
pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-cor=
e-standalone-sdk-target-dbg:=0Aunsatisfied recommendation for libsegfaul=
t-dbg</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-heig=
ht:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt=
;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-core-=
standalone-sdk-target-dbg:=0Aunsatisfied recommendation for libstdc++-db=
g</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:1=
00%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" s=
ize=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-core-stan=
dalone-sdk-target-dbg:=0Aunsatisfied recommendation for eglibc-utils-dbg=
</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:10=
0%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" si=
ze=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-core-stand=
alone-sdk-target-dbg:=0Aunsatisfied recommendation for eglibc-thread-db-=
dbg</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height=
:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;"=
 size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-core-st=
andalone-sdk-target-dbg:=0Aunsatisfied recommendation for eglibc-gconv-i=
bm850-dbg</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-=
height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size=
:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-c=
ore-standalone-sdk-target-dbg:=0Aunsatisfied recommendation for eglibc-g=
conv-iso8859-15-dbg</span></font></font></p>=0A<p style=3D"margin-bottom=
:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D=
"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">pack=
agegroup-core-standalone-sdk-target-dbg:=0Aunsatisfied recommendation fo=
r eglibc-gconv-cp1252-dbg</span></font></font></p>=0A<p style=3D"margin-=
bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font st=
yle=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us=
">packagegroup-core-standalone-sdk-target-dbg:=0Aunsatisfied recommendat=
ion for eglibc-localedata-i18n-dbg</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">packagegroup-core-standalone-sdk-target-dbg:=0Aunsatisfied=
 recommendation for eglibc-gconv-iso8859-1-dbg</span></font></font></p>=
=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courie=
r New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en=
-us" xml:lang=3D"en-us">Installing=0Aqemuwrapper-cross-dbg (1.0-r0) to r=
oot...</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-hei=
ght:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8p=
t;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Downloading=0A</s=
pan></font></font><a><font color=3D"#0000ff"><font face=3D"Courier New,=
 serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" x=
ml:lang=3D"en-us"><u>file:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/=
cortexa5t2hf-vfp/qemuwrapper-cross-dbg_1.0-r0_cortexa5t2hf-vfp.ipk</u></=
span></font></font></font></a><font face=3D"Courier New, serif"><font st=
yle=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us=
">.</span></font></font></p>=0A=0A<p style=3D"margin-bottom:0in;line-hei=
ght:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8p=
t;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"><br /></span></fo=
nt></font></p><p style=3D"margin-bottom:0in;line-height:100%;"><font fac=
e=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">3.</span></font></font></p>=0A<p styl=
e=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, ser=
if"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:l=
ang=3D"en-us">Installing=0Arun-postinsts (1.0-r9) to root...</span></fon=
t></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font f=
ace=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><sp=
an lang=3D"en-us" xml:lang=3D"en-us">Downloading=0Afile:/home/lachlan/po=
ky/build-atmel/tmp/deploy/ipk/all/run-postinsts_1.0-r9_all.ipk.</span></=
font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><fon=
t face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1">=
<span lang=3D"en-us" xml:lang=3D"en-us">update-rc.d:=0Aerror: unknown op=
tion</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-heigh=
t:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;=
" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">usage:=0Aupdate-rc.=
d [-n] [-f] &lt;basename&gt; remove</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;">       <font face=3D"Courier Ne=
w, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us"=
 xml:lang=3D"en-us"><br /></span></font></font></p><p style=3D"margin-bo=
ttom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font styl=
e=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">=
The=0Adisable|enable API is not stable and might change in the future.</=
span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%=
;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=
=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Installing=0Apackagegroup=
-base-extended (1.0-r83) to root...</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">Downloading=0A</span></font></font><a><font color=3D"#0000f=
f"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=
=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"><u>file:/home/lachlan/pok=
y/build-atmel/tmp/deploy/ipk/sama5d3xek/packagegroup-base-extended_1.0-r=
83_sama5d3xek.ipk</u></span></font></font></font></a><font face=3D"Couri=
er New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"e=
n-us" xml:lang=3D"en-us">.</span></font></font></p>=0A<p style=3D"margin=
-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font s=
tyle=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-u=
s">packagegroup-base-usbhost:=0Aunsatisfied recommendation for kernel-mo=
dule-mousedev</span></font></font></p>=0A<p style=3D"margin-bottom:0in;l=
ine-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-=
size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegro=
up-base-usbhost:=0Aunsatisfied recommendation for kernel-module-scsi-mod=
</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:10=
0%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" si=
ze=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base-usbho=
st:=0Aunsatisfied recommendation for kernel-module-uhci-hcd</span></font=
></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font fa=
ce=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><spa=
n lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base-usbhost:=0Aunsatis=
fied recommendation for kernel-module-usb-storage</span></font></font></=
p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Cour=
ier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"=
en-us" xml:lang=3D"en-us">packagegroup-base-usbhost:=0Aunsatisfied recom=
mendation for kernel-module-usbcore</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">packagegroup-base-usbhost:=0Aunsatisfied recommendation for=
 kernel-module-ohci-hcd</span></font></font></p>=0A<p style=3D"margin-bo=
ttom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font styl=
e=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">=
packagegroup-base-usbhost:=0Aunsatisfied recommendation for kernel-modul=
e-ehci-hcd</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line=
-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-siz=
e:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-=
base-usbhost:=0Aunsatisfied recommendation for kernel-module-sd-mod</spa=
n></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">=
<font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D=
"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base-usbhost:=
=0Aunsatisfied recommendation for kernel-module-usbserial</span></font><=
/font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base-nfs:=0Aunsatisfied=
 recommendation for kernel-module-nfs</span></font></font></p>=0A<p styl=
e=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, ser=
if"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:l=
ang=3D"en-us">package=0Alibtinfo5 suggests installing ncurses-terminfo</=
span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%=
;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=
=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base-alsa:=
=0Aunsatisfied recommendation for kernel-module-snd-pcm-oss</span></font=
></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font fa=
ce=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><spa=
n lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base-alsa:=0Aunsatisfie=
d recommendation for kernel-module-snd-mixer-oss</span></font></font></p=
>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Couri=
er New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"e=
n-us" xml:lang=3D"en-us">packagegroup-distro-base:=0Aunsatisfied recomme=
ndation for kernel-module-af-packet</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">packagegroup-base-usbgadget:=0Aunsatisfied recommendation f=
or kernel-module-pxa27x_udc</span></font></font></p>=0A<p style=3D"margi=
n-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font=
 style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en=
-us">packagegroup-base-usbgadget:=0Aunsatisfied recommendation for kerne=
l-module-g-file-storage</span></font></font></p>=0A<p style=3D"margin-bo=
ttom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font styl=
e=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">=
packagegroup-base-usbgadget:=0Aunsatisfied recommendation for kernel-mod=
ule-gadgetfs</span></font></font></p>=0A<p style=3D"margin-bottom:0in;li=
ne-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-s=
ize:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegrou=
p-base-ipv6:=0Aunsatisfied recommendation for kernel-module-ipv6</span><=
/font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><fo=
nt face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"=
><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base:=0Aunsatisfie=
d recommendation for kernel-module-rtc-sysfs</span></font></font></p>=0A=
<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier N=
ew, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us=
" xml:lang=3D"en-us">packagegroup-base:=0Aunsatisfied recommendation for=
 kernel-module-rtc-proc</span></font></font></p>=0A<p style=3D"margin-bo=
ttom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font styl=
e=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">=
packagegroup-base:=0Aunsatisfied recommendation for kernel-module-nls-ut=
f8</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:=
100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;"=
 size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base:=
=0Aunsatisfied recommendation for kernel-module-rtc-dev</span></font></f=
ont></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base:=0Aunsatisfied reco=
mmendation for kernel-module-input</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">packagegroup-base:=0Aunsatisfied recommendation for kernel-=
module-unix</span></font></font></p>=0A<p style=3D"margin-bottom:0in;lin=
e-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-si=
ze:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup=
-base:=0Aunsatisfied recommendation for kernel-module-uinput</span></fon=
t></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font f=
ace=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><sp=
an lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base-bluetooth:=0Aunsa=
tisfied recommendation for kernel-module-bluetooth</span></font></font><=
/p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Cou=
rier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D=
"en-us" xml:lang=3D"en-us">packagegroup-base-bluetooth:=0Aunsatisfied re=
commendation for kernel-module-hci-usb</span></font></font></p>=0A<p sty=
le=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, se=
rif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:=
lang=3D"en-us">packagegroup-base-bluetooth:=0Aunsatisfied recommendation=
 for kernel-module-sco</span></font></font></p>=0A<p style=3D"margin-bot=
tom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">p=
ackagegroup-base-bluetooth:=0Aunsatisfied recommendation for kernel-modu=
le-l2cap</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-h=
eight:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:=
8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-ba=
se-nfc:=0Aunsatisfied recommendation for kernel-module-nfc</span></font>=
</font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font fac=
e=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base-wifi:=0Aunsatisfied=
 recommendation for kernel-module-crypto_algapi</span></font></font></p>=
=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courie=
r New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en=
-us" xml:lang=3D"en-us">packagegroup-base-wifi:=0Aunsatisfied recommenda=
tion for kernel-module-ieee80211-crypt</span></font></font></p>=0A<p sty=
le=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, se=
rif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:=
lang=3D"en-us">packagegroup-base-wifi:=0Aunsatisfied recommendation for=
 kernel-module-ieee80211-crypt-tkip</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">packagegroup-base-wifi:=0Aunsatisfied recommendation for ke=
rnel-module-aes</span></font></font></p>=0A<p style=3D"margin-bottom:0in=
;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"fon=
t-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">packageg=
roup-base-wifi:=0Aunsatisfied recommendation for kernel-module-ecb</span=
></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><=
font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"=
1"><span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base-wifi:=0Auns=
atisfied recommendation for kernel-module-ieee80211-crypt-wep</span></fo=
nt></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font=
 face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><=
span lang=3D"en-us" xml:lang=3D"en-us">packagegroup-base-wifi:=0Aunsatis=
fied recommendation for kernel-module-cryptomgr</span></font></font></p>=
=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courie=
r New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en=
-us" xml:lang=3D"en-us">packagegroup-base-wifi:=0Aunsatisfied recommenda=
tion for kernel-module-ieee80211-crypt-ccmp</span></font></font></p>=0A<=
p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier Ne=
w, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us"=
 xml:lang=3D"en-us">packagegroup-base-wifi:=0Aunsatisfied recommendation=
 for kernel-module-aes-generic</span></font></font></p>=0A<p style=3D"ma=
rgin-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><fo=
nt style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"=
en-us">packagegroup-base-wifi:=0Aunsatisfied recommendation for kernel-m=
odule-arc4</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line=
-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-siz=
e:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Installing=0A=
packagegroup-base (1.0-r83) to root...</span></font></font></p>=0A<p sty=
le=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, se=
rif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:=
lang=3D"en-us">Downloading=0A</span></font></font><a><font color=3D"#000=
0ff"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" si=
ze=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"><u>file:/home/lachlan/p=
oky/build-atmel/tmp/deploy/ipk/sama5d3xek/packagegroup-base_1.0-r83_sama=
5d3xek.ipk</u></span></font></font></font></a><font face=3D"Courier New,=
 serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" x=
ml:lang=3D"en-us">.</span></font></font></p>=0A<p style=3D"margin-bottom=
:0in;line-height:100%;"><br /></p>=0A<p style=3D"margin-bottom:0in;line-=
height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size=
:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">4.</span></fon=
t></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font f=
ace=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><sp=
an lang=3D"en-us" xml:lang=3D"en-us">Installing=0Alibtirpc1 (0.2.4-r0) t=
o root...</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-=
height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size=
:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Downloading=0A=
file:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/libt=
irpc1_0.2.4-r0_cortexa5t2hf-vfp.ipk.</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">update-rc.d:=0Aerror: unknown option</span></font></font></=
p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Cour=
ier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"=
en-us" xml:lang=3D"en-us"><br /></span></font></font></p><p style=3D"mar=
gin-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><fon=
t style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"e=
n-us">The=0Adisable|enable API is not stable and might change in the fut=
ure.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-heigh=
t:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;=
" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Running=0Auseradd c=
ommands...</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line=
-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-siz=
e:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">NOTE:=0APerfo=
rming useradd with [--root=0A/home/lachlan/poky/build-atmel/tmp/work/sam=
a5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/sdk/image/opt/pok=
y/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-gnueabi=0A--system --no-cre=
ate-home                        --shell /bin/false=0A--user-group rpc] a=
nd 10 times of retry</span></font></font></p>=0A<p style=3D"margin-botto=
m:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">I=
nstalling=0Apackagegroup-base-ext2 (1.0-r83) to root...</span></font></f=
ont></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">Downloading=0A</span></font></font><a=
><font color=3D"#0000ff"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"><=
u>file:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/sama5d3xek/packageg=
roup-base-ext2_1.0-r83_sama5d3xek.ipk</u></span></font></font></font></a=
><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=
=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">.</span></font></font></p=
>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><br /></p>=0A<p sty=
le=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, se=
rif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:=
lang=3D"en-us">5.</span></font></font></p>=0A<p style=3D"margin-bottom:0=
in;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"f=
ont-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Instal=
ling=0Aalsa-utils-alsactl (1.0.27.2-r0) to root...</span></font></font><=
/p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Cou=
rier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D=
"en-us" xml:lang=3D"en-us">Downloading=0Afile:/home/lachlan/poky/build-a=
tmel/tmp/deploy/ipk/cortexa5t2hf-vfp/alsa-utils-alsactl_1.0.27.2-r0_cort=
exa5t2hf-vfp.ipk.</span></font></font></p>=0A<p style=3D"margin-bottom:0=
in;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"f=
ont-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">update=
-rc.d:=0Aerror: unknown option</span></font></font></p>=0A<p style=3D"ma=
rgin-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><fo=
nt style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"=
en-us"><br /></span></font></font></p><p style=3D"margin-bottom:0in;line=
-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-siz=
e:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">The=0Adisable=
|enable API is not stable and might change in the future.</span></font><=
/font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">Installing=0Agstreamer1.0-libav (1.2.=
3-r0) to root...</span></font></font></p>=0A<p style=3D"margin-bottom:0i=
n;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"fo=
nt-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Downloa=
ding=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-v=
fp/gstreamer1.0-libav_1.2.3-r0_cortexa5t2hf-vfp.ipk.</span></font></font=
></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><br /></p>=0A<p=
 style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New=
, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us"=
 xml:lang=3D"en-us">6.</span></font></font></p>=0A<p style=3D"margin-bot=
tom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">I=
nstalling=0Apython-core (2.7.3-r0.3) to root...</span></font></font></p>=
=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courie=
r New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en=
-us" xml:lang=3D"en-us">Breaking=0Acircular dependency on python-core fo=
r python-re.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;li=
ne-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-s=
ize:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Breaking=0A=
circular dependency on python-core for libpython2.7-1.0.</span></font></=
font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">Breaking=0Acircular dependency on pyt=
hon-core for python-lang.</span></font></font></p>=0A<p style=3D"margin-=
bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font st=
yle=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us=
">Breaking=0Acircular dependency on python-core for libpython2.7-1.0.</s=
pan></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;=
"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=
=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Breaking=0Acircular depen=
dency on python-core for python-lang.</span></font></font></p>=0A<p styl=
e=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, ser=
if"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:l=
ang=3D"en-us">Installing=0Apython-io (2.7.3-r0.3) to root...</span></fon=
t></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font f=
ace=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><sp=
an lang=3D"en-us" xml:lang=3D"en-us">Downloading=0Afile:/home/lachlan/po=
ky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/python-io_2.7.3-r0.3_cort=
exa5t2hf-vfp.ipk.</span></font></font></p>=0A<p style=3D"margin-bottom:0=
in;line-height:100%;"><br /></p>=0A<p style=3D"margin-bottom:0in;line-he=
ight:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8=
pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">7.</span></font>=
</font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font fac=
e=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">Installing=0Alighttpd-module-accesslo=
g (1.4.33-r1) to root...</span></font></font></p>=0A<p style=3D"margin-b=
ottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font sty=
le=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"=
>Downloading=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortex=
a5t2hf-vfp/lighttpd-module-accesslog_1.4.33-r1_cortexa5t2hf-vfp.ipk.</sp=
an></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"=
><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=
=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">update-rc.d:=0Aerror: unk=
nown option</span></font></font></p>=0A<p style=3D"margin-bottom:0in;lin=
e-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-si=
ze:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"><br /></span=
></font></font></p><p style=3D"margin-bottom:0in;line-height:100%;"><fon=
t face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1">=
<span lang=3D"en-us" xml:lang=3D"en-us">The=0Adisable|enable API is not=
 stable and might change in the future.</span></font></font></p>=0A<p st=
yle=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, s=
erif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml=
:lang=3D"en-us">Installing=0Aqtbase-tools (5.2.1-r0) to root...</span></=
font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><fon=
t face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1">=
<span lang=3D"en-us" xml:lang=3D"en-us">Downloading=0Afile:/home/lachlan=
/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/qtbase-tools_5.2.1-r0_=
cortexa5t2hf-vfp.ipk.</span></font></font></p>=0A<p style=3D"margin-bott=
om:0in;line-height:100%;"><br /></p>=0A<p style=3D"margin-bottom:0in;lin=
e-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-si=
ze:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">8.</span></f=
ont></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font=
 face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><=
span lang=3D"en-us" xml:lang=3D"en-us">Installing=0Antp-tickadj (4.2.6p5=
-r6.0) to root...</span></font></font></p>=0A<p style=3D"margin-bottom:0=
in;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"f=
ont-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Downlo=
ading=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-=
vfp/ntp-tickadj_4.2.6p5-r6.0_cortexa5t2hf-vfp.ipk.</span></font></font><=
/p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Cou=
rier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D=
"en-us" xml:lang=3D"en-us">update-rc.d:=0Aerror: unknown option</span></=
font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><fon=
t face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1">=
<span lang=3D"en-us" xml:lang=3D"en-us"><br /></span></font></font></p><=
p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier Ne=
w, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us"=
 xml:lang=3D"en-us">The=0Adisable|enable API is not stable and might cha=
nge in the future.</span></font></font></p>=0A<p style=3D"margin-bottom:=
0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"=
font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Runni=
ng=0Auseradd commands...</span></font></font></p>=0A<p style=3D"margin-b=
ottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font sty=
le=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"=
>NOTE:=0APerforming useradd with [--root=0A/home/lachlan/poky/build-atme=
l/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/sdk=
/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-gnueabi=0A--s=
ystem --home-dir /var/lib/ntp                        --shell=0A/bin/fals=
e --user-group ntp] and 10 times of retry</span></font></font></p>=0A<p=
 style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New=
, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us"=
 xml:lang=3D"en-us">Installing=0Apackagegroup-base-wifi (1.0-r83) to roo=
t...</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-heigh=
t:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;=
" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Downloading=0Afile:=
/home/lachlan/poky/build-atmel/tmp/deploy/ipk/sama5d3xek/packagegroup-ba=
se-wifi_1.0-r83_sama5d3xek.ipk.</span></font></font></p>=0A<p style=3D"m=
argin-bottom:0in;line-height:100%;"><br /></p>=0A<p style=3D"margin-bott=
om:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">9=
</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:1=
00%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" s=
ize=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Installing=0Aopenssh-s=
shd (6.5p1-r0) to root...</span></font></font></p>=0A<p style=3D"margin-=
bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font st=
yle=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us=
">Downloading=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/corte=
xa5t2hf-vfp/openssh-sshd_6.5p1-r0_cortexa5t2hf-vfp.ipk.</span></font></f=
ont></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">update-rc.d:=0Aerror: unknown option<=
/span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100=
%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" siz=
e=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"><br /></span></font></fo=
nt></p><p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Co=
urier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=
=3D"en-us" xml:lang=3D"en-us">The=0Adisable|enable API is not stable and=
 might change in the future.</span></font></font></p>=0A<p style=3D"marg=
in-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font=
 style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en=
-us">Running=0Auseradd commands...</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">NOTE:=0APerforming useradd with [--root=0A/home/lachlan/pok=
y/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-imag=
e/1.0-r1/sdk/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-g=
nueabi=0A--system --no-create-home --home-dir /var/run/sshd --shell /bin=
/false=0A--user-group sshd] and 10 times of retry</span></font></font></=
p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Cour=
ier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"=
en-us" xml:lang=3D"en-us">Package=0Alibts-1.0-0 (1.1-r0) installed in ro=
ot is up to date.</span></font></font></p>=0A<p style=3D"margin-bottom:0=
in;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"f=
ont-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Instal=
ling=0Astartup (1.0-r0) to root...</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">Downloading=0Afile:/home/lachlan/poky/build-atmel/tmp/deplo=
y/ipk/cortexa5t2hf-vfp/startup_1.0-r0_cortexa5t2hf-vfp.ipk.</span></font=
></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><br /></=
p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Cour=
ier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"=
en-us" xml:lang=3D"en-us">10.</span></font></font></p>=0A<p style=3D"mar=
gin-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><fon=
t style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"e=
n-us">Installing=0Aatmel-qt-demo-init (1.1-r2) to root...</span></font><=
/font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">Downloading=0Afile:/home/lachlan/poky=
/build-atmel/tmp/deploy/ipk/all/atmel-qt-demo-init_1.1-r2_all.ipk.</span=
></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><=
font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"=
1"><span lang=3D"en-us" xml:lang=3D"en-us">update-rc.d:=0Aerror: unknown=
 option</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-he=
ight:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8=
pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"><br /></span></f=
ont></font></p><p style=3D"margin-bottom:0in;line-height:100%;"><font fa=
ce=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><spa=
n lang=3D"en-us" xml:lang=3D"en-us">The=0Adisable|enable API is not stab=
le and might change in the future.</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">Installing=0Anbench-byte (2.2.3-r0) to root...</span></font=
></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font fa=
ce=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><spa=
n lang=3D"en-us" xml:lang=3D"en-us">Downloading=0Afile:/home/lachlan/pok=
y/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/nbench-byte_2.2.3-r0_corte=
xa5t2hf-vfp.ipk.</span></font></font></p>=0A<p style=3D"margin-bottom:0i=
n;line-height:100%;"><br /></p>=0A<p style=3D"margin-bottom:0in;line-hei=
ght:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8p=
t;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">11.</span></font>=
</font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font fac=
e=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">Installing=0Amodutils-initscripts (1.=
0-r7) to root...</span></font></font></p>=0A<p style=3D"margin-bottom:0i=
n;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"fo=
nt-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Downloa=
ding=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-v=
fp/modutils-initscripts_1.0-r7_cortexa5t2hf-vfp.ipk.</span></font></font=
></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"C=
ourier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=
=3D"en-us" xml:lang=3D"en-us">update-rc.d:=0Aerror: unknown option</span=
></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><=
font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"=
1"><span lang=3D"en-us" xml:lang=3D"en-us"><br /></span></font></font></=
p><p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier=
 New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-=
us" xml:lang=3D"en-us">The=0Adisable|enable API is not stable and might=
 change in the future.</span></font></font></p>=0A<p style=3D"margin-bot=
tom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">I=
nstalling=0Alinux-firmware-ath6k (1:0.0+git0+600caefd83-r0) to root...</=
span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%=
;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=
=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Downloading=0Afile:/home/=
lachlan/poky/build-atmel/tmp/deploy/ipk/all/linux-firmware-ath6k_0.0+git=
0+600caefd83-r0_all.ipk.</span></font></font></p>=0A<p style=3D"margin-b=
ottom:0in;line-height:100%;"><br /></p>=0A<p style=3D"margin-bottom:0in;=
line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font=
-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">12.</span=
></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><=
font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"=
1"><span lang=3D"en-us" xml:lang=3D"en-us">Installing=0Abash (4.3-r0) to=
 root...</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-h=
eight:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:=
8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Downloading=0Af=
ile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/bash_=
4.3-r0_cortexa5t2hf-vfp.ipk.</span></font></font></p>=0A<p style=3D"marg=
in-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font=
 style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en=
-us">update-rc.d:=0Aerror: unknown option</span></font></font></p>=0A<p=
 style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New=
, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us"=
 xml:lang=3D"en-us"><br /></span></font></font></p><p style=3D"margin-bo=
ttom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font styl=
e=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">=
The=0Adisable|enable API is not stable and might change in the future.</=
span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%=
;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=
=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Installing=0Aapplicationl=
auncher (1.5-r3) to root...</span></font></font></p>=0A<p style=3D"margi=
n-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font=
 style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en=
-us">Downloading=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/co=
rtexa5t2hf-vfp/applicationlauncher_1.5-r3_cortexa5t2hf-vfp.ipk.</span></=
font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><br=
 /></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D=
"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lan=
g=3D"en-us" xml:lang=3D"en-us">13.</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, seri=
f"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:la=
ng=3D"en-us">Installing=0Apackagegroup-core-standalone-sdk-target (1.0-r=
8) to root...</span></font></font></p>=0A<p style=3D"margin-bottom:0in;l=
ine-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-=
size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Downloadin=
g=0Afile:/home/lachlan/poky/build-atmel/tmp/deploy/ipk/all/packagegroup-=
core-standalone-sdk-target_1.0-r8_all.ipk.</span></font></font></p>=0A<p=
 style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New=
, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us"=
 xml:lang=3D"en-us">libc6-dev:=0Aunsatisfied recommendation for eglibc-e=
xtra-nss-dev</span></font></font></p>=0A<p style=3D"margin-bottom:0in;li=
ne-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-s=
ize:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">libc6-dev:=
=0Aunsatisfied recommendation for libsegfault-dev</span></font></font></=
p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Cour=
ier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"=
en-us" xml:lang=3D"en-us">libc6-dev:=0Aunsatisfied recommendation for eg=
libc-thread-db-dev</span></font></font></p>=0A<p style=3D"margin-bottom:=
0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"=
font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">libc6=
-dev:=0Aunsatisfied recommendation for libcidn-dev</span></font></font><=
/p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Cou=
rier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D=
"en-us" xml:lang=3D"en-us">Installing=0Alibgcc-s-dev (4.8.2-r0) to root.=
.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:=
100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;"=
 size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Downloading=0Afile:/=
home/lachlan/poky/build-atmel/tmp/deploy/ipk/cortexa5t2hf-vfp/libgcc-s-d=
ev_4.8.2-r0_cortexa5t2hf-vfp.ipk.</span></font></font></p>=0A<p style=3D=
"margin-bottom:0in;line-height:100%;"><br /></p>=0A<p style=3D"margin-bo=
ttom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font styl=
e=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">=
14.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height=
:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;"=
 size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">update-alternatives:=
=0ALinking=0A/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky-lin=
ux-gnueabi/atmel-qt5-demo-image/1.0-r1/sdk/image/opt/poky/1.6.1/sysroots=
/cortexa5t2hf-vfp-poky-linux-gnueabi//etc/init.d/functions=0Ato /etc/ini=
t.d/functions.initscripts</span></font></font></p>=0A<p style=3D"margin-=
bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font st=
yle=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us=
">update-rc.d:=0Aerror: unknown option</span></font></font></p>=0A<p sty=
le=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, se=
rif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:=
lang=3D"en-us"><br /></span></font></font></p><p style=3D"margin-bottom:=
0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"=
font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">The=
=0Adisable|enable API is not stable and might change in the future.</spa=
n></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;">=
<font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D=
"1"><span lang=3D"en-us" xml:lang=3D"en-us">can't=0Ado u-a offline</span=
></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><=
font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"=
1"><span lang=3D"en-us" xml:lang=3D"en-us">Configuring=0Agstreamer1.0-pl=
ugins-bad.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line=
-height:100%;"><br /></p>=0A<p style=3D"margin-bottom:0in;line-height:10=
0%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" si=
ze=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">16.</span></font></font=
></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"C=
ourier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=
=3D"en-us" xml:lang=3D"en-us">update-alternatives:=0ALinking=0A/home/lac=
hlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-d=
emo-image/1.0-r1/sdk/image/opt/poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky=
-linux-gnueabi//usr/bin/ssh=0Ato /usr/bin/ssh.openssh</span></font></fon=
t></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"=
Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=
=3D"en-us" xml:lang=3D"en-us">update-rc.d:=0Aerror: unknown option</span=
></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><=
font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"=
1"><span lang=3D"en-us" xml:lang=3D"en-us"><br /></span></font></font></=
p><p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier=
 New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-=
us" xml:lang=3D"en-us">The=0Adisable|enable API is not stable and might=
 change in the future.</span></font></font></p>=0A<p style=3D"margin-bot=
tom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">u=
pdate-alternatives:=0ALinking=0A/home/lachlan/poky/build-atmel/tmp/work/=
sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r1/sdk/image/opt/=
poky/1.6.1/sysroots/cortexa5t2hf-vfp-poky-linux-gnueabi//usr/sbin/brctl=
=0Ato /usr/sbin/brctl.bridge-utils</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><br /></p>=0A<p style=3D"margin=
-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font s=
tyle=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-u=
s">18.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-hei=
ght:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8p=
t;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Configuring=0Aker=
nel-modulupdate-rc.d: error: unknown option</span></font></font></p>=0A<=
p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier Ne=
w, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us"=
 xml:lang=3D"en-us">usage:=0Aupdate-rc.d [-n] [-f] &lt;basename&gt; remo=
ve</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:=
100%;">       <font face=3D"Courier New, serif"><font style=3D"font-size=
:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"><br /></span><=
/font></font></p><p style=3D"margin-bottom:0in;line-height:100%;"><font=
 face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><=
span lang=3D"en-us" xml:lang=3D"en-us">The=0Adisable|enable API is not s=
table and might change in the future.</span></font></font></p>=0A<p styl=
e=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, ser=
if"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:l=
ang=3D"en-us">e-jc42.</span></font></font></p>=0A<p style=3D"margin-bott=
om:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">C=
onfiguring=0Akernel-module-garp.</span></font></font></p>=0A<p style=3D"=
margin-bottom:0in;line-height:100%;"><br /></p>=0A<p style=3D"margin-bot=
tom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">2=
0.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:=
100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;"=
 size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Configuring=0Aeglibc=
-localedata-translit-compat.</span></font></font></p>=0A<p style=3D"marg=
in-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font=
 style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en=
-us">Configuupdate-rc.d:=0Aerror: unknown option</span></font></font></p=
>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Couri=
er New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"e=
n-us" xml:lang=3D"en-us"><br /></span></font></font></p><p style=3D"marg=
in-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font=
 style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en=
-us">The=0Adisable|enable API is not stable and might change in the futu=
re.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height=
:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;"=
 size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Updating=0Acertifica=
tes in /etc/ssl/certs... rm: cannot remove=0A'ca-certificates.crt': Perm=
ission denied</span></font></font></p>=0A<p style=3D"margin-bottom:0in;l=
ine-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-=
size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">ring=0Aegl=
ibc-localedata-translit-narrow.</span></font></font></p>=0A<p style=3D"m=
argin-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><f=
ont style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D=
"en-us">Configuring=0Aeglibc-localedata-translit-wide.</span></font></fo=
nt></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><br /></p>=0A=
<p style=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier N=
ew, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us=
" xml:lang=3D"en-us">15.</span></font></font></p>=0A<p style=3D"margin-b=
ottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font sty=
le=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us"=
>Configuring=0Adbus-1.</span></font></font></p>=0A<p style=3D"margin-bot=
tom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=
=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">d=
bus-1.postinst=0Areturned 1, marking as unpacked only, configuration req=
uired on=0Atarget.</span></font></font></p>=0A<p style=3D"margin-bottom:=
0in;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"=
font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">17.</=
span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%=
;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=
=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Configuring=0Aopenssh-ssh=
d.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:=
100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt;"=
 size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">openssh-sshd.postins=
t=0Areturned 1, marking as unpacked only, configuration required on=0Ata=
rget.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-heig=
ht:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:8pt=
;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">19.</span></font><=
/font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">Configuring=0Arpcbind.</span></font><=
/font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">rpcbind.postinst=0Areturned 1, markin=
g as unpacked only, configuration required on=0Atarget.</span></font></f=
ont></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">21.</span></font></font></p>=0A<p sty=
le=3D"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, se=
rif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:=
lang=3D"en-us">Configuring=0Antp.</span></font></font></p>=0A<p style=3D=
"margin-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif">=
<font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=
=3D"en-us">ntp.postinst=0Areturned 1, marking as unpacked only, configur=
ation required on=0Atarget.</span></font></font></p>=0A<p style=3D"margi=
n-bottom:0in;line-height:100%;"><font face=3D"Courier New, serif"><font=
 style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en=
-us">22.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-h=
eight:100%;"><font face=3D"Courier New, serif"><font style=3D"font-size:=
8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">Configuring=0Ac=
a-certificates.</span></font></font></p>=0A<p style=3D"margin-bottom:0in=
;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"fon=
t-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">ca-certi=
ficates.postinst=0Areturned 1, marking as unpacked only, configuration r=
equired on=0Atarget.</span></font></font></p>=0A<p style=3D"margin-botto=
m:0in;line-height:100%;"><br /></p>=0A<p style=3D"margin-bottom:0in;line=
-height:100%;"><font face=3D"Courier New, serif"><font style=3D"font-siz=
e:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">23.</span></f=
ont></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font=
 face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><=
span lang=3D"en-us" xml:lang=3D"en-us">Collected=0Aerrors:</span></font>=
</font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"> <font fa=
ce=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><spa=
n lang=3D"en-us" xml:lang=3D"en-us">*=0Apreinst_configure: Aborting inst=
allation of run-postinsts.</span></font></font></p>=0A<p style=3D"margin=
-bottom:0in;line-height:100%;"> <font face=3D"Courier New, serif"><font=
 style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en=
-us">*=0Aopkg_install_cmd: Cannot install package opkg.</span></font></f=
ont></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"> <font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">*=0Apreinst_configure: Aborting insta=
llation of alsa-state.</span></font></font></p>=0A<p style=3D"margin-bot=
tom:0in;line-height:100%;"> <font face=3D"Courier New, serif"><font styl=
e=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">=
*=0Aopkg_install_cmd: Cannot install package packagegroup-base-extended.=
</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:10=
0%;"> <font face=3D"Courier New, serif"><font style=3D"font-size:8pt;" s=
ize=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">*=0Apreinst_configure:=
 Aborting installation of lighttpd.</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"> <font face=3D"Courier New, ser=
if"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:l=
ang=3D"en-us">*=0Aopkg_install_cmd: Cannot install package packagegroup-=
core-basic.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;lin=
e-height:100%;"> <font face=3D"Courier New, serif"><font style=3D"font-s=
ize:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">*=0Apreinst=
_configure: Aborting installation of atmel-qt-demo-init.</span></font></=
font></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"> <font face=
=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span=
 lang=3D"en-us" xml:lang=3D"en-us">*=0Aopkg_install_cmd: Cannot install=
 package atmel-qt-demo-init.</span></font></font></p>=0A<p style=3D"marg=
in-bottom:0in;line-height:100%;"> <font face=3D"Courier New, serif"><fon=
t style=3D"font-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"e=
n-us">*=0Apreinst_configure: Aborting installation of modutils-initscrip=
ts.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height=
:100%;"> <font face=3D"Courier New, serif"><font style=3D"font-size:8pt;=
" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">*=0Aopkg_install_cm=
d: Cannot install package packagegroup-core-boot.</span></font></font></=
p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"> <font face=3D"Cou=
rier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><span lang=3D=
"en-us" xml:lang=3D"en-us">*=0Apreinst_configure: Aborting installation=
 of tcf-agent.</span></font></font></p>=0A<p style=3D"margin-bottom:0in;=
line-height:100%;"> <font face=3D"Courier New, serif"><font style=3D"fon=
t-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">*=0Aopkg=
_install_cmd: Cannot install package=0Apackagegroup-core-eclipse-debug.<=
/span></font></font></p>=0A<p style=3D"margin-bottom:0in;line-height:100=
%;"><br /></p>=0A<p style=3D"margin-bottom:0in;line-height:100%;"><font=
 face=3D"Courier New, serif"><font style=3D"font-size:8pt;" size=3D"1"><=
span lang=3D"en-us" xml:lang=3D"en-us">DEBUG:=0APython function do_popul=
ate_sdk finished</span></font></font></p>=0A<p style=3D"margin-bottom:0i=
n;line-height:100%;"><font face=3D"Courier New, serif"><font style=3D"fo=
nt-size:8pt;" size=3D"1"><span lang=3D"en-us" xml:lang=3D"en-us">ERROR:=
=0AFunction failed: do_populate_sdk</span></font></font></p>=0A<p style=
=3D"margin-bottom:0in;line-height:100%;"><br /></p>=0A=0AThanks for any=
 advise<br />Regards<br />Lachlan<br />---- Message sent via Adam Intern=
et WebMail  - http://www.adam.com.au/</body></html>

--=_821356507b57e0a6e6f7d5c97c00308c--
