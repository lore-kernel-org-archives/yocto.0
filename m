Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01C60E006F3; Wed, 11 Nov 2015 17:56:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,URIBL_JP_SURBL autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FA8AE0049B
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 17:56:53 -0800 (PST)
Received: by lfdo63 with SMTP id o63so26128522lfd.2
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 17:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan_ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=kZ1gHezyBur6Njscs+TcQdGqR0n7VN47JOBld8lIelA=;
	b=VIBgdghCVYlQF+xMqSk+NpCH4fG3jU6h7yfClXUAH03NjZ9Kt8yJT+XwkCo/OxK2Ir
	iEe1IBb7BsCiiNO3eLbgjGNaOcUsNobmdA+9c21RtoPnVR8jnpwX89EOKVeIBwiecdth
	VOsL+kmBj5dz1/Kv+Klu7Rnc1JZNczv9K3n69187OtG3f8+xzcD1B+kTzYV+nIpIX05Q
	a/NV4OEIjjpRxzB8r04r8Q+8huyBBq2DN2VpUf558xbCsUuYxq0mtl58L1XbYUuryFya
	NnzS+kFJcvNlKyOUAly0Nsi0olJOH8qjdc0eDs52jnwZ5wB/wJt3o2SCLY2bKIkwH+WG
	3QCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=kZ1gHezyBur6Njscs+TcQdGqR0n7VN47JOBld8lIelA=;
	b=fgGkWEo67Zsu+OD/+9ZPWLqYnR6uZlOZ2ppKTQyV5xDaJvCO7WkZIgx5a3LamMLtdr
	JhMMbwJzL76CDd1C9iA+xt2pqEmLJs0LrL2YjoM42hQzMQRNmW+c07yrZWNZnnPuzjdO
	jCr32c7fMhh0erg6TI1Djf8jQzr5j8feZPhHd22whre/Wz5aWwLi/90lNjqThdwUJgf8
	leqWIpUVkXGLOIwU88MnByDZFyfJKKrjyU6tJu9TuRLl2yPZY3LNrK98013GJkQ1376h
	ohClLR4goKFKVE635YtTcPZ2FEC/JY3+GCEx16KUiXFPVm3y9zAVNsQF43kGEtr0s60f
	aoBg==
X-Gm-Message-State: ALoCoQkK3vH35QRMhHlBZ6bfha8lif4d2EC7hqUhoTF2TP25hkged0BmtjB7GfHgQtU1eL5Gl9ZF
X-Received: by 10.25.26.210 with SMTP id a201mr6049326lfa.58.1447293412748;
	Wed, 11 Nov 2015 17:56:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.61.195 with HTTP; Wed, 11 Nov 2015 17:56:13 -0800 (PST)
X-Originating-IP: [92.217.115.210]
In-Reply-To: <1002375979.2579827.1447249649366.JavaMail.yahoo@mail.yahoo.com>
References: <mailman.5837.1447248421.7199.yocto@yoctoproject.org>
	<1002375979.2579827.1447249649366.JavaMail.yahoo@mail.yahoo.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 12 Nov 2015 02:56:13 +0100
Message-ID: <CAK18fxFigFmxTiQZxPivvHeqJmWf5G4VjJB_QvMRqghUGxeZxQ@mail.gmail.com>
To: Edward Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"jarraj400@gmail.com" <jarraj400@gmail.com>
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
X-List-Received-Date: Thu, 12 Nov 2015 01:56:58 -0000
Content-Type: multipart/alternative; boundary=001a11402062c0c3dc05244e4155

--001a11402062c0c3dc05244e4155
Content-Type: text/plain; charset=UTF-8

--
Andrei Gherzan

On Wed, Nov 11, 2015 at 2:47 PM, Edward Vidal <develone@sbcglobal.net>
wrote:

> Hi Raj,
> This works for me.
>
>
Just tested as well and it works for me too. I'm not saying this to get out
of the situation but it's just that I don't have any leads. So again, do
you have any local modifications?


