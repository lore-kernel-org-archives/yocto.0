Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A19EE0144F
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 19:24:24 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2672180pbb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 19:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=WlNCVeUJif5/xnwSg8CGtVK++kK8GKL+Te1WeYZvujQ=;
	b=LL82pJbfAQV9q7AXQjwX6zT1yOpM3B67saGdy9azudN2Dlgs/Qum56GN5M+2HAJc0m
	xV5i6ac3sZ1aafjIbL4O1kkRLWsROvrlZH4VDqfXyquuXQR/l7J1EaFYfjBkv4QX1lnC
	SPtYtxZ1KKoyWU5BcLO+y9LtM404jWa3SyPXSl2BWNFuNQhgMML59NEw5b4RIVd71qBc
	Dz8pigKMRt0uiuktSFHdMLjCojvUllAy5LcotW/5EQimUmtEXdtQZveLHdvtHviR/8TQ
	MN0sBCcp1hLm4nolb/iuvUlhKnAiL0lPz+iPfuv6YqLG5qvIuVjzwJq97tSZXf0xOBmi
	VoZA==
Received: by 10.68.234.70 with SMTP id uc6mr1824713pbc.44.1344047063893;
	Fri, 03 Aug 2012 19:24:23 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id vd4sm620809pbc.41.2012.08.03.19.24.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 19:24:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
Date: Fri, 3 Aug 2012 19:24:22 -0700
Message-Id: <73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Mailer: Apple Mail (2.1485)
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
X-List-Received-Date: Sat, 04 Aug 2012 02:24:24 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1D37BA8E-FED3-4015-BA6A-A40C447817FC"

--Apple-Mail=_1D37BA8E-FED3-4015-BA6A-A40C447817FC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Aug 3, 2012, at 3:05 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:

> Hi,
>=20
> On Aug 4, 2012, at 1:30 AM, Elvis Dowson wrote:
>=20
>> I'll try to switch back to a non-static bash, and try booting the =
core-image-minimal filesystem once again.
>=20
> Switching back to the core-image-default non-static bash version, =
didn't work. I get no bash prompt, even through I specified init=3D/bin/sh=
 for the kernel bootargs
>=20
> zImage starting: loaded at 0x00800000 (sp: 0x00dacfb0)
> Allocating 0x540e0c bytes for kernel ...
> gunzipping (0x00000000 <- 0x0080f000:0x00a17ddd)...done 0x4235c0 bytes
> Attached initrd image at 0x00a18000-0x00dab775
> initrd head: 0x1f8b0808
>=20
> Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/bin/sh
> Finalizing device tree... flat tree at 0xdb90e0
>  PM: Adding info for No Bus:ttyv9
> [    0.478914] Serial: 8250/16550 driver, 4 ports, IRQ sharing =
disabled
> [    0.484189] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550
> [    0.679634] console [ttyS0] enabled
> [    0.743646] brd: module loaded
> [    0.790371] loop: module loaded
> [    0.827695] xsysace 83600000.sysace: Xilinx SystemACE revision =
1.0.12
> [    0.904387] xsysace 83600000.sysace: No CF in slot
> [    0.963434] Xilinx SystemACE device driver, major=3D254
> [    1.024322] xilinx_emaclite 81000000.ethernet: Device Tree Probing
> [    1.097851] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus
> [    1.178937] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
> [    1.272553] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
> [    1.387465] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
> [    1.456732] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 =
mapped to 0xd1036000, irq=3D22
> [    1.556112] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
> [    1.625786] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 =
mapped to 0xd1038000, irq=3D23
> [    1.726276] mousedev: PS/2 mouse device common for all mice
> [    1.793618] i2c /dev entries driver
> [    1.835429] Device Tree Probing 'i2c'
> [    1.879626] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, =
irq=3D18
> [    1.957193] TCP cubic registered
> [    1.995099] NET: Registered protocol family 17
> [    2.790435] atkbd serio0: keyboard reset failed on xilinxps2/serio =
at 81480000
> [    3.274705] RAMDISK: gzip image found at block 0
> [    3.681850] atkbd serio1: Frame/parity error: 02
> [    3.858630] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
> [    4.242871] VFS: Mounted root (ext2 filesystem) on device 1:0.
> [    4.313049] Freeing unused kernel memory: 152k freed
>=20
> What should I do now to debug this issue further?
>=20
> I have disabled image-prelink by not including it in my local.conf as =
follows:
>=20
> # Remove image-prelink for PowerPC 32-bit and 64-bit targets.
> USER_CLASSES ?=3D "buildstats image-mklibs"
>=20
> Any thoughts on what I can try to do next, to narrow down the issue, =
with bash working statically, but not when linked with shared libraries?
>=20


