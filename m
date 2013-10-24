Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01AD0E01764
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 14:22:50 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id w4so1736028qcr.26
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 14:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MxhKV2VIbYJ0tDMWHYSknaMRfVVaQBXD3BPYJcQHOF0=;
	b=m5C7RZLTlLN8698uuzVIJzZkh/C9hDL1jy+V3ChzsldBpa3CKO56IR92gdDOJp2c5e
	3pvhfMW3/u4iqWpMl8ZsFLEIuyQnbRvo4hcDIZvKq73NfZENDTEtlKwDCdU+FvKcm5Rk
	nTVHnorqQRAno0gBKZAaG+GFvuD6OdarNThW2pNETUa8mc9D7ff2PcB+BKqKvLUGsru3
	H+yW5xA2yuNcZouu6yEi4r9dD26Oa7JRCRHG+YtMcaEA4FpOjF2UO647eXfRyu2oICmm
	GoNxNFtPlutYswyn/ToALJeuf/8A7cToQ7Z/KeKMNbL39HU5BsZ3Zj4NWaFV537LnB0i
	BFGg==
MIME-Version: 1.0
X-Received: by 10.224.32.66 with SMTP id b2mr7099973qad.80.1382649768985; Thu,
	24 Oct 2013 14:22:48 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Thu, 24 Oct 2013 14:22:48 -0700 (PDT)
In-Reply-To: <CA+gsK-p129mvK8414ewJ0P4cYnreVJZsuXNNDp4X6srsP2Otig@mail.gmail.com>
References: <CANwz6nznDfo=40RJ4aZh6BESHbYT3d+CcoTpB+wyaU5qXZ57fA@mail.gmail.com>
	<CA+gsK-oYDGkcCiPxKUP3rVbD2qGRr_8EUNqGO7JNKmZJfU9WEw@mail.gmail.com>
	<CANwz6nyNupYz25HvywgLfqMEU0dM8d3EvWjzZYa5uMqKU0YMCA@mail.gmail.com>
	<CA+gsK-p129mvK8414ewJ0P4cYnreVJZsuXNNDp4X6srsP2Otig@mail.gmail.com>
Date: Thu, 24 Oct 2013 15:22:48 -0600
Message-ID: <CANwz6nx+2BoPdxTDbnNHKNTv2e3yN58Yk26MJjSRVR7+6hCXSw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: uimage instead of zImage
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
X-List-Received-Date: Thu, 24 Oct 2013 21:22:51 -0000
Content-Type: multipart/alternative; boundary=001a11c2c2fc544a5904e9833ca4

--001a11c2c2fc544a5904e9833ca4
Content-Type: text/plain; charset=ISO-8859-1

Hello,
My 2nd partition on the mmc is linux ext3.
This is what I have been using to transfer the rootfs to my mmc tar jxvf
beagleboard/core-image-minimal-beagleboard-20131024171447.rootfs.tar.bz2

Did something change since the 21 st of last month.   Testing dora which
was not part of dylan?
No matter what I do when i the kernel to start it is always is looking for
UBIFS
my mmcrootfstype=ext3 rootwait and mmcroot/dev/mmcblk0p2 rw
bootcmd="mmc rescan 0 ; fatload mmc 0:1 0x80008000 zImage; bootz 0x80008000"
when I execute manually it does  seem to like mmc rescan 0 sometimes
mmc rescan 0
mmc - MMC sub system

Usage:
mmc read addr blk# cnt
mmc write addr blk# cnt
mmc erase blk# cnt
mmc rescan
mmc part - lists available partition on    current    mmc device
mmc dev    [dev] [part] - show or set current mmc device [partition]
mmc list - lists available devices

mmc rescan works okay.

ThumbEE CPU extension supported.
VDVI: incomplete constraints, leaving on
VDAC: incomplete constraints, leaving on
UBI error: ubi_init: UBI error:    cannot initialize UBI, error -19
console [netcon0] enabled
netconsole: network logging started
twl_rtc    twl_rtc: setting system clock to 2000-01-01 00:00:00 UTC
(946684800)
ALSA device list:
  #0: omap3beagle