> I first do bitbake core-image-sato.
>
> I first delete all partitions from the SD card using fdisk /dev/sdx as
> user root or sudo.
> where x is what I see using fdisk -l for the SD card as user root or sudo.
> Then I use the following command
> "dd
> if=tmp/deploy/images/raspberrypi2/core-image-sato-raspberrypi2.rpi-sdimg |
> pv | sudo dd of=/dev/sdb bs=16M"
> as user root or sudo.
> Hope this helps.
> Cheers,
>
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
>
>
>
> On Wednesday, November 11, 2015 6:28 AM, "yocto-request@yoctoproject.org"
> <yocto-request@yoctoproject.org> wrote:
>
>
> Send yocto mailing list submissions to
>     yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>     https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>     yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>     yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>   1. Re: raspberry pi do rootfs (Raj Jar)
>   2. external-toolchain (Virgilia  Eigner)
>   3. Re: external-toolchain (Virgilia  Eigner)
>   4. Re: raspberry pi do rootfs (Andrei Gherzan)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Wed, 11 Nov 2015 13:39:02 +0530
> From: Raj Jar <jarraj400@gmail.com>
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] raspberry pi do rootfs
> Message-ID:
>     <CAK3ATuHc9C4T6mF-m8J=CuMWu=QJGtBOVvLbTYae-HgLS1uZFw@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hi All,
>
> I have 60GB space in my build system still i face
>
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Error: The image creation script
>
> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
> returned 1:
> Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> 0+0 records in
> 0+0 records out
> 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> Model:  (file)
> Disk
>
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
> 105MB
> Sector size (logical/physical): 512B/512B
> Partition Table: msdos
> Disk Flags:
>
> Number  Start  End    Size    Type    File system  Flags
> 1      4194kB  25.2MB  21.0MB  primary              boot, lba
> 2      25.2MB  105MB  79.7MB  primary
>
> mkfs.vfat 2.11 (12 Mar 2005)
> Disk full
> WARNING:
>
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
> exit 1 from
>   mcopy -i
>
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
> -s
>
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
> ::kernel.img
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
>
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> ERROR: Task 7
>
> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
> rerun and 1 failed.
> No currently running tasks (1953 of 1955)
>
> Summary: 1 task failed:
>
>
> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> rpi-hwup-image.bb, do_rootfs
>
>
> On Tue, Nov 3, 2015 at 10:17 AM, Raj Jar <jarraj400@gmail.com> wrote:
>
> > I got this error when i do bitbake rpi-hwup-image
> > I suspect error come from mcopy .....
> > how to recover this error
> > MACHINE ?="raspberry pi"
> >
> >
> > NOTE: Preparing RunQueue
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > ERROR: Error: The image creation script
> >
> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
> > returned 1:
> > Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> > 0+0 records in
> > 0+0 records out
> > 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> > Model:  (file)
> > Disk
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
> > 105MB
> > Sector size (logical/physical): 512B/512B
> > Partition Table: msdos
> > Disk Flags:
> >
> > Number  Start  End    Size    Type    File system  Flags
> >  1      4194kB  25.2MB  21.0MB  primary              boot, lba
> >  2      25.2MB  105MB  79.7MB  primary
> >
> > mkfs.vfat 2.11 (12 Mar 2005)
> > Disk full
> > WARNING:
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
> > exit 1 from
> >  mcopy -i
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
> > -s
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
> > ::kernel.img
> >
> > ERROR: Function failed: do_rootfs
> > ERROR: Logfile of failure stored in:
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> > ERROR: Task 7
> >
> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> > rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
> > rerun and 1 failed.
> > No currently running tasks (1953 of 1955)
> >
> > Summary: 1 task failed:
> >
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> > rpi-hwup-image.bb, do_rootfs
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
> >
> >
> >
> >
>
>
> --
> Regards,
> RAJ M
> Mob. # +91-9597208150
>
>
> Have a great day ahead.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20151111/e9980713/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 2
> Date: Wed, 11 Nov 2015 09:46:40 +0100
> From: "Virgilia  Eigner" <Virgi200@gmx.de>
> To: yocto@yoctoproject.org
> Subject: [yocto] external-toolchain
> Message-ID:
>     <
> trinity-9b9a7186-a9d1-4ea3-a628-7a1e1e41e541-1447231599946@3capp-gmx-bs64>
>
> Content-Type: text/plain; charset="us-ascii"
>
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20151111/fae1db0e/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 3
> Date: Wed, 11 Nov 2015 11:51:07 +0100
> From: "Virgilia  Eigner" <Virgi200@gmx.de>
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] external-toolchain
> Message-ID:
>     <
> trinity-4efc8622-e589-495f-82a5-acd54dc7dfca-1447239067296@3capp-gmx-bs64>
>
> Content-Type: text/plain; charset="us-ascii"
>
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20151111/9f3b6208/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 4
> Date: Wed, 11 Nov 2015 14:26:16 +0100
> From: Andrei Gherzan <andrei@gherzan.ro>
> To: Raj Jar <jarraj400@gmail.com>
> Cc: Yocto Project <yocto@yoctoproject.org>
> Subject: Re: [yocto] raspberry pi do rootfs
> Message-ID:
>     <CAK18fxF6D9+8_VNyZEJhud1Rqz_Fs6nmZTgpbTwqF-e-fjn8iQ@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
>
> --
> Andrei Gherzan
>
> On Wed, Nov 11, 2015 at 9:09 AM, Raj Jar <jarraj400@gmail.com> wrote:
>
> > Hi All,
> >
> > I have 60GB space in my build system still i face
> >
> >
> Do you have any custom modifications or so. It seems like the fat partition
> is not big enough for what you write in. What poky/meta-rpi are you using?
>
>
> >
> > NOTE: Preparing RunQueue
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > ERROR: Error: The image creation script
> >
> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
> > returned 1:
> > Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> > 0+0 records in
> > 0+0 records out
> > 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> > Model:  (file)
> > Disk
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
> > 105MB
> > Sector size (logical/physical): 512B/512B
> > Partition Table: msdos
> > Disk Flags:
> >
> > Number  Start  End    Size    Type    File system  Flags
> >  1      4194kB  25.2MB  21.0MB  primary              boot, lba
> >  2      25.2MB  105MB  79.7MB  primary
> >
> > mkfs.vfat 2.11 (12 Mar 2005)
> > Disk full
> > WARNING:
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
> > exit 1 from
> >  mcopy -i
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
> > -s
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
> > ::kernel.img
> >
> > ERROR: Function failed: do_rootfs
> > ERROR: Logfile of failure stored in:
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> > ERROR: Task 7
> >
> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> > rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
> > rerun and 1 failed.
> > No currently running tasks (1953 of 1955)
> >
> > Summary: 1 task failed:
> >
> >
> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> > rpi-hwup-image.bb, do_rootfs
> >
> >
> > On Tue, Nov 3, 2015 at 10:17 AM, Raj Jar <jarraj400@gmail.com> wrote:
> >
> >> I got this error when i do bitbake rpi-hwup-image
> >> I suspect error come from mcopy .....
> >> how to recover this error
> >> MACHINE ?="raspberry pi"
> >>
> >>
> >> NOTE: Preparing RunQueue
> >> NOTE: Executing SetScene Tasks
> >> NOTE: Executing RunQueue Tasks
> >> ERROR: Error: The image creation script
> >>
> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'
> >> returned 1:
> >> Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> >> 0+0 records in
> >> 0+0 records out
> >> 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> >> Model:  (file)
> >> Disk
> >>
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
> >> 105MB
> >> Sector size (logical/physical): 512B/512B
> >> Partition Table: msdos
> >> Disk Flags:
> >>
> >> Number  Start  End    Size    Type    File system  Flags
> >>  1      4194kB  25.2MB  21.0MB  primary              boot, lba
> >>  2      25.2MB  105MB  79.7MB  primary
> >>
> >> mkfs.vfat 2.11 (12 Mar 2005)
> >> Disk full
> >> WARNING:
> >>
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1
> >> exit 1 from
> >>  mcopy -i
> >>
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
> >> -s
> >>
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin
> >> ::kernel.img
> >>
> >> ERROR: Function failed: do_rootfs
> >> ERROR: Logfile of failure stored in:
> >>
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> >> ERROR: Task 7
> >>
> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> >> rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
> >> NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to
> be
> >> rerun and 1 failed.
> >> No currently running tasks (1953 of 1955)
> >>
> >> Summary: 1 task failed:
> >>
> >>
> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/
> >> rpi-hwup-image.bb, do_rootfs
> >> Summary: There were 2 ERROR messages shown, returning a non-zero exit
> >> code.
> >>
> >>
> >>
> >>
> >
> >
> > --
> > Regards,
> > RAJ M
> > Mob. # +91-9597208150
> >
> >
> > Have a great day ahead.
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20151111/6a216dee/attachment.html
> >
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 62, Issue 39
> *************************************
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

