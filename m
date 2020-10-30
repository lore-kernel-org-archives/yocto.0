Subject: Yocto OS Creation on Linux Ubuntu 16.04 LTS #yocto #yocto
To: yocto@lists.yoctoproject.org
From: katakam.sujan@gmail.com
X-Originating-Location: Hyderabad, Telangana, IN (182.72.144.34)
X-Originating-Platform: Windows Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 30 Oct 2020 00:43:10 -0700
Message-ID: <i2fG.1604043790197452631.RWTF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8HQEFKVpECJaqYySPkNL"

--8HQEFKVpECJaqYySPkNL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We are facing issue in yocto OS creation due to time out issue and unable t=
o create the image.

The log for this is as below,
WARNING: xf86-video-intel-2_2.99.917-r0 do_fetch: Failed to fetch URL git:=
//anongit.freedesktop.org/xorg/driver/xf86-video-intel;branch=3Dmaster , at=
tempting MIRRORS if available
WARNING: xf86-video-ast-2_1.1.5-r0 do_fetch: Failed to fetch URL http://xo=
rg.freedesktop.org/releases/individual/driver/xf86-video-ast-1.1.5.tar.bz2 =
, attempting MIRRORS if available
WARNING: xinit-1_1.4.1-r0 do_fetch: Failed to fetch URL http://xorg.freede=
sktop.org/releases/individual/app/xinit-1.4.1.tar.bz2 , attempting MIRRORS =
if available
WARNING: cwautomacros-native-20110201-r0 do_fetch: Failed to fetch URL htt=
ps://downloads.sourceforge.net/cwautomacros.berlios/cwautomacros-20110201.t=
ar.bz2 , attempting MIRRORS if available
WARNING: intel-microcode-20190618-r0 do_fetch: Failed to fetch URL git://g=
ithub.com/intel/Intel-Linux-Processor-Microcode-Data-Files.git;protocol=3Dh=
ttps , attempting MIRRORS if available
WARNING: lvm2-2.03.02-r0 do_fetch: Failed to fetch URL ftp://sources.redha=
t.com/pub/lvm2/releases/LVM2.2.03.02.tgz , attempting MIRRORS if available
WARNING: xdpyinfo-1_1.3.2-r0 do_fetch: Failed to fetch URL http://xorg.fre=
edesktop.org/releases/individual/app/xdpyinfo-1.3.2.tar.bz2 , attempting MI=
RRORS if available
WARNING: xhost-1_1.0.8-r0 do_fetch: Failed to fetch URL http://xorg.freede=
sktop.org/releases/individual/app/xhost-1.0.8.tar.bz2 , attempting MIRRORS =
if available
WARNING: linux-firmware-1_0.0+gitAUTOINC+711d3297ba-r0 do_fetch: Failed to=
 fetch URL git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-fir=
