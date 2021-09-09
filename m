Subject: extra-cmake-modules #yocto
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (122.166.120.168)
X-Originating-Platform: Linux Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 08 Sep 2021 23:18:40 -0700
Message-ID: <2L6Q.1631168320241985290.EqNS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ix1qQbL1GtgeoLXT3vSt"

--Ix1qQbL1GtgeoLXT3vSt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am trying to build an extra-cmake-modules package. Using bitbake command =
"bitbake extra-cmake-modules" compiled succuss. But using bitbake core-imag=
e-plasma-mobile throwing error. So I want to disable native build on the x8=
6 platform is it possible? or else can anybody know how to fix this issue s=
uggest me any corrections required.

ERROR: extra-cmake-modules-native-5.79.0-r0 do_compile: Execution of '/home=
/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-mo=
dules-native/5.79.0-r0/temp/run.do_compile.20787' failed with exit code 1:
[1/2] cd /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/=
extra-cmake-modules-native/5.79.0-r0/build/docs && /usr/local/bin/sphinx-bu=
ild -c /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/ex=
tra-cmake-modules-native/5.79.0-r0/build/docs -d /home/sateesh/KDE/sources/=
fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r=
0/build/docs/doctrees -b html /home/sateesh/KDE/sources/fu540-build/tmp-gli=
bc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/git/docs /home/sa=
teesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modul=
es-native/5.79.0-r0/build/docs/html > build-html.log
FAILED: docs/doc_format_html
cd /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-=
cmake-modules-native/5.79.0-r0/build/docs && /usr/local/bin/sphinx-build -c=
 /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cm=
ake-modules-native/5.79.0-r0/build/docs -d /home/sateesh/KDE/sources/fu540-=
build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/buil=
d/docs/doctrees -b html /home/sateesh/KDE/sources/fu540-build/tmp-glibc/wor=
k/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/git/docs /home/sateesh/=
KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-nat=
ive/5.79.0-r0/build/docs/html > build-html.log

Extension error:
Could not import extension ecm (exception: cannot import name 'htmlescape')
ninja: build stopped: subcommand failed.
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/sateesh/KDE/sources/fu540-build/=
tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/temp/log.d=
o_compile.20787

--
Regards,
Sateesh

--Ix1qQbL1GtgeoLXT3vSt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi All,<br /><br />I am trying to build an extra-cmake-modules package=
. Using bitbake command "bitbake extra-cmake-modules" compiled succuss. But=
 using bitbake core-image-plasma-mobile throwing error. So I want to disabl=
e native build on the x86 platform is it possible? or else can anybody know=
 how to fix this issue suggest me any corrections required.<br /><br /><br =
/>ERROR: extra-cmake-modules-native-5.79.0-r0 do_compile: Execution of '/ho=
me/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-=
modules-native/5.79.0-r0/temp/run.do_compile.20787' failed with exit code 1=
:</div>
<div>[1/2] cd /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-l=
inux/extra-cmake-modules-native/5.79.0-r0/build/docs &amp;&amp; /usr/local/=
bin/sphinx-build -c /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x8=
6_64-linux/extra-cmake-modules-native/5.79.0-r0/build/docs -d /home/sateesh=
/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-na=
tive/5.79.0-r0/build/docs/doctrees -b html /home/sateesh/KDE/sources/fu540-=
build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/git/=
docs /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extr=
a-cmake-modules-native/5.79.0-r0/build/docs/html &gt; build-html.log</div>
<div>FAILED: docs/doc_format_html&nbsp;</div>
<div>cd /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/e=
xtra-cmake-modules-native/5.79.0-r0/build/docs &amp;&amp; /usr/local/bin/sp=
hinx-build -c /home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-l=
inux/extra-cmake-modules-native/5.79.0-r0/build/docs -d /home/sateesh/KDE/s=
ources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5=
.79.0-r0/build/docs/doctrees -b html /home/sateesh/KDE/sources/fu540-build/=
tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/git/docs /=
home/sateesh/KDE/sources/fu540-build/tmp-glibc/work/x86_64-linux/extra-cmak=
e-modules-native/5.79.0-r0/build/docs/html &gt; build-html.log</div>
<div>&nbsp;</div>
<div>Extension error:</div>
<div>Could not import extension ecm (exception: cannot import name 'htmlesc=
ape')</div>
<div>ninja: build stopped: subcommand failed.</div>
<div>WARNING: exit code 1 from a shell command.</div>
<div>&nbsp;</div>
<div>ERROR: Logfile of failure stored in: /home/sateesh/KDE/sources/fu540-b=
uild/tmp-glibc/work/x86_64-linux/extra-cmake-modules-native/5.79.0-r0/temp/=
log.do_compile.20787</div>
<div>&nbsp;</div>
-- <br />Regards,<br />Sateesh

--Ix1qQbL1GtgeoLXT3vSt--
