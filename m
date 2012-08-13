Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 861BFE0027E
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 09:48:49 -0700 (PDT)
Received: by ggke5 with SMTP id e5so2682896ggk.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 09:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=xyWfq2dmBrYUMUQ1VUGIN8i+0iHdredhaXjfuLMj7wg=;
	b=gf9kFPY3FpoXl3UGYtMmZjoxba3QdGg9EoPZA2V/KVKK6KlTgjOLOC3cxEzHCwGGt1
	nltnvcLG7DVvIVI2B7qF8CGB6K3u8vzJ0Np8fLs/jLpNungilicefN9c+6ryEJcQ3psK
	iwp+WpEBfCuicGgmHSnctIdGGNw5wdEooIy2TkR2qCGUWnG34jLj4V1/GFuJPEnle3b2
	gwsPm1IYr9GMFV6Mkulxt06cRRUqw/vvEOdWuJuAORuWDUIc8bC4rFLtrV7EIAMpXsg0
	s3/ttofhs6d5ywuU0gEd6QwAEdYYtHXphwDAtCwFsvc5Svp1sx59PWB4w/bB7NbaWaYy
	syWg==
Received: by 10.68.224.169 with SMTP id rd9mr19304507pbc.136.1344876528483;
	Mon, 13 Aug 2012 09:48:48 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id vc5sm33007pbc.2.2012.08.13.09.48.46
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 13 Aug 2012 09:48:47 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
Date: Mon, 13 Aug 2012 20:48:42 +0400
Message-Id: <651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
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
X-List-Received-Date: Mon, 13 Aug 2012 16:48:49 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F57B3561-3A17-4ECA-8B55-55DA95AFFF02"

--Apple-Mail=_F57B3561-3A17-4ECA-8B55-55DA95AFFF02
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,

On Aug 12, 2012, at 9:27 AM, Khem Raj wrote:

> On Sat, Aug 11, 2012 at 8:34 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>>=20
>> I added support for gcc-4.5.1 inside =
meta-openembedded/toolchain-layer, and got it building against the =
latest yocto/master branch.
>>=20
>> However, switching to gcc-4.5.1 did not fix the issue.
>>=20
>=20
> OK. You might want to downgrade the eglibc version to 2.15 and then to
> 2.13 if thats around.

Success, at last!! :-) I switch to eglib 2.13, and everything works =
fine!! The problem was with eglibc 2.16. It is broken for powerpc 440 =
soft float, not sure if the same situation manifests for other target =
architectures as well.

zImage starting: loaded at 0x00800000 (sp: 0x017befa0)
Allocating 0x54cf4c bytes for kernel ...
gunzipping (0x00000000 <- 0x0080f000:0x00a1aee3)...done 0x42f600 bytes
Attached initrd image at 0x00a1b000-0x017bd3d7
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/bin/sh
Finalizing device tree... flat tree at 0x17cb0e0
 PM: Adding info for No Bus:ttyv9
[    0.581774] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.587332] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    0.782789] console [ttyS0] enabled
[    0.828259] brd: module loaded
[    0.874773] loop: module loaded
[    0.912055] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    0.988726] xsysace 83600000.sysace: No CF in slot
[    1.047840] Xilinx SystemACE device driver, major=3D254
[    1.108777] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    1.182300] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    1.263386] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    1.357074] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
[    1.472040] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'        =
                                      =20
[    1.541268] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22                  =20
[    1.640652] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'        =
                                      =20
[    1.710344] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23                  =20
[    1.810852] mousedev: PS/2 mouse device common for all mice           =
                                      =20
[    1.878355] i2c /dev entries driver                                   =
                                      =20
[    1.919932] Device Tree Probing 'i2c'                                 =
                                      =20
[    1.964188] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18 =
                                       =20
[    2.041771] TCP cubic registered                                      =
                                      =20
[    2.079648] NET: Registered protocol family 17                        =
                                      =20
[    2.875052] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000                              =20
[    3.359350] RAMDISK: gzip image found at block 0                      =
                                      =20