mware.git , attempting MIRRORS if available
WARNING: dpkg-1.19.4-r0 do_fetch: Failed to fetch URL http://ftp.debian.or=
g/debian/pool/main/d/dpkg/dpkg_1.19.4.tar.xz , attempting MIRRORS if availa=
ble
WARNING: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Failed to fetch U=
RL git://git.kernel.org/pub/scm/network/iproute2/iproute2.git , attempting =
MIRRORS if available
ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetcher failure: Fe=
tch command export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NAME; e=
xport DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-owimWyNVWV"; ex=
port SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export PATH=3D"/home/use=
r/pdl/yocto_build/scripts:/home/user/pdl/yocto_build/build/tmp-glibc/work/c=
orei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-nati=
ve/usr/bin/x86_64-oe-linux:/home/user/pdl/yocto_build/build/tmp-glibc/work/=
corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot/usr=
/bin/crossscripts:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64=
-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/usr/s=
bin:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/ipro=
ute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/usr/bin:/home/user/=
pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUT=
OINC+97864a5af3-r0/recipe-sysroot-native/sbin:/home/user/pdl/yocto_build/bu=
ild/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0=
/recipe-sysroot-native/bin:/home/user/pdl/yocto_build/bitbake/bin:/home/use=
r/pdl/yocto_build/build/tmp-glibc/hosttools"; export HOME=3D"/home/user"; L=
ANG=3DC git -c core.fsyncobjectfiles=3D0 clone --bare --mirror git://git.ke=
rnel.org/pub/scm/network/iproute2/iproute2.git /home/user/pdl/yocto_build/b=
uild/downloads/git2/git.kernel.org.pub.scm.network.iproute2.iproute2.git --=
progress failed with exit code 128, output:
Cloning into bare repository '/home/user/pdl/yocto_build/build/downloads/g=
it2/git.kernel.org.pub.scm.network.iproute2.iproute2.git'...
fatal: unable to connect to git.kernel.org ( http://git.kernel.org/ ) :
*git.kernel.org ( http://git.kernel.org/ ) [0: 147.75.46.191]: errno=3DCon=
nection timed out*
git.kernel.org ( http://git.kernel.org/ ) [1: 2604:1380:4080:c00::1]: errn=
o=3DNetwork is unreachableERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_f=
etch: Fetcher failure for URL: ' git://git.kernel.org/pub/scm/network/iprou=
te2/iproute2.git '. Unable to fetch URL from any source.
ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch:
ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Function failed: ba=
se_do_fetch
ERROR: Logfile of failure stored in: /home/user/pdl/yocto_build/build/tmp-=
glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/temp/lo=
g.do_fetch.25170
ERROR: Task (/home/user/pdl/yocto_build/meta-intel-tsn/recipes-connectivit=
y/iproute2/iproute2_git.bb:do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3220 tasks of which 0 didn't need to be rer=
un and 1 failed.Summary: 1 task failed:
/home/user/pdl/yocto_build/meta-intel-tsn/recipes-connectivity/iproute2/ip=
route2_git.bb:do_fetch
Summary: There were 38 WARNING messages shown.
Summary: There were 4 ERROR messages shown, returning a non-zero exit code=
.

Anyone faced similar issue, please help us resolving this issue.

--8HQEFKVpECJaqYySPkNL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"-webkit-tap-highlight-color: transparent; color: rgba(0, 0, 0=
, 0.87); font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif;">W=
e are facing issue in yocto OS creation due to time out issue and unable to=
 create the image.</div>
<div style=3D"-webkit-tap-highlight-color: transparent; color: rgba(0, 0, =
0, 0.87); font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif;">=
&nbsp;</div>
<div style=3D"-webkit-tap-highlight-color: transparent; color: rgba(0, 0, =
0, 0.87); font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif;">=
The log for this is as below,</div>
<div style=3D"-webkit-tap-highlight-color: transparent; color: rgba(0, 0, =
0, 0.87); font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif;">=
WARNING: xf86-video-intel-2_2.99.917-r0 do_fetch: Failed to fetch URL&nbsp;=
<a style=3D"-webkit-tap-highlight-color: transparent; color: #1a73e8;" rel=
=3D"nofollow">git://anongit.freedesktop.org/xorg/driver/xf86-video-intel;b=
ranch=3Dmaster</a>, attempting MIRRORS if available<br style=3D"-webkit-tap=
-highlight-color: transparent;" />WARNING: xf86-video-ast-2_1.1.5-r0 do_fet=
ch: Failed to fetch URL&nbsp;<a style=3D"-webkit-tap-highlight-color: trans=
parent; color: #1a73e8;" href=3D"http://xorg.freedesktop.org/releases/indiv=
idual/driver/xf86-video-ast-1.1.5.tar.bz2" target=3D"_blank" rel=3D"nofollo=
w noopener" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;=
q=3Dhttp://xorg.freedesktop.org/releases/individual/driver/xf86-video-ast-1=
.1.5.tar.bz2&amp;source=3Dgmail&amp;ust=3D1604124194530000&amp;usg=3DAFQjCN=
FwMCuiU89eECVTdV4JrC-LNVjK2A">http://xorg.freedesktop.org/releases/individu=
al/driver/xf86-video-ast-1.1.5.tar.bz2</a>, attempting MIRRORS if available=
<br style=3D"-webkit-tap-highlight-color: transparent;" />WARNING: xinit-1_=
1.4.1-r0 do_fetch: Failed to fetch URL&nbsp;<a style=3D"-webkit-tap-highlig=
ht-color: transparent; color: #1a73e8;" href=3D"http://xorg.freedesktop.org=
/releases/individual/app/xinit-1.4.1.tar.bz2" target=3D"_blank" rel=3D"nofo=
llow noopener" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&a=
mp;q=3Dhttp://xorg.freedesktop.org/releases/individual/app/xinit-1.4.1.tar.=
bz2&amp;source=3Dgmail&amp;ust=3D1604124194530000&amp;usg=3DAFQjCNGFk-MxFjZ=
sgt4oH3BRAO9osOGrpA">http://xorg.freedesktop.org/releases/individual/app/xi=
nit-1.4.1.tar.bz2</a>, attempting MIRRORS if available<br style=3D"-webkit-=
tap-highlight-color: transparent;" />WARNING: cwautomacros-native-20110201-=
r0 do_fetch: Failed to fetch URL&nbsp;<a style=3D"-webkit-tap-highlight-col=
or: transparent; color: #1a73e8;" href=3D"https://downloads.sourceforge.net=
/cwautomacros.berlios/cwautomacros-20110201.tar.bz2" target=3D"_blank" rel=
=3D"nofollow noopener" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://downloads.sourceforge.net/cwautomacros.berlios/cwau=
tomacros-20110201.tar.bz2&amp;source=3Dgmail&amp;ust=3D1604124194530000&amp=
;usg=3DAFQjCNElpW_4f70SrN72tC_lIDV3xT9gQg">https://downloads.sourceforge.ne=
t/cwautomacros.berlios/cwautomacros-20110201.tar.bz2</a>, attempting MIRROR=
S if available<br style=3D"-webkit-tap-highlight-color: transparent;" />WAR=
NING: intel-microcode-20190618-r0 do_fetch: Failed to fetch URL&nbsp;<a sty=
le=3D"-webkit-tap-highlight-color: transparent; color: #1a73e8;" rel=3D"nof=
ollow">git://github.com/intel/Intel-Linux-Processor-Microcode-Data-Files.gi=
t;protocol=3Dhttps</a>, attempting MIRRORS if available<br style=3D"-webkit=
-tap-highlight-color: transparent;" />WARNING: lvm2-2.03.02-r0 do_fetch: Fa=
iled to fetch URL&nbsp;<a style=3D"-webkit-tap-highlight-color: transparent=
; color: #1a73e8;" href=3D"ftp://sources.redhat.com/pub/lvm2/releases/LVM2.=
2.03.02.tgz" target=3D"_blank" rel=3D"nofollow noopener">ftp://sources.redh=
at.com/pub/lvm2/releases/LVM2.2.03.02.tgz</a>, attempting MIRRORS if availa=
ble<br style=3D"-webkit-tap-highlight-color: transparent;" />WARNING: xdpyi=
nfo-1_1.3.2-r0 do_fetch: Failed to fetch URL&nbsp;<a style=3D"-webkit-tap-h=
ighlight-color: transparent; color: #1a73e8;" href=3D"http://xorg.freedeskt=
op.org/releases/individual/app/xdpyinfo-1.3.2.tar.bz2" target=3D"_blank" re=
l=3D"nofollow noopener" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttp://xorg.freedesktop.org/releases/individual/app/xdpyinf=
o-1.3.2.tar.bz2&amp;source=3Dgmail&amp;ust=3D1604124194530000&amp;usg=3DAFQ=
jCNEooxzNT655W-Vredd0cNn9kOYo0w">http://xorg.freedesktop.org/releases/indiv=
idual/app/xdpyinfo-1.3.2.tar.bz2</a>, attempting MIRRORS if available<br st=
yle=3D"-webkit-tap-highlight-color: transparent;" />WARNING: xhost-1_1.0.8-=
r0 do_fetch: Failed to fetch URL&nbsp;<a style=3D"-webkit-tap-highlight-col=
or: transparent; color: #1a73e8;" href=3D"http://xorg.freedesktop.org/relea=
ses/individual/app/xhost-1.0.8.tar.bz2" target=3D"_blank" rel=3D"nofollow n=
oopener" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=
=3Dhttp://xorg.freedesktop.org/releases/individual/app/xhost-1.0.8.tar.bz2=
&amp;source=3Dgmail&amp;ust=3D1604124194531000&amp;usg=3DAFQjCNFSn6vtsRImVx=
Uk8Y1E-KLDifzT4w">http://xorg.freedesktop.org/releases/individual/app/xhost=
-1.0.8.tar.bz2</a>, attempting MIRRORS if available<br style=3D"-webkit-tap=
-highlight-color: transparent;" />WARNING: linux-firmware-1_0.0+gitAUTOINC+=
711d3297ba-r0 do_fetch: Failed to fetch URL&nbsp;<a style=3D"-webkit-tap-hi=
ghlight-color: transparent; color: #1a73e8;" rel=3D"nofollow">git://git.ker=
nel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git</a>, attemptin=
g MIRRORS if available<br style=3D"-webkit-tap-highlight-color: transparent=
;" />WARNING: dpkg-1.19.4-r0 do_fetch: Failed to fetch URL&nbsp;<a style=3D=
"-webkit-tap-highlight-color: transparent; color: #1a73e8;" href=3D"http://=
ftp.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.4.tar.xz" target=3D"_blank=
" rel=3D"nofollow noopener" data-saferedirecturl=3D"https://www.google.com/=
url?hl=3Den&amp;q=3Dhttp://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_1.19=
.4.tar.xz&amp;source=3Dgmail&amp;ust=3D1604124194531000&amp;usg=3DAFQjCNFGW=
6INpEIJlM_RY3EYRF775KwlMg">http://ftp.debian.org/debian/pool/main/d/dpkg/dp=
kg_1.19.4.tar.xz</a>, attempting MIRRORS if available<br style=3D"-webkit-t=
ap-highlight-color: transparent;" />WARNING: iproute2-1.0-gitAUTOINC+97864a=
5af3-r0 do_fetch: Failed to fetch URL&nbsp;<a style=3D"-webkit-tap-highligh=
t-color: transparent; color: #1a73e8;" rel=3D"nofollow">git://git.kernel.or=
g/pub/scm/network/iproute2/iproute2.git</a>, attempting MIRRORS if availabl=
e<br style=3D"-webkit-tap-highlight-color: transparent;" />ERROR: iproute2-=
1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetcher failure: Fetch command expor=
t PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NAME; export DBUS_SESSIO=
N_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-owimWyNVWV"; export SSH_AUTH_SOC=
K=3D"/run/user/1000/keyring/ssh"; export PATH=3D"/home/user/pdl/yocto_build=
/scripts:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux=
/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/usr/bin/x86_64=
-oe-linux:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linu=
x/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot/usr/bin/crossscripts=
:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute=
2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/usr/sbin:/home/user/pd=
l/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOI=
NC+97864a5af3-r0/recipe-sysroot-native/usr/bin:/home/user/pdl/yocto_build/b=
uild/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r=
0/recipe-sysroot-native/sbin:/home/user/pdl/yocto_build/build/tmp-glibc/wor=
k/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-n=
ative/bin:/home/user/pdl/yocto_build/bitbake/bin:/home/user/pdl/yocto_build=
/build/tmp-glibc/hosttools"; export HOME=3D"/home/user"; LANG=3DC git -c co=
re.fsyncobjectfiles=3D0 clone --bare --mirror&nbsp;<a style=3D"-webkit-tap-=
highlight-color: transparent; color: #1a73e8;" rel=3D"nofollow">git://git.k=
ernel.org/pub/scm/network/iproute2/iproute2.git</a>&nbsp;/home/user/pdl/yoc=
to_build/build/downloads/git2/git.kernel.org.pub.scm.network.iproute2.iprou=
te2.git --progress failed with exit code 128, output:<br style=3D"-webkit-t=
ap-highlight-color: transparent;" />Cloning into bare repository '/home/use=
r/pdl/yocto_build/build/downloads/git2/git.kernel.org.pub.scm.network.iprou=
te2.iproute2.git'...<br style=3D"-webkit-tap-highlight-color: transparent;"=
 />fatal: unable to connect to&nbsp;<a style=3D"-webkit-tap-highlight-color=
