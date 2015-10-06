Return-Path: <akorsos@kranzetech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00E04E00D4C; Tue,  6 Oct 2015 06:38:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27AA7E00A81
	for <yocto@yoctoproject.org>; Tue,  6 Oct 2015 06:38:32 -0700 (PDT)
Received: by obbzf10 with SMTP id zf10so153943235obb.2
	for <yocto@yoctoproject.org>; Tue, 06 Oct 2015 06:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kranzetech.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Ta02JPJJqj9LEujVgxsSxzqeTBOEACYvO3hiy8T8+ps=;
	b=oUxDbbermKn9zHTPEWgLDqXAsF1iwDlTLnMKdgo+tJxaJU27nMLiun+BQ+iKgspNDa
	jGH5iOjOVDRouJmq+76bA7wFMPGiSoqpwJILBOLHtHPta8DCXI7fk6KoZ6juxorI43cQ
	hZPMMWMD3cY2DgqIH1yOybRmcBp3gO29eEje0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Ta02JPJJqj9LEujVgxsSxzqeTBOEACYvO3hiy8T8+ps=;
	b=GStrtCiX7yikWJtBMir7VAejJ2OA+NCf+wXEyqybcGZ5hEcpj6KJNd+cTHCuFHmVfP
	zKQv9vmmDy9c2xojyvB1veYLhfmCBQ5OPZ3Iqqzjj2SleT7qe/PpOLJqDT9fBecdR/HK
	vl+8nX74KGIBDs2lBN6EQibc0Q2nw1cN8xfuNAs188h+zX3PJ+FIyiXc7x6lbzDLf3WU
	BR8g1ENefTgyg3ViZ3Z1fomfT8YI8XYRpIBQjVyqSWVVutP7ZGJ1X1/7edZeEYpD3TL3
	9l9h++BsrKRlWVgy8szHRXTdHYaCO8b9JyDKzdT/EjRzAun/PPulW41hksKy0UqDFOow
	XgTQ==
X-Gm-Message-State: ALoCoQm4JRKYPTTNUj42TPgaBWeQHE0yYN4Ex/ZK23Lcx+E1/rNU+wKb8/WjB8606BBe2/gicF1c
MIME-Version: 1.0
X-Received: by 10.60.74.8 with SMTP id p8mr21374908oev.74.1444138712151; Tue,
	06 Oct 2015 06:38:32 -0700 (PDT)
Received: by 10.76.174.39 with HTTP; Tue, 6 Oct 2015 06:38:32 -0700 (PDT)
In-Reply-To: <5613CAB5.3080508@denx.de>
References: <CAGqgsEj=FFA-t=xPY7BR0g_ZjzinFkME+hR2kuwh1SH1FqTxRA@mail.gmail.com>
	<5613CAB5.3080508@denx.de>
Date: Tue, 6 Oct 2015 08:38:32 -0500
Message-ID: <CAGqgsEjDk+TM9ipj6iPU-rwYdpUGtK=_6Fmb6LPm_Paphn+Vaw@mail.gmail.com>
From: Alexander Korsos <akorsos@kranzetech.com>
To: stefano babic <sbabic@denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: Flashing Yocto to SOM?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 Oct 2015 13:38:36 -0000
Content-Type: multipart/alternative; boundary=001a1135e806f1dfb105216fbe75

--001a1135e806f1dfb105216fbe75
Content-Type: text/plain; charset=UTF-8

Hi Stefano,

Thanks for getting back to me. I just tried flashing u-boot.img instead of
u-boot.bin, using "nandecc sw", and get:

U-Boot SPL 2012.07-dirty
Board: DM37xx Torpedo
Error: Bad compare! failed
Error: Bad compare! failed
...


I flashed it again with "nandecc hw" and got:

U-Boot SPL 2012.07-dirty
Board: DM37xx Torpedo

U-Boot 2012.07-dirty

OMAP3630/3730-GP ES1.2, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
Logic DM37x/OMAP35x reference board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  512 MiB
MMC:   OMAP SD/MMC: 0
In:    serial
Out:   serial
Err:   serial
Die ID #511000029ff800000155b2141902501b
nand_unlock: start: 00000000, length: 536870912!
Net:   smc911x-0
Hit any key to stop autoboot:  0
Card did not respond to voltage select!
Booting from nand ...

NAND read: device 0 offset 0x280000, size 0x400000
NAND read from offset 280000 failed -74
 0 bytes read: ERROR
## Booting kernel from Legacy Image at 81000000 ...
   Image Name:   Linux-3.2.0
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    2300032 Bytes = 2.2 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... Bad Data CRC
ERROR: can't get kernel image!

