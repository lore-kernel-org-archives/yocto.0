Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB64EE013B2
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 13:24:28 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so34188yhf.35
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2012 13:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=VJY9+wwvrnGFw4Bo+xsi/VjqA5L8BYk6Df5uJ+RuFi0=;
	b=LOBmQqoIDn5HnSpXfe+p4doBXzQNMNGEiaaAZXBsuAc75NEYlxWY7Sblr8I2w6lFOu
	gbPplJ3XlmB9GAkHII6HPnscxEGJ62LOAG1XBFbvN5l3EMdSBu7IlVesgBncYdTPy8sM
	BWp1GmzCsD49aeQEUG1Uv+oAkCQt1KJy9bNa6Zlgbw4IDIr1uqu5qySkYcSVLfWZ/FrI
	BmtC0mANqz1iWsTVBZ3PZ03MRd7HiQJsu7QBb1iEdcfBHYa4p5HmsVh3/BxfSi8egnqT
	2UudNCIGXNJyw8AOF248MKaHE7PzGfsRr/bKHYmXLJyg5qn+qkWIkkQax9ZqK4LQaJ13
	pMeQ==
Received: by 10.66.9.2 with SMTP id v2mr28552359paa.65.1344371067612;
	Tue, 07 Aug 2012 13:24:27 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id sj5sm1298537pbc.30.2012.08.07.13.24.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 07 Aug 2012 13:24:26 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sr-=FLVGMZnW_X63YRnT=ms8eCLhhUkcoHujubM_1f5Ow@mail.gmail.com>
Date: Wed, 8 Aug 2012 00:24:19 +0400
Message-Id: <AB2E7680-C057-47B0-91FD-62BD6BAC8170@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
	<5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
	<CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
	<C72B7149-B2B8-46D6-A270-23BB55DFC733@gmail.com>
	<CAMKF1sqiFrHqg6HNvRwX_1Wg=Nfq8_141-XaJ=E2qFQyUsSJEA@mail.gmail.com>
	<931ADA5B-6471-40DB-8943-D7D6CA564C35@gmail.com>
	<CAMKF1sr-=FLVGMZnW_X63YRnT=ms8eCLhhUkcoHujubM_1f5Ow@mail.gmail.com>
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
X-List-Received-Date: Tue, 07 Aug 2012 20:24:29 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_08B7A2B2-0FD5-4B10-9CCF-ECBD8247CD6C"

--Apple-Mail=_08B7A2B2-0FD5-4B10-9CCF-ECBD8247CD6C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 8, 2012, at 12:13 AM, Khem Raj wrote:

> On Tue, Aug 7, 2012 at 1:10 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>> Hi,
>>        I decided to modify the bash and busybox recipes to build
>> statically, and try to create a core-image-minimal root filesystem, =
so that
>> I can get a sensible prompt with paths set, etc, to debug the dynamic
>> linking issue.
>>=20
>> Just copying a static bash binary to the root of the ramdisk image =
and
>> specifying init=3D/bash didn't work for a static =
bash+core-image-minimal root
>> filesystem, it aborts with a panic. If I have only the bash =
executable in
>> the ramdisk and nothing else, it displays the bash prompt.
>>=20
>> Now, I've noticed something weird during core-image-minimal image
>> generation.
>>=20
>> When I build the static versions of bash, the size of the binary is =
8MB, but
>> when I explore the binary in the tar.gz image or extract it to my =
ramdisk,
>> it shows as being only 1.6MB.
>>=20
>> How can there be a difference between the statically built bash file
>>=20
>> =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/bash-4.2-r4/image/bin/ba=
sh
>> (8MB)
>>=20
>> and in the file contained in the core-image-minimal-virtex-5.tar.gz
>>=20
>> /bin/bash (1.6MB)
>>=20
>> I'm seeing the same discrepancy for busybox
>>=20
>> =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/busybox-1.19.4-r18/image=
/bin/busybox
>> (8.2 MB)
>>=20
>> and in the generate rootfs image
>>=20
>> /bin/busybox (1.4MB)
>>=20
>> This shouldn't happen, right?
>=20
> I assume they are stripped in case where they are smaller.

