Return-Path: <jeff@kokofitclub.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A174E005B1
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2011 13:20:36 -0800 (PST)
Received: by vcbfk13 with SMTP id fk13so6278691vcb.35
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2011 13:20:36 -0800 (PST)
Received: by 10.220.182.77 with SMTP id cb13mr580200vcb.149.1321737635543;
	Sat, 19 Nov 2011 13:20:35 -0800 (PST)
Received: from [10.0.1.13] (c-24-63-246-141.hsd1.ma.comcast.net.
	[24.63.246.141])
	by mx.google.com with ESMTPS id c7sm6943985vdh.12.2011.11.19.13.20.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 19 Nov 2011 13:20:34 -0800 (PST)
From: Jeffrey Moore <jeff@kokofitclub.com>
Date: Sat, 19 Nov 2011 16:20:33 -0500
Message-Id: <A4579E89-DAD0-4BA2-BD7D-976040983CBF@kokofitclub.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1251.1)
X-Mailer: Apple Mail (2.1251.1)
Subject: =?UTF-8?B?J+KApmJ6SW1hZ2UnOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5IHdoZW4gYnVpbGRpbmcgY29yZS1pbWFnZS1taW5pbWFsLWluaXRyYW1mcw==?=
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
X-List-Received-Date: Sat, 19 Nov 2011 21:20:37 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A24ACFCF-BFA2-49DE-8E40-74ABF91FB510"

--Apple-Mail=_A24ACFCF-BFA2-49DE-8E40-74ABF91FB510
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I have a problem in  that the kernel bzImage is apparently not being =
built.  Here is my error:
| install: cannot stat =
`/media/jwm/minimal-initramfs/tmp/sysroots/crownbay-noemgd/kernel/bzImage'=
: No such file or directory
| ERROR: Function 'build_boot_bin' failed (see =
/media/jwm/minimal-initramfs/tmp/work/crownbay_noemgd-poky-linux/core-imag=
e-minimal-initramfs-1.0-r0/temp/log.do_bootimg.25097 for further =
information)
NOTE: package core-image-minimal-initramfs-1.0-r0: task do_bootimg: =
Failed
ERROR: Task 9 =
(/home/jeff/poky-edison-6.0/meta/recipes-core/images/core-image-minimal-in=
itramfs.bb, do_bootimg) failed with exit code '1'
ERROR: =
'/home/jeff/poky-edison-6.0/meta/recipes-core/images/core-image-minimal-in=
itramfs.bb' failed

My setup:

vanilla, out of the box poky setup with the addition of:

meta-intel layer for meta-crownbay  in the bblayers.conf=20
&=20
MACHINE ?=3D "crownbay-noemgd" in the local.conf

bitbake -k core-image-minimal-initramfs


If I build any other type of image such as: core-image-minimal-mtdutils =
or core-image-minimal, everything is fine and I get a clean build.  Any =
help would be appreciated.

Thanks,
Jeff Moore






--Apple-Mail=_A24ACFCF-BFA2-49DE-8E40-74ABF91FB510
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">I =
have a problem in &nbsp;that the kernel bzImage is apparently not being =
built. &nbsp;Here is my error:<div>| install: cannot stat =
`/media/jwm/minimal-initramfs/tmp/sysroots/crownbay-noemgd/kernel/bzImage'=
: No such file or directory</div><div>| ERROR: Function 'build_boot_bin' =
failed (see =
/media/jwm/minimal-initramfs/tmp/work/crownbay_noemgd-poky-linux/core-imag=
e-minimal-initramfs-1.0-r0/temp/log.do_bootimg.25097 for further =
information)</div><div>NOTE: package =
core-image-minimal-initramfs-1.0-r0: task do_bootimg: =
Failed</div><div>ERROR: Task 9 =
(/home/jeff/poky-edison-6.0/meta/recipes-core/images/core-image-minimal-in=
itramfs.bb, do_bootimg) failed with exit code '1'</div><div>ERROR: =
'/home/jeff/poky-edison-6.0/meta/recipes-core/images/core-image-minimal-in=
itramfs.bb' failed</div><div><br></div><div>My =
setup:<div><br></div><div>vanilla, out of the box poky setup with the =
addition of:</div><div><br></div><div>meta-intel layer for meta-crownbay =
&nbsp;in the bblayers.conf&nbsp;</div><div>&amp;&nbsp;</div><div>MACHINE =
?=3D "crownbay-noemgd" in the =
local.conf</div><div><br></div><div><div>bitbake =
-k&nbsp;core-image-minimal-initramfs</div><div><br></div><div><br></div><d=
iv>If I build any other type of image such as:&nbsp;<span =
class=3D"Apple-style-span" style=3D"color: rgb(51, 51, 51); font-family: =
Verdana, Sans, sans-serif; line-height: 24px; "><code class=3D"filename" =
style=3D"font-size: medium; font-family: Courier, monospace; "><b =
style=3D"font-style: italic; ">core-image-minimal-mtdutils</b> =
or&nbsp;</code></span><span class=3D"Apple-style-span" style=3D"color: =
rgb(51, 51, 51); font-family: Verdana, Sans, sans-serif; line-height: =
24px; "><code class=3D"filename" style=3D"font-size: medium; =
font-family: Courier, monospace; "><i style=3D"font-weight: bold; =
">core-image-minimal</i>,<i style=3D"font-weight: bold; "> =
</i>everything is fine and I get a clean build. &nbsp;Any help would be =
appreciated.</code></span></div><div><span class=3D"Apple-style-span" =
style=3D"color: rgb(51, 51, 51); font-family: Verdana, Sans, sans-serif; =
font-weight: bold; line-height: 24px; "><em><code class=3D"filename" =
style=3D"font-size: medium; font-family: Courier, monospace; =
"><br></code></em></span></div><div>Thanks,</div><div>Jeff Moore<div =
apple-content-edited=3D"true"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; =
"><div><div><br></div></div></div><br =
class=3D"Apple-interchange-newline"></div><br =
class=3D"Apple-interchange-newline"><br =
class=3D"Apple-interchange-newline">
</div>
<br></div></div></div></body></html>=

--Apple-Mail=_A24ACFCF-BFA2-49DE-8E40-74ABF91FB510--