: transparent; color: #1a73e8;" href=3D"http://git.kernel.org/" target=3D"_=
blank" rel=3D"nofollow noopener" data-saferedirecturl=3D"https://www.google=
.com/url?hl=3Den&amp;q=3Dhttp://git.kernel.org/&amp;source=3Dgmail&amp;ust=
=3D1604124194531000&amp;usg=3DAFQjCNHCoeDOCCUsJRA9cKnd6bLPmfuekQ">git.kern=
el.org</a>:<br style=3D"-webkit-tap-highlight-color: transparent;" /><stron=
g style=3D"-webkit-tap-highlight-color: transparent;"><a style=3D"-webkit-t=
ap-highlight-color: transparent; color: #1a73e8;" href=3D"http://git.kernel=
.org/" target=3D"_blank" rel=3D"nofollow noopener" data-saferedirecturl=3D"=
https://www.google.com/url?hl=3Den&amp;q=3Dhttp://git.kernel.org/&amp;sourc=
e=3Dgmail&amp;ust=3D1604124194531000&amp;usg=3DAFQjCNHCoeDOCCUsJRA9cKnd6bLP=
mfuekQ">git.kernel.org</a>[0: 147.75.46.191]: errno=3DConnection timed out<=
/strong><br style=3D"-webkit-tap-highlight-color: transparent;" /><a style=
=3D"-webkit-tap-highlight-color: transparent; color: #1a73e8;" href=3D"htt=
p://git.kernel.org/" target=3D"_blank" rel=3D"nofollow noopener" data-safer=
edirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttp://git.kernel.=
org/&amp;source=3Dgmail&amp;ust=3D1604124194531000&amp;usg=3DAFQjCNHCoeDOCC=
UsJRA9cKnd6bLPmfuekQ">git.kernel.org</a>[1: 2604:1380:4080:c00::1]: errno=
=3DNetwork is unreachableERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_f=
etch: Fetcher failure for URL: '<a style=3D"-webkit-tap-highlight-color: tr=
ansparent; color: #1a73e8;" rel=3D"nofollow">git://git.kernel.org/pub/scm/n=
etwork/iproute2/iproute2.git</a>'. Unable to fetch URL from any source.<br =
style=3D"-webkit-tap-highlight-color: transparent;" />ERROR: iproute2-1.0-g=
itAUTOINC+97864a5af3-r0 do_fetch:<br style=3D"-webkit-tap-highlight-color: =
transparent;" />ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Func=
tion failed: base_do_fetch<br style=3D"-webkit-tap-highlight-color: transpa=
rent;" />ERROR: Logfile of failure stored in: /home/user/pdl/yocto_build/bu=
ild/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0=
/temp/log.do_fetch.25170<br style=3D"-webkit-tap-highlight-color: transpare=
nt;" />ERROR: Task (/home/user/pdl/yocto_build/meta-intel-tsn/recipes-conne=
ctivity/iproute2/iproute2_git.bb:do_fetch) failed with exit code '1'<br sty=
le=3D"-webkit-tap-highlight-color: transparent;" />NOTE: Tasks Summary: Att=
empted 3220 tasks of which 0 didn't need to be rerun and 1 failed.Summary: =
1 task failed:<br style=3D"-webkit-tap-highlight-color: transparent;" />&nb=
sp;&nbsp;/home/user/pdl/yocto_build/meta-intel-tsn/recipes-connectivity/ipr=
oute2/iproute2_git.bb:do_fetch<br style=3D"-webkit-tap-highlight-color: tra=
nsparent;" />Summary: There were 38 WARNING messages shown.<br style=3D"-we=
bkit-tap-highlight-color: transparent;" />Summary: There were 4 ERROR messa=
ges shown, returning a non-zero exit code.&nbsp;</div>
<div style=3D"-webkit-tap-highlight-color: transparent; color: rgba(0, 0, =
0, 0.87); font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif;">=
&nbsp;</div>
<div style=3D"-webkit-tap-highlight-color: transparent; color: rgba(0, 0, =
0, 0.87); font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif;">=
Anyone faced similar issue, please help us resolving this issue.&nbsp;</div=
>

--8HQEFKVpECJaqYySPkNL--