--001a11402062c0c3dc05244e4155
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br clear=3D"all"><div><div=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>--</=
div>Andrei Gherzan</div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Nov 11, 2015 at 2:47 PM, Edward Vida=
l <span dir=3D"ltr">&lt;<a href=3D"mailto:develone@sbcglobal.net" target=3D=
"_blank">develone@sbcglobal.net</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div><div style=3D"color:#000;background-color:#fff;font-fami=
ly:HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif;fo=
nt-size:16px"><div dir=3D"ltr">Hi Raj,</div><div dir=3D"ltr">This works for=
 me.</div><div dir=3D"ltr"><br></div></div></div></blockquote><div><br></di=
v><div>Just tested as well and it works for me too. I&#39;m not saying this=
 to get out of the situation but it&#39;s just that I don&#39;t have any le=
ads. So again, do you have any local modifications?</div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div><div style=3D"color:#000;background-colo=
r:#fff;font-family:HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Gran=
de,sans-serif;font-size:16px"><div dir=3D"ltr"></div><div dir=3D"ltr">I fir=
st do bitbake core-image-sato.<br></div><div><div>=C2=A0</div><div dir=3D"l=
tr">I first delete all partitions from the SD card using fdisk /dev/sdx as =
user root or sudo.</div><div dir=3D"ltr">where x is what I see using fdisk =
-l for the SD card as user root or sudo.<br></div><div>Then I use the follo=
wing command</div><div dir=3D"ltr">&quot;dd if=3Dtmp/deploy/images/raspberr=
ypi2/core-image-sato-raspberrypi2.rpi-sdimg | pv | sudo dd of=3D/dev/sdb bs=
=3D16M&quot;</div><div dir=3D"ltr">as user root or sudo.</div><div dir=3D"l=
tr">Hope this helps.</div><div dir=3D"ltr">Cheers,<br></div><div dir=3D"ltr=
"><br></div></div><div>Edward Vidal Jr. e-mail <a href=3D"mailto:develone@s=
bcglobal.net" target=3D"_blank">develone@sbcglobal.net</a> 915-595-1613</di=
v>  <br><div><br><br></div><div style=3D"display:block"> <div style=3D"font=
-family:HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-ser=
if;font-size:16px"> <div style=3D"font-family:HelveticaNeue,Helvetica Neue,=
Helvetica,Arial,Lucida Grande,sans-serif;font-size:16px"> <div dir=3D"ltr">=
 <font size=3D"2" face=3D"Arial"> On Wednesday, November 11, 2015 6:28 AM, =
