Subject: #yocto Problem compiling binutils-2.32.0-r0 on zeus
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 14 Sep 2020 08:08:19 -0700
Message-ID: <6z5Y.1600096099772471549.tRF3@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UscdDZznmkV34ixyfco5"

--UscdDZznmkV34ixyfco5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to compile=C2=A0binutils-2.32.0-r0 on zeus. I am getting the fo=
llowing error:

DEBUG: Executing python function do_unpack
DEBUG: Executing python function base_do_unpack
DEBUG: Running 'export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NA=
ME; export PATH=3D"/opt/grays-poky/build-grays/tmp/sysroots-uninative/x86_6=
4-linux/usr/bin:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/bi=
nutils/2.32.0-r0/recipe-sysroot-native/usr/bin/chrpath-native:/opt/grays-po=
ky/scripts:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/binutil=
s/2.32.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/opt/grays-poky=
/build-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot=
/usr/bin/crossscripts:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-li=
nux/binutils/2.32.0-r0/recipe-sysroot-native/usr/sbin:/opt/grays-poky/build=
-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-nativ=
e/usr/bin:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/binutils=
/2.32.0-r0/recipe-sysroot-native/sbin:/opt/grays-poky/build-grays/tmp/work/=
core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/bin:/opt/grays=
-poky/bitbake/bin:/opt/grays-poky/build-grays/tmp/hosttools"; export HOME=
=3D"/home/srijan.nandi"; git -c core.fsyncobjectfiles=3D0 branch --contain=
s b8c1f608db9ef3edd483d21a921d1fbedc71df6f --list binutils-2_32-branch 2> /=
dev/null | wc -l' in /opt/grays-poky/build-grays/downloads/git2/sourceware.=
org.git.binutils-gdb.git
DEBUG: Running export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NAM=
E; export PATH=3D"/opt/grays-poky/build-grays/tmp/sysroots-uninative/x86_64=
-linux/usr/bin:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/bin=
utils/2.32.0-r0/recipe-sysroot-native/usr/bin/chrpath-native:/opt/grays-pok=
y/scripts:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/binutils=
/2.32.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/opt/grays-poky/=
build-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot/=
usr/bin/crossscripts:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-lin=
ux/binutils/2.32.0-r0/recipe-sysroot-native/usr/sbin:/opt/grays-poky/build-=
grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native=
/usr/bin:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/binutils/=
2.32.0-r0/recipe-sysroot-native/sbin:/opt/grays-poky/build-grays/tmp/work/c=
ore2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/bin:/opt/grays-=
poky/bitbake/bin:/opt/grays-poky/build-grays/tmp/hosttools"; export HOME=3D=
"/home/srijan.nandi"; git -c core.fsyncobjectfiles=3D0 clone -s -n /opt/gra=
ys-poky/build-grays/downloads/git2/sourceware.org.git.binutils-gdb.git/ /op=
t/grays-poky/build-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/gi=
t/
ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; unset _P=
YTHON_SYSCONFIGDATA_NAME; export PATH=3D"/opt/grays-poky/build-grays/tmp/sy=
sroots-uninative/x86_64-linux/usr/bin:/opt/grays-poky/build-grays/tmp/work/=
core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/usr/bin/chrpat=
h-native:/opt/grays-poky/scripts:/opt/grays-poky/build-grays/tmp/work/core2=
-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky=
-linux:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/binutils/2.=
32.0-r0/recipe-sysroot/usr/bin/crossscripts:/opt/grays-poky/build-grays/tmp=
/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/usr/sbin=
:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r=
0/recipe-sysroot-native/usr/bin:/opt/grays-poky/build-grays/tmp/work/core2-=
64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/sbin:/opt/grays-poky=
/build-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot=
-native/bin:/opt/grays-poky/bitbake/bin:/opt/grays-poky/build-grays/tmp/hos=
ttools"; export HOME=3D"/home/srijan.nandi"; git -c core.fsyncobjectfiles=
=3D0 clone -s -n /opt/grays-poky/build-grays/downloads/git2/sourceware.org=
.git.binutils-gdb.git/ /opt/grays-poky/build-grays/tmp/work/core2-64-poky-l=
inux/binutils/2.32.0-r0/git/ failed with exit code 128, output:
fatal: repository '/opt/grays-poky/build-grays/downloads/git2/sourceware.o=
rg.git.binutils-gdb.git/' does not exist

DEBUG: Python function base_do_unpack finished
DEBUG: Python function do_unpack finished

Now I checked and saw that the said directory (/opt/grays-poky/build-grays=
/downloads/git2/sourceware.org.git.binutils-gdb.git/) does exist. I even tr=
ied to change the permission to 777, but still the same issue.

Any help will be greatly appreciated.

Thanks and Regards,
-=3DSrijan Nandi