I tried running the newly created root filesystem, and passed =
init=3D/bin/bash to the kernel boot args, and get the kernel panic, as =
shown below. It doesn't happen when I just have only a static bash =
binary alone, in the ramdisk.

zImage starting: loaded at 0x00800000 (sp: 0x015cffb0)
Allocating 0x540e0c bytes for kernel ...
gunzipping (0x00000000 <- 0x0080f000:0x00a17de0)...done 0x4235c0 bytes
Attached initrd image at 0x00a18000-0x015cec21
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/bin/bash
Finalizing device tree... flat tree at 0x15dc0e0
 PM: Adding info for No Bus:ttyv9
[    0.555146] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.560456] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    0.755976] console [ttyS0] enabled
[    0.820014] brd: module loaded
[    0.866758] loop: module loaded
[    0.903967] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    0.980712] xsysace 83600000.sysace: No CF in slot
[    1.039777] Xilinx SystemACE device driver, major=3D254
[    1.100658] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    1.174186] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    1.255272] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    1.348888] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
[    1.463802] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'        =
                                                  =20
[    1.533064] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22                              =20
[    1.632441] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'        =
                                                  =20
[    1.702118] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23                              =20
[    1.802689] mousedev: PS/2 mouse device common for all mice           =
                                                  =20
[    1.870186] i2c /dev entries driver                                   =
                                                  =20
[    1.911796] Device Tree Probing 'i2c'                                 =
                                                  =20
[    1.956057] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18 =
                                                   =20
[    2.033628] TCP cubic registered                                      =
                                                  =20
[    2.071533] NET: Registered protocol family 17                        =
                                                  =20
[    2.866390] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000                                          =20
[    3.350664] RAMDISK: gzip image found at block 0                      =
                                                  =20
<7>[    3.870893] device: 'input0': device_add                           =
                                                  =20
[    3.971153] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0                =
   =20
[    6.262826] VFS: Mounted root (ext2 filesystem) on device 1:0.        =
                                                  =20
[    6.332844] Freeing unused kernel memory: 152k freed                  =
                                                  =20
[    6.439032] Kernel panic - not syncing: Attempted to kill init!       =
                                                  =20
[    6.509122] Rebooting in 180 seconds..


I need bash to run, with a representative rootfilesystem, with all the =
libraries, so that I can run the commands that you asked me to earlier:

/lib/ld.so.1

and then

LD_DEBUG=3Dall /lib/ld.so.1 ./helloworlddynamic

Is there something that I can disable to get static bash to run to the =
prompt, with the core-image-minimal image?

Elvis Dowson=

--Apple-Mail=_08B7A2B2-0FD5-4B10-9CCF-ECBD8247CD6C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 8, 2012, at 12:13 AM, Khem Raj =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div>On Tue, Aug 7, 2012 at 1:10 PM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:<br><blockquote type=3D"cite">Hi,<br></blockquote><blockquote =
type=3D"cite"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I decided to =
modify the bash and busybox recipes to build<br></blockquote><blockquote =
type=3D"cite">statically, and try to create a core-image-minimal root =
filesystem, so that<br></blockquote><blockquote type=3D"cite">I can get =
a sensible prompt with paths set, etc, to debug the =
dynamic<br></blockquote><blockquote type=3D"cite">linking =
issue.<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">Just copying a =
static bash binary to the root of the ramdisk image =
and<br></blockquote><blockquote type=3D"cite">specifying init=3D/bash =
didn't work for a static bash+core-image-minimal =
root<br></blockquote><blockquote type=3D"cite">filesystem, it aborts =
with a panic. If I have only the bash executable =
in<br></blockquote><blockquote type=3D"cite">the ramdisk and nothing =
else, it displays the bash prompt.<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">Now, I've =
noticed something weird during core-image-minimal =
image<br></blockquote><blockquote =
type=3D"cite">generation.<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">When I build =
the static versions of bash, the size of the binary is 8MB, =
but<br></blockquote><blockquote type=3D"cite">when I explore the binary =
in the tar.gz image or extract it to my =
ramdisk,<br></blockquote><blockquote type=3D"cite">it shows as being =
only 1.6MB.<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">How can there =
be a difference between the statically built bash =
file<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote =
type=3D"cite">/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/bash-4.2-r=
4/image/bin/bash<br></blockquote><blockquote =
type=3D"cite">(8MB)<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">and in the file =
contained in the =
core-image-minimal-virtex-5.tar.gz<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">/bin/bash =
(1.6MB)<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">I'm seeing the =
same discrepancy for busybox<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote =
type=3D"cite">/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/busybox-1.=
19.4-r18/image/bin/busybox<br></blockquote><blockquote type=3D"cite">(8.2 =
MB)<br></blockquote><blockquote type=3D"cite"><br></blockquote><blockquote=
 type=3D"cite">and in the generate rootfs =
