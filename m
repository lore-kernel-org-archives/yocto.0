Return-Path: <linuxinme@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31A3BE006B1
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2012 00:54:27 -0700 (PDT)
Received: by werc12 with SMTP id c12so3251298wer.35
	for <yocto@yoctoproject.org>; Sat, 07 Jul 2012 00:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=V4uJTv7595L3NyilTEQGtA7CLBoZu2Oeez8Y975njvg=;
	b=bRqDoiKsJSH7hqJW6dnC9h6yGWemmOLR/zJP1+WDWGZOHO9WlabOaRnay4MIZssP0J
	np+sSFGXnNrJbU+zja2hwKbNjko81Yy4DsSmMOoAJxkxbJ1SPF3k2HyDA8yN15DGrwb3
	BMQMHWs6uycN1dqiiIasrz7cXzZJbHKtSm4ktjeTbtnSuSfSlbCtH3oIaxm7SYlKke13
	mNUc3AHwMFX0UxUsFu2yYIgjfAtS/CmiJfpFRntzue80YcQ8zbeEcgBXBL9EqoyCj8oW
	LArz731lCZTQwuNHhGJCvP1spYC0amMK/jA/+MPRpAfJQN5AcIvlF6F/oY0mDhDbmV17
	glyQ==
MIME-Version: 1.0
Received: by 10.180.104.168 with SMTP id gf8mr13500338wib.12.1341647666335;
	Sat, 07 Jul 2012 00:54:26 -0700 (PDT)
Received: by 10.216.16.37 with HTTP; Sat, 7 Jul 2012 00:54:26 -0700 (PDT)
Date: Sat, 7 Jul 2012 13:24:26 +0530
Message-ID: <CAFP0WUHEnfRK4fGK=h6cFwf6DwbiVu+rX8n70vSjpEZ=dCVJ6g@mail.gmail.com>
From: kishore sheik ahamed <linuxinme@gmail.com>
To: yocto@yoctoproject.org
Subject: Help: Yocto build error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 07 Jul 2012 07:54:27 -0000
Content-Type: multipart/alternative; boundary=f46d044283fe90d13904c438b090

--f46d044283fe90d13904c438b090
Content-Type: text/plain; charset=ISO-8859-1

Hello there

I am trying to build Yocto on ubuntu 10.10
I get the following error.
Could someone help me?

Making all in ERROR: Function failed: do_compile (see
/home/kishore/project/yocto/
poky-denzil-7.0-build/tmp/work/i686-linux/elfutils-native-0.148-r7/temp/log.do_compile.21021
for further information)
| src
| make[2]: Entering directory
`/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/work/i686-linux/elfutils-native-0.148-r7/elfutils-0.148/src'
| gcc -std=gnu99 -Wall -Wshadow -Werror -Wunused -Wextra -fgnu89-inline
-Wformat=2
-isystem/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/include
-O2 -pipe -Wl,-rpath-link,../libelf:../libdw
-L/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/lib
-L/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/sysroots/i686-linux/lib
-Wl,-rpath-link,/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath-link,/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/sysroots/i686-linux/lib
-Wl,-rpath,/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath,/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/sysroots/i686-linux/lib
-Wl,-O1 -o elflint elflint.o ../libebl/libebl.a ../libelf/libelf.so
../lib/libeu.a  -ldl
| ./ld: unknown option `-z relro'
| ./ld: invalid option -- 'p'
| Try `ld --help' or `ld --usage' for more information.
| collect2: ld returned 64 exit status
| make[2]: *** [elflint] Error 1
| make[2]: Leaving directory
`/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/work/i686-linux/elfutils-native-0.148-r7/elfutils-0.148/src'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/work/i686-linux/elfutils-native-0.148-r7/elfutils-0.148'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
NOTE: package elfutils-native-0.148-r7: task do_compile: Failed
ERROR: Task 335
(virtual:native:/home/kishore/project/yocto/poky-denzil-7.0/meta/recipes-devtools/elfutils/
elfutils_0.148.bb, do_compile) failed with exit code '1'
NOTE: Running noexec task 1088 of 1606 (ID: 9,
/home/kishore/project/yocto/poky-denzil-7.0/meta/recipes-core/images/
core-image-minimal.bb, do_package_write)
NOTE: Tasks Summary: Attempted 1089 tasks of which 1086 didn't need to be
rerun and 2 failed.

Summary: 2 tasks failed:
  /home/kishore/project/yocto/poky-denzil-7.0/meta/recipes-devtools/gcc/
gcc-cross-initial_4.6.bb, do_configure

virtual:native:/home/kishore/project/yocto/poky-denzil-7.0/meta/recipes-devtools/elfutils/
elfutils_0.148.bb, do_compile
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
kishore@kishore-workststion:~/project/yocto/poky-denzil-7.0-build$ gvim
/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/work/i686-linux/elfutils-native-0.148-r7/temp/log.do_compile.21021


Regards
Kishore

--f46d044283fe90d13904c438b090
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello there<br><br>I am trying to build Yocto on ubuntu 10.10 <br>I get the=
 following error.<br>Could someone help me?<br><br>Making all in ERROR: Fun=
ction failed: do_compile (see /home/kishore/project/yocto/<div id=3D":1p3">
poky-denzil-7.0-build/tmp/work/i686-linux/elfutils-native-0.148-r7/temp/log=
.do_compile.21021 for further information)<br>
| src<br>| make[2]: Entering directory `/home/kishore/project/yocto/poky-de=
nzil-7.0-build/tmp/work/i686-linux/elfutils-native-0.148-r7/elfutils-0.148/=
src&#39;<br>| gcc -std=3Dgnu99 -Wall -Wshadow -Werror -Wunused -Wextra -fgn=
u89-inline -Wformat=3D2=A0=A0 -isystem/home/kishore/project/yocto/poky-denz=
il-7.0-build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -Wl,-rpath-link,=
../libelf:../libdw -L/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/=
sysroots/i686-linux/usr/lib -L/home/kishore/project/yocto/poky-denzil-7.0-b=
uild/tmp/sysroots/i686-linux/lib -Wl,-rpath-link,/home/kishore/project/yoct=
o/poky-denzil-7.0-build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath-link,/ho=
me/kishore/project/yocto/poky-denzil-7.0-build/tmp/sysroots/i686-linux/lib =
-Wl,-rpath,/home/kishore/project/yocto/poky-denzil-7.0-build/tmp/sysroots/i=
686-linux/usr/lib -Wl,-rpath,/home/kishore/project/yocto/poky-denzil-7.0-bu=
ild/tmp/sysroots/i686-linux/lib -Wl,-O1 -o elflint elflint.o ../libebl/libe=
bl.a ../libelf/libelf.so ../lib/libeu.a=A0 -ldl<br>

