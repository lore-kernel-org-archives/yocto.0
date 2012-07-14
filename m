Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C2DBE0027E
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 20:56:54 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so7966269pbb.35
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 20:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=2LaUE7kq4gONI1QheoadmzpnyfyF3gA4LSUqZXXViAY=;
	b=dVAEOKg/zRUIchIhj2t3bSaBF/dR5ChB+y1LGR1Ib1F3TF1uGzJkkBKYVk961i7s17
	Pu/Ojet8NVD2jy48EIVkdiV1LtjPn3uR6rS0AdQnhp0ILtFWB4tc05YGNIIR3UliYeXE
	u4X/idBO7mECMYRKG8fTFDUKiuVCZsfAy6+7ViBs72PLXjdAQvvPabLtQP1F6knLw8pW
	VEjPOjfV19+KwNZH6fxsABkEErUuk37dON9WCgsOA4zlaItSbkCtBIgWa3isXjjoT7fk
	DlApxBmNnUQYDTNHcgpoIBfhQKjJIvEvLyJVGd3qO0Z9WZeZU/0/qU+Vwmy/wIqqvdCr
	/LnQ==
Received: by 10.68.203.7 with SMTP id km7mr8494996pbc.7.1342238213859;
	Fri, 13 Jul 2012 20:56:53 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pg3sm7274554pbc.2.2012.07.13.20.56.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 13 Jul 2012 20:56:52 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Sat, 14 Jul 2012 07:56:47 +0400
In-Reply-To: <C7BE51C8-1205-425D-A7CA-0E1B7059CC9D@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <C7BE51C8-1205-425D-A7CA-0E1B7059CC9D@gmail.com>
Message-Id: <F4328B07-233D-48ED-95EB-594AB00CCD0A@gmail.com>
X-Mailer: Apple Mail (2.1278)
Subject: Re: linux-xilinx: How to download a ramdisk image and copy it to arch/powerpc/boot folder
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
X-List-Received-Date: Sat, 14 Jul 2012 03:56:54 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_32C1D924-C2D2-4BBA-82DE-82BC34E8E375"

--Apple-Mail=_32C1D924-C2D2-4BBA-82DE-82BC34E8E375
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
          Would you be able to guide me, on how I can accomplish

a. trying to download a pre-built ramdisk image, prior to building the =
linux kernel? e.g. should I create a new ramdisk-xilinx.bb recipe to =
separately download it.=20

If so, how do I get to stage it so that it downloads it, as soon, as the =
kernel sources have been unpacked in the work directory, .. and then =
copy the ramdisk.image.gz file over to the arch/powerpc/boot folder?=20

b. which variables should I use to reference the kernel source work =
folder to perform the copy & which task should I use to perform the copy =
?

Best regards,

Elvis Dowson


On Jul 14, 2012, at 12:19 AM, Elvis Dowson wrote:

> Hi,
>      I'm trying to create a linux-xilinx-2.6.38 recipe, that will =
download a ramdisk image from =
http://wiki.xilinx.com/local--files/powerpc-linux/ramdisk.image.gz
> and copy it to the arch/powerpc/boot folder.
>=20
> How can I modify the following recipe to execute these commands?
>=20
> inherit kernel xilinx-kernel xilinx-utils
> require recipes-kernel/linux/linux-xilinx.inc
>=20
> DEFAULT_PREFERENCE =3D "1"
>=20
> KBRANCH =3D "master"
>=20
> LINUX_VERSION ?=3D "2.6.38"
> SRCREV_pn-${PN} =3D "c965eb91f22d1ca04b141957bccd1c02abc5c6f7"
> KTAG_virtex5 =3D "xilinx_v2.6.38"
>=20
> PR =3D "r00"
> PV =3D "${LINUX_VERSION}"
>=20
> SRC_URI =3D =
"git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;tag=3D${KTAG} \
>            =
file://0001-virtex-ml507-Update-device-tree-to-version-generated-by-Xilinx=
-EDK-13.1.patch \
>            =
file://0002-Makefile-Disable-warnings-being-treated-as-errors.patch \
>            file://defconfig"
>=20
> XILINX_BOARD ?=3D "${@find_board(bb.data.getVar('XILINX_BSP_PATH', d, =
1), d)}"
> KERNEL_DEVICETREE =3D "${@device_tree(bb.data.getVar('TARGET_ARCH', d, =
1), d)}"
> KERNEL_DEVICETREE_microblazeel =3D =
"${@device_tree(bb.data.getVar('TARGET_CPU', d, 1), d)}"
>=20
> #KERNEL_DEVICETREE =3D "virtex440-ml507.dts"
>=20
> COMPATIBLE_MACHINE =3D =
"(virtex4|virtex5|virtex5mb|spartan6-sp605|spartan6-lx9mb)"
>=20
> Best regards,
>=20
> Elvis
>=20
>=20


