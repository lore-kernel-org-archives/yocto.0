Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2728E01404
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 09:00:09 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so2318898pbb.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 09:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=F+gzM5qzXZS1ogjuk1rGZ4s5NaHPt+GjNZl5I7Hy9M0=;
	b=uRT05HrXsib/aL4YKuPLHYSnnLKFjrbHwDsMnxxJLN4I5Y3haUjzjcINHBW3VQud8O
	Wu7Pl9AYiNIle1Eep01y6m7DUQda+yQo5JJ01JtWUdh7Csnibdup7q/Uai2GQY7H2PHA
	xGPHok7bWBOF0rDbrvHBZdALaHIYEsmjeHbJ4rdwBwIIgr1nMncc9Xq3NAm1oXN9a4XY
	9IjouHm2GDKsEGUmr6b1ao2ZUrTjw2SK3CbMUdsIjxiq0cIdL4s3dHgbfRbN6DHTXfDe
	K64A7Y0ez8sV4ALd98/gdNNXVgJkiyWoDVmIxTWYgqMwbY8f1elCEl/z/N9ueGNqVDPV
	NKdA==
Received: by 10.68.237.74 with SMTP id va10mr13660342pbc.46.1344614409423;
	Fri, 10 Aug 2012 09:00:09 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id gv1sm3581284pbc.38.2012.08.10.09.00.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Aug 2012 09:00:04 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Fri, 10 Aug 2012 19:59:59 +0400
In-Reply-To: <84E45B3C-7D63-4FC7-8819-C5D5D53CB710@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <84E45B3C-7D63-4FC7-8819-C5D5D53CB710@gmail.com>
Message-Id: <1D8CF354-3305-4BC7-9321-6CCCAC85D317@gmail.com>
X-Mailer: Apple Mail (2.1278)
Subject: Re: external-sourcery-toolchain: ERROR: Function failed: do_install
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
X-List-Received-Date: Fri, 10 Aug 2012 16:00:09 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_81042A95-E229-4D5C-8AA8-F3E85D873FAD"

--Apple-Mail=_81042A95-E229-4D5C-8AA8-F3E85D873FAD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 10, 2012, at 7:37 PM, Elvis Dowson wrote:

> I cloned the meta-sourcery repo, added it to my bblayers.conf
>=20
> $ cd /tool/yocto
> $ git clone git://github.com/MentorEmbedded/meta-sourcery.git
>=20
> I specified the following variables in my local.conf:
>=20
> # Set the toolchain.
> TCMODE =3D "external-csl"
> EXTERNAL_TOOLCHAIN =3D "/tool/mentor/csl-2011.03-39"
> CSL_TARGET_SYS_powerpc =3D "powerpc-eabi"
>=20
> I get the following error, when I try to run bitbake =
core-image-minimal:
>=20
> ERROR: Function failed: do_install (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646 for further information)
> ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646
> Log data follows:
> | DEBUG: Executing shell function do_install
> | cp: target =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolc=
hain-2011.03-39-r12/image/lib' is not a directory
> | ERROR: Function failed: do_install (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646 for further information)
> NOTE: package external-sourcery-toolchain-2011.03-39-r12: task =
do_install: Failed
> ERROR: Task 41 =
(/tool/yocto/meta-sourcery/recipes/meta/external-sourcery-toolchain.bb, =
do_install) failed with exit code '1'
> Waiting for 3 running tasks to finish:
> 0: ncurses-native-5.9-r10.1 do_configure (pid 31329)
> 1: openssl-native-1.0.0j-r15.3 do_unpack (pid 31503)
> 2: zlib-native-1.2.7-r0 do_compile (pid 31632)
> NOTE: package attr-native-2.4.46-r4: task do_fetch: Started
> Waiting for 4 running tasks to finish:
> 0: ncurses-native-5.9-r10.1 do_configure (pid 31329)
> 1: openssl-native-1.0.0j-r15.3 do_unpack (pid 31503)
> 2: zlib-native-1.2.7-r0 do_compile (pid 31632)
> 3: attr-native-2.4.46-r4 do_fetch (pid 31843)
> NOTE: package attr-native-2.4.46-r4: task do_fetch: Succeeded
> Waiting for 3 running tasks to finish:
> 0: ncurses-native-5.9-r10.1 do_configure (pid 31329)
> 1: openssl-native-1.0.0j-r15.3 do_unpack (pid 31503)
> 2: zlib-native-1.2.7-r0 do_compile (pid 31632)
> NOTE: package openssl-native-1.0.0j-r15.3: task do_unpack: Succeeded
> Waiting for 2 running tasks to finish:
> 0: ncurses-native-5.9-r10.1 do_configure (pid 31329)
> 1: zlib-native-1.2.7-r0 do_compile (pid 31632)
> NOTE: package zlib-native-1.2.7-r0: task do_compile: Succeeded
> Waiting for 1 running tasks to finish:
> 0: ncurses-native-5.9-r10.1 do_configure (pid 31329)
> NOTE: package ncurses-native-5.9-r10.1: task do_configure: Succeeded
> NOTE: Tasks Summary: Attempted 97 tasks of which 63 didn't need to be =
rerun and 1 failed.
>=20
> Summary: 1 task failed:
>   =
/tool/yocto/meta-sourcery/recipes/meta/external-sourcery-toolchain.bb, =
do_install
> Summary: There were 5 ERROR messages shown, returning a non-zero exit =
code.
>=20
> How can I resolve this error?
>=20