image<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">/bin/busybox =
(1.4MB)<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">This shouldn't =
happen, right?<br></blockquote><br>I assume they are stripped in case =
where they are smaller.<br></div></blockquote></div><br><div>I tried =
running the newly created root filesystem, and passed init=3D/bin/bash =
to the kernel boot args, and get the kernel panic, as shown below. It =
doesn't happen when I just have only a static bash binary alone, in the =
ramdisk.</div><div><br></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">zImage starting: loaded at 0x00800000 (sp: =
0x015cffb0)</font></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Allocating 0x540e0c bytes for kernel =
...</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">gunzipping (0x00000000 &lt;- 0x0080f000:0x00a17de0)...done =
0x4235c0 bytes</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Attached initrd image at =
0x00a18000-0x015cec21</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw rootwait =
init=3D/bin/bash</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Finalizing device tree... flat tree at =
0x15dc0e0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;PM: Adding info for No =
Bus:ttyv9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.555146] Serial: 8250/16550 =
driver, 4 ports, IRQ sharing disabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.560456] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.755976] console [ttyS0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.820014] brd: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.866758] loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.903967] xsysace 83600000.sysace: Xilinx =
SystemACE revision 1.0.12</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.980712] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.039777] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.100658] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.174186] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;1.255272] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.348888] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.463802] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2' =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.533064] xilinx_ps2 =
81480000.ps2: Xilinx PS2 at 0x81480000 mapped to 0xd1036000, irq=3D22 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.632441] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2' =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.702118] xilinx_ps2 =
81481000.ps2: Xilinx PS2 at 0x81481000 mapped to 0xd1038000, irq=3D23 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.802689] mousedev: PS/2 mouse device common for all mice &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.870186] i2c /dev entries driver &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.911796] Device Tree Probing =
'i2c' &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.956057] xilinx-iic #0 at =
0x81600000 mapped to 0xD10C0000, irq=3D18 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.033628] TCP cubic registered =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;2.071533] NET: Registered protocol family 17 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;2.866390] atkbd serio0: keyboard reset failed on xilinxps2/serio =
at 81480000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;3.350664] RAMDISK: gzip image found at block 0 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&lt;7&gt;[ &nbsp; =
&nbsp;3.870893] device: 'input0': device_add &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;3.971153] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;6.262826] VFS: Mounted root (ext2 filesystem) =
on device 1:0. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;6.332844] Freeing unused =
kernel memory: 152k freed &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;6.439032] Kernel panic - not =
syncing: Attempted to kill init! &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.509122] Rebooting in 180 =
seconds..</font></div></div><div><br></div><div><br></div><div><div>I =
need bash to run, with a representative rootfilesystem, with all the =
libraries, so that I can run the commands that you asked me to =
earlier:</div></div><div><br></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">/lib/ld.so.1</font><br><br>and =
then<br><br><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">LD_DEBUG=3Dall /lib/ld.so.1 =
./helloworlddynamic</font></div><div><br></div><div>Is there something =
that I can disable to get static bash to run to the prompt, with the =
core-image-minimal image?</div><div><br></div><div>Elvis =
Dowson</div></div></body></html>=

--Apple-Mail=_08B7A2B2-0FD5-4B10-9CCF-ECBD8247CD6C--
