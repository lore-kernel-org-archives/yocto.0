Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95E4C47079
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 21:50:04 +0000 (UTC)
Subject: Nondeterministic errors with bitbake
To: yocto@lists.yoctoproject.org
From: daniele.lugli@gmail.com
X-Originating-Location: Perugia, Umbria, IT (176.246.93.66)
X-Originating-Platform: Linux Firefox 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 02 Jan 2024 13:49:54 -0800
Message-ID: <z3fE.1704232194586691808.HEiw@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YXr3PmwmYgl3dgnlXCm7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 21:50:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62072

--YXr3PmwmYgl3dgnlXCm7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all and best wishes for the new year.

I recently worked with nanbield on Ubuntu 22.04.3 in a VirtualBox machine.
I added layers meta-intel and meta-realtime and, with a couple of small mod=
ifications to core-image-rt-extended.bb and to rt-app.bb, as suggested by s=
ome kind reader (see https://lists.yoctoproject.org/g/yocto/topic/103135158=
 ), and after a couple of restarts, I could obtain the image, prepare a .vd=
i from the .wic and boot a virtual machine with that disk.

Now I moved to a physical machine with Ubuntu 22.04.3. Here is the build co=
nfiguration:

BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"2.6.1"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "universal"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"x86_64-poky-linux"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "genericx86-64"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "4.3+snapshot-b92406=
d2313234dccd77b05fe74c09ba9617a738"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "m64 core2"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
""
meta
meta-poky
meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:b92406d23132=
34dccd77b05fe74c09ba9617a738"
meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "master:10f1890af03dbb804bffd4fa7eda7729e08f12cb"
meta-intel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"master:5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f"
meta-realtime=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:489e1d6=
b34e46f845a4bfe6461a39c6a4bcb7794"

I am using exactly the same configuration as in the virtual Ubuntu and I ha=
ve also applied the suggested modifications to core-image-rt-extended.bb an=
d to rt-app.bb. So the situation should be the same.

I cannot understand why I am getting error messages which look random: when=
, after the error, I rerun bitbake, I get a different error.

As an instance, in the first run of bitbake core-image-extended.bb I get:

| /home/daniele/poky/build/tmp/work/x86_64-linux/cmake-native/3.27.7/cmake-=
3.27.7/Source/cmComputeComponentGraph.cxx:139:1: internal compiler error: S=
egmentation fault
|=C2=A0=C2=A0 139 | }
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ^
| 0x7fc36ca4251f ???
| =C2=A0=C2=A0=C2=A0 ./signal/../sysdeps/unix/sysv/linux/x86_64/libc_sigact=
ion.c:0
| 0x7fc36ca29d8f __libc_start_call_main
| =C2=A0=C2=A0=C2=A0 ../sysdeps/nptl/libc_start_call_main.h:58
| 0x7fc36ca29e3f __libc_start_main_impl
| =C2=A0=C2=A0=C2=A0 ../csu/libc-start.c:392
| Please submit a full bug report,
| with preprocessed source if appropriate.
...
Summary: 1 task failed:
/home/daniele/poky/meta/recipes-devtools/cmake/cmake-native_3.27.7.bb:do_co=
mpile

Second attempt, without any modification. I get a different error:

ERROR: Task (virtual:native:/home/daniele/poky/meta/recipes-devtools/python=
/python3_3.11.5.bb:do_install) failed with exit code '139'
NOTE: Tasks Summary: Attempted 3568 tasks of which 3518 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
virtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3_3.11=
.5.

Third attempt, always without modifications. Still different:

| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
ERROR: Task (/home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_co=
mpile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 6049 tasks of which 3567 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
/home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compile
Summary: There were 2 ERROR messages, returning a non-zero exit code.

And so on. Fourth attempt:

ERROR: Task (/home/daniele/poky/meta-realtime/recipes-extended/images/core-=
image-rt-extended.bb:do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 6700 tasks of which 6052 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
/home/daniele/poky/meta-realtime/recipes-extended/images/core-image-rt-exte=
nded.bb:do_rootfs
Summary: There was 1 ERROR message, returning a non-zero exit code.

How is this possible? Problems in the communication with the server, or wha=
t?

Thank you in advance and best regards

--
Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
Italy
tel +39 329 3933041
www.general-logic.com ( http://www.general-logic.com/ )
www.linkedin.com/in/daniele- lugli ( http://www.linkedin.com/in/daniele-lug=
li )

--YXr3PmwmYgl3dgnlXCm7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all and best wishes for the new year.<br /><br />I recently worked with =
nanbield on Ubuntu 22.04.3 in a VirtualBox machine. <br />I added layers me=
ta-intel and meta-realtime and, with a couple of small modifications to cor=
e-image-rt-extended.bb and to rt-app.bb, as suggested by some kind reader (=
see <a href=3D"https://lists.yoctoproject.org/g/yocto/topic/103135158" targ=
et=3D"_blank" rel=3D"noopener">https://lists.yoctoproject.org/g/yocto/topic=
/103135158</a>), and after a couple of restarts, I could obtain the image, =
prepare a .vdi from the .wic and boot a virtual machine with that disk.<br =
/><br />Now I moved to a physical machine with Ubuntu 22.04.3. Here is the =
build configuration:<br /><br /><span style=3D"color: #0000ff;">BB_VERSION&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "2.6.1"<br =
/>BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; =3D "x86_64-linux"<br />NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "universal"<br />TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; =3D "x86_64-poky-linux"<br />MACHINE&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "genericx86-64=
"<br />DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; =3D "poky"<br />DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; =3D "4.3+snapshot-b92406d2313234dccd77b05fe74c09ba9617a738"<=
br />TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "m64 core2=
"<br />TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; =3D ""<br />meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />meta-poky&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />meta-yocto-bsp&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "master:b92406d2313234dccd77b05fe74c09ba9=
617a738"<br />meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D "master:10f1890af03dbb804bffd4fa7eda7729e08f12=
cb"<br />meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; =3D "master:5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f"</span><br /><spa=
n style=3D"color: #0000ff;">meta-realtime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =3D "master:489e1d6b34e46f845a4bfe6461a39c6a4bcb7794"</span><br />=
<br />I am using exactly the same configuration as in the virtual Ubuntu an=
d I have also applied the suggested modifications to core-image-rt-extended=
.bb and to rt-app.bb. So the situation should be the same.<br /><br />I can=
not understand why I am getting error messages which look random: when, aft=
er the error, I rerun bitbake, I get a different error.<br /><br />As an in=
stance, in the first run of bitbake core-image-extended.bb I get:<br /><br =
/><span style=3D"color: #ff0000;">| /home/daniele/poky/build/tmp/work/x86_6=
4-linux/cmake-native/3.27.7/cmake-3.27.7/Source/cmComputeComponentGraph.cxx=
:139:1: internal compiler error: Segmentation fault</span><br /><span style=
=3D"color: #ff0000;">|&nbsp;&nbsp; 139 | }</span><br /><span style=3D"color=
: #ff0000;">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | ^</span><br /><span sty=
le=3D"color: #ff0000;">| 0x7fc36ca4251f ???</span><br /><span style=3D"colo=
r: #ff0000;">| &nbsp;&nbsp;&nbsp; ./signal/../sysdeps/unix/sysv/linux/x86_6=
4/libc_sigaction.c:0</span><br /><span style=3D"color: #ff0000;">| 0x7fc36c=
a29d8f __libc_start_call_main</span><br /><span style=3D"color: #ff0000;">|=
 &nbsp;&nbsp;&nbsp; ../sysdeps/nptl/libc_start_call_main.h:58</span><br /><=
span style=3D"color: #ff0000;">| 0x7fc36ca29e3f __libc_start_main_impl</spa=
n><br /><span style=3D"color: #ff0000;">| &nbsp;&nbsp;&nbsp; ../csu/libc-st=
art.c:392</span><br /><span style=3D"color: #ff0000;">| Please submit a ful=
l bug report,</span><br /><span style=3D"color: #ff0000;">| with preprocess=
ed source if appropriate.</span><br /><span style=3D"color: #ff0000;">...</=
span><br /><span style=3D"color: #ff0000;">Summary: 1 task failed:</span><b=
r /><span style=3D"color: #ff0000;">&nbsp; /home/daniele/poky/meta/recipes-=
devtools/cmake/cmake-native_3.27.7.bb:do_compile<br /></span><br />Second a=
ttempt, without any modification. I get a different error:<br /><br /><span=
 style=3D"color: #ff0000;">ERROR: Task (virtual:native:/home/daniele/poky/m=
eta/recipes-devtools/python/python3_3.11.5.bb:do_install) failed with exit =
code '139'</span><br /><span style=3D"color: #ff0000;">NOTE: Tasks Summary:=
 Attempted 3568 tasks of which 3518 didn't need to be rerun and 1 failed.</=
span><br /><br /><span style=3D"color: #ff0000;">Summary: 1 task failed:</s=
pan><br /><span style=3D"color: #ff0000;">&nbsp; virtual:native:/home/danie=
le/poky/meta/recipes-devtools/python/python3_3.11.5.</span><br /><br />Thir=
d attempt, always without modifications. Still different:<br /><br /><span =
style=3D"color: #ff0000;">| ERROR: oe_runmake failed</span><br /><span styl=
e=3D"color: #ff0000;">| WARNING: exit code 1 from a shell command.</span><b=
r /><span style=3D"color: #ff0000;">ERROR: Task (/home/daniele/poky/meta/re=
cipes-devtools/gcc/gcc_13.2.bb:do_compile) failed with exit code '1'</span>=
<br /><span style=3D"color: #ff0000;">NOTE: Tasks Summary: Attempted 6049 t=
asks of which 3567 didn't need to be rerun and 1 failed.</span><br /><br />=
<span style=3D"color: #ff0000;">Summary: 1 task failed:</span><br /><span s=
tyle=3D"color: #ff0000;">&nbsp; /home/daniele/poky/meta/recipes-devtools/gc=
c/gcc_13.2.bb:do_compile</span><br /><span style=3D"color: #ff0000;">Summar=
y: There were 2 ERROR messages, returning a non-zero exit code.</span><br /=
><br />And so on. Fourth attempt:<br /><br /><span style=3D"color: #ff0000;=
">ERROR: Task (/home/daniele/poky/meta-realtime/recipes-extended/images/cor=
e-image-rt-extended.bb:do_rootfs) failed with exit code '1'</span><br /><sp=
an style=3D"color: #ff0000;">NOTE: Tasks Summary: Attempted 6700 tasks of w=
hich 6052 didn't need to be rerun and 1 failed.</span><br /><br /><span sty=
le=3D"color: #ff0000;">Summary: 1 task failed:</span><br /><span style=3D"c=
olor: #ff0000;">&nbsp; /home/daniele/poky/meta-realtime/recipes-extended/im=
ages/core-image-rt-extended.bb:do_rootfs</span><br /><span style=3D"color: =
#ff0000;">Summary: There was 1 ERROR message, returning a non-zero exit cod=
e.</span><br /><br />How is this possible? Problems in the communication wi=
th the server, or what?<br /><br />Thank you in advance and best regards<br=
 /><br />-- <br />
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br />Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.general-lo=
gic.com/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https:=
//www.google.com/url?q=3Dhttp://www.general-logic.com&amp;source=3Dgmail&am=
p;ust=3D1702484712598000&amp;usg=3DAOvVaw3caieBojp7RHbXjtN3Avtg">www.genera=
l-logic.com</a></div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.linkedin.c=
om/in/daniele-lugli" target=3D"_blank" rel=3D"noopener" data-saferedirectur=
l=3D"https://www.google.com/url?q=3Dhttp://www.linkedin.com/in/daniele-lugl=
i&amp;source=3Dgmail&amp;ust=3D1702484712598000&amp;usg=3DAOvVaw2CJ1YOxQZd7=
TCndA_wq8ak">www.linkedin.com/in/daniele-<wbr />lugli</a></div>

--YXr3PmwmYgl3dgnlXCm7--

