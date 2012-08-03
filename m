Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E05F0E0144B
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 15:05:53 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2342777pbb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 15:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=gHKr2gA348jZtg3sxjyNa4eyR/Yl0FSyp7bLIkJnzK4=;
	b=J0bam9c1tCwRjSZkD2WdcPfxz0VN4gi5S8yRz7zssnDKESX2aaGSh4AAgf5x/jg5r9
	3TYVyhmeh5Zg5JgdLF5wQo/1SIV+dO/RuUU04JkoFM+xKP+pTTYK3UMrfaZrfo8OCSYy
	0Wig7wAJFn5661dWTA7ldGHCCmNW+EwkCzqNzmehDy3itiDdkm038fPMlDS+cM9wFlhk
	2I+DBEX1w4QWtLdOsG6MNphVtmBYFOdfQbjth1k3hbHlVUlxGc/uOIWRu09b4Z0b0hp8
	z0RHRi3f+WZcV/yGxnYD8h9lm+Ky9wcRpRzpPNs3hcG1AvHH1E8n5qycN78iSFtaPvuB
	odUg==
Received: by 10.66.76.106 with SMTP id j10mr1601482paw.51.1344031553568;
	Fri, 03 Aug 2012 15:05:53 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id rx7sm3665330pbc.64.2012.08.03.15.05.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 15:05:52 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Sat, 4 Aug 2012 02:05:44 +0400
In-Reply-To: <15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
Message-Id: <8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
X-Mailer: Apple Mail (2.1278)
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
X-List-Received-Date: Fri, 03 Aug 2012 22:05:54 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E010E727-8E26-4219-9D32-2D90F78ACFF4"

--Apple-Mail=_E010E727-8E26-4219-9D32-2D90F78ACFF4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 4, 2012, at 1:30 AM, Elvis Dowson wrote:

> I'll try to switch back to a non-static bash, and try booting the =
core-image-minimal filesystem once again.

Switching back to the core-image-default non-static bash version, didn't =
work. I get no bash prompt, even through I specified init=3D/bin/sh for =
the kernel bootargs

zImage starting: loaded at 0x00800000 (sp: 0x00dacfb0)
Allocating 0x540e0c bytes for kernel ...
gunzipping (0x00000000 <- 0x0080f000:0x00a17ddd)...done 0x4235c0 bytes
Attached initrd image at 0x00a18000-0x00dab775
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/bin/sh
Finalizing device tree... flat tree at 0xdb90e0
 PM: Adding info for No Bus:ttyv9
[    0.478914] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.484189] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    0.679634] console [ttyS0] enabled
[    0.743646] brd: module loaded
[    0.790371] loop: module loaded
[    0.827695] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    0.904387] xsysace 83600000.sysace: No CF in slot
[    0.963434] Xilinx SystemACE device driver, major=3D254
[    1.024322] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    1.097851] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    1.178937] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    1.272553] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
[    1.387465] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
[    1.456732] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22
[    1.556112] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
[    1.625786] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23
[    1.726276] mousedev: PS/2 mouse device common for all mice
[    1.793618] i2c /dev entries driver
[    1.835429] Device Tree Probing 'i2c'
[    1.879626] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18
[    1.957193] TCP cubic registered
[    1.995099] NET: Registered protocol family 17
[    2.790435] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000
[    3.274705] RAMDISK: gzip image found at block 0
[    3.681850] atkbd serio1: Frame/parity error: 02
[    3.858630] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
[    4.242871] VFS: Mounted root (ext2 filesystem) on device 1:0.
[    4.313049] Freeing unused kernel memory: 152k freed

What should I do now to debug this issue further?

I have disabled image-prelink by not including it in my local.conf as =
follows:

# Remove image-prelink for PowerPC 32-bit and 64-bit targets.
USER_CLASSES ?=3D "buildstats image-mklibs"

Any thoughts on what I can try to do next, to narrow down the issue, =
with bash working statically, but not when linked with shared libraries?

Best regards,

Elvis Dowson


--Apple-Mail=_E010E727-8E26-4219-9D32-2D90F78ACFF4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 4, 2012, at 1:30 AM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div><div><div>I'll try =
to switch back to a non-static bash, and try booting the =
core-image-minimal filesystem once =
again.</div></div></div></div></blockquote><br></div><div>Switching back =
to the core-image-default non-static bash version, didn't work. I get no =
bash prompt, even through I specified init=3D/bin/sh for the kernel =
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
libraries?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div></div></body></html>=

--Apple-Mail=_E010E727-8E26-4219-9D32-2D90F78ACFF4--
