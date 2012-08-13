Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94EB5E003C8
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 13:16:51 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so4288876yhf.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 13:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=uyp+o7XVXBaCB/y39fWABVdz0xyP5pQW9FY7uiWN9Ls=;
	b=C6tbSvKAnZuYjhZU6Cp4sgt+3oozvO8FqKhV2TlaqFW0VZYuxd1TPqsNsi82r8TklT
	jbV6nVv+giW91+7grBQ8OpiCBSpotn3dd5kl0xa9zU/lazjaL4xisRo1oKVb/rHgD4My
	Ix9lFHbju/H9VSfjt+kMElHNLP03UiyAyIz7zlp4hHaVG3WnMUBqsTSaOKdFpReXDoBB
	Vg+huzll4F+m9W9hsifjb1TDe6B9dlz5ni0jCsFhGluDN9vaGSFiuTMNgG76rU60P9tU
	/llTm2lqTTrIbZ2mZpHZ6gyt9KlbVt6F9S3Ok/57pbl+NNxGXZgukQs2ki/Ar0zkRrDi
	uRsw==
Received: by 10.66.76.231 with SMTP id n7mr19434200paw.68.1344889010571;
	Mon, 13 Aug 2012 13:16:50 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pq1sm145182pbb.3.2012.08.13.13.16.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 13 Aug 2012 13:16:49 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
Date: Tue, 14 Aug 2012 00:16:19 +0400
Message-Id: <50739671-4885-4C82-9360-C3376960B165@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
	<CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
	<651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
	<CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Mon, 13 Aug 2012 20:16:51 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1DDCEBB6-87A6-4ACD-A7E1-A461FE732A84"

--Apple-Mail=_1DDCEBB6-87A6-4ACD-A7E1-A461FE732A84
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,

On Aug 13, 2012, at 9:01 PM, Khem Raj wrote:

>> Success, at last!! :-) I switch to eglib 2.13, and everything works =
fine!!
>> The problem was with eglibc 2.16. It is broken for powerpc 440 soft =
float,
>> not sure if the same situation manifests for other target =
architectures as
>> well.
>=20
> OK good. Now we should find what broke eglibc. Did you try 2.15 as
> well ? Want to make sure how far back it goes.

I tried with eglibc-2.15 and it's broken for PowerPC 440 soft-float.

zImage starting: loaded at 0x00800000 (sp: 0x017e4fa0)                   =
 =20
Allocating 0x54cf4c bytes for kernel ...                                 =
 =20
gunzipping (0x00000000 <- 0x0080f000:0x00a1aee0)...done 0x42f600 bytes
Attached initrd image at 0x00a1b000-0x017e33c3
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/bin/sh
Finalizing device tree... flat tree at 0x17f10e0
 PM: Adding info for No Bus:ttyv9
[    0.582882] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.588508] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    0.784008] console [ttyS0] enabled
[    0.829401] brd: module loaded
[    0.876027] loop: module loaded
[    0.913302] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    0.990015] xsysace 83600000.sysace: No CF in slot
[    1.049035] Xilinx SystemACE device driver, major=3D254
[    1.109979] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    1.183493] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    1.264571] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    1.358238] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
[    1.473224] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
[    1.542456] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22
[    1.641839] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
[    1.711543] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23
[    1.812133] mousedev: PS/2 mouse device common for all mice
[    1.879716] i2c /dev entries driver
[    1.921305] Device Tree Probing 'i2c'
[    1.965584] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18
[    2.043255] TCP cubic registered
[    2.081065] NET: Registered protocol family 17
[    2.875069] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000
[    3.359365] RAMDISK: gzip image found at block 0
[    3.883298] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
[    6.351431] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended
[    6.448811] VFS: Mounted root (ext2 filesystem) on device 1:0.
[    6.519375] Freeing unused kernel memory: 160k freed


I get no login prompt. Therefore, both eglibc-2.15 and 2.16 are broken =
for PowerPC.=20

At the moment, only eglibc-2.13 works.=20

Has anyone else reported issues with getting a boot or login prompt for =
other=20
architectures, like ARM Cortex-A8, etc?

How do you plan on isolating the cause for this issue, for eglibc-2.15?

Best regards,

Elvis Dowson=

--Apple-Mail=_1DDCEBB6-87A6-4ACD-A7E1-A461FE732A84
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div><br><div><div>On Aug 13, 2012, at 9:01 PM, Khem Raj =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div><blockquote type=3D"cite">Success, at last!! :-) I =
switch to eglib 2.13, and everything works =
fine!!<br></blockquote><blockquote type=3D"cite">The problem was with =
eglibc 2.16. It is broken for powerpc 440 soft =
float,<br></blockquote><blockquote type=3D"cite">not sure if the same =
situation manifests for other target architectures =
as<br></blockquote><blockquote type=3D"cite">well.<br></blockquote><br>OK =
good. Now we should find what broke eglibc. Did you try 2.15 as<br>well =
? Want to make sure how far back it =
goes.<br></div></blockquote></div><br><div>I tried with eglibc-2.15 and =
it's broken for PowerPC 440 =
soft-float.</div><div><br></div><div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">zImage starting: loaded at 0x00800000 (sp: =
0x017e4fa0) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Allocating 0x54cf4c bytes for kernel ... =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">gunzipping (0x00000000 &lt;- =
0x0080f000:0x00a1aee0)...done 0x42f600 bytes</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Attached initrd =
image at 0x00a1b000-0x017e33c3</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw rootwait =
init=3D/bin/sh</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Finalizing device tree... flat tree at =
0x17f10e0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;PM: Adding info for No =
Bus:ttyv9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.582882] Serial: 8250/16550 =
driver, 4 ports, IRQ sharing disabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.588508] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.784008] console [ttyS0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.829401] brd: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.876027] loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.913302] xsysace 83600000.sysace: Xilinx =
SystemACE revision 1.0.12</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.990015] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.049035] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.109979] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.183493] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;1.264571] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.358238] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.473224] xilinx_ps2 81480000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.542456] xilinx_ps2 81480000.ps2: Xilinx PS2 =
at 0x81480000 mapped to 0xd1036000, irq=3D22</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.641839] xilinx_ps2 81481000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.711543] xilinx_ps2 81481000.ps2: Xilinx PS2 =
at 0x81481000 mapped to 0xd1038000, irq=3D23</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.812133] mousedev: PS/2 mouse device common for all =
mice</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.879716] i2c /dev entries =
driver</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.921305] Device Tree Probing =
'i2c'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.965584] xilinx-iic #0 at 0x81600000 mapped =
to 0xD10C0000, irq=3D18</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.043255] TCP cubic =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.081065] NET: Registered =
protocol family 17</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.875069] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at =
81480000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;3.359365] RAMDISK: gzip image found at block =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.883298] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.351431] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;6.448811] VFS: Mounted root =
(ext2 filesystem) on device 1:0.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.519375] Freeing unused kernel memory: 160k =
freed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><br></div></div><div>I get no login =
prompt. Therefore, both eglibc-2.15 and 2.16 are broken for =
PowerPC.&nbsp;</div><div><br></div><div>At&nbsp;the moment, only =
eglibc-2.13 works.&nbsp;</div></div><div><br></div><div>Has anyone else =
reported&nbsp;issues with getting a boot or login prompt for =
other&nbsp;</div><div>architectures, like ARM&nbsp;Cortex-A8, =
etc?</div><div><br></div><div>How do you plan on isolating the cause for =
this issue, for eglibc-2.15?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_1DDCEBB6-87A6-4ACD-A7E1-A461FE732A84--