OK couple of things.  You could boot into static bash thats good, keep =
it that way and bundle some dynamically linked programs into the root =
file system
may be just a hello world which is dynamically linked. I would also =
compile a static version of gdb and strace but that could be next steps.

then boot into this static shell and try to run the dynamically linked =
hello world. Does that work ?
if not we have a dynamic linking issue.=20

Then you can go a step deeper and see whats going on. Many  a times =
interpreter is specified wrongly in the elf file.
and there could be dynamic linker issues too. But step at a time.


> Best regards,
>=20
> Elvis Dowson
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_1D37BA8E-FED3-4015-BA6A-A40C447817FC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Aug 3, 2012, at 3:05 PM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; ">Hi,<div><br><div><div>On =
Aug 4, 2012, at 1:30 AM, Elvis Dowson wrote:</div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">I'll try to switch back to a =
non-static bash, and try booting the core-image-minimal filesystem once =
again.</div></blockquote><br></div><div>Switching back to the =
core-image-default non-static bash version, didn't work. I get no bash =
prompt, even through I specified init=3D/bin/sh for the kernel =
bootargs</div></div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">zImage starting: =
loaded at 0x00800000 (sp: 0x00dacfb0)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Allocating =
0x540e0c bytes for kernel ...</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">gunzipping =
(0x00000000 &lt;- 0x0080f000:0x00a17ddd)...done 0x4235c0 =
bytes</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Attached initrd image at =
0x00a18000-0x00dab775</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw rootwait =
init=3D/bin/sh</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Finalizing device tree... flat tree at =
0xdb90e0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp;PM: Adding info for No =
Bus:ttyv9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.478914] Serial: 8250/16550 =
driver, 4 ports, IRQ sharing disabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.484189] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.679634] console [ttyS0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.743646] brd: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.790371] loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.827695] xsysace 83600000.sysace: Xilinx =
SystemACE revision 1.0.12</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.904387] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.963434] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.024322] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.097851] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;1.178937] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.272553] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.387465] xilinx_ps2 81480000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.456732] xilinx_ps2 81480000.ps2: Xilinx PS2 =
at 0x81480000 mapped to 0xd1036000, irq=3D22</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.556112] xilinx_ps2 81481000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.625786] xilinx_ps2 81481000.ps2: Xilinx PS2 =
at 0x81481000 mapped to 0xd1038000, irq=3D23</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.726276] mousedev: PS/2 mouse device common for all =
mice</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.793618] i2c /dev entries =
driver</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.835429] Device Tree Probing =
'i2c'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.879626] xilinx-iic #0 at 0x81600000 mapped =
to 0xD10C0000, irq=3D18</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.957193] TCP cubic =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.995099] NET: Registered =
protocol family 17</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.790435] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at =
81480000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;3.274705] RAMDISK: gzip image found at block =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.681850] atkbd serio1: Frame/parity error: =
02</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.858630] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;4.242871] VFS: Mounted root (ext2 filesystem) on device =
1:0.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;4.313049] Freeing unused kernel memory: 152k =
freed</font></div><div><br></div><div>What should I do now to debug this =
issue further?</div><div><br></div><div>I have disabled image-prelink by =
not including it in my local.conf as =
follows:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># Remove image-prelink for PowerPC 32-bit and =
64-bit targets.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">USER_CLASSES ?=3D "buildstats =
image-mklibs"</font></div></div><div><br></div><div>Any thoughts on what =
I can try to do next, to narrow down the issue, with bash working =
statically, but not when linked with shared =
libraries?</div><div><br></div></div></div></blockquote><div><br></div><di=
v><br></div><div>OK couple of things. &nbsp;You could boot into static =
bash thats good, keep it that way and bundle some dynamically linked =
programs into the root file system</div><div>may be just a hello world =
which is dynamically linked. I would also compile a static version of =
gdb and strace but that could be next =
steps.</div><div><br></div><div>then boot into this static shell and try =
to run the dynamically linked hello world. Does that work ?</div><div>if =
not we have a dynamic linking issue.&nbsp;</div><div><br></div><div>Then =
you can go a step deeper and see whats going on. Many &nbsp;a times =
interpreter is specified wrongly in the elf file.</div><div>and there =
could be dynamic linker issues too. But step at a =
time.</div><div><br></div><br><blockquote type=3D"cite"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div></div></div>___________________________________=
____________<br>yocto mailing list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https=
://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body>=
</html>=

--Apple-Mail=_1D37BA8E-FED3-4015-BA6A-A40C447817FC--