VFS: Cannot open root device "ubi0:rootfs" or unknown-block(0,0): error
-19
Please append a    correct "root=" boot option; here are the available
partitions:
VFS: Unable to mount root fs on    unknown-block(0,0)
User configuration error - no valid root filesystem found
Kernel panic - not syncing: Invalid configuration from end user    prevents
continu
ing
Thanks


On Wed, Oct 23, 2013 at 10:09 AM, Rudolf Streif <rstreif@linuxfoundation.org
> wrote:

> Hi Edward,
>
>
> This is what I have in the uEnv.txt file
>>
>>
>> bootcmd=""
>> bootfile="zImage"
>> ethact=""
>> loadaddr=""
>> nandboot=""
>> nandroot=""
>> nandrootfstype=""
>> nandargs=""
>> loaduimage=""
>> loaduimagefat=""
>> nandboot=""
>> mpurate="auto"
>> bootcmd="mmc rescan ; fatload mmc 0:1 0x80300000 zImage; bootz 0x80300000"
>>
>> Why are you setting all the variables to "". You really only have to
> overwrite the ones you need to change.
>
>
>
>> dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
>> optargs="consoleblank=0"
>> console="ttyO2 console=tty0,115200n8"
>> vram=16M
>> saveenv
>> printenv
>>
>> It appears that some of variable get written with other data ie vram I am
>> setting to 16M but sometimes I see it set to 12M see at the end
>> I have tried setting the variables manually and executing saveenv
>> All the ones I don't want set setenv name and then saveenv
>> still see the same values
>> when I was using uImage and no
>> this is what I used for my uEnv.txt
>>
>> mpurate=auto
>>
>> Are you still trying to solve the problem with the rootfs or is that
> another problem?
>
>
>
>> mmcroot=/dev/mmcblk0p2 rw
>> mmcrootfstype=ext3 rootwait
>>
>
> According to these settings your kernel is passed information to look for
> an ext3 root file system on the second partition of the an SD card on
> /dev/mmcblk0. Are you booting from an SD card? However, in your first boot
> it seems to look for an ubifs.
>
> I am not sure what you are looking for. Maybe you can attach an new boot
> log.
>
> :rjs
>

--001a11c2c2fc544a5904e9833ca4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br>My 2nd partition on the mmc is li=
nux ext3.<br>This is what I have been using to transfer the rootfs to my mm=
c tar jxvf beagleboard/core-image-minimal-beagleboard-20131024171447.rootfs=
.tar.bz2<br>
</div><br>Did something change since the 21 st of last month. =A0 Testing d=
ora which was not part of dylan?<br></div>No matter what I do when i the ke=
rnel to start it is always is looking for UBIFS<br></div>my mmcrootfstype=
=3Dext3 rootwait and mmcroot/dev/mmcblk0p2 rw <br>
<div><div>bootcmd=3D&quot;mmc rescan 0 ; fatload mmc 0:1 0x80008000 zImage;=
 bootz 0x80008000&quot;<br></div><div>when I execute manually it does=A0 se=
em to like mmc rescan 0 sometimes <br></div><div><div>mmc rescan 0<br>mmc -=
 MMC sub system<br>
<br>Usage:<br>mmc read addr blk# cnt<br>mmc write addr blk# cnt<br>mmc eras=
e blk# cnt<br>mmc rescan<br>mmc part - lists available partition on=A0=A0=
=A0 current=A0=A0=A0 mmc device<br>mmc dev=A0=A0=A0 [dev] [part] - show or =
set current mmc device [partition]<br>
mmc list - lists available devices<br><br>mmc rescan works okay.<br><br>Thu=
mbEE CPU extension supported.<br>VDVI: incomplete constraints, leaving on<b=
r>VDAC: incomplete constraints, leaving on<br>UBI error: ubi_init: UBI erro=
r:=A0=A0=A0 cannot initialize UBI, error -19<br>
console [netcon0] enabled<br>netconsole: network logging started<br>twl_rtc=
=A0=A0=A0 twl_rtc: setting system clock to 2000-01-01 00:00:00 UTC (9466848=
00)<br>ALSA device list:<br>=A0 #0: omap3beagle<br>VFS: Cannot open root de=
vice &quot;ubi0:rootfs&quot; or unknown-block(0,0): error=A0=A0=A0 -19<br>
Please append a=A0=A0=A0 correct &quot;root=3D&quot; boot option; here are =
the available partitions:<br>VFS: Unable to mount root fs on=A0=A0=A0 unkno=
wn-block(0,0)<br>User configuration error - no valid root filesystem found<=
br>Kernel panic - not syncing: Invalid configuration from end user=A0=A0=A0=
 prevents continu<br>
