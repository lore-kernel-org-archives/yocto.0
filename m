Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6377EE01425
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 00:29:20 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3843093pbb.35
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 00:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=VK2znXI4HkG0yW25vLNysv3aEdN4oXhJGecjo/CdTcU=;
	b=El6+QMM4pqxQOTBtZG7ZQg0JI566EfnDh7o2zJ9OzF/ZzneMPBuglpfW8YUMCfXObU
	dX4IhQwEZ+YLmdC6XWQX0Gxq5p8kEhetBb5qxTZB1BwHFZhWyF0lm7+s+cHMZb7mDs20
	ogIICaJ61BAhOKXyty+EtRVWHCdlrOTdqhiylfJHh3DuFS7bxHvkj128X/iFFARtUsmt
	18a8i5/deo94rYuz1TYunAfHM08xMmW46CQxGVXZ7WfD4lQJIkqW/0ORCa7XShO31m2L
	LO+7l62lLINEzk3YwMTQWNfMdTHhPnOA6Nx2O0pFazcZZchE0OWVVKSdAJX2ZrC2ilTr
	9Unw==
Received: by 10.68.197.198 with SMTP id iw6mr7511511pbc.36.1340350159904;
	Fri, 22 Jun 2012 00:29:19 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id vc6sm38182192pbc.6.2012.06.22.00.29.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 22 Jun 2012 00:29:19 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 22 Jun 2012 11:29:13 +0400
Message-Id: <A8AE73E3-EC64-4E7F-9209-489762F48CFA@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: linux-xilinx: SRCPV, SRCREV, LINUX_VERSION and the actually generated kernel version
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
X-List-Received-Date: Fri, 22 Jun 2012 07:29:20 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6FAB9ACC-EE8E-4613-BCC7-C79E079B86E4"

--Apple-Mail=_6FAB9ACC-EE8E-4613-BCC7-C79E079B86E4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I'd like to learn what the proper way, is to maintain the =
linux-xilinx recipe located here:

=
http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/tree/recipes-kernel/=
linux/linux-xilinx_git.bb

inherit kernel xilinx-kernel xilinx-utils
require recipes-kernel/linux/linux-dtb.inc

DESCRIPTION =3D "Linux kernel for Xilinx platforms"
COMPATIBLE_MACHINE =3D =
"(virtex4|virtex5|virtex5mb|spartan6-sp605|spartan6-lx9mb)"

LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7"

PR =3D "r16"
LINUX_VERSION =3D "2.6.37.1"
PV =3D "${LINUX_VERSION}+git${SRCPV}"
SRC_URI =3D "git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit \
           file://defconfig"

XILINX_BOARD ?=3D "${@find_board(bb.data.getVar('XILINX_BSP_PATH', d, =
1), d)}"
KERNEL_DEVICETREE =3D "${@device_tree(bb.data.getVar('TARGET_ARCH', d, =
1), d)}"
KERNEL_DEVICETREE_microblazeel =3D =
"${@device_tree(bb.data.getVar('TARGET_CPU', d, 1), d)}"

S =3D "${WORKDIR}/git"

This recipe doesn't have a SRCREV specified. It specifies a =
LINUX_VERSION =3D "2.6.37.1", but in fact the current xilinx master =
branch points to a 3.3 kernel version.

The problem that I have is even if I specify SRCREV =3D =
"a5556fb251253ccb674bd22d9703c37f6f8807a8", which corresponds to the =
xilinx-v2.6.37 tag, when I build the recipe, SRCPV will still have the =
latest commit id for the master branch, and the corresponding output =
folder will have the wrong commit id.

I've noticed that many other kernel recipes (e.g. linux-yocto_3.4.bb) =
define things like this

SRCREV_machine_qemuarm ?=3D "1b83eb1b99e937b67dafa4dedba9440d596cbd9f"
SRCREV_machine ?=3D "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
SRCREV_meta ?=3D "aa226dcc5a1351fae49da40d77b718c4c3a76e7c"

LINUX_VERSION ?=3D "3.4.1"

PR =3D "r0"
PV =3D "${LINUX_VERSION}+git${SRCPV}"


What is confusing for me, is the use of the SRCPV varaible and it =
setting a different commit id, instead of using the SRCREV commit id and =
appending it to the generated kernel image name, during the image build =
process.

Best regards,

Elvis Dowson


--Apple-Mail=_6FAB9ACC-EE8E-4613-BCC7-C79E079B86E4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; I'd like to learn what the proper way, is =
to maintain the linux-xilinx recipe located =
here:</div><div><br></div><div><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/tree/recipes=
-kernel/linux/linux-xilinx_git.bb">http://git.yoctoproject.org/cgit/cgit.c=
gi/meta-xilinx/tree/recipes-kernel/linux/linux-xilinx_git.bb</a></div><div=
><br></div><div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">inherit kernel xilinx-kernel =
xilinx-utils</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">require =
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
face=3D"Monaco" size=3D"2">PR =3D "r16"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">LINUX_VERSION =3D =
"2.6.37.1"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PV =3D =
"${LINUX_VERSION}+git${SRCPV}"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">SRC_URI =3D "<a =
href=3D"git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit">git://git.xili=
nx.com/linux-xlnx.git;protocol=3Dgit</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///defconfig">file://defconfig</a>"</font></div><div><font =
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
"${WORKDIR}/git"</font></div></div><div><br></div><div>This recipe =
doesn't have a SRCREV specified. It specifies a LINUX_VERSION =3D =
"2.6.37.1", but in fact the current xilinx master branch points to a 3.3 =
kernel version.</div><div><br></div><div>The problem that I have is even =
if I specify SRCREV =3D "a5556fb251253ccb674bd22d9703c37f6f8807a8", =
which corresponds to the xilinx-v2.6.37 tag, <u>when I build the recipe, =
SRCPV will still have the latest commit id for the master branch, and =
the corresponding output folder will have the wrong commit =
id.</u></div><div><br></div><div>I've noticed that many other kernel =
recipes (e.g. linux-yocto_3.4.bb) define things like =
this</div><div><br></div><div>SRCREV_machine_qemuarm ?=3D =
"1b83eb1b99e937b67dafa4dedba9440d596cbd9f"</div><div><div>SRCREV_machine =
?=3D "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"</div><div>SRCREV_meta ?=3D=
 =
"aa226dcc5a1351fae49da40d77b718c4c3a76e7c"</div></div><div><br></div><div>=
<div>LINUX_VERSION ?=3D "3.4.1"</div><div><br></div><div>PR =3D =
"r0"</div><div>PV =3D =
"${LINUX_VERSION}+git${SRCPV}"</div></div><div><br></div><div><br></div><d=
iv>What is confusing for me, is the use of the SRCPV varaible and it =
setting a different commit id, instead of using the SRCREV commit id and =
appending it to the generated kernel image name, during the image build =
process.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div></body></html>=

--Apple-Mail=_6FAB9ACC-EE8E-4613-BCC7-C79E079B86E4--