Could it have something to do with nand_unlock? Any advice on this issue is
greatly appreciated.

Thank you,
Alex

On Tue, Oct 6, 2015 at 8:20 AM, stefano babic <sbabic@denx.de> wrote:

> Hi Alexander,
>
> Am 05.10.2015 um 20:31 schrieb Alexander Korsos:
> >
> > Hi,
> >
> > I'm trying to flash Yocto Dizzy (core-image-minimal built with
> > BitBake) onto a LogicPD DM3730 / AM3730 Torpedo + Wireless SOM using
> > the following commands at the U-Boot prompt:
> >
> > # nand erase.chip
> > # env default -f
> >
> > # setenv loadaddr 0x81000000
> >
> > # setenv ramdiskaddr 0x82000000
> >
> > # setenv kernel_nand_offset 0x00280000
> >
> > # setenv kernel_nand_size 0x00400000
> >
> > # setenv ramdisk_nand_offset 0x00680000
> >
> > # setenv ramdisk_nand_size 0x00dd8680
> >
> > # setenv kernel_location nand
> >
> > # setenv rootfs_location nand
> >
> > # setenv rootfs_type ramdisk
> >
> > # saveenv
> >
> > # mmc init
> >
> > # mw.l ${loadaddr} 0xFFFFFFFF 0x400000
> >
> > # fatload mmc 0 ${loadaddr} mlo
> >
> > # nandecc hw
> >
> > # nand write ${loadaddr} 0x00000000 0x00020000
> >
> > # nand write ${loadaddr} 0x00020000 0x00020000
> >
> > # nand write ${loadaddr} 0x00040000 0x00020000
> >
> > # nand write ${loadaddr} 0x00060000 0x00020000
> >
> > # mw.l ${loadaddr} 0xFFFFFFFF 0x400000
> >
> > # fatload mmc 0 ${loadaddr} u-boot.bin
> >
> > # nandecc sw
> >
> > # nand write.i ${loadaddr} 0x00080000 0x00080000
> >
> > # mw.l ${loadaddr} 0xffffffff 0x400000
> >
> > # fatload mmc 0 ${loadaddr} uImage
> >
> > # nand write.i ${loadaddr} ${kernel_nand_offset} ${kernel_nand_size}
> >
> > # mw.l ${loadaddr} 0xffffffff 0x400000
> > # fatload mmc 0 ${loadaddr} rootfs.ext2.gz.u-boot
> >
> > # nand write.i ${loadaddr} ${ramdisk_nand_offset} ${ramdisk_nand_size}
> >
> >
> >
> > The source files I'm using in my boot partition are the MLO,
> > u-boot.bin, rootfs.ext2.gz.u-boot, uImage, and u-boot.img. I am able
> > to burn all the necessary files onto the SOM, but when I complete the
> > steps and power cycle, I get:
> >
> >
> >
> > U-Boot SPL 2012.07-dirty (Sep 30 2015 - 17:31:44)
> > Board: DM37xx Torpedo
> > Error: Bad compare! failed
> > Error: Bad compare! failed
> > Error: Bad compare! failed
> >
> > ...
> >
> > mkimage signature not found - ih_magic = ea000014
> >
> > ...
> >
> > Error: Bad compare! failed
> > Error: Bad compare! failed
> >
> > ...
> >
> >
> >
> > I've done a good amount of research online and some people say that
> > it's an issue with the nandecc setting, but my only options in U-Boot
> > are hw (hardware) and sw (software) ecc algorithms. Just curious if
> > anyone could identify my errors or possibly point me in the direction
> > of good documentation?
> >
>
> Why do you flash u-boot.bin ? This is missing the header requested by
> TI's  SOCs. You should flash u-boot.img.
>
> Regards,
> Stefano
>
>

--001a1135e806f1dfb105216fbe75
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Stefano,<div><br></div><div>Thanks for getting back to =
me. I just tried flashing u-boot.img instead of u-boot.bin, using &quot;nan=
decc sw&quot;, and get:</div><div><br></div><blockquote style=3D"margin:0 0=
 0 40px;border:none;padding:0px"><div><div><font face=3D"monospace, monospa=
ce">U-Boot SPL 2012.07-dirty</font></div></div><div><div><font face=3D"mono=
space, monospace">Board: DM37xx Torpedo</font></div></div><div><div><font f=
ace=3D"monospace, monospace">Error: Bad compare! failed</font></div></div><=
div><div><font face=3D"monospace, monospace">Error: Bad compare! failed</fo=
nt></div></div><div><font face=3D"monospace, monospace">...</font></div></b=
lockquote><div><br></div><div>I flashed it again with &quot;nandecc hw&quot=
; and got:</div><div><br></div><blockquote style=3D"margin:0 0 0 40px;borde=
r:none;padding:0px"><div><div><div><font face=3D"monospace, monospace">U-Bo=
ot SPL 2012.07-dirty</font></div></div></div><div><div><font face=3D"monosp=
ace, monospace">Board: DM37xx Torpedo</font></div></div><div><div><font fac=
e=3D"monospace, monospace"><br></font></div></div><div><div><font face=3D"m=
onospace, monospace">U-Boot 2012.07-dirty</font></div></div><div><div><font=
 face=3D"monospace, monospace"><br></font></div></div><div><div><font face=