ing<br></div><div>Thanks<br></div></div></div></div><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On Wed, Oct 23, 2013 at 10:09 AM, Ru=
dolf Streif <span dir=3D"ltr">&lt;<a href=3D"mailto:rstreif@linuxfoundation=
.org" target=3D"_blank">rstreif@linuxfoundation.org</a>&gt;</span> wrote:<b=
r>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Edward,<br><div class=3D=
"gmail_extra"><br><br><div class=3D"gmail_quote"><div class=3D"im"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
<div dir=3D"ltr"><div>This is what I have in the uEnv.txt file <br>

</div><br><div><br>bootcmd=3D&quot;&quot;<br>bootfile=3D&quot;zImage&quot;<=
br>ethact=3D&quot;&quot;<br>loadaddr=3D&quot;&quot;<br>nandboot=3D&quot;&qu=
ot;<br>nandroot=3D&quot;&quot;<br>nandrootfstype=3D&quot;&quot;<br>nandargs=
=3D&quot;&quot;<br>


loaduimage=3D&quot;&quot;<br>loaduimagefat=3D&quot;&quot;<br>nandboot=3D&qu=
ot;&quot;<br>mpurate=3D&quot;auto&quot;<br>bootcmd=3D&quot;mmc rescan ; fat=
load mmc 0:1 0x80300000 zImage; bootz 0x80300000&quot;<div><br></div>
</div></div></blockquote></div><div>Why are you setting all the variables t=
o &quot;&quot;. You really only have to overwrite the ones you need to chan=
ge.</div><div class=3D"im"><div><br></div><div>=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">

<div dir=3D"ltr"><div><div>dvimode=3D&quot;hd720 omapfb.vram=3D0:8M,1:4M,2:=
4M&quot;<br></div><div>
optargs=3D&quot;consoleblank=3D0&quot;<br>console=3D&quot;ttyO2 console=3Dt=
ty0,115200n8&quot;<br></div>vram=3D16M<br>saveenv<br>printenv<br><br>It app=
ears that some of variable get written with other data ie vram I am setting=
 to 16M but sometimes I see it set to 12M see at the end<br>


I have tried setting the variables manually and executing saveenv<br>All th=
e ones I don&#39;t want set setenv name and then saveenv<br>still see the s=
ame values<br>when I was using uImage and no <br>this is what I used for my=
 uEnv.txt<div>

<br>
mpurate=3Dauto<br><br></div></div></div></blockquote></div><div>Are you sti=
ll trying to solve the problem with the rootfs or is that another problem?<=
/div><div>=A0</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div dir=3D"ltr"><div>mmcroot=3D/dev/mmcblk0p2 rw<br>mmcrootfstype=3Dext3 r=
ootwait<br></div></div></blockquote><div><br></div><div>According to these =
settings your kernel is passed information to look for an ext3 root file sy=
stem on the second partition of the an SD card on /dev/mmcblk0. Are you boo=
ting from an SD card? However, in your first boot it seems to look for an u=
bifs.</div>

<div><br></div><div>I am not sure what you are looking for. Maybe you can a=
ttach an new boot log.</div><div><br></div><div>:rjs=A0</div></div>
</div></div>
</blockquote></div><br></div>

--001a11c2c2fc544a5904e9833ca4--