--UscdDZznmkV34ixyfco5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to compile&nbsp;binutils-2.32.0-r0 on zeus. I am getting the fo=
llowing error:<br /><br />
<div>DEBUG: Executing python function do_unpack</div>
<div>DEBUG: Executing python function base_do_unpack</div>
<div>DEBUG: Running 'export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDA=
TA_NAME; export PATH=3D"/opt/grays-poky/build-grays/tmp/sysroots-uninative/=
x86_64-linux/usr/bin:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-lin=
ux/binutils/2.32.0-r0/recipe-sysroot-native/usr/bin/chrpath-native:/opt/gra=
ys-poky/scripts:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/bi=
nutils/2.32.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/opt/grays=
-poky/build-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sy=
sroot/usr/bin/crossscripts:/opt/grays-poky/build-grays/tmp/work/core2-64-po=
ky-linux/binutils/2.32.0-r0/recipe-sysroot-native/usr/sbin:/opt/grays-poky/=
build-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-=
native/usr/bin:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/bin=
utils/2.32.0-r0/recipe-sysroot-native/sbin:/opt/grays-poky/build-grays/tmp/=
work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/bin:/opt/=
grays-poky/bitbake/bin:/opt/grays-poky/build-grays/tmp/hosttools"; export H=
OME=3D"/home/srijan.nandi"; git -c core.fsyncobjectfiles=3D0 branch --conta=
ins b8c1f608db9ef3edd483d21a921d1fbedc71df6f --list binutils-2_32-branch 2&=
gt; /dev/null | wc -l' in /opt/grays-poky/build-grays/downloads/git2/source=
ware.org.git.binutils-gdb.git</div>
<div>DEBUG: Running export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDAT=
A_NAME; export PATH=3D"/opt/grays-poky/build-grays/tmp/sysroots-uninative/x=
86_64-linux/usr/bin:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linu=
x/binutils/2.32.0-r0/recipe-sysroot-native/usr/bin/chrpath-native:/opt/gray=
s-poky/scripts:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/bin=
utils/2.32.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/opt/grays-=
poky/build-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sys=
root/usr/bin/crossscripts:/opt/grays-poky/build-grays/tmp/work/core2-64-pok=
y-linux/binutils/2.32.0-r0/recipe-sysroot-native/usr/sbin:/opt/grays-poky/b=
uild-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-n=
ative/usr/bin:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/binu=
tils/2.32.0-r0/recipe-sysroot-native/sbin:/opt/grays-poky/build-grays/tmp/w=
ork/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/bin:/opt/g=
rays-poky/bitbake/bin:/opt/grays-poky/build-grays/tmp/hosttools"; export HO=
ME=3D"/home/srijan.nandi"; git -c core.fsyncobjectfiles=3D0 clone -s -n /op=
t/grays-poky/build-grays/downloads/git2/sourceware.org.git.binutils-gdb.git=
/ /opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-=
r0/git/</div>
<div>ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; uns=
et _PYTHON_SYSCONFIGDATA_NAME; export PATH=3D"/opt/grays-poky/build-grays/t=
mp/sysroots-uninative/x86_64-linux/usr/bin:/opt/grays-poky/build-grays/tmp/=
work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/usr/bin/c=
hrpath-native:/opt/grays-poky/scripts:/opt/grays-poky/build-grays/tmp/work/=
core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/usr/bin/x86_64=
-poky-linux:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/binuti=
ls/2.32.0-r0/recipe-sysroot/usr/bin/crossscripts:/opt/grays-poky/build-gray=
s/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/usr=
/sbin:/opt/grays-poky/build-grays/tmp/work/core2-64-poky-linux/binutils/2.3=
2.0-r0/recipe-sysroot-native/usr/bin:/opt/grays-poky/build-grays/tmp/work/c=
ore2-64-poky-linux/binutils/2.32.0-r0/recipe-sysroot-native/sbin:/opt/grays=
-poky/build-grays/tmp/work/core2-64-poky-linux/binutils/2.32.0-r0/recipe-sy=
sroot-native/bin:/opt/grays-poky/bitbake/bin:/opt/grays-poky/build-grays/tm=
p/hosttools"; export HOME=3D"/home/srijan.nandi"; git -c core.fsyncobjectfi=
les=3D0 clone -s -n /opt/grays-poky/build-grays/downloads/git2/sourceware.o=
rg.git.binutils-gdb.git/ /opt/grays-poky/build-grays/tmp/work/core2-64-poky=
-linux/binutils/2.32.0-r0/git/ failed with exit code 128, output:</div>
<div>fatal: repository '/opt/grays-poky/build-grays/downloads/git2/sourcew=
are.org.git.binutils-gdb.git/' does not exist</div>
<div>&nbsp;</div>
<div>DEBUG: Python function base_do_unpack finished</div>
<div>DEBUG: Python function do_unpack finished<br /><br />Now I checked an=
d saw that the said directory (/opt/grays-poky/build-grays/downloads/git2/s=
ourceware.org.git.binutils-gdb.git/) does exist. I even tried to change the=
 permission to 777, but still the same issue.</div>
<div>&nbsp;</div>
<div>Any help will be greatly appreciated.<br /><br />Thanks and Regards,<=
/div>
<div>-=3DSrijan Nandi</div>

--UscdDZznmkV34ixyfco5--
