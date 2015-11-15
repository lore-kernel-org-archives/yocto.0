Return-Path: <jarraj400@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2229E00A26; Sat, 14 Nov 2015 22:35:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jarraj400[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88EBFE0088C
	for <yocto@yoctoproject.org>; Sat, 14 Nov 2015 22:35:37 -0800 (PST)
Received: by lfs39 with SMTP id 39so71634175lfs.3
	for <yocto@yoctoproject.org>; Sat, 14 Nov 2015 22:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=WIL3UvZ2enG+kwh7Sremg/tYrFUXQAwF0LjvZ+Q52N8=;
	b=DaQ2f7nauJkZgCkPTXuLhYQBqycgpZQpR05kSjXan30kkLzR1d4qyHg2l13djUnEXD
	szCzTz+e56bO/dfHv5bB3o0wavuzr7afm/y5qelYnC3LCn9fB4fb/C3S7hKE7elLGGKx
	0M+DXo39n+1sLfvQh+nT8v82aCXwkjBbrNnC2cFjZmcd8mp5IsGHmAqwhREWHB0JwxsC
	k9X8EhB7Uf9o0BKNAMKwhMf1WLFDpduy332NkgEhOVlavgyJxel+bSA5UIkYdrkExczC
	be7Cora6aYZg+eyOjHlspqHzYWjGPT/x0F70ovDKLLuVzzD4b0V38oBjTooi3eGVba3x
	VKsA==
MIME-Version: 1.0
X-Received: by 10.25.28.15 with SMTP id c15mr4303889lfc.99.1447569336810; Sat,
	14 Nov 2015 22:35:36 -0800 (PST)
Received: by 10.25.25.13 with HTTP; Sat, 14 Nov 2015 22:35:36 -0800 (PST)
Date: Sun, 15 Nov 2015 12:05:36 +0530
Message-ID: <CAK3ATuEqsM4cvO_U0YcQ7z-p9AYXtyMfBCcF7_w-a3oNXpZnOg@mail.gmail.com>
From: Raj Jar <jarraj400@gmail.com>
To: yocto@yoctoproject.org
Subject: raspberry pi do rootfs
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
X-List-Received-Date: Sun, 15 Nov 2015 06:35:41 -0000
Content-Type: multipart/alternative; boundary=001a114020a21bc60005248e806a

--001a114020a21bc60005248e806a
Content-Type: text/plain; charset=UTF-8

hi


(no subject)
Raj Jar <jarraj400@gmail.com>
11:05 AM (56 minutes ago)
to andrei
Hi,

my sdimg is 107MB it creates but not create complete.

Build Configuration:
BB_VERSION        = "1.26.0"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi"
DISTRO            = "poky"
DISTRO_VERSION    = "1.8.1"
TUNE_FEATURES     = "arm armv6 vfp arm1176jzfs callconvention-hard"
TARGET_FPU        = "vfp"
meta
meta-yocto
meta-yocto-bsp    = "fido:b74ea963cefffad9fbd91d4eb9b240f6a8c86cd0"
meta-raspberrypi  = "fido:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"

>
> I have 60GB space in my build system still i face
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Error: The image creation script
>
'/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
> returned 1:
> Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> 0+0 records in
> 0+0 records out
> 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> Model:  (file)
> Disk
>
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
> 105MB
> Sector size (logical/physical): 512B/512B
> Partition Table: msdos
> Disk Flags:
>
> Number  Start  End    Size    Type    File system  Flags
>  1      4194kB  25.2MB  21.0MB  primary              boot, lba
>  2      25.2MB  105MB  79.7MB  primary
>
> mkfs.vfat 2.11 (12 Mar 2005)
> Disk full
> WARNING:
>
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
> exit 1 from
>  mcopy -i
>
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
> -s
>
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
> ::kernel.img
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
>
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> ERROR: Task 7
>
(/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
> rerun and 1 failed.
> No currently running tasks (1953 of 1955)

-- 
Regards,
RAJ M
Mob. # +91-9597208150


Have a great day ahead.

--001a114020a21bc60005248e806a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br clear=3D"all"></div>hi<br><br><div id=3D":5" clas=
s=3D""><div class=3D""><div class=3D""><div class=3D""><div id=3D":142" cla=
ss=3D"" title=3D"Settings" tabindex=3D"0"><div class=3D"">=C2=A0</div></div=
></div></div></div></div><div class=3D""><div class=3D""><div class=3D""><d=
iv class=3D""><span class=3D""></span></div></div></div></div><span class=
=3D""></span><div class=3D""><div class=3D""><div class=3D""><h2 id=3D":14n=
" class=3D"" tabindex=3D"-1">(no subject)</h2><span id=3D":14m" class=3D"">=
</span></div></div></div><div class=3D""><div class=3D""><div class=3D""><d=
iv tabindex=3D"-1" class=3D""><div class=3D""><div class=3D""><div><div id=
=3D":150"><div class=3D"" style=3D"display:"><div class=3D""><div class=3D"=
"><img id=3D":0_3-e" name=3D":0" src=3D"https://plus.google.com/u/0/_/focus=
/photos/public/AIbEiAIAAABECOK0gdTLpcb07wEiC3ZjYXJkX3Bob3RvKigzMDg0OGZmMWZk=
OTJjMDljODViZjcyNmY0M2U1YWYwZTMxYWYxMjc2MAGiJx9tZ_h0qs8RAIqkQKYtmyH-_Q?sz=
=3D32" class=3D""></div></div></div></div></div></div></div></div></div></d=
iv></div><table class=3D"" cellpadding=3D"0"><tbody><tr><td><h3 class=3D"">=
<span name=3D"Raj Jar" class=3D"">Raj Jar</span> <span class=3D""><span>&lt=
;</span><a href=3D"mailto:jarraj400@gmail.com">jarraj400@gmail.com</a><span=
>&gt;</span></span> </h3></td></tr></tbody></table><div class=3D""><span></=
span><span id=3D":146" class=3D"" title=3D"Sun, Nov 15, 2015 at 11:05 AM" a=
lt=3D"Sun, Nov 15, 2015 at 11:05 AM">11:05 AM (56 minutes ago)</span><div c=
lass=3D"" tabindex=3D"0" style=3D"outline:0px none"><span class=3D""><img c=
lass=3D"" src=3D"https://mail.google.com/mail/u/0/images/cleardot.gif" alt=
=3D""></span></div></div><table class=3D"" cellpadding=3D"0"><tbody><tr><td=
 class=3D""><div class=3D""><span class=3D"">to <span dir=3D"ltr" name=3D"a=
ndrei" class=3D"">andrei</span> </span></div><div class=3D""><img class=3D"=
" id=3D":13g" src=3D"https://mail.google.com/mail/u/0/images/cleardot.gif" =
alt=3D""></div></td></tr></tbody></table><div id=3D":153" class=3D""><div i=
d=3D":14z" class=3D"" style=3D"overflow:hidden">Hi,<br>
<br>
my sdimg is 107MB it creates but not create complete.<br>
<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.26.0&quot;<br>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i686-linux&quot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.04&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot=
;<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;raspberrypi&quot;=
<br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.8.1&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv6 vfp arm1176jzfs callco=
nvention-hard&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;vfp&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;fido:b74ea963cefffad9fbd91d4eb9b240f6=
a8c86cd0&quot;<br>
meta-raspberrypi=C2=A0 =3D &quot;fido:b896a7da70dd7a16ba7ffd664f7747cb37e1d=
142&quot;<br>
<br>
&gt;<br>
&gt; I have 60GB space in my build system still i face<br>
&gt;<br>
&gt; NOTE: Preparing RunQueue<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; ERROR: Error: The image creation script<br>
&gt; &#39;/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/=
work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image=
.rpi-sdimg&#39;<br>
&gt; returned 1:<br>
&gt; Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB=
<br>
&gt; 0+0 records in<br>
&gt; 0+0 records out<br>
&gt; 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s<br>
&gt; Model:=C2=A0 (file)<br>
&gt; Disk<br>
&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deplo=
y/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-s=
dimg:<br>
&gt; 105MB<br>
&gt; Sector size (logical/physical): 512B/512B<br>
&gt; Partition Table: msdos<br>
&gt; Disk Flags:<br>
&gt;<br>
&gt; Number=C2=A0 Start=C2=A0 End=C2=A0 =C2=A0 Size=C2=A0 =C2=A0 Type=C2=A0=
 =C2=A0 File system=C2=A0 Flags<br>
&gt;=C2=A0 1=C2=A0 =C2=A0 =C2=A0 4194kB=C2=A0 25.2MB=C2=A0 21.0MB=C2=A0 pri=
mary=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 boot, lba<br>
&gt;=C2=A0 2=C2=A0 =C2=A0 =C2=A0 25.2MB=C2=A0 105MB=C2=A0 79.7MB=C2=A0 prim=
ary<br>
&gt;<br>
&gt; mkfs.vfat 2.11 (12 Mar 2005)<br>
&gt; Disk full<br>
&gt; WARNING:<br>
&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/=
raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-=
sdimg:1<br>
&gt; exit 1 from<br>
&gt;=C2=A0 mcopy -i<br>
&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/=
raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img<br>
&gt; -s<br>
&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deplo=
y/images/raspberrypi/Image-raspberrypi.bin<br>
&gt; ::kernel.img<br>
&gt;<br>
&gt; ERROR: Function failed: do_rootfs<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/=
raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.134=
57<br>
&gt; ERROR: Task 7<br>
&gt; (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-c=
ore/images/<br>
&gt; <a href=3D"http://rpi-hwup-image.bb" rel=3D"noreferrer" target=3D"_bla=
nk">rpi-hwup-image.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn&#39;t nee=
d to be<br>
&gt; rerun and 1 failed.<br>
&gt; No currently running tasks (1953 of 1955)</div></div><br><div>-- <br><=
div class=3D"gmail_signature"><div dir=3D"ltr">Regards,<div>RAJ M</div><div=
>Mob. # +91-9597208150</div><div><br></div><div><br></div><div>Have a great=
 day ahead.</div><div><br></div></div></div>
</div></div>

--001a114020a21bc60005248e806a--