--Apple-Mail=_32C1D924-C2D2-4BBA-82DE-82BC34E8E375
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Would you be able to guide =
me, on how I can accomplish</div><div><br></div><div>a. trying to =
download a pre-built ramdisk image, prior to building the linux kernel? =
e.g. should I create a new ramdisk-xilinx.bb recipe to separately =
download it.&nbsp;</div><div><br></div><div>If so, how do I get to stage =
it so that it downloads it, as soon, as the kernel sources have been =
unpacked in the work directory, .. and then copy the ramdisk.image.gz =
file over to the arch/powerpc/boot =
folder?&nbsp;</div><div><br></div><div>b. which variables should I =
use&nbsp;to reference the kernel source work folder to perform the copy =
&amp;&nbsp;which task should I use to perform the copy =
?</div><div><br></div><div>Best regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div><div><br></div><div><div>On Jul 14, 2012, at =
12:19 AM, Elvis Dowson wrote:</div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div>Hi,</div><div>&nbsp; =
&nbsp; &nbsp;I'm trying to create a linux-xilinx-2.6.38 recipe, that =
will download a ramdisk image from <a =
href=3D"http://wiki.xilinx.com/local--files/powerpc-linux/ramdisk.image.gz=
">http://wiki.xilinx.com/local--files/powerpc-linux/ramdisk.image.gz</a></=
div><div>and copy it to&nbsp;the arch/powerpc/boot =
folder.</div><div><br></div><div>How can I modify the following recipe =
to execute these commands?</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">inherit kernel =
xilinx-kernel xilinx-utils</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">require =
recipes-kernel/linux/linux-xilinx.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DEFAULT_PREFERENCE =3D =
"1"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">KBRANCH =3D "master"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">LINUX_VERSION ?=3D =
"2.6.38"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">SRCREV_pn-${PN} =3D =
"c965eb91f22d1ca04b141957bccd1c02abc5c6f7"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">KTAG_virtex5 =3D =
"xilinx_v2.6.38"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">PR =3D =
"r00"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">PV =3D "${LINUX_VERSION}"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">SRC_URI =3D "<a =
href=3D"git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;tag=3D${KTAG}">=
git://git.xilinx.com/linux-xlnx.git;protocol=3Dgit;tag=3D${KTAG}</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///0001-virtex-ml507-Update-device-tree-to-version-generated-=
by-Xilinx-EDK-13.1.patch">file://0001-virtex-ml507-Update-device-tree-to-v=
ersion-generated-by-Xilinx-EDK-13.1.patch</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///0002-Makefile-Disable-warnings-being-treated-as-errors.pat=
ch">file://0002-Makefile-Disable-warnings-being-treated-as-errors.patch</a=
> \</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
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
face=3D"Monaco" size=3D"2">#KERNEL_DEVICETREE =3D =
"virtex440-ml507.dts"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">COMPATIBLE_MACHINE =
=3D =
"(virtex4|virtex5|virtex5mb|spartan6-sp605|spartan6-lx9mb)"</font></div></=
div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis</div><div><br></div><div><br></div=
></div></blockquote></div><br></body></html>=

--Apple-Mail=_32C1D924-C2D2-4BBA-82DE-82BC34E8E375--
