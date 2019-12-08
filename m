Subject: Unable to build core-image-full-cmdline on openSUSE Leap 15.1: dnf can't find _curses module in do_rootfs task
To: yocto@lists.yoctoproject.org
From: "Rebecca Cran" <rebecca@bsdio.com>
X-Originating-Location: US (65.103.231.193)
X-Originating-Platform: Linux Firefox 71
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 08 Dec 2019 13:33:22 -0800
Message-ID: <98NB.1575840802217143019.f9l4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="94QHUWovPdpvCnd9ZktP"

--94QHUWovPdpvCnd9ZktP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I recently switched from Ubuntu 19.10 to openSUSE Leap 15.1, but I'm having=
 problems building core-image-full-cmdline on it. I've installed all the ho=
st packages I can think of, including python-curses and python3-curses, wit=
h no success.

I'm on the zeus branch, and running "bitbake core-image-full-cmdline" resu=
lts in the following error when running the do_rootfs task:

ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: Could not invoke dnf. Com=
mand '/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-=
fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr=
/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/bcran/src/fsl-community-bsp/b=
uild-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdlin=
e/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/bcran/src/fsl-=
community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-im=
age-full-cmdline/1.0-r0/rootfs/etc/yum.repos.d --installroot=3D/home/bcran/=
src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi=
/core-image-full-cmdline/1.0-r0/rootfs --setopt=3Dlogdir=3D/home/bcran/src/=
fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/cor=
e-image-full-cmdline/1.0-r0/temp --repofrompath=3Doe-repo,/home/bcran/src/f=
sl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core=
-image-full-cmdline/1.0-r0/oe-rootfs-repo makecache --refresh' returned 1:
Traceback (most recent call last):
File "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk=
-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/us=
r/bin/dnf.real", line 57, in <module>
from dnf.cli import main
File "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk=
-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/us=
r/lib/python3.7/site-packages/dnf/cli/__init__.py", line 30, in <module>
from dnf.cli.cli import Cli=C2=A0 # :api
File "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk=
-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/us=
r/lib/python3.7/site-packages/dnf/cli/cli.py", line 44, in <module>
from . import output
File "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk=
-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/us=
r/lib/python3.7/site-packages/dnf/cli/output.py", line 34, in <module>
import dnf.cli.progress
File "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk=
-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/us=
r/lib/python3.7/site-packages/dnf/cli/progress.py", line 19, in <module>
from dnf.cli.term import _term_width
File "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk=
-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/us=
r/lib/python3.7/site-packages/dnf/cli/term.py", line 21, in <module>
import curses
File "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk=
-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/us=
r/lib/python3.7/curses/__init__.py", line 13, in <module>
from _curses import *
ModuleNotFoundError: No module named '_curses'

ERROR: Logfile of failure stored in: /home/bcran/src/fsl-community-bsp/bui=
ld-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/=
1.0-r0/temp/log.do_rootfs.40254
ERROR: Task (/home/bcran/src/fsl-community-bsp/sources/poky/meta/recipes-e=
xtended/images/core-image-full-cmdline.bb:do_rootfs) failed with exit code =
'1'

--
Rebecca Cran

--94QHUWovPdpvCnd9ZktP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I recently switched from Ubuntu 19.10 to openSUSE Leap 15.1, but I'm having=
 problems building core-image-full-cmdline on it. I've installed all the ho=
st packages I can think of, including python-curses and python3-curses, wit=
h no success.<br /><br />I'm on the zeus branch, and running "bitbake core-=
image-full-cmdline" results in the following error when running the do_root=
fs task:<br /><br />ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: Could =
not invoke dnf. Command '/home/bcran/src/fsl-community-bsp/build-imx6slevk/=
tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe=
-sysroot-native/usr/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/bcran/src/=
fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/cor=
e-image-full-cmdline/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/=
home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-li=
nux-gnueabi/core-image-full-cmdline/1.0-r0/rootfs/etc/yum.repos.d --install=
root=3D/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk=
-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/rootfs --setopt=3Dlogdir=
=
=3D/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fs=
lc-linux-gnueabi/core-image-full-cmdline/1.0-r0/temp --repofrompath=3Doe-re=
po,/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fsl=
c-linux-gnueabi/core-image-full-cmdline/1.0-r0/oe-rootfs-repo makecache --r=
efresh' returned 1:<br />Traceback (most recent call last):<br />&nbsp; Fil=
e "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fsl=
c-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/bi=
n/dnf.real", line 57, in &lt;module&gt;<br />&nbsp;&nbsp;&nbsp; from dnf.cl=
i import main<br />&nbsp; File "/home/bcran/src/fsl-community-bsp/build-imx=
6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0=
/recipe-sysroot-native/usr/lib/python3.7/site-packages/dnf/cli/__init__.py"=
, line 30, in &lt;module&gt;<br />&nbsp;&nbsp;&nbsp; from dnf.cli.cli impor=
t Cli&nbsp; # :api<br />&nbsp; File "/home/bcran/src/fsl-community-bsp/buil=
d-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1=
.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/dnf/cli/cli.py"=
, line 44, in &lt;module&gt;<br />&nbsp;&nbsp;&nbsp; from . import output<b=
r />&nbsp; File "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work=
/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot=
-native/usr/lib/python3.7/site-packages/dnf/cli/output.py", line 34, in &lt=
;module&gt;<br />&nbsp;&nbsp;&nbsp; import dnf.cli.progress<br />&nbsp; Fil=
e "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fsl=
c-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/li=
b/python3.7/site-packages/dnf/cli/progress.py", line 19, in &lt;module&gt;<=
br />&nbsp;&nbsp;&nbsp; from dnf.cli.term import _term_width<br />&nbsp; Fi=
le "/home/bcran/src/fsl-community-bsp/build-imx6slevk/tmp/work/imx6slevk-fs=
lc-linux-gnueabi/core-image-full-cmdline/1.0-r0/recipe-sysroot-native/usr/l=
ib/python3.7/site-packages/dnf/cli/term.py", line 21, in &lt;module&gt;<br =
/>&nbsp;&nbsp;&nbsp; import curses<br />&nbsp; File "/home/bcran/src/fsl-co=
mmunity-bsp/build-imx6slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-imag=
e-full-cmdline/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/curses/__init=
__.py", line 13, in &lt;module&gt;<br />&nbsp;&nbsp;&nbsp; from _curses imp=
ort *<br />ModuleNotFoundError: No module named '_curses'<br /><br />ERROR:=
 Logfile of failure stored in: /home/bcran/src/fsl-community-bsp/build-imx6=
slevk/tmp/work/imx6slevk-fslc-linux-gnueabi/core-image-full-cmdline/1.0-r0/=
temp/log.do_rootfs.40254<br />ERROR: Task (/home/bcran/src/fsl-community-bs=
p/sources/poky/meta/recipes-extended/images/core-image-full-cmdline.bb:do_r=
ootfs) failed with exit code '1'<br /><br />-- <br />Rebecca Cran

--94QHUWovPdpvCnd9ZktP--