[    3.883252] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0       =20
[    6.355423] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended                   =20
[    6.452822] VFS: Mounted root (ext2 filesystem) on device 1:0.        =
                                      =20
[    6.523399] Freeing unused kernel memory: 160k freed                  =
                                      =20
/bin/sh: can't access tty; job control turned off                        =
                                      =20
/ # ls                                                                   =
                                      =20
bin    dev    home   media  proc   sys    usr                            =
                                      =20
boot   etc    lib    mnt    sbin   tmp    var                            =
                                      =20
/ #=20


Best regards,

Elvis Dowson=

--Apple-Mail=_F57B3561-3A17-4ECA-8B55-55DA95AFFF02
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div><br><div><div>On Aug 12, 2012, at 9:27 AM, Khem Raj =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div>On Sat, Aug 11, 2012 at 8:34 PM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:<br><blockquote type=3D"cite"><br></blockquote><blockquote =
type=3D"cite">I added support for gcc-4.5.1 inside =
meta-openembedded/toolchain-layer, and got it building against the =
latest yocto/master branch.<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">However, =
switching to gcc-4.5.1 did not fix the =
issue.<br></blockquote><blockquote type=3D"cite"><br></blockquote><br>OK. =
You might want to downgrade the eglibc version to 2.15 and then =
to<br>2.13 if thats =
around.<br></div></blockquote></div><br><div>Success, at last!! :-) I =
switch to eglib 2.13, and everything works fine!! The problem was with =
eglibc 2.16. It is broken for powerpc 440 soft float, not sure if the =
same situation manifests for other target architectures as =
well.</div></div><div><br></div><div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">zImage starting: loaded at 0x00800000 (sp: =
0x017befa0)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Allocating 0x54cf4c bytes for kernel =
...</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">gunzipping (0x00000000 &lt;- 0x0080f000:0x00a1aee3)...done =
0x42f600 bytes</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Attached initrd image at =
0x00a1b000-0x017bd3d7</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw rootwait =
init=3D/bin/sh</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Finalizing device tree... flat tree at =
0x17cb0e0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;PM: Adding info for No =
Bus:ttyv9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.581774] Serial: 8250/16550 =
driver, 4 ports, IRQ sharing disabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.587332] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.782789] console [ttyS0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.828259] brd: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.874773] loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.912055] xsysace 83600000.sysace: Xilinx =
SystemACE revision 1.0.12</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.988726] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.047840] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.108777] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.182300] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;1.263386] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.357074] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.472040] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2' =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.541268] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.640652] xilinx_ps2 =
81481000.ps2: Device Tree Probing 'ps2' &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.710344] xilinx_ps2 =
81481000.ps2: Xilinx PS2 at 0x81481000 mapped to 0xd1038000, irq=3D23 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.810852] mousedev: PS/2 mouse =
device common for all mice &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.878355] i2c /dev entries driver &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.919932] Device Tree Probing 'i2c' &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.964188] xilinx-iic #0 at =
0x81600000 mapped to 0xD10C0000, irq=3D18 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;2.041771] TCP cubic registered &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;2.079648] NET: Registered protocol family 17 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.875052] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at 81480000 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;3.359350] RAMDISK: gzip image found at block 0 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;3.883252] input: AT Raw Set 2 =
keyboard as /devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0 =
&nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.355423] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;6.452822] VFS: Mounted root =
(ext2 filesystem) on device 1:0. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;6.523399] Freeing unused =
kernel memory: 160k freed &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">/bin/sh: can't access tty; job control turned =
off &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">/ # ls &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">bin &nbsp; &nbsp;dev &nbsp; &nbsp;home &nbsp; media =
&nbsp;proc &nbsp; sys &nbsp; &nbsp;usr &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">boot &nbsp; etc &nbsp; &nbsp;lib &nbsp; =
&nbsp;mnt &nbsp; &nbsp;sbin &nbsp; tmp &nbsp; &nbsp;var &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">/ =
#&nbsp;</font></div></div><div><br></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_F57B3561-3A17-4ECA-8B55-55DA95AFFF02--
