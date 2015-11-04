Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18D4AE00AC1; Wed,  4 Nov 2015 01:30:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 841E1E00AAA
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 01:30:38 -0800 (PST)
Received: by lbbkw15 with SMTP id kw15so5611637lbb.0
	for <yocto@yoctoproject.org>; Wed, 04 Nov 2015 01:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan_ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+XHtV5ETsEmQmguFkomJlZbuM1R8/N8EEAAoEjSiJ44=;
	b=gCzcju0Pf8F7q4rXdQog+m9+kscuUWJ7vojH0NDqtgyc/2S41LwKbyE9sB/A1DGWFS
	h4fWSsCVmqyitR5jICx/HZrBCxOyixooR510fDpxaGCs8SzS6WWLN5XrJWO+Kv4CWQm4
	rNbHknzbgUltbnTr3MWbd5CzUNWBVWCfBgHrGCgQtp0p+ukyGz2zxWr3BKF6dLeivDev
	v7InREnVjOyv4jfh5ESrWzz73mRqY/OLCIz9G3KzS9xC1o/zx0/qbRLagQyEULkppQmj
	pDkoDhtfVgEjVPDfHZtN/01OXtsjnPwRretDbgnEDkbt1P/R++VKqPaiGWU8jYHgiP+t
	IL9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=+XHtV5ETsEmQmguFkomJlZbuM1R8/N8EEAAoEjSiJ44=;
	b=F4Bs0RFIZFmj+TVlDmnAW5Eupa/bPd6Lhg3zx9AxvxvDPzIrk/VGlhJ5N4016btZbd
	PVGmQJjW2fJZiEF59YK/QGPf2ZGx90NZIaAvr7gp1YcG6HhDBea8HIfN0fHtPlo69Cgn
	cH9R3gjpfhcHzSQo3YCQPJW97b/7YArtrA/M4DvEwrZiFAxyqqZQs+U3JD/GKsO9OiVL
	UZshvNtQr6PqaZnxTCtAXIkdhGk5vX6cFoDdfCoevfW3cVJMUyycIZGoVMM0mvbHX/wA
	Vf1prBpUqx2ff6cr5QEHlyyrfn089VmFJrvSKGxRDYYCvp3jefQnvibezLdfjcCXb74+
	EyLQ==
X-Gm-Message-State: ALoCoQmbBWBDgj0H42XgAaSn0gZCRT7+n/eHhIsMAhX2bXcZ+mbrNWL+Aj3w+AWKzWE7d+2Bl5hh
X-Received: by 10.112.218.42 with SMTP id pd10mr353652lbc.114.1446629437546;
	Wed, 04 Nov 2015 01:30:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.61.195 with HTTP; Wed, 4 Nov 2015 01:29:58 -0800 (PST)
X-Originating-IP: [131.159.205.237]
In-Reply-To: <CAK3ATuEW_u3JpNxxx7m2wVrJdERX=p3=2k_6YF_9NLue6EYWcw@mail.gmail.com>
References: <CAK3ATuEW_u3JpNxxx7m2wVrJdERX=p3=2k_6YF_9NLue6EYWcw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 4 Nov 2015 10:29:58 +0100
Message-ID: <CAK18fxHvzp4Mgz+x82L8ub9Y6AU-o5WgfYymYTd4GE+KM7aAMA@mail.gmail.com>
To: Raj Jar <jarraj400@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 04 Nov 2015 09:30:42 -0000
Content-Type: multipart/alternative; boundary=001a11c3ccd2bf3cb30523b3a9ab

--001a11c3ccd2bf3cb30523b3a9ab
Content-Type: text/plain; charset=UTF-8

--
Andrei Gherzan

On Tue, Nov 3, 2015 at 5:47 AM, Raj Jar <jarraj400@gmail.com> wrote:

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
>

Make some space for your build.


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
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c3ccd2bf3cb30523b3a9ab
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br clear=3D"all"><div><div=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>--</=
div>Andrei Gherzan</div></div></div></div></div>
<br><div class=3D"gmail_quote">On Tue, Nov 3, 2015 at 5:47 AM, Raj Jar <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:jarraj400@gmail.com" target=3D"_blank">=
jarraj400@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div dir=3D"ltr"><div><div><div>I got this error when i do bitbake rpi-hwu=
p-image<br></div>I suspect error come from mcopy .....<br></div>how to reco=
ver this error<br></div>MACHINE ?=3D&quot;raspberry pi&quot;<br><div><div><=
div><div><br><div><br>NOTE: Preparing RunQueue<br>NOTE: Executing SetScene =
Tasks<br>NOTE: Executing RunQueue Tasks<br>ERROR: Error: The image creation=
 script &#39;/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/t=
mp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_im=
age.rpi-sdimg&#39; returned 1:<br>Creating filesystem with Boot partition 2=
0480 KiB and RootFS 77824 KiB<br>0+0 records in<br>0+0 records out<br>0 byt=
es (0 B) copied, 7.4427e-05 s, 0.0 kB/s<br>Model:=C2=A0 (file)<br>Disk /hom=
e/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/=
raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg: 105=
MB<br>Sector size (logical/physical): 512B/512B<br>Partition Table: msdos<b=
r>Disk Flags:<br><br>Number=C2=A0 Start=C2=A0=C2=A0 End=C2=A0=C2=A0=C2=A0=
=C2=A0 Size=C2=A0=C2=A0=C2=A0 Type=C2=A0=C2=A0=C2=A0=C2=A0 File system=C2=
=A0 Flags<br>=C2=A01=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4194kB=C2=A0 25.2MB=C2=
=A0 21.0MB=C2=A0 primary=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 boot, lba<br>=C2=A02=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 25.2MB=C2=A0 105MB=C2=A0=C2=A0 79.7MB=C2=A0 primary<br><br>mkfs.v=
fat 2.11 (12 Mar 2005)<br>Disk full<br></div></div></div></div></div></div>=
</blockquote><div><br></div><div>Make some space for your build.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>=
<div><div>WARNING: /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_b=
uild/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/cre=
ate_image.rpi-sdimg:1 exit 1 from<br>=C2=A0 mcopy -i /home/raj/Projects/ras=
pberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnue=
abi/rpi-hwup-image/1.0-r0/boot.img -s /home/raj/Projects/raspberry_pi/yacto=
/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin=
 ::kernel.img<br><br>ERROR: Function failed: do_rootfs<br>ERROR: Logfile of=
 failure stored in: /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_=
build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/lo=
g.do_rootfs.13457<br>ERROR: Task 7 (/home/raj/Projects/raspberry_pi/yacto/p=
oky/meta-raspberrypi/recipes-core/images/<a href=3D"http://rpi-hwup-image.b=
b" target=3D"_blank">rpi-hwup-image.bb</a>, do_rootfs) failed with exit cod=
e &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 di=
dn&#39;t need to be rerun and 1 failed.<br>No currently running tasks (1953=
 of 1955)<br><br>Summary: 1 task failed:<br>=C2=A0 /home/raj/Projects/raspb=
erry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<a href=3D"http://r=
pi-hwup-image.bb" target=3D"_blank">rpi-hwup-image.bb</a>, do_rootfs<br>Sum=
mary: There were 2 ERROR messages shown, returning a non-zero exit code.<br=
><br><div><div dir=3D"ltr"><br><div><br></div></div></div>
</div></div></div></div></div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--001a11c3ccd2bf3cb30523b3a9ab--