&quot;<a href=3D"mailto:yocto-request@yoctoproject.org" target=3D"_blank">y=
octo-request@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto-request=
@yoctoproject.org" target=3D"_blank">yocto-request@yoctoproject.org</a>&gt;=
 wrote:<br> </font> </div>  <br><br> <div>Send yocto mailing list submissio=
ns to<br>=C2=A0=C2=A0=C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a><br><br>To subscribe or unsubscribe =
via the World Wide Web, visit<br>=C2=A0=C2=A0=C2=A0 <a href=3D"https://list=
s.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctopro=
ject.org/listinfo/yocto</a><br>or, via email, send a message with subject o=
r body &#39;help&#39; to<br>=C2=A0=C2=A0=C2=A0 <a href=3D"mailto:yocto-requ=
est@yoctoproject.org" target=3D"_blank">yocto-request@yoctoproject.org</a><=
br><br>You can reach the person managing the list at<br>=C2=A0=C2=A0=C2=A0 =
<a href=3D"mailto:yocto-owner@yoctoproject.org" target=3D"_blank">yocto-own=
er@yoctoproject.org</a><br><br>When replying, please edit your Subject line=
 so it is more specific<br>than &quot;Re: Contents of yocto digest...&quot;=
<br><br><br>Today&#39;s Topics:<br><br>=C2=A0  1. Re: raspberry pi do rootf=
s (Raj Jar)<br>=C2=A0  2. external-toolchain (Virgilia=C2=A0 Eigner)<br>=C2=
=A0  3. Re: external-toolchain (Virgilia=C2=A0 Eigner)<br>=C2=A0  4. Re: ra=
spberry pi do rootfs (Andrei Gherzan)<br><br><br>--------------------------=
--------------------------------------------<br><br>Message: 1<br>Date: Wed=
, 11 Nov 2015 13:39:02 +0530<br>From: Raj Jar &lt;<a href=3D"mailto:jarraj4=
00@gmail.com" target=3D"_blank">jarraj400@gmail.com</a>&gt;<br>To: <a href=
=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org=
</a><br>Subject: Re: [yocto] raspberry pi do rootfs<br>Message-ID:<br>=C2=
=A0=C2=A0=C2=A0 &lt;CAK3ATuHc9C4T6mF-m8J=3DCuMWu=3D<a href=3D"mailto:QJGtBO=
VvLbTYae-HgLS1uZFw@mail.gmail.com" target=3D"_blank">QJGtBOVvLbTYae-HgLS1uZ=
Fw@mail.gmail.com</a>&gt;<br>Content-Type: text/plain; charset=3D&quot;utf-=
8&quot;<span class=3D""><br><br>Hi All,<br><br>I have 60GB space in my buil=
d system still i face<br><br><br></span><div><div class=3D"h5">NOTE: Prepar=
ing RunQueue<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue =
Tasks<br>ERROR: Error: The image creation script<br>&#39;/home/raj/Projects=
/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-=
gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg&#39;<br>returned =
1:<br>Creating filesystem with Boot partition 20480 KiB and RootFS 77824 Ki=
B<br>0+0 records in<br>0+0 records out<br>0 bytes (0 B) copied, 7.4427e-05 =
s, 0.0 kB/s<br>Model:=C2=A0 (file)<br>Disk<br>/home/raj/Projects/raspberry_=
pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-imag=
e-raspberrypi-20151102024300.rootfs.rpi-sdimg:<br>105MB<br>Sector size (log=
ical/physical): 512B/512B<br>Partition Table: msdos<br>Disk Flags:<br><br>N=
umber=C2=A0 Start=C2=A0  End=C2=A0 =C2=A0  Size=C2=A0 =C2=A0 Type=C2=A0 =C2=
=A0  File system=C2=A0 Flags<br> 1=C2=A0 =C2=A0 =C2=A0 4194kB=C2=A0 25.2MB=
=C2=A0 21.0MB=C2=A0 primary=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
  boot, lba<br> 2=C2=A0 =C2=A0 =C2=A0 25.2MB=C2=A0 105MB=C2=A0  79.7MB=C2=