=3D"monospace, monospace">OMAP3630/3730-GP ES1.2, CPU-OPP2, L3-165MHz, Max =
CPU Clock 1 Ghz</font></div></div><div><div><font face=3D"monospace, monosp=
ace">Logic DM37x/OMAP35x reference board + LPDDR/NAND</font></div></div><di=
v><div><font face=3D"monospace, monospace">I2C: =C2=A0 ready</font></div></=
div><div><div><font face=3D"monospace, monospace">DRAM: =C2=A0512 MiB</font=
></div></div><div><div><font face=3D"monospace, monospace">NAND: =C2=A0512 =
MiB</font></div></div><div><div><font face=3D"monospace, monospace">MMC: =
=C2=A0 OMAP SD/MMC: 0</font></div></div><div><div><font face=3D"monospace, =
monospace">In: =C2=A0 =C2=A0serial</font></div></div><div><div><font face=
=3D"monospace, monospace">Out: =C2=A0 serial</font></div></div><div><div><f=
ont face=3D"monospace, monospace">Err: =C2=A0 serial</font></div></div><div=
><div><font face=3D"monospace, monospace">Die ID #511000029ff800000155b2141=
902501b</font></div></div><div><div><font face=3D"monospace, monospace">nan=
d_unlock: start: 00000000, length: 536870912!</font></div></div><div><div><=
font face=3D"monospace, monospace">Net: =C2=A0 smc911x-0</font></div></div>=
<div><div><font face=3D"monospace, monospace">Hit any key to stop autoboot:=
 =C2=A00</font></div></div><div><div><font face=3D"monospace, monospace">Ca=
rd did not respond to voltage select!</font></div></div><div><div><font fac=
e=3D"monospace, monospace">Booting from nand ...</font></div></div><div><di=
v><font face=3D"monospace, monospace"><br></font></div></div><div><div><fon=
t face=3D"monospace, monospace">NAND read: device 0 offset 0x280000, size 0=
x400000</font></div></div><div><div><font face=3D"monospace, monospace">NAN=
D read from offset 280000 failed -74</font></div></div><div><div><font face=
=3D"monospace, monospace">=C2=A00 bytes read: ERROR</font></div></div><div>=
<div><font face=3D"monospace, monospace">## Booting kernel from Legacy Imag=
e at 81000000 ...</font></div></div><div><div><font face=3D"monospace, mono=
space">=C2=A0 =C2=A0Image Name: =C2=A0 Linux-3.2.0</font></div></div><div><=
div><font face=3D"monospace, monospace">=C2=A0 =C2=A0Image Type: =C2=A0 ARM=
 Linux Kernel Image (uncompressed)</font></div></div><div><div><font face=
=3D"monospace, monospace">=C2=A0 =C2=A0Data Size: =C2=A0 =C2=A02300032 Byte=
s =3D 2.2 MiB</font></div></div><div><div><font face=3D"monospace, monospac=
e">=C2=A0 =C2=A0Load Address: 80008000</font></div></div><div><div><font fa=
ce=3D"monospace, monospace">=C2=A0 =C2=A0Entry Point: =C2=A080008000</font>=
</div></div><div><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0Veri=
fying Checksum ... Bad Data CRC</font></div></div><div><div><font face=3D"m=
onospace, monospace">ERROR: can&#39;t get kernel image!</font></div></div><=
div><font face=3D"monospace, monospace"><br></font></div></blockquote><font=
 face=3D"arial, helvetica, sans-serif">Could it have something to do with n=
