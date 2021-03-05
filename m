Subject: meta-toolchain, gdb-cross-canadian_9.2 fails due to "no usable python" #toolchain
To: yocto@lists.yoctoproject.org
From: mmiguelhorta@gmail.com
X-Originating-Location: Amora, District of Setúbal, PT (84.90.95.208)
X-Originating-Platform: Linux Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 05 Mar 2021 04:00:46 -0800
Message-ID: <DX8u.1614945646527170477.i4ls@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xd6cYH9YZWMIdvIPHRBW"

--xd6cYH9YZWMIdvIPHRBW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I have been trying to build meta-toolchain however it fails to compile dur=
ing gdb-cross-canadian. Follows the relevant output:

| checking for libmpfr... no
| configure: WARNING: MPFR is missing or unusable; some features may be un=
available.
| checking whether to use python... /home/.../workspace/gatesgarth/build/t=
mp/work/x86_64-nativesdk-pokysdk-linux/gdb-cross-canadian-arm/9.2-r0/python
| checking for python... no
| configure: error: no usable python found at /home/.../workspace/gatesgar=
th/build/tmp/work/x86_64-nativesdk-pokysdk-linux/gdb-cross-canadian-arm/9.2=
-r0/python
| make[1]: *** [Makefile:8866: configure-gdb] Error 1

My host is Ubuntu 20.04, and I'm using yocto/poky gatesgarth as base. Targ=
et core-image-minimal builds without issue, only meta-toolchain fails.
Normally I can get a good idea why something is failing from the logs, but=
 this time I'm really left clueless. Any help would be appreciated.

BR,
Miguel

--xd6cYH9YZWMIdvIPHRBW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I have been trying to build meta-toolchain however it fails to com=
pile during gdb-cross-canadian. Follows the relevant output:<br /><br />
<div style=3D"padding-left: 30px;">| checking for libmpfr... no</div>
<div style=3D"padding-left: 30px;">| configure: WARNING: MPFR is missing o=
r unusable; some features may be unavailable.</div>
<div style=3D"padding-left: 30px;">| checking whether to use python... /ho=
me/.../workspace/gatesgarth/build/tmp/work/x86_64-nativesdk-pokysdk-linux/g=
db-cross-canadian-arm/9.2-r0/python</div>
<div style=3D"padding-left: 30px;">| checking for python... no</div>
<div style=3D"padding-left: 30px;">| configure: error: no usable python fo=
und at /home/.../workspace/gatesgarth/build/tmp/work/x86_64-nativesdk-pokys=
dk-linux/gdb-cross-canadian-arm/9.2-r0/python</div>
<div style=3D"padding-left: 30px;">| make[1]: *** [Makefile:8866: configur=
e-gdb] Error 1<br /><br /></div>
My host is Ubuntu 20.04, and I'm using yocto/poky gatesgarth as base. Targ=
et core-image-minimal builds without issue, only meta-toolchain fails. <br =
/>Normally I can get a good idea why something is failing from the logs, bu=
t this time I'm really left clueless. Any help would be appreciated.<br /><=
br />BR,<br />Miguel

--xd6cYH9YZWMIdvIPHRBW--
