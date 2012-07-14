Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AB2FE0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 21:19:07 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so7998123pbb.35
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 21:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=KXLTnkVP2xAgCgYVqW+xzpdOiPjEfkmmMTbSACNSVnw=;
	b=fYLTrm355R7D/GUphRLkb4dsNccSNCzqxXuYxpwULm4DKxRVDH+BCB0RtYhiTrqJX8
	wC7E+WNqzQSdiGm5u26mk+2UgyMVG2/ndyMvyAIqm70kajhDi1d/6oaHzlnfLpogVbjI
	g5LlUKSuBqPGCeU4ZUc7rbkRPw3RJYE5i8xL/hDsED+UiP6Sy86n7uNKp49qJTg4Oe4T
	Vn6hz9mjmLBTlzbPpzB04rL0TFFt4p07ZpB9dKSrEO7FDx+73497GqfWi/ztzQSRRbHJ
	w+h74KgiiCLrJD3Pmo8cZwDIOFjDQQNqGWXoDPpLIc9gJQL+JwlF94A4wMNoj6FCKZwH
	rMEg==
Received: by 10.68.191.8 with SMTP id gu8mr8567318pbc.158.1342239547123;
	Fri, 13 Jul 2012 21:19:07 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id ny4sm7292745pbb.57.2012.07.13.21.19.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 13 Jul 2012 21:19:05 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Sat, 14 Jul 2012 08:19:00 +0400
In-Reply-To: <B6EAD6B8-1E73-484C-AF55-B1B07DB91944@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <B6EAD6B8-1E73-484C-AF55-B1B07DB91944@gmail.com>
Message-Id: <9CAC505E-37C3-47CC-97BA-6089CB57E6B4@gmail.com>
X-Mailer: Apple Mail (2.1278)
Subject: Re: meta-xilinx: zImage build error: "mkimage" command not found - U-Boot images will not be built
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
X-List-Received-Date: Sat, 14 Jul 2012 04:19:07 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B70FCFD4-CED8-41DF-9CD8-4F5715629689"

--Apple-Mail=_B70FCFD4-CED8-41DF-9CD8-4F5715629689
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Jul 14, 2012, at 12:30 AM, Elvis Dowson wrote:

> I'm try to build a zImage. I have been successful at building and =
running the kernel, outside of yocto, and running it on the Xilinx ML507 =
development board.
>=20
> I'm in the process of creating a linux-xilinx-2.6.38 recipe, and I'm =
stuck at the following error:
>=20
> NOTE: package linux-xilinx-2.6.38-r00: task do_compile: Started
> ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-2.6.38-r00=
/temp/log.do_compile.4655 for further information)
> ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-2.6.38-r00=
/temp/log.do_compile.4655
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 6 include/linux/version.h CC=3Dpowerpc-poky-linux-gcc  =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
LD=3Dpowerpc-poky-linux-ld  =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5
> |   CHK     include/linux/version.h
> | NOTE: make -j 6 zImage CC=3Dpowerpc-poky-linux-gcc  =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
LD=3Dpowerpc-poky-linux-ld  =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5
> |   CHK     include/linux/version.h
> |   CHK     include/generated/utsrelease.h
> |   CALL    scripts/checksyscalls.sh
> |   CHK     include/generated/compile.h
> |   CALL    arch/powerpc/kernel/systbl_chk.sh
> |   DTC     arch/powerpc/boot/virtex440-ml507.dtb
> | DTC: dts->dtb  on file "arch/powerpc/boot/dts/virtex440-ml507.dts"
> |   WRAP    arch/powerpc/boot/uImage
> |   WRAP    arch/powerpc/boot/simpleImage.virtex440-ml507
> |   WRAP    arch/powerpc/boot/simpleImage.initrd.virtex440-ml507
> | "mkimage" command not found - U-Boot images will not be built
> | make[1]: *** [arch/powerpc/boot/uImage] Error 1
> | make[1]: *** Waiting for unfinished jobs....
> | rm arch/powerpc/boot/virtex440-ml507.dtb
> | make: *** [zImage] Error 2
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-2.6.38-r00=
/temp/log.do_compile.4655 for further information)
> NOTE: package linux-xilinx-2.6.38-r00: task do_compile: Failed
> ERROR: Task 6 =
(/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx_2.6.38.bb, =
do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 990 tasks of which 989 didn't need to =
be rerun and 1 failed.
>=20
> Summary: 1 task failed:
>   /tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx_2.6.38.bb, =
do_compile
> Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.
>=20
> My virtex.conf file looks like this at the moment:
>=20
> KERNEL_IMAGETYPE =3D "zImage"
>=20

I observed that if I temporarily change=20

KERNEL_IMAGETYPE =3D "uImage", and run the build, it builds =
u-boot-mkimage-native, but it doesn't build it if I specify =
KERNEL_IMAGETYPE =3D "zImage"

NOTE: package linux-xilinx-2.6.38-r00: task do_unpack: Started
NOTE: package u-boot-mkimage-native-2011.06-r0: task do_compile: =
Succeeded
NOTE: Running task 993 of 1011 (ID: 140, =
virtual:native:/tool/yocto/poky/meta/recipes-bsp/u-boot/u-boot-mkimage_201=
1.06.bb, do_install)
NOTE: package u-boot-mkimage-native-2011.06-r0: task do_install: Started
NOTE: package u-boot-mkimage-native-2011.06-r0: task do_install: =
Succeeded
NOTE: Running task 994 of 1011 (ID: 141, =
virtual:native:/tool/yocto/poky/meta/recipes-bsp/u-boot/u-boot-mkimage_201=
1.06.bb, do_populate_sysroot)
NOTE: Running noexec task 997 of 1011 (ID: 145, =
virtual:native:/tool/yocto/poky/meta/recipes-bsp/u-boot/u-boot-mkimage_201=
1.06.bb, do_package_write)
NOTE: package u-boot-mkimage-native-2011.06-r0: task =
do_populate_sysroot: Started
NOTE: package u-boot-mkimage-native-2011.06-r0: task =
do_populate_sysroot: Succeeded
NOTE: package linux-xilinx-2.6.38-r00: task do_unpack: Succeeded

So, the temporary work around, was to do a uImage build, and then change =
the configuration to zImage, and the build succeeded!=20

What should I do to fix this bug? i.e. get u-boot-mkimage-native to =
build, when I specify KERNEL_IMAGETYPE =3D "zImage" ?

Best regards,

Elvis Dowson



--Apple-Mail=_B70FCFD4-CED8-41DF-9CD8-4F5715629689
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Jul 14, 2012, at 12:30 AM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div>I'm try to build a =
zImage. I have been successful at building and running the kernel, =
outside of yocto, and running it on the Xilinx ML507 development =
board.</div><div><br></div><div>I'm in the process of creating a =
linux-xilinx-2.6.38 recipe, and I'm stuck at the following =
error:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package linux-xilinx-2.6.38-r00: task =
do_compile: Started</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-2.6.38-r00=
/temp/log.do_compile.4655 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-2.6.38-r00=
/temp/log.do_compile.4655</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Log data =
follows:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| DEBUG: Executing shell function =
do_compile</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| NOTE: make -j 6 include/linux/version.h =
CC=3Dpowerpc-poky-linux-gcc =
&nbsp;--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
LD=3Dpowerpc-poky-linux-ld =
&nbsp;--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5</font></div>=
<div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
&nbsp; CHK &nbsp; &nbsp; include/linux/version.h</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| NOTE: make -j 6 =
zImage CC=3Dpowerpc-poky-linux-gcc =
&nbsp;--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
LD=3Dpowerpc-poky-linux-ld =
&nbsp;--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5</font></div>=
<div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
&nbsp; CHK &nbsp; &nbsp; include/linux/version.h</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| &nbsp; CHK =
&nbsp; &nbsp; include/generated/utsrelease.h</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| &nbsp; CALL =
&nbsp; &nbsp;scripts/checksyscalls.sh</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| &nbsp; CHK =
&nbsp; &nbsp; include/generated/compile.h</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| &nbsp; CALL =
&nbsp; &nbsp;arch/powerpc/kernel/systbl_chk.sh</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| &nbsp; DTC =
&nbsp; &nbsp; =
arch/powerpc/boot/virtex440-ml507.dtb</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| DTC: dts-&gt;dtb =
&nbsp;on file =
"arch/powerpc/boot/dts/virtex440-ml507.dts"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| &nbsp; WRAP =
&nbsp; &nbsp;arch/powerpc/boot/uImage</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| &nbsp; WRAP =
&nbsp; =
&nbsp;arch/powerpc/boot/simpleImage.virtex440-ml507</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| &nbsp; WRAP =
&nbsp; =
&nbsp;arch/powerpc/boot/simpleImage.initrd.virtex440-ml507</font></div><di=
v><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
"mkimage" command not found - U-Boot images will not be =
built</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: *** [arch/powerpc/boot/uImage] Error =
1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make[1]: *** Waiting for unfinished =
jobs....</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">| rm =
arch/powerpc/boot/virtex440-ml507.dtb</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make: *** =
[zImage] Error 2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ERROR: oe_runmake =
failed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-2.6.38-r00=
/temp/log.do_compile.4655 for further =
information)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package linux-xilinx-2.6.38-r00: task =
do_compile: Failed</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Task 6 =
(/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx_2.6.38.bb, =
do_compile) failed with exit code '1'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Tasks =
Summary: Attempted 990 tasks of which 989 didn't need to be rerun and 1 =
failed.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: 1 task =
failed:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; =
/tool/yocto/meta-xilinx/recipes-kernel/linux/linux-xilinx_2.6.38.bb, =
do_compile</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Summary: There was 1 ERROR message shown, =
returning a non-zero exit code.</font></div></div><div><br></div><div>My =
virtex.conf file looks like this at the =
moment:</div><div><br></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">KERNEL_IMAGETYPE =3D =
"zImage"</font></div><div><br></div></div></blockquote><br></div><div>I =
observed that if I temporarily =
change&nbsp;</div><div><br></div><div>KERNEL_IMAGETYPE =3D "uImage", and =
run the build, it builds u-boot-mkimage-native, but it doesn't build it =
if I specify&nbsp;KERNEL_IMAGETYPE =3D =
"zImage"</div><div><br></div><div><div>NOTE: package =
linux-xilinx-2.6.38-r00: task do_unpack: Started</div><div>NOTE: package =
u-boot-mkimage-native-2011.06-r0: task do_compile: =
Succeeded</div><div>NOTE: Running task 993 of 1011 (ID: 140, =
virtual:native:/tool/yocto/poky/meta/recipes-bsp/u-boot/u-boot-mkimage_201=
1.06.bb, do_install)</div><div>NOTE: package =
u-boot-mkimage-native-2011.06-r0: task do_install: =
Started</div><div>NOTE: package u-boot-mkimage-native-2011.06-r0: task =
do_install: Succeeded</div><div>NOTE: Running task 994 of 1011 (ID: 141, =
virtual:native:/tool/yocto/poky/meta/recipes-bsp/u-boot/u-boot-mkimage_201=
1.06.bb, do_populate_sysroot)</div><div>NOTE: Running noexec task 997 of =
1011 (ID: 145, =
virtual:native:/tool/yocto/poky/meta/recipes-bsp/u-boot/u-boot-mkimage_201=
1.06.bb, do_package_write)</div><div>NOTE: package =
u-boot-mkimage-native-2011.06-r0: task do_populate_sysroot: =
Started</div><div>NOTE: package u-boot-mkimage-native-2011.06-r0: task =
do_populate_sysroot: Succeeded</div><div>NOTE: package =
linux-xilinx-2.6.38-r00: task do_unpack: =
Succeeded</div><div><br></div><div>So, the temporary work around, was to =
do a uImage build, and then change the configuration to zImage, and the =
build succeeded!&nbsp;</div><div><br></div><div>What should I do to fix =
this bug? i.e. get u-boot-mkimage-native to build, when I =
specify&nbsp;KERNEL_IMAGETYPE =3D "zImage" =
?</div><div><br></div><div>Best regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div></div><br></div></body></html>=

--Apple-Mail=_B70FCFD4-CED8-41DF-9CD8-4F5715629689--
