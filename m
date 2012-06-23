Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEBE4E006D9
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 21:41:52 -0700 (PDT)
Received: by dadz8 with SMTP id z8so3757185dad.35
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 21:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=dXEfx3eY0lCoyJ+CHxou2/rjaweY7+hqLQXf7FuqKBg=;
	b=pkKjkCqLfG7IuC4OpO/LZJjWneuEUchXQ+8BnZ/nPHOCS3NTIkEaC9QlYOh3lNhFuC
	pXXBqtAgBxVj74sRz4R2mvfZLmXugPVXVhnfJj1jBECIKDPVsAXcQD+yvN9ohnq/QbCm
	FjmeHlZHH4gFeJJZ1xQkjGnXId/UxGLNdYKRShCJGZts0wupYo2HLX5sNhYWs7RowHVL
	k6fGk4azsjqvRD+mi2VX/Sj29Pd5+NyCVEPb0WFqFkM8eAL4ECQEl0tBL24N/v3YOW2J
	39o7Cvxde+lMy/nxGzb/4MoOS3tnZxTfUD85nobbrjwae6zh2eX7esOvtIVZchPBDWmw
	q2tA==
Received: by 10.68.136.68 with SMTP id py4mr16344843pbb.151.1340426512333;
	Fri, 22 Jun 2012 21:41:52 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id to1sm1207224pbc.27.2012.06.22.21.41.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 22 Jun 2012 21:41:51 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 23 Jun 2012 08:41:46 +0400
Message-Id: <2E8A3DA3-EC31-4CE7-979D-E842AFFAB8CA@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: SRCREV spec not working for kernel git recipes
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
X-List-Received-Date: Sat, 23 Jun 2012 04:41:52 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B3366E65-F431-4916-BAFD-AAB167C57C2E"

--Apple-Mail=_B3366E65-F431-4916-BAFD-AAB167C57C2E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I find that specifying a SRCREV doesn't work for kernel git =
recipes. The following recipe has SRCREV set to the commit id for =
xilinx_v2.6.37, but during the build process, it is always taking the =
latest commit id from the master branch, which is at 3.3.0.=20

I checked the =
tmp/work/virtex5-poky-linux/linux-xilinx-2.6.37+git1+ed63a4d76efadcb68f577=
6e4244766ffea226cc4-r17/git/Makefile

and it clearly is building linux kernel 3.3.0 instead of 2.6.37

contents of Makefile:

VERSION =3D 3
PATCHLEVEL =3D 3
SUBLEVEL =3D 0
EXTRAVERSION =3D -14.2-build1
NAME =3D Saber-toothed Squirrel

recipe linux-xilinx_git.bb

inherit kernel xilinx-kernel xilinx-utils
require recipes-kernel/linux/linux-dtb.inc

DESCRIPTION =3D "Linux kernel for Xilinx platforms"
COMPATIBLE_MACHINE =3D =
"(virtex4|virtex5|virtex5mb|spartan6-sp605|spartan6-lx9mb)"

LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7"

KBRANCH =3D "master"

SRCREV =3D "a5556fb251253ccb674bd22d9703c37f6f8807a8"

SRC_URI =3D =
"git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;branch=3D${KBRANCH} =
\
           file://defconfig"

LINUX_VERSION ?=3D "2.6.37"

PR =3D "r17"
PV =3D "${LINUX_VERSION}+git${SRCPV}"

XILINX_BOARD ?=3D "${@find_board(bb.data.getVar('XILINX_BSP_PATH', d, =
1), d)}"
KERNEL_DEVICETREE =3D "${@device_tree(bb.data.getVar('TARGET_ARCH', d, =
1), d)}"
KERNEL_DEVICETREE_microblazeel =3D =
"${@device_tree(bb.data.getVar('TARGET_CPU', d, 1), d)}"

S =3D "${WORKDIR}/git"

Elvis Dowson=

--Apple-Mail=_B3366E65-F431-4916-BAFD-AAB167C57C2E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; I find that specifying a SRCREV doesn't =
work for kernel git recipes. The following recipe has SRCREV set to the =
commit id for xilinx_v2.6.37, but during the build process, it is always =
taking the latest commit id from the master branch, which is at =
3.3.0.&nbsp;</div><div><br></div><div>I checked the =
tmp/work/virtex5-poky-linux/linux-xilinx-2.6.37+git1+ed63a4d76efadcb68f577=
6e4244766ffea226cc4-r17/git/Makefile</div><div><br></div><div>and it =
clearly is building linux kernel 3.3.0 instead of =
2.6.37</div><div><br></div><div>contents of =
Makefile:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">VERSION =3D 3</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">PATCHLEVEL =3D =
3</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">SUBLEVEL =3D 0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">EXTRAVERSION =3D =
-14.2-build1</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NAME =3D Saber-toothed =
Squirrel</font></div></div><div><br></div><div>recipe =
linux-xilinx_git.bb</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">inherit kernel =
xilinx-kernel xilinx-utils</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">require =
recipes-kernel/linux/linux-dtb.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DESCRIPTION =3D "Linux kernel for Xilinx =
platforms"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">COMPATIBLE_MACHINE =3D =
"(virtex4|virtex5|virtex5mb|spartan6-sp605|spartan6-lx9mb)"</font></div><d=
iv><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">LICENSE =3D "GPLv2"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">LIC_FILES_CHKSUM =3D=
 "<a =
href=3D"file:///COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7">file://COP=
YING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7</a>"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">KBRANCH =3D "master"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">SRCREV =3D =
"a5556fb251253ccb674bd22d9703c37f6f8807a8"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">SRC_URI =3D "<a =
href=3D"git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;branch=3D${KBRA=
NCH}">git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;branch=3D${KBRANC=
H}</a> \</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///defconfig">file://defconfig</a>"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">LINUX_VERSION ?=3D =
"2.6.37"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PR =3D "r17"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">PV =3D =
"${LINUX_VERSION}+git${SRCPV}"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">XILINX_BOARD ?=3D =
"${@find_board(bb.data.getVar('XILINX_BSP_PATH', d, 1), =
d)}"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">KERNEL_DEVICETREE =3D =
"${@device_tree(bb.data.getVar('TARGET_ARCH', d, 1), =
d)}"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">KERNEL_DEVICETREE_microblazeel =3D =
"${@device_tree(bb.data.getVar('TARGET_CPU', d, 1), =
d)}"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">S =3D =
"${WORKDIR}/git"</font></div></div><div><br></div><div>Elvis =
Dowson</div></body></html>=

--Apple-Mail=_B3366E65-F431-4916-BAFD-AAB167C57C2E--