| ./ld: unknown option `-z relro&#39;<br>| ./ld: invalid option -- &#39;p&#=
39;<br>| Try `ld --help&#39; or `ld --usage&#39; for more information.<br>|=
 collect2: ld returned 64 exit status<br>| make[2]: *** [elflint] Error 1<b=
r>

| make[2]: Leaving directory `/home/kishore/project/yocto/poky-denzil-7.0-b=
uild/tmp/work/i686-linux/elfutils-native-0.148-r7/elfutils-0.148/src&#39;<b=
r>| make[1]: *** [all-recursive] Error 1<br>| make[1]: Leaving directory `/=
home/kishore/project/yocto/poky-denzil-7.0-build/tmp/work/i686-linux/elfuti=
ls-native-0.148-r7/elfutils-0.148&#39;<br>

| make: *** [all] Error 2<br>| ERROR: oe_runmake failed<br>NOTE: package el=
futils-native-0.148-r7: task do_compile: Failed<br>ERROR: Task 335 (virtual=
:native:/home/kishore/project/yocto/poky-denzil-7.0/meta/recipes-devtools/e=
lfutils/<a href=3D"http://elfutils_0.148.bb/" target=3D"_blank">elfutils_0.=
148.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>

NOTE: Running noexec task 1088 of 1606 (ID: 9, /home/kishore/project/yocto/=
poky-denzil-7.0/meta/recipes-core/images/<a href=3D"http://core-image-minim=
al.bb/" target=3D"_blank">core-image-minimal.bb</a>, do_package_write)<br>
NOTE: Tasks Summary: Attempted 1089 tasks of which 1086 didn&#39;t need to =
be rerun and 2 failed.<br>
<br>Summary: 2 tasks failed:<br>=A0 /home/kishore/project/yocto/poky-denzil=
-7.0/meta/recipes-devtools/gcc/<a href=3D"http://gcc-cross-initial_4.6.bb/"=
 target=3D"_blank">gcc-cross-initial_4.6.bb</a>, do_configure<br>=A0 virtua=
l:native:/home/kishore/project/yocto/poky-denzil-7.0/meta/recipes-devtools/=
elfutils/<a href=3D"http://elfutils_0.148.bb/" target=3D"_blank">elfutils_0=
.148.bb</a>, do_compile<br>

Summary: There was 1 WARNING message shown.<br>Summary: There were 2 ERROR =
messages shown, returning a non-zero exit code.<br>kishore@kishore-workstst=
ion:~/project/yocto/poky-denzil-7.0-build$ gvim /home/kishore/project/yocto=
/poky-denzil-7.0-build/tmp/work/i686-linux/elfutils-native-0.148-r7/temp/lo=
g.do_compile.21021<br>

<br><br>Regards<div class=3D"yj6qo ajU"><div id=3D":1qo" class=3D"ajR" tabi=
ndex=3D"0"><img class=3D"ajT" src=3D"images/cleardot.gif">Kishore</div></di=
v></div>

--f46d044283fe90d13904c438b090--