=A0 primary<br><br>mkfs.vfat 2.11 (12 Mar 2005)<br>Disk full<br>WARNING:<br=
>/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/rasp=
berrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdim=
g:1<br>exit 1 from<br>=C2=A0 mcopy -i<br>/home/raj/Projects/raspberry_pi/ya=
cto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup=
-image/1.0-r0/boot.img<br>-s<br>/home/raj/Projects/raspberry_pi/yacto/poky/=
raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin<br>::=
kernel.img<br><br>ERROR: Function failed: do_rootfs<br>ERROR: Logfile of fa=
ilure stored in:<br>/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_=
build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/lo=
g.do_rootfs.13457<br>ERROR: Task 7<br>(/home/raj/Projects/raspberry_pi/yact=
o/poky/meta-raspberrypi/recipes-core/images/<br><a href=3D"http://rpi-hwup-=
image.bb" target=3D"_blank">rpi-hwup-image.bb</a>, do_rootfs) failed with e=
xit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 1954 tasks of which =
1953 didn&#39;t need to be<br>rerun and 1 failed.<br>No currently running t=
asks (1953 of 1955)<br><br>Summary: 1 task failed:<br><br>/home/raj/Project=
s/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<br><a href=
=3D"http://rpi-hwup-image.bb" target=3D"_blank">rpi-hwup-image.bb</a>, do_r=
ootfs<br><br><br>On Tue, Nov 3, 2015 at 10:17 AM, Raj Jar &lt;<a href=3D"ma=
ilto:jarraj400@gmail.com" target=3D"_blank">jarraj400@gmail.com</a>&gt; wro=
te:<br><br>&gt; I got this error when i do bitbake rpi-hwup-image<br>&gt; I=
 suspect error come from mcopy .....<br>&gt; how to recover this error<br>&=
gt; MACHINE ?=3D&quot;raspberry pi&quot;<br>&gt;<br>&gt;<br>&gt; NOTE: Prep=
aring RunQueue<br>&gt; NOTE: Executing SetScene Tasks<br>&gt; NOTE: Executi=
ng RunQueue Tasks<br>&gt; ERROR: Error: The image creation script<br>&gt; &=
#39;/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-s=
dimg&#39;<br>&gt; returned 1:<br>&gt; Creating filesystem with Boot partiti=
on 20480 KiB and RootFS 77824 KiB<br>&gt; 0+0 records in<br>&gt; 0+0 record=
s out<br>&gt; 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s<br>&gt; Model:=
=C2=A0 (file)<br>&gt; Disk<br>&gt; /home/raj/Projects/raspberry_pi/yacto/po=
ky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberry=
pi-20151102024300.rootfs.rpi-sdimg:<br>&gt; 105MB<br>&gt; Sector size (logi=
cal/physical): 512B/512B<br>&gt; Partition Table: msdos<br>&gt; Disk Flags:=
<br>&gt;<br>&gt; Number=C2=A0 Start=C2=A0  End=C2=A0 =C2=A0  Size=C2=A0 =C2=
=A0 Type=C2=A0 =C2=A0  File system=C2=A0 Flags<br>&gt;=C2=A0 1=C2=A0 =C2=A0=
 =C2=A0 4194kB=C2=A0 25.2MB=C2=A0 21.0MB=C2=A0 primary=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0  boot, lba<br>&gt;=C2=A0 2=C2=A0 =C2=A0 =C2=A0 =
25.2MB=C2=A0 105MB=C2=A0  79.7MB=C2=A0 primary<br>&gt;<br>&gt; mkfs.vfat 2.=
11 (12 Mar 2005)<br>&gt; Disk full<br>&gt; WARNING:<br>&gt; /home/raj/Proje=
cts/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-lin=
ux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1<br>&gt; exit=
 1 from<br>&gt;=C2=A0  mcopy -i<br>&gt; /home/raj/Projects/raspberry_pi/yac=
to/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-=
image/1.0-r0/boot.img<br>&gt; -s<br>&gt; /home/raj/Projects/raspberry_pi/ya=
cto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.=
bin<br>&gt; ::kernel.img<br>&gt;<br>&gt; ERROR: Function failed: do_rootfs<=
br>&gt; ERROR: Logfile of failure stored in:<br>&gt; /home/raj/Projects/ras=
pberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnue=
abi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457<br>&gt; ERROR: Task 7<br=
>&gt; (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-=
core/images/<br>&gt; <a href=3D"http://rpi-hwup-image.bb" target=3D"_blank"=
>rpi-hwup-image.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<br>&gt=
; NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn&#39;t need t=
o be<br>&gt; rerun and 1 failed.<br>&gt; No currently running tasks (1953 o=
f 1955)<br>&gt;<br>&gt; Summary: 1 task failed:<br>&gt;<br>&gt; /home/raj/P=
rojects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<br></=
div></div><span class=3D"">&gt; <a href=3D"http://rpi-hwup-image.bb" target=
=3D"_blank">rpi-hwup-image.bb</a>, do_rootfs<br>&gt; Summary: There were 2 =
ERROR messages shown, returning a non-zero exit code.<br>&gt;<br>&gt;<br>&g=
t;<br>&gt;<br><br><br>-- <br>Regards,<br>RAJ M<br>Mob. # <a href=3D"tel:%2B=
91-9597208150" value=3D"+919597208150" target=3D"_blank">+91-9597208150</a>=
<br><br><br>Have a great day ahead.<br></span>-------------- next part ----=
----------<br>An HTML attachment was scrubbed...<br>URL: &lt;<a href=3D"htt=
p://lists.yoctoproject.org/pipermail/yocto/attachments/20151111/e9980713/at=
tachment-0001.html" target=3D"_blank">http://lists.yoctoproject.org/piperma=
il/yocto/attachments/20151111/e9980713/attachment-0001.html</a>&gt;<br><br>=
------------------------------<br><br>Message: 2<br>Date: Wed, 11 Nov 2015 =
09:46:40 +0100<br>From: &quot;Virgilia=C2=A0 Eigner&quot; &lt;<a href=3D"ma=
ilto:Virgi200@gmx.de" target=3D"_blank">Virgi200@gmx.de</a>&gt;<br>To: <a h=
ref=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.=
org</a><br>Subject: [yocto] external-toolchain<br>Message-ID:<br>=C2=A0=C2=
=A0=C2=A0 &lt;<a href=3D"mailto:trinity-9b9a7186-a9d1-4ea3-a628-7a1e1e41e54=
1-1447231599946@3capp-gmx-bs64" target=3D"_blank">trinity-9b9a7186-a9d1-4ea=
3-a628-7a1e1e41e541-1447231599946@3capp-gmx-bs64</a>&gt;<br>=C2=A0=C2=A0=C2=
=A0 <br>Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br><br>An =
HTML attachment was scrubbed...<br>URL: &lt;<a href=3D"http://lists.yoctopr=
oject.org/pipermail/yocto/attachments/20151111/fae1db0e/attachment-0001.htm=
l" target=3D"_blank">http://lists.yoctoproject.org/pipermail/yocto/attachme=
nts/20151111/fae1db0e/attachment-0001.html</a>&gt;<br><br>-----------------=
-------------<br><br>Message: 3<br>Date: Wed, 11 Nov 2015 11:51:07 +0100<br=
>From: &quot;Virgilia=C2=A0 Eigner&quot; &lt;<a href=3D"mailto:Virgi200@gmx=
.de" target=3D"_blank">Virgi200@gmx.de</a>&gt;<br>To: <a href=3D"mailto:yoc=
to@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br>Subjec=
t: Re: [yocto] external-toolchain<br>Message-ID:<br>=C2=A0=C2=A0=C2=A0 &lt;=
<a href=3D"mailto:trinity-4efc8622-e589-495f-82a5-acd54dc7dfca-144723906729=
6@3capp-gmx-bs64" target=3D"_blank">trinity-4efc8622-e589-495f-82a5-acd54dc=
7dfca-1447239067296@3capp-gmx-bs64</a>&gt;<br>=C2=A0=C2=A0=C2=A0 <br>Conten=
t-Type: text/plain; charset=3D&quot;us-ascii&quot;<br><br>An HTML attachmen=
t was scrubbed...<br>URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipe=
rmail/yocto/attachments/20151111/9f3b6208/attachment-0001.html" target=3D"_=
blank">http://lists.yoctoproject.org/pipermail/yocto/attachments/20151111/9=
f3b6208/attachment-0001.html</a>&gt;<br><br>------------------------------<=
br><br>Message: 4<br>Date: Wed, 11 Nov 2015 14:26:16 +0100<br>From: Andrei =
Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@g=
herzan.ro</a>&gt;<br>To: Raj Jar &lt;<a href=3D"mailto:jarraj400@gmail.com"=
 target=3D"_blank">jarraj400@gmail.com</a>&gt;<br>Cc: Yocto Project &lt;<a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject=
.org</a>&gt;<br>Subject: Re: [yocto] raspberry pi do rootfs<br>Message-ID:<=
br>=C2=A0=C2=A0=C2=A0 &lt;CAK18fxF6D9+<a href=3D"mailto:8_VNyZEJhud1Rqz_Fs6=
nmZTgpbTwqF-e-fjn8iQ@mail.gmail.com" target=3D"_blank">8_VNyZEJhud1Rqz_Fs6n=
mZTgpbTwqF-e-fjn8iQ@mail.gmail.com</a>&gt;<br>Content-Type: text/plain; cha=
rset=3D&quot;utf-8&quot;<div><div class=3D"h5"><br><br>--<br>Andrei Gherzan=
<br><br>On Wed, Nov 11, 2015 at 9:09 AM, Raj Jar &lt;<a href=3D"mailto:jarr=
aj400@gmail.com" target=3D"_blank">jarraj400@gmail.com</a>&gt; wrote:<br><b=
r>&gt; Hi All,<br>&gt;<br>&gt; I have 60GB space in my build system still i=
 face<br>&gt;<br>&gt;<br>Do you have any custom modifications or so. It see=
ms like the fat partition<br>is not big enough for what you write in. What =
poky/meta-rpi are you using?<br><br><br>&gt;<br>&gt; NOTE: Preparing RunQue=
ue<br>&gt; NOTE: Executing SetScene Tasks<br>&gt; NOTE: Executing RunQueue =
Tasks<br>&gt; ERROR: Error: The image creation script<br>&gt; &#39;/home/ra=
j/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-p=
oky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg&#39;<br=
>&gt; returned 1:<br>&gt; Creating filesystem with Boot partition 20480 KiB=
 and RootFS 77824 KiB<br>&gt; 0+0 records in<br>&gt; 0+0 records out<br>&gt=
; 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s<br>&gt; Model:=C2=A0 (file)<=
br>&gt; Disk<br>&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi=
_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024=
300.rootfs.rpi-sdimg:<br>&gt; 105MB<br>&gt; Sector size (logical/physical):=
 512B/512B<br>&gt; Partition Table: msdos<br>&gt; Disk Flags:<br>&gt;<br>&g=
t; Number=C2=A0 Start=C2=A0  End=C2=A0 =C2=A0  Size=C2=A0 =C2=A0 Type=C2=A0=
 =C2=A0  File system=C2=A0 Flags<br>&gt;=C2=A0 1=C2=A0 =C2=A0 =C2=A0 4194kB=
=C2=A0 25.2MB=C2=A0 21.0MB=C2=A0 primary=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0  boot, lba<br>&gt;=C2=A0 2=C2=A0 =C2=A0 =C2=A0 25.2MB=C2=A0 1=
05MB=C2=A0  79.7MB=C2=A0 primary<br>&gt;<br>&gt; mkfs.vfat 2.11 (12 Mar 200=
5)<br>&gt; Disk full<br>&gt; WARNING:<br>&gt; /home/raj/Projects/raspberry_=
pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi=
-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1<br>&gt; exit 1 from<br>&gt=
;=C2=A0  mcopy -i<br>&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspbe=
rrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/b=
oot.img<br>&gt; -s<br>&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspb=
errypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin<br>&gt; ::=
kernel.img<br>&gt;<br>&gt; ERROR: Function failed: do_rootfs<br>&gt; ERROR:=
 Logfile of failure stored in:<br>&gt; /home/raj/Projects/raspberry_pi/yact=
o/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-i=
mage/1.0-r0/temp/log.do_rootfs.13457<br>&gt; ERROR: Task 7<br>&gt; (/home/r=
aj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<b=
r>&gt; <a href=3D"http://rpi-hwup-image.bb" target=3D"_blank">rpi-hwup-imag=
e.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<br>&gt; NOTE: Tasks =
Summary: Attempted 1954 tasks of which 1953 didn&#39;t need to be<br>&gt; r=
erun and 1 failed.<br>&gt; No currently running tasks (1953 of 1955)<br>&gt=
;<br>&gt; Summary: 1 task failed:<br>&gt;<br>&gt; /home/raj/Projects/raspbe=
rry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<br>&gt; <a href=3D"=
http://rpi-hwup-image.bb" target=3D"_blank">rpi-hwup-image.bb</a>, do_rootf=
s<br>&gt;<br>&gt;<br>&gt; On Tue, Nov 3, 2015 at 10:17 AM, Raj Jar &lt;<a h=
ref=3D"mailto:jarraj400@gmail.com" target=3D"_blank">jarraj400@gmail.com</a=
>&gt; wrote:<br>&gt;<br>&gt;&gt; I got this error when i do bitbake rpi-hwu=
p-image<br>&gt;&gt; I suspect error come from mcopy .....<br>&gt;&gt; how t=
o recover this error<br>&gt;&gt; MACHINE ?=3D&quot;raspberry pi&quot;<br>&g=
t;&gt;<br>&gt;&gt;<br>&gt;&gt; NOTE: Preparing RunQueue<br>&gt;&gt; NOTE: E=
xecuting SetScene Tasks<br>&gt;&gt; NOTE: Executing RunQueue Tasks<br>&gt;&=
gt; ERROR: Error: The image creation script<br>&gt;&gt; &#39;/home/raj/Proj=
ects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-li=
nux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg&#39;<br>&gt;&=
gt; returned 1:<br>&gt;&gt; Creating filesystem with Boot partition 20480 K=
iB and RootFS 77824 KiB<br>&gt;&gt; 0+0 records in<br>&gt;&gt; 0+0 records =
out<br>&gt;&gt; 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s<br>&gt;&gt; Mo=
del:=C2=A0 (file)<br>&gt;&gt; Disk<br>&gt;&gt; /home/raj/Projects/raspberry=
_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-ima=
ge-raspberrypi-20151102024300.rootfs.rpi-sdimg:<br>&gt;&gt; 105MB<br>&gt;&g=
t; Sector size (logical/physical): 512B/512B<br>&gt;&gt; Partition Table: m=
sdos<br>&gt;&gt; Disk Flags:<br>&gt;&gt;<br>&gt;&gt; Number=C2=A0 Start=C2=
=A0  End=C2=A0 =C2=A0  Size=C2=A0 =C2=A0 Type=C2=A0 =C2=A0  File system=C2=
=A0 Flags<br>&gt;&gt;=C2=A0 1=C2=A0 =C2=A0 =C2=A0 4194kB=C2=A0 25.2MB=C2=A0=
 21.0MB=C2=A0 primary=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0  boot=
, lba<br>&gt;&gt;=C2=A0 2=C2=A0 =C2=A0 =C2=A0 25.2MB=C2=A0 105MB=C2=A0  79.=
7MB=C2=A0 primary<br>&gt;&gt;<br>&gt;&gt; mkfs.vfat 2.11 (12 Mar 2005)<br>&=
gt;&gt; Disk full<br>&gt;&gt; WARNING:<br>&gt;&gt; /home/raj/Projects/raspb=
erry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueab=
i/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1<br>&gt;&gt; exit 1 fr=
om<br>&gt;&gt;=C2=A0  mcopy -i<br>&gt;&gt; /home/raj/Projects/raspberry_pi/=
yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hw=
up-image/1.0-r0/boot.img<br>&gt;&gt; -s<br>&gt;&gt; /home/raj/Projects/rasp=
berry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-r=
aspberrypi.bin<br>&gt;&gt; ::kernel.img<br>&gt;&gt;<br>&gt;&gt; ERROR: Func=
tion failed: do_rootfs<br>&gt;&gt; ERROR: Logfile of failure stored in:<br>=
&gt;&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/w=
ork/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs=
.13457<br>&gt;&gt; ERROR: Task 7<br>&gt;&gt; (/home/raj/Projects/raspberry_=
pi/yacto/poky/meta-raspberrypi/recipes-core/images/<br>&gt;&gt; <a href=3D"=
http://rpi-hwup-image.bb" target=3D"_blank">rpi-hwup-image.bb</a>, do_rootf=
s) failed with exit code &#39;1&#39;<br>&gt;&gt; NOTE: Tasks Summary: Attem=
pted 1954 tasks of which 1953 didn&#39;t need to be<br>&gt;&gt; rerun and 1=
 failed.<br>&gt;&gt; No currently running tasks (1953 of 1955)<br>&gt;&gt;<=
br>&gt;&gt; Summary: 1 task failed:<br>&gt;&gt;<br>&gt;&gt; /home/raj/Proje=
cts/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<br></div>=
</div><span class=3D"">&gt;&gt; <a href=3D"http://rpi-hwup-image.bb" target=
=3D"_blank">rpi-hwup-image.bb</a>, do_rootfs<br>&gt;&gt; Summary: There wer=
e 2 ERROR messages shown, returning a non-zero exit<br>&gt;&gt; code.<br>&g=
t;&gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt;<br>&gt;<br>&gt; --<br>&g=
t; Regards,<br>&gt; RAJ M<br>&gt; Mob. # <a href=3D"tel:%2B91-9597208150" v=
alue=3D"+919597208150" target=3D"_blank">+91-9597208150</a><br>&gt;<br>&gt;=
<br>&gt; Have a great day ahead.<br>&gt;<br>&gt;<br>&gt; --<br>&gt; _______=
________________________________________<br>&gt; yocto mailing list<br>&gt;=
 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctopro=
ject.org</a><br>&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yoc=
to" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>=
&gt;<br>&gt;<br></span>-------------- next part --------------<br>An HTML a=
ttachment was scrubbed...<br>URL: &lt;<a href=3D"http://lists.yoctoproject.=
org/pipermail/yocto/attachments/20151111/6a216dee/attachment.html" target=
=3D"_blank">http://lists.yoctoproject.org/pipermail/yocto/attachments/20151=
111/6a216dee/attachment.html</a>&gt;<br><br>------------------------------<=
span class=3D""><br><br>-- <br>____________________________________________=
___<br>yocto mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" targ=
et=3D"_blank">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctop=
roject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org=
/listinfo/yocto</a><br><br><br></span>End of yocto Digest, Vol 62, Issue 39=
<br>*************************************<br><br><br></div>  </div> </div> =
 </div></div></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--001a11402062c0c3dc05244e4155--
