Return-Path: <jarraj400@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BC47E00B0B; Wed, 11 Nov 2015 00:09:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jarraj400[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEA44E00AF2
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 00:09:04 -0800 (PST)
Received: by lbbkw15 with SMTP id kw15so12596897lbb.0
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 00:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Cc70c2OZDR2BWKNBwZ5DC4ulaA/Gq3M70ICTLBZS+HU=;
	b=aIrABBsRHZW8VUStEWA8NqTNsHHDbFrD/CSpCLmGA5nbWcQiXVxDy84mI6U7sZ6FE3
	S+9ltHL5dDRnPN3zxRR/9TZkyipe1TdNdkveDvafaYDog8xsBLzGSB711Agnl0EnWpMR
	8IHB7Ezwm400XAm5/nEoK2s2L7Ra8/ETBKwIHUtLgQnqjW1qFX7fldEFQvqdYUhJCbO8
	RPdUYt3Vdvr5L+hSVppUELAT8D74QVkVzgTKA/4IElL+eizo2OTjuTy3/S3Df3iDw0Z6
	swSGjjEfa93uFEUTEaER4+OAFDecGbbipi/v5yoTRbHB0SHi7d07KNAe+/j9GL1HNRlf
	Czfw==
MIME-Version: 1.0
X-Received: by 10.112.13.98 with SMTP id g2mr3766468lbc.18.1447229342481; Wed,
	11 Nov 2015 00:09:02 -0800 (PST)
Received: by 10.25.25.147 with HTTP; Wed, 11 Nov 2015 00:09:02 -0800 (PST)
In-Reply-To: <CAK3ATuEW_u3JpNxxx7m2wVrJdERX=p3=2k_6YF_9NLue6EYWcw@mail.gmail.com>
References: <CAK3ATuEW_u3JpNxxx7m2wVrJdERX=p3=2k_6YF_9NLue6EYWcw@mail.gmail.com>
Date: Wed, 11 Nov 2015 13:39:02 +0530
Message-ID: <CAK3ATuHc9C4T6mF-m8J=CuMWu=QJGtBOVvLbTYae-HgLS1uZFw@mail.gmail.com>
From: Raj Jar <jarraj400@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: raspberry pi do rootfs
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
X-List-Received-Date: Wed, 11 Nov 2015 08:09:09 -0000
Content-Type: multipart/alternative; boundary=001a11c3b8a6de060f05243f5633

--001a11c3b8a6de060f05243f5633
Content-Type: text/plain; charset=UTF-8

Hi All,

I have 60GB space in my build system still i face


NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Error: The image creation script
'/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
returned 1:
Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
0+0 records in
0+0 records out
0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
Model:  (file)
Disk
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
105MB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End     Size    Type     File system  Flags
 1      4194kB  25.2MB  21.0MB  primary               boot, lba
 2      25.2MB  105MB   79.7MB  primary

mkfs.vfat 2.11 (12 Mar 2005)
Disk full
WARNING:
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
exit 1 from
  mcopy -i
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
-s
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
::kernel.img

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
ERROR: Task 7
(/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
rerun and 1 failed.
No currently running tasks (1953 of 1955)

Summary: 1 task failed:

/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
rpi-hwup-image.bb, do_rootfs


On Tue, Nov 3, 2015 at 10:17 AM, Raj Jar <jarraj400@gmail.com> wrote:

> I got this error when i do bitbake rpi-hwup-image
> I suspect error come from mcopy .....
> how to recover this error
> MACHINE ?="raspberry pi"
>
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Error: The image creation script
> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
> returned 1:
> Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> 0+0 records in
> 0+0 records out
> 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> Model:  (file)
> Disk
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
> 105MB
> Sector size (logical/physical): 512B/512B
> Partition Table: msdos
> Disk Flags:
>
> Number  Start   End     Size    Type     File system  Flags
>  1      4194kB  25.2MB  21.0MB  primary               boot, lba
>  2      25.2MB  105MB   79.7MB  primary
>
> mkfs.vfat 2.11 (12 Mar 2005)
> Disk full
> WARNING:
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
> exit 1 from
>   mcopy -i
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
> -s
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
> ::kernel.img
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> ERROR: Task 7
> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
> rerun and 1 failed.
> No currently running tasks (1953 of 1955)
>
> Summary: 1 task failed:
>
> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> rpi-hwup-image.bb, do_rootfs
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
>
>
>


-- 
Regards,
RAJ M
Mob. # +91-9597208150


Have a great day ahead.

--001a11c3b8a6de060f05243f5633
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,<br><br></div>I have 60GB space in my build sy=
stem still i face<span class=3D""><br><br></span><br>NOTE: Preparing RunQue=
ue<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>E=
RROR: Error: The image creation script &#39;/home/raj/Projects/raspberry_pi=
/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-h=
wup-image/1.0-r0/temp/create_image.rpi-sdimg&#39; returned 1:<br>Creating f=
ilesystem with Boot partition 20480 KiB and RootFS 77824 KiB<br>0+0 records=
 in<br>0+0 records out<br>0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s<br>M=
odel:=C2=A0 (file)<br>Disk /home/raj/Projects/raspberry_pi/yacto/poky/raspb=
errypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151=
102024300.rootfs.rpi-sdimg: 105MB<br>Sector size (logical/physical): 512B/5=
12B<br>Partition Table: msdos<br>Disk Flags:<br><br>Number=C2=A0 Start=C2=
=A0=C2=A0 End=C2=A0=C2=A0=C2=A0=C2=A0 Size=C2=A0=C2=A0=C2=A0 Type=C2=A0=C2=
=A0=C2=A0=C2=A0 File system=C2=A0 Flags<br>=C2=A01=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 4194kB=C2=A0 25.2MB=C2=A0 21.0MB=C2=A0 primary=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 boot, lba<b=
r>=C2=A02=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 25.2MB=C2=A0 105MB=C2=A0=C2=A0 79.7=
MB=C2=A0 primary<br><br>mkfs.vfat 2.11 (12 Mar 2005)<br>Disk full<br>WARNIN=
G: /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ra=
spberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sd=
img:1 exit 1 from<br>=C2=A0 mcopy -i /home/raj/Projects/raspberry_pi/yacto/=
poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-ima=
ge/1.0-r0/boot.img -s /home/raj/Projects/raspberry_pi/yacto/poky/raspberryp=
i_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin ::kernel.img<br=
><br>ERROR: Function failed: do_rootfs<br>ERROR: Logfile of failure stored =
in: /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.1345=
7<br>ERROR: Task 7 (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspber=
rypi/recipes-core/images/<a href=3D"http://rpi-hwup-image.bb" target=3D"_bl=
ank">rpi-hwup-image.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<br=
>NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn&#39;t need to=
 be rerun and 1 failed.<br>No currently running tasks (1953 of 1955)<br><br=
>Summary: 1 task failed:<br>=C2=A0 /home/raj/Projects/raspberry_pi/yacto/po=
ky/meta-raspberrypi/recipes-core/images/<a href=3D"http://rpi-hwup-image.bb=
" target=3D"_blank">rpi-hwup-image.bb</a>, do_rootfs<br><br></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Nov 3, 2015 at 10:=
17 AM, Raj Jar <span dir=3D"ltr">&lt;<a href=3D"mailto:jarraj400@gmail.com"=
 target=3D"_blank">jarraj400@gmail.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div dir=3D"ltr"><div><div><div>I got this error when i=
 do bitbake rpi-hwup-image<br></div>I suspect error come from mcopy .....<b=
r></div>how to recover this error<br></div>MACHINE ?=3D&quot;raspberry pi&q=
uot;<br><div><div><div><div><br><div><br>NOTE: Preparing RunQueue<br>NOTE: =
Executing SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>ERROR: Error:=
 The image creation script &#39;/home/raj/Projects/raspberry_pi/yacto/poky/=
raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.=
0-r0/temp/create_image.rpi-sdimg&#39; returned 1:<br>Creating filesystem wi=
th Boot partition 20480 KiB and RootFS 77824 KiB<br>0+0 records in<br>0+0 r=
ecords out<br>0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s<br>Model:=C2=A0 =
(file)<br>Disk /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build=
/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.ro=
otfs.rpi-sdimg: 105MB<br>Sector size (logical/physical): 512B/512B<br>Parti=
tion Table: msdos<br>Disk Flags:<br><br>Number=C2=A0 Start=C2=A0=C2=A0 End=
=C2=A0=C2=A0=C2=A0=C2=A0 Size=C2=A0=C2=A0=C2=A0 Type=C2=A0=C2=A0=C2=A0=C2=
=A0 File system=C2=A0 Flags<br>=C2=A01=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4194kB=
=C2=A0 25.2MB=C2=A0 21.0MB=C2=A0 primary=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 boot, lba<br>=C2=A02=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 25.2MB=C2=A0 105MB=C2=A0=C2=A0 79.7MB=C2=A0 pri=
mary<br><br>mkfs.vfat 2.11 (12 Mar 2005)<br>Disk full<br>WARNING: /home/raj=
/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-po=
ky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1 exit 1=
 from<br>=C2=A0 mcopy -i /home/raj/Projects/raspberry_pi/yacto/poky/raspber=
rypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/bo=
ot.img -s /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/=
deploy/images/raspberrypi/Image-raspberrypi.bin ::kernel.img<br><br>ERROR: =
Function failed: do_rootfs<br>ERROR: Logfile of failure stored in: /home/ra=
j/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-p=
oky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457<br>ERROR: =
Task 7 (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes=
-core/images/<a href=3D"http://rpi-hwup-image.bb" target=3D"_blank">rpi-hwu=
p-image.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<br>NOTE: Tasks=
 Summary: Attempted 1954 tasks of which 1953 didn&#39;t need to be rerun an=
d 1 failed.<br>No currently running tasks (1953 of 1955)<br><br>Summary: 1 =
task failed:<br>=C2=A0 /home/raj/Projects/raspberry_pi/yacto/poky/meta-rasp=
berrypi/recipes-core/images/<a href=3D"http://rpi-hwup-image.bb" target=3D"=
_blank">rpi-hwup-image.bb</a>, do_rootfs<br>Summary: There were 2 ERROR mes=
sages shown, returning a non-zero exit code.<br><br><div><div dir=3D"ltr"><=
br><div><br></div></div></div>
</div></div></div></div></div></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature"><div dir=3D"ltr">Regards,<div>RAJ M</div><div>Mob. # +91-9597208150=
</div><div><br></div><div><br></div><div>Have a great day ahead.</div><div>=
<br></div></div></div>
</div>

--001a11c3b8a6de060f05243f5633--