and_unlock? Any advice on this issue is greatly appreciated.</font><div><fo=
nt face=3D"arial, helvetica, sans-serif"><br></font></div><div><font face=
=3D"arial, helvetica, sans-serif">Thank you,</font></div><div><font face=3D=
"arial, helvetica, sans-serif">Alex</font></div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Tue, Oct 6, 2015 at 8:20 AM, stefan=
o babic <span dir=3D"ltr">&lt;<a href=3D"mailto:sbabic@denx.de" target=3D"_=
blank">sbabic@denx.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">Hi Alexander,<br>
<div><div class=3D"h5"><br>
Am 05.10.2015 um 20:31 schrieb Alexander Korsos:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m trying to flash Yocto Dizzy (core-image-minimal built with<br>
&gt; BitBake) onto a LogicPD DM3730 / AM3730 Torpedo + Wireless SOM using<b=
r>
&gt; the following commands at the U-Boot prompt:<br>
&gt;<br>
&gt; # nand erase.chip<br>
&gt; # env default -f<br>
&gt;<br>
&gt; # setenv loadaddr 0x81000000<br>
&gt;<br>
&gt; # setenv ramdiskaddr 0x82000000<br>
&gt;<br>
&gt; # setenv kernel_nand_offset 0x00280000<br>
&gt;<br>
&gt; # setenv kernel_nand_size 0x00400000<br>
&gt;<br>
&gt; # setenv ramdisk_nand_offset 0x00680000<br>
&gt;<br>
&gt; # setenv ramdisk_nand_size 0x00dd8680<br>
&gt;<br>
&gt; # setenv kernel_location nand<br>
&gt;<br>
&gt; # setenv rootfs_location nand<br>
&gt;<br>
&gt; # setenv rootfs_type ramdisk<br>
&gt;<br>
&gt; # saveenv<br>
&gt;<br>
&gt; # mmc init<br>
&gt;<br>
&gt; # mw.l ${loadaddr} 0xFFFFFFFF 0x400000<br>
&gt;<br>
&gt; # fatload mmc 0 ${loadaddr} mlo<br>
&gt;<br>
&gt; # nandecc hw<br>
&gt;<br>
&gt; # nand write ${loadaddr} 0x00000000 0x00020000<br>
&gt;<br>
&gt; # nand write ${loadaddr} 0x00020000 0x00020000<br>
&gt;<br>
&gt; # nand write ${loadaddr} 0x00040000 0x00020000<br>
&gt;<br>
&gt; # nand write ${loadaddr} 0x00060000 0x00020000<br>
&gt;<br>
&gt; # mw.l ${loadaddr} 0xFFFFFFFF 0x400000<br>
&gt;<br>
&gt; # fatload mmc 0 ${loadaddr} u-boot.bin<br>
&gt;<br>
&gt; # nandecc sw<br>
&gt;<br>
&gt; # nand write.i ${loadaddr} 0x00080000 0x00080000<br>
&gt;<br>
&gt; # mw.l ${loadaddr} 0xffffffff 0x400000<br>
&gt;<br>
&gt; # fatload mmc 0 ${loadaddr} uImage<br>
&gt;<br>
&gt; # nand write.i ${loadaddr} ${kernel_nand_offset} ${kernel_nand_size}<b=
r>
&gt;<br>
&gt; # mw.l ${loadaddr} 0xffffffff 0x400000<br>
&gt; # fatload mmc 0 ${loadaddr} rootfs.ext2.gz.u-boot<br>
&gt;<br>
&gt; # nand write.i ${loadaddr} ${ramdisk_nand_offset} ${ramdisk_nand_size}=
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; The source files I&#39;m using in my boot partition are the MLO,<br>
&gt; u-boot.bin, rootfs.ext2.gz.u-boot, uImage, and u-boot.img. I am able<b=
r>
&gt; to burn all the necessary files onto the SOM, but when I complete the<=
br>
&gt; steps and power cycle, I get:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; U-Boot SPL 2012.07-dirty (Sep 30 2015 - 17:31:44)<br>
&gt; Board: DM37xx Torpedo<br>
&gt; Error: Bad compare! failed<br>
&gt; Error: Bad compare! failed<br>
&gt; Error: Bad compare! failed<br>
&gt;<br>
&gt; ...<br>
&gt;<br>
&gt; mkimage signature not found - ih_magic =3D ea000014<br>
&gt;<br>
&gt; ...<br>
&gt;<br>
&gt; Error: Bad compare! failed<br>
&gt; Error: Bad compare! failed<br>
&gt;<br>
&gt; ...<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I&#39;ve done a good amount of research online and some people say tha=
t<br>
&gt; it&#39;s an issue with the nandecc setting, but my only options in U-B=
oot<br>
&gt; are hw (hardware) and sw (software) ecc algorithms. Just curious if<br=
>
&gt; anyone could identify my errors or possibly point me in the direction<=
br>
&gt; of good documentation?<br>
&gt;<br>
<br>
</div></div>Why do you flash u-boot.bin ? This is missing the header reques=
ted by<br>
TI&#39;s=C2=A0 SOCs. You should flash u-boot.img.<br>
<br>
Regards,<br>
Stefano<br>
<br>
</blockquote></div><br></div>

--001a1135e806f1dfb105216fbe75--