I found the solution. I had to specify NO32LIBS =3D "0", since I'm =
building on an Ubuntu 12.04 64-bit machine.

# Set the toolchain.
TCMODE =3D "external-csl"
EXTERNAL_TOOLCHAIN =3D "/tool/mentor/csl-2012.03.71"
NO32LIBS =3D "0"
CSL_TARGET_SYS_powerpc =3D "powerpc-mentor-linux-gnu"

PREFERRED_PROVIDER_linux-libc-headers =3D "external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc =3D =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-initial =3D =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-intermediate =3D =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g++ =3D =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}binutils =3D =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-for-gcc =3D =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}compilerlibs =3D =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_libgcc =3D "external-sourcery-toolchain"
PREFERRED_PROVIDER_eglibc =3D "external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/libc =3D "external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/libintl =3D "external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/libiconv =3D "external-sourcery-toolchain"
PREFERRED_PROVIDER_gdbserver =3D "external-sourcery-toolchain"

The build is progressing along now.

Elvis Dowson=

--Apple-Mail=_81042A95-E229-4D5C-8AA8-F3E85D873FAD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 10, 2012, at 7:37 PM, Elvis Dowson =
wrote:</div><div><br></div><blockquote type=3D"cite"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">I cloned the meta-sourcery =
repo, added it to my bblayers.conf<div><br></div><div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; ">$ cd =
/tool/yocto</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">$ git clone <a =
href=3D"git://github.com/MentorEmbedded/meta-sourcery.git">git://github.co=
m/MentorEmbedded/meta-sourcery.git</a></div></div><div><br></div><div>I =
specified the following variables in my =
local.conf:</div><div><br></div><div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "># Set the toolchain.</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">TCMODE =3D "external-csl"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">EXTERNAL_TOOLCHAIN =3D =
"/tool/mentor/csl-2011.03-39"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">CSL_TARGET_SYS_powerpc =3D =
"powerpc-eabi"</div></div><div><br></div><div>I get the following error, =
when I try to run bitbake =
core-image-minimal:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Function =
failed: do_install (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Log data =
follows:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| DEBUG: Executing shell function =
do_install</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| cp: target =
`/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolc=
hain-2011.03-39-r12/image/lib' is not a directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| ERROR: Function =
failed: do_install (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/external-sourcery-toolch=
ain-2011.03-39-r12/temp/log.do_install.31646 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package =
external-sourcery-toolchain-2011.03-39-r12: task do_install: =
Failed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">ERROR: Task 41 =
(/tool/yocto/meta-sourcery/recipes/meta/external-sourcery-toolchain.bb, =
do_install) failed with exit code '1'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Waiting for 3 =
running tasks to finish:</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">0: ncurses-native-5.9-r10.1 do_configure =
(pid 31329)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1: openssl-native-1.0.0j-r15.3 do_unpack (pid =
31503)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">2: zlib-native-1.2.7-r0 do_compile (pid =
31632)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: package attr-native-2.4.46-r4: task do_fetch: =
Started</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Waiting for 4 running tasks to finish:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">0: =
ncurses-native-5.9-r10.1 do_configure (pid 31329)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1: =
openssl-native-1.0.0j-r15.3 do_unpack (pid 31503)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">2: =
zlib-native-1.2.7-r0 do_compile (pid 31632)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">3: =
attr-native-2.4.46-r4 do_fetch (pid 31843)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: package =
attr-native-2.4.46-r4: task do_fetch: Succeeded</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Waiting for 3 =
running tasks to finish:</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">0: ncurses-native-5.9-r10.1 do_configure =
(pid 31329)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1: openssl-native-1.0.0j-r15.3 do_unpack (pid =
31503)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">2: zlib-native-1.2.7-r0 do_compile (pid =
31632)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: package openssl-native-1.0.0j-r15.3: task do_unpack: =
Succeeded</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Waiting for 2 running tasks to =
finish:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">0: ncurses-native-5.9-r10.1 do_configure (pid =
31329)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">1: zlib-native-1.2.7-r0 do_compile (pid =
31632)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: package zlib-native-1.2.7-r0: task do_compile: =
Succeeded</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Waiting for 1 running tasks to =
finish:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">0: ncurses-native-5.9-r10.1 do_configure (pid =
31329)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: package ncurses-native-5.9-r10.1: task do_configure: =
Succeeded</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: Tasks Summary: Attempted 97 tasks of =
which 63 didn't need to be rerun and 1 failed.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: 1 task =
failed:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; =
/tool/yocto/meta-sourcery/recipes/meta/external-sourcery-toolchain.bb, =
do_install</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: There were 5 ERROR messages shown, =
returning a non-zero exit =
code.</font></div></div><div><br></div><div>How can I resolve this =
error?</div><div><br></div></div></blockquote><br></div><div>I found the =
solution. I had to specify NO32LIBS =3D "0", since I'm building on an =
Ubuntu 12.04 64-bit machine.</div><div><br></div><div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; "># Set =
the toolchain.</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">TCMODE =3D "external-csl"</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">EXTERNAL_TOOLCHAIN =3D "/tool/mentor/csl-2012.03.71"</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">NO32LIBS =3D "0"</div><div style=3D"margin-top: 0px; margin-right: =
0px; margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">CSL_TARGET_SYS_powerpc =3D =
"powerpc-mentor-linux-gnu"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; min-height: 14px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">PREFERRED_PROVIDER_linux-libc-headers =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; =
">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; =
">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-initial =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; =
">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-intermediate =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; =
">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g++ =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; =
">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}binutils =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; =
">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-for-gcc =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; =
">PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}compilerlibs =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">PREFERRED_PROVIDER_libgcc =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">PREFERRED_PROVIDER_eglibc =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">PREFERRED_PROVIDER_virtual/libc =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">PREFERRED_PROVIDER_virtual/libintl =3D=
 "external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">PREFERRED_PROVIDER_virtual/libiconv =
=3D "external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">PREFERRED_PROVIDER_gdbserver =3D =
"external-sourcery-toolchain"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "><br></div></div>The build is =
progressing along now.<br><div><br></div><div>Elvis =
Dowson</div></div></body></html>=

--Apple-Mail=_81042A95-E229-4D5C-8AA8-F3E85D873FAD--
