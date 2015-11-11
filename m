Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E74EBE00BB9; Wed, 11 Nov 2015 05:47:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.90.69 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm6.bullet.mail.ne1.yahoo.com (nm6.bullet.mail.ne1.yahoo.com
	[98.138.90.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF2F4E00B4F
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 05:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1447249660; bh=dTCldG6fzAKXoAFkj6HidDfryvq7vqsbUPtXkmOwOO4=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=FTxgQHb/GM4UpQrvawzlXQPulT02m8XECoxH+BQls+FVUhlnG84RMzJh1cEBaai9bSllVMS0fj9aol0UTXzoAjEKnbQ7FytgCQAdKmrz+I/UQ63tMNv3rYCjMrDpPp6ycN4jaYHXryU0VfuNI09aq0IYyOs09Vy7+Ra3t/2u6a5FgkXm71Yj1BrOmal0jss+tcLBfq4zLZBv5oKWx8SKn1wniy8MHlC3cSHD5Nz/1fImRiCjUORWoa9/TlocUy455Pr+s3eqtAEt5bT2mDm//d6d4W5Y/H+GTLuZZfKUXW0O8gbq6F6U9gnn3VPZ7UGRVutySKKv4EOGBYnRxtconQ==
Received: from [98.138.101.128] by nm6.bullet.mail.ne1.yahoo.com with NNFMP;
	11 Nov 2015 13:47:40 -0000
Received: from [98.138.89.175] by tm16.bullet.mail.ne1.yahoo.com with NNFMP;
	11 Nov 2015 13:47:40 -0000
Received: from [127.0.0.1] by omp1031.mail.ne1.yahoo.com with NNFMP;
	11 Nov 2015 13:47:40 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 457619.52921.bm@omp1031.mail.ne1.yahoo.com
X-YMail-OSG: _ZIufUgVM1m02BjtHQr.UjZaphaA0J1Iw5e.0otOiS9FrjCUI1ZhBz3G7p8S8J3
	4XIeHLBBUDs9CWGPWCAfDQc4qq3VNdsJN0OYds_K87uzqhUM9FVFjXYvgFSgbBLAl7KM0gcmUvNI
	R7316KYYpuhsoc7JlT6L_oi3PxPAauLDZ7Q2g6xM6OyT5NpVRp1c6jr6KsxEJnoQWIYv2_A6SUSk
	l7PaeNoeql4zUriLLfaaCw9u5SE7UUT9kXQ3jl.3qB5bl1B8KPxT5pgL4pyTlBJtJYURAZ1j1kWd
	G3C3Qc0TlPYZOE.RWGcd5TWC9yMCoA5FV8e2MjESP0rmOoo0qX0q3nCJ1C0aK_Y_w.qq77W41.eU
	8INTh0DwQLoOxt6wdowzHAfwOohZc4BlevWFe_cMiq.GB.CkxtQcuvzPwoOHmNtagIM6kqm.St.W
	bijQIYuxUEpK6H5eoVSS9TjCB5aIJO7Iig0QDFOmcGwEsfhsHzvpbL_6Ax0El22QCmmtTKH9D1bm
	E0MPLZQHM8ln.QjCnitKYVctsIAw_sTer6gygs5Xg1bK2mHMKC0RLRtf2wElQaDo-
Received: by 98.138.105.214; Wed, 11 Nov 2015 13:47:39 +0000 
Date: Wed, 11 Nov 2015 13:47:29 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1002375979.2579827.1447249649366.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <mailman.5837.1447248421.7199.yocto@yoctoproject.org>
References: <mailman.5837.1447248421.7199.yocto@yoctoproject.org>
MIME-Version: 1.0
Cc: "jarraj400@gmail.com" <jarraj400@gmail.com>
Subject: Re: raspberry pi do rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Nov 2015 13:47:46 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2579826_961093132.1447249649354"

------=_Part_2579826_961093132.1447249649354
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Raj,This works for me.
I first do bitbake core-image-sato.
=C2=A0I first delete all partitions from the SD card using fdisk /dev/sdx a=
s user root or sudo.where x is what I see using fdisk -l for the SD card as=
 user root or sudo.
Then I use the following command"dd if=3Dtmp/deploy/images/raspberrypi2/cor=
e-image-sato-raspberrypi2.rpi-sdimg | pv | sudo dd of=3D/dev/sdb bs=3D16M"a=
s user root or sudo.Hope this helps.Cheers,

Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613=20


     On Wednesday, November 11, 2015 6:28 AM, "yocto-request@yoctoproject.o=
rg" <yocto-request@yoctoproject.org> wrote:
  =20

 Send yocto mailing list submissions to
=C2=A0=C2=A0=C2=A0 yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
=C2=A0=C2=A0=C2=A0 https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
=C2=A0=C2=A0=C2=A0 yocto-request@yoctoproject.org

You can reach the person managing the list at
=C2=A0=C2=A0=C2=A0 yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific
than "Re: Contents of yocto digest..."


Today's Topics:

=C2=A0 1. Re: raspberry pi do rootfs (Raj Jar)
=C2=A0 2. external-toolchain (Virgilia=C2=A0 Eigner)
=C2=A0 3. Re: external-toolchain (Virgilia=C2=A0 Eigner)
=C2=A0 4. Re: raspberry pi do rootfs (Andrei Gherzan)


----------------------------------------------------------------------

Message: 1
Date: Wed, 11 Nov 2015 13:39:02 +0530
From: Raj Jar <jarraj400@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [yocto] raspberry pi do rootfs
Message-ID:
=C2=A0=C2=A0=C2=A0 <CAK3ATuHc9C4T6mF-m8J=3DCuMWu=3DQJGtBOVvLbTYae-HgLS1uZFw=
@mail.gmail.com>
Content-Type: text/plain; charset=3D"utf-8"

Hi All,

I have 60GB space in my build system still i face


NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Error: The image creation script
'/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/rasp=
berrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdim=
g'
returned 1:
Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
0+0 records in
0+0 records out
0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
Model:=C2=A0 (file)
Disk
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/ima=
ges/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:
105MB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number=C2=A0 Start=C2=A0 End=C2=A0 =C2=A0 Size=C2=A0 =C2=A0 Type=C2=A0 =C2=
=A0 File system=C2=A0 Flags
 1=C2=A0 =C2=A0 =C2=A0 4194kB=C2=A0 25.2MB=C2=A0 21.0MB=C2=A0 primary=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 boot, lba
 2=C2=A0 =C2=A0 =C2=A0 25.2MB=C2=A0 105MB=C2=A0 79.7MB=C2=A0 primary

mkfs.vfat 2.11 (12 Mar 2005)
Disk full
WARNING:
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspb=
errypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg=
:1
exit 1 from
=C2=A0 mcopy -i
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspb=
errypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
-s
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/ima=
ges/raspberrypi/Image-raspberrypi.bin
::kernel.img

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspb=
errypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
ERROR: Task 7
(/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/i=
mages/
rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
rerun and 1 failed.
No currently running tasks (1953 of 1955)

Summary: 1 task failed:

/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/im=
ages/
rpi-hwup-image.bb, do_rootfs


On Tue, Nov 3, 2015 at 10:17 AM, Raj Jar <jarraj400@gmail.com> wrote:

> I got this error when i do bitbake rpi-hwup-image
> I suspect error come from mcopy .....
> how to recover this error
> MACHINE ?=3D"raspberry pi"
>
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Error: The image creation script
> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ra=
spberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sd=
img'
> returned 1:
> Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> 0+0 records in
> 0+0 records out
> 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> Model:=C2=A0 (file)
> Disk
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/i=
mages/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdim=
g:
> 105MB
> Sector size (logical/physical): 512B/512B
> Partition Table: msdos
> Disk Flags:
>
> Number=C2=A0 Start=C2=A0 End=C2=A0 =C2=A0 Size=C2=A0 =C2=A0 Type=C2=A0 =
=C2=A0 File system=C2=A0 Flags
>=C2=A0 1=C2=A0 =C2=A0 =C2=A0 4194kB=C2=A0 25.2MB=C2=A0 21.0MB=C2=A0 primar=
y=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 boot, lba
>=C2=A0 2=C2=A0 =C2=A0 =C2=A0 25.2MB=C2=A0 105MB=C2=A0 79.7MB=C2=A0 primary
>
> mkfs.vfat 2.11 (12 Mar 2005)
> Disk full
> WARNING:
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ras=
pberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdi=
mg:1
> exit 1 from
>=C2=A0 mcopy -i
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ras=
pberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
> -s
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/i=
mages/raspberrypi/Image-raspberrypi.bin
> ::kernel.img
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ras=
pberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> ERROR: Task 7
> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core=
/images/
> rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
> rerun and 1 failed.
> No currently running tasks (1953 of 1955)
>
> Summary: 1 task failed:
>
> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/=
images/
> rpi-hwup-image.bb, do_rootfs
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
>
>
>


--=20
Regards,
RAJ M
Mob. # +91-9597208150


Have a great day ahead.
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20151111/e9=
980713/attachment-0001.html>

------------------------------

Message: 2
Date: Wed, 11 Nov 2015 09:46:40 +0100
From: "Virgilia=C2=A0 Eigner" <Virgi200@gmx.de>
To: yocto@yoctoproject.org
Subject: [yocto] external-toolchain
Message-ID:
=C2=A0=C2=A0=C2=A0 <trinity-9b9a7186-a9d1-4ea3-a628-7a1e1e41e541-1447231599=
946@3capp-gmx-bs64>
=C2=A0=C2=A0=C2=A0=20
Content-Type: text/plain; charset=3D"us-ascii"

An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20151111/fa=
e1db0e/attachment-0001.html>

------------------------------

Message: 3
Date: Wed, 11 Nov 2015 11:51:07 +0100
From: "Virgilia=C2=A0 Eigner" <Virgi200@gmx.de>
To: yocto@yoctoproject.org
Subject: Re: [yocto] external-toolchain
Message-ID:
=C2=A0=C2=A0=C2=A0 <trinity-4efc8622-e589-495f-82a5-acd54dc7dfca-1447239067=
296@3capp-gmx-bs64>
=C2=A0=C2=A0=C2=A0=20
Content-Type: text/plain; charset=3D"us-ascii"

An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20151111/9f=
3b6208/attachment-0001.html>

------------------------------

Message: 4
Date: Wed, 11 Nov 2015 14:26:16 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Raj Jar <jarraj400@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto] raspberry pi do rootfs
Message-ID:
=C2=A0=C2=A0=C2=A0 <CAK18fxF6D9+8_VNyZEJhud1Rqz_Fs6nmZTgpbTwqF-e-fjn8iQ@mai=
l.gmail.com>
Content-Type: text/plain; charset=3D"utf-8"

--
Andrei Gherzan

On Wed, Nov 11, 2015 at 9:09 AM, Raj Jar <jarraj400@gmail.com> wrote:

> Hi All,
>
> I have 60GB space in my build system still i face
>
>
Do you have any custom modifications or so. It seems like the fat partition
is not big enough for what you write in. What poky/meta-rpi are you using?


>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Error: The image creation script
> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ra=
spberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sd=
img'
> returned 1:
> Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> 0+0 records in
> 0+0 records out
> 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> Model:=C2=A0 (file)
> Disk
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/i=
mages/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdim=
g:
> 105MB
> Sector size (logical/physical): 512B/512B
> Partition Table: msdos
> Disk Flags:
>
> Number=C2=A0 Start=C2=A0 End=C2=A0 =C2=A0 Size=C2=A0 =C2=A0 Type=C2=A0 =
=C2=A0 File system=C2=A0 Flags
>=C2=A0 1=C2=A0 =C2=A0 =C2=A0 4194kB=C2=A0 25.2MB=C2=A0 21.0MB=C2=A0 primar=
y=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 boot, lba
>=C2=A0 2=C2=A0 =C2=A0 =C2=A0 25.2MB=C2=A0 105MB=C2=A0 79.7MB=C2=A0 primary
>
> mkfs.vfat 2.11 (12 Mar 2005)
> Disk full
> WARNING:
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ras=
pberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdi=
mg:1
> exit 1 from
>=C2=A0 mcopy -i
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ras=
pberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
> -s
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/i=
mages/raspberrypi/Image-raspberrypi.bin
> ::kernel.img
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ras=
pberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> ERROR: Task 7
> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core=
/images/
> rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be
> rerun and 1 failed.
> No currently running tasks (1953 of 1955)
>
> Summary: 1 task failed:
>
> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/=
images/
> rpi-hwup-image.bb, do_rootfs
>
>
> On Tue, Nov 3, 2015 at 10:17 AM, Raj Jar <jarraj400@gmail.com> wrote:
>
>> I got this error when i do bitbake rpi-hwup-image
>> I suspect error come from mcopy .....
>> how to recover this error
>> MACHINE ?=3D"raspberry pi"
>>
>>
>> NOTE: Preparing RunQueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> ERROR: Error: The image creation script
>> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-s=
dimg'
>> returned 1:
>> Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
>> 0+0 records in
>> 0+0 records out
>> 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
>> Model:=C2=A0 (file)
>> Disk
>> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/=
images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdi=
mg:
>> 105MB
>> Sector size (logical/physical): 512B/512B
>> Partition Table: msdos
>> Disk Flags:
>>
>> Number=C2=A0 Start=C2=A0 End=C2=A0 =C2=A0 Size=C2=A0 =C2=A0 Type=C2=A0 =
=C2=A0 File system=C2=A0 Flags
>>=C2=A0 1=C2=A0 =C2=A0 =C2=A0 4194kB=C2=A0 25.2MB=C2=A0 21.0MB=C2=A0 prima=
ry=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 boot, lba
>>=C2=A0 2=C2=A0 =C2=A0 =C2=A0 25.2MB=C2=A0 105MB=C2=A0 79.7MB=C2=A0 primar=
y
>>
>> mkfs.vfat 2.11 (12 Mar 2005)
>> Disk full
>> WARNING:
>> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ra=
spberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sd=
img:1
>> exit 1 from
>>=C2=A0 mcopy -i
>> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ra=
spberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img
>> -s
>> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/=
images/raspberrypi/Image-raspberrypi.bin
>> ::kernel.img
>>
>> ERROR: Function failed: do_rootfs
>> ERROR: Logfile of failure stored in:
>> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ra=
spberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
>> ERROR: Task 7
>> (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-cor=
e/images/
>> rpi-hwup-image.bb, do_rootfs) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to b=
e
>> rerun and 1 failed.
>> No currently running tasks (1953 of 1955)
>>
>> Summary: 1 task failed:
>>
>> /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core=
/images/
>> rpi-hwup-image.bb, do_rootfs
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>> code.
>>
>>
>>
>>
>
>
> --
> Regards,
> RAJ M
> Mob. # +91-9597208150
>
>
> Have a great day ahead.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20151111/6a=
216dee/attachment.html>

------------------------------

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 62, Issue 39
*************************************


  

------=_Part_2579826_961093132.1447249649354
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_144724853062=
3_4291">Hi Raj,</div><div id=3D"yui_3_16_0_1_1447248530623_5194" dir=3D"ltr=
">This works for me.</div><div id=3D"yui_3_16_0_1_1447248530623_5247" dir=
=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1447248530623_5192" dir=3D"ltr">=
I first do bitbake core-image-sato.<br></div><div id=3D"yui_3_16_0_1_144724=
8530623_4279"><div id=3D"yui_3_16_0_1_1447248530623_4294">&nbsp;</div><div =
dir=3D"ltr" id=3D"yui_3_16_0_1_1447248530623_4306">I first delete all parti=
tions from the SD card using fdisk /dev/sdx as user root or sudo.</div><div=
 id=3D"yui_3_16_0_1_1447248530623_5412" dir=3D"ltr">where x is what I see u=
sing fdisk -l for the SD card as user root or sudo.<br></div><div id=3D"yui=
_3_16_0_1_1447248530623_4470">Then I use the following command</div><div di=
r=3D"ltr" id=3D"yui_3_16_0_1_1447248530623_4552">"dd if=3Dtmp/deploy/images=
/raspberrypi2/core-image-sato-raspberrypi2.rpi-sdimg | pv | sudo dd of=3D/d=
ev/sdb bs=3D16M"</div><div id=3D"yui_3_16_0_1_1447248530623_4705" dir=3D"lt=
r">as user root or sudo.</div><div id=3D"yui_3_16_0_1_1447248530623_4704" d=
ir=3D"ltr">Hope this helps.</div><div id=3D"yui_3_16_0_1_1447248530623_5621=
" dir=3D"ltr">Cheers,<br></div><div id=3D"yui_3_16_0_1_1447248530623_4651" =
dir=3D"ltr"><br></div></div><div id=3D"yui_3_16_0_1_1447248530623_4278" cla=
ss=3D"signature">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-161=
3</div>  <br><div class=3D"qtdSeparateBR"><br><br></div><div style=3D"displ=
ay: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeu=
e, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: =
16px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica=
, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"> <f=
ont size=3D"2" face=3D"Arial"> On Wednesday, November 11, 2015 6:28 AM, "yo=
cto-request@yoctoproject.org" &lt;yocto-request@yoctoproject.org&gt; wrote:=
<br> </font> </div>  <br><br> <div class=3D"y_msg_container">Send yocto mai=
ling list submissions to<br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"mailto:yocto@y=
octoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br><br>To subscribe or unsubscribe via the World Wide Web, visit<br=
>&nbsp;&nbsp;&nbsp; <a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>o=
r, via email, send a message with subject or body 'help' to<br>&nbsp;&nbsp;=
&nbsp; <a ymailto=3D"mailto:yocto-request@yoctoproject.org" href=3D"mailto:=
yocto-request@yoctoproject.org">yocto-request@yoctoproject.org</a><br><br>Y=
ou can reach the person managing the list at<br>&nbsp;&nbsp;&nbsp; <a ymail=
to=3D"mailto:yocto-owner@yoctoproject.org" href=3D"mailto:yocto-owner@yocto=
project.org">yocto-owner@yoctoproject.org</a><br><br>When replying, please =
edit your Subject line so it is more specific<br>than "Re: Contents of yoct=
o digest..."<br><br><br>Today's Topics:<br><br>&nbsp;  1. Re: raspberry pi =
do rootfs (Raj Jar)<br>&nbsp;  2. external-toolchain (Virgilia&nbsp; Eigner=
)<br>&nbsp;  3. Re: external-toolchain (Virgilia&nbsp; Eigner)<br>&nbsp;  4=
. Re: raspberry pi do rootfs (Andrei Gherzan)<br><br><br>------------------=
----------------------------------------------------<br><br>Message: 1<br>D=
ate: Wed, 11 Nov 2015 13:39:02 +0530<br>From: Raj Jar &lt;<a ymailto=3D"mai=
lto:jarraj400@gmail.com" href=3D"mailto:jarraj400@gmail.com">jarraj400@gmai=
l.com</a>&gt;<br>To: <a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"m=
ailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>Subject: Re: [y=
octo] raspberry pi do rootfs<br>Message-ID:<br>&nbsp;&nbsp;&nbsp; &lt;CAK3A=
TuHc9C4T6mF-m8J=3DCuMWu=3D<a ymailto=3D"mailto:QJGtBOVvLbTYae-HgLS1uZFw@mai=
l.gmail.com" href=3D"mailto:QJGtBOVvLbTYae-HgLS1uZFw@mail.gmail.com">QJGtBO=
VvLbTYae-HgLS1uZFw@mail.gmail.com</a>&gt;<br>Content-Type: text/plain; char=
set=3D"utf-8"<br><br>Hi All,<br><br>I have 60GB space in my build system st=
ill i face<br><br><br>NOTE: Preparing RunQueue<br>NOTE: Executing SetScene =
Tasks<br>NOTE: Executing RunQueue Tasks<br>ERROR: Error: The image creation=
 script<br>'/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tm=
p/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_ima=
ge.rpi-sdimg'<br>returned 1:<br>Creating filesystem with Boot partition 204=
80 KiB and RootFS 77824 KiB<br>0+0 records in<br>0+0 records out<br>0 bytes=
 (0 B) copied, 7.4427e-05 s, 0.0 kB/s<br>Model:&nbsp; (file)<br>Disk<br>/ho=
me/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images=
/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg:<br=
>105MB<br>Sector size (logical/physical): 512B/512B<br>Partition Table: msd=
os<br>Disk Flags:<br><br>Number&nbsp; Start&nbsp;  End&nbsp; &nbsp;  Size&n=
bsp; &nbsp; Type&nbsp; &nbsp;  File system&nbsp; Flags<br> 1&nbsp; &nbsp; &=
nbsp; 4194kB&nbsp; 25.2MB&nbsp; 21.0MB&nbsp; primary&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp;  boot, lba<br> 2&nbsp; &nbsp; &nbsp; 25.2MB&nbsp;=
 105MB&nbsp;  79.7MB&nbsp; primary<br><br>mkfs.vfat 2.11 (12 Mar 2005)<br>D=
isk full<br>WARNING:<br>/home/raj/Projects/raspberry_pi/yacto/poky/raspberr=
ypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/tem=
p/create_image.rpi-sdimg:1<br>exit 1 from<br>&nbsp; mcopy -i<br>/home/raj/P=
rojects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky=
-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img<br>-s<br>/home/raj/Projects/r=
aspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Imag=
e-raspberrypi.bin<br>::kernel.img<br><br>ERROR: Function failed: do_rootfs<=
br>ERROR: Logfile of failure stored in:<br>/home/raj/Projects/raspberry_pi/=
yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hw=
up-image/1.0-r0/temp/log.do_rootfs.13457<br>ERROR: Task 7<br>(/home/raj/Pro=
jects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<br>rpi-=
hwup-image.bb, do_rootfs) failed with exit code '1'<br>NOTE: Tasks Summary:=
 Attempted 1954 tasks of which 1953 didn't need to be<br>rerun and 1 failed=
.<br>No currently running tasks (1953 of 1955)<br><br>Summary: 1 task faile=
d:<br><br>/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recip=
es-core/images/<br>rpi-hwup-image.bb, do_rootfs<br><br><br>On Tue, Nov 3, 2=
015 at 10:17 AM, Raj Jar &lt;<a ymailto=3D"mailto:jarraj400@gmail.com" href=
=3D"mailto:jarraj400@gmail.com">jarraj400@gmail.com</a>&gt; wrote:<br><br>&=
gt; I got this error when i do bitbake rpi-hwup-image<br>&gt; I suspect err=
or come from mcopy .....<br>&gt; how to recover this error<br>&gt; MACHINE =
?=3D"raspberry pi"<br>&gt;<br>&gt;<br>&gt; NOTE: Preparing RunQueue<br>&gt;=
 NOTE: Executing SetScene Tasks<br>&gt; NOTE: Executing RunQueue Tasks<br>&=
gt; ERROR: Error: The image creation script<br>&gt; '/home/raj/Projects/ras=
pberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnue=
abi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg'<br>&gt; returned 1:<=
br>&gt; Creating filesystem with Boot partition 20480 KiB and RootFS 77824 =
KiB<br>&gt; 0+0 records in<br>&gt; 0+0 records out<br>&gt; 0 bytes (0 B) co=
pied, 7.4427e-05 s, 0.0 kB/s<br>&gt; Model:&nbsp; (file)<br>&gt; Disk<br>&g=
t; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/=
images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdi=
mg:<br>&gt; 105MB<br>&gt; Sector size (logical/physical): 512B/512B<br>&gt;=
 Partition Table: msdos<br>&gt; Disk Flags:<br>&gt;<br>&gt; Number&nbsp; St=
art&nbsp;  End&nbsp; &nbsp;  Size&nbsp; &nbsp; Type&nbsp; &nbsp;  File syst=
em&nbsp; Flags<br>&gt;&nbsp; 1&nbsp; &nbsp; &nbsp; 4194kB&nbsp; 25.2MB&nbsp=
; 21.0MB&nbsp; primary&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  boo=
t, lba<br>&gt;&nbsp; 2&nbsp; &nbsp; &nbsp; 25.2MB&nbsp; 105MB&nbsp;  79.7MB=
&nbsp; primary<br>&gt;<br>&gt; mkfs.vfat 2.11 (12 Mar 2005)<br>&gt; Disk fu=
ll<br>&gt; WARNING:<br>&gt; /home/raj/Projects/raspberry_pi/yacto/poky/rasp=
berrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0=
/temp/create_image.rpi-sdimg:1<br>&gt; exit 1 from<br>&gt;&nbsp;  mcopy -i<=
br>&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/wo=
rk/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img<br>&gt; -s=
<br>&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/d=
eploy/images/raspberrypi/Image-raspberrypi.bin<br>&gt; ::kernel.img<br>&gt;=
<br>&gt; ERROR: Function failed: do_rootfs<br>&gt; ERROR: Logfile of failur=
e stored in:<br>&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi=
_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/l=
og.do_rootfs.13457<br>&gt; ERROR: Task 7<br>&gt; (/home/raj/Projects/raspbe=
rry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<br>&gt; rpi-hwup-im=
age.bb, do_rootfs) failed with exit code '1'<br>&gt; NOTE: Tasks Summary: A=
ttempted 1954 tasks of which 1953 didn't need to be<br>&gt; rerun and 1 fai=
led.<br>&gt; No currently running tasks (1953 of 1955)<br>&gt;<br>&gt; Summ=
ary: 1 task failed:<br>&gt;<br>&gt; /home/raj/Projects/raspberry_pi/yacto/p=
oky/meta-raspberrypi/recipes-core/images/<br>&gt; rpi-hwup-image.bb, do_roo=
tfs<br>&gt; Summary: There were 2 ERROR messages shown, returning a non-zer=
o exit code.<br>&gt;<br>&gt;<br>&gt;<br>&gt;<br><br><br>-- <br>Regards,<br>=
RAJ M<br>Mob. # +91-9597208150<br><br><br>Have a great day ahead.<br>------=
-------- next part --------------<br>An HTML attachment was scrubbed...<br>=
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20151111/e9980713/attachment-0001.html" target=3D"_blank">http://lists.y=
octoproject.org/pipermail/yocto/attachments/20151111/e9980713/attachment-00=
01.html</a>&gt;<br><br>------------------------------<br><br>Message: 2<br>=
Date: Wed, 11 Nov 2015 09:46:40 +0100<br>From: "Virgilia&nbsp; Eigner" &lt;=
<a ymailto=3D"mailto:Virgi200@gmx.de" href=3D"mailto:Virgi200@gmx.de">Virgi=
200@gmx.de</a>&gt;<br>To: <a ymailto=3D"mailto:yocto@yoctoproject.org" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>Subject: [=
yocto] external-toolchain<br>Message-ID:<br>&nbsp;&nbsp;&nbsp; &lt;<a ymail=
to=3D"mailto:trinity-9b9a7186-a9d1-4ea3-a628-7a1e1e41e541-1447231599946@3ca=
pp-gmx-bs64" href=3D"mailto:trinity-9b9a7186-a9d1-4ea3-a628-7a1e1e41e541-14=
47231599946@3capp-gmx-bs64">trinity-9b9a7186-a9d1-4ea3-a628-7a1e1e41e541-14=
47231599946@3capp-gmx-bs64</a>&gt;<br>&nbsp;&nbsp;&nbsp; <br>Content-Type: =
text/plain; charset=3D"us-ascii"<br><br>An HTML attachment was scrubbed...<=
br>URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attach=
ments/20151111/fae1db0e/attachment-0001.html" target=3D"_blank">http://list=
s.yoctoproject.org/pipermail/yocto/attachments/20151111/fae1db0e/attachment=
-0001.html</a>&gt;<br><br>------------------------------<br><br>Message: 3<=
br>Date: Wed, 11 Nov 2015 11:51:07 +0100<br>From: "Virgilia&nbsp; Eigner" &=
lt;<a ymailto=3D"mailto:Virgi200@gmx.de" href=3D"mailto:Virgi200@gmx.de">Vi=
rgi200@gmx.de</a>&gt;<br>To: <a ymailto=3D"mailto:yocto@yoctoproject.org" h=
ref=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>Subject=
: Re: [yocto] external-toolchain<br>Message-ID:<br>&nbsp;&nbsp;&nbsp; &lt;<=
a ymailto=3D"mailto:trinity-4efc8622-e589-495f-82a5-acd54dc7dfca-1447239067=
296@3capp-gmx-bs64" href=3D"mailto:trinity-4efc8622-e589-495f-82a5-acd54dc7=
dfca-1447239067296@3capp-gmx-bs64">trinity-4efc8622-e589-495f-82a5-acd54dc7=
dfca-1447239067296@3capp-gmx-bs64</a>&gt;<br>&nbsp;&nbsp;&nbsp; <br>Content=
-Type: text/plain; charset=3D"us-ascii"<br><br>An HTML attachment was scrub=
bed...<br>URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto=
/attachments/20151111/9f3b6208/attachment-0001.html" target=3D"_blank">http=
://lists.yoctoproject.org/pipermail/yocto/attachments/20151111/9f3b6208/att=
achment-0001.html</a>&gt;<br><br>------------------------------<br><br>Mess=
age: 4<br>Date: Wed, 11 Nov 2015 14:26:16 +0100<br>From: Andrei Gherzan &lt=
;<a ymailto=3D"mailto:andrei@gherzan.ro" href=3D"mailto:andrei@gherzan.ro">=
andrei@gherzan.ro</a>&gt;<br>To: Raj Jar &lt;<a ymailto=3D"mailto:jarraj400=
@gmail.com" href=3D"mailto:jarraj400@gmail.com">jarraj400@gmail.com</a>&gt;=
<br>Cc: Yocto Project &lt;<a ymailto=3D"mailto:yocto@yoctoproject.org" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br>Subjec=
t: Re: [yocto] raspberry pi do rootfs<br>Message-ID:<br>&nbsp;&nbsp;&nbsp; =
&lt;CAK18fxF6D9+<a ymailto=3D"mailto:8_VNyZEJhud1Rqz_Fs6nmZTgpbTwqF-e-fjn8i=
Q@mail.gmail.com" href=3D"mailto:8_VNyZEJhud1Rqz_Fs6nmZTgpbTwqF-e-fjn8iQ@ma=
il.gmail.com">8_VNyZEJhud1Rqz_Fs6nmZTgpbTwqF-e-fjn8iQ@mail.gmail.com</a>&gt=
;<br>Content-Type: text/plain; charset=3D"utf-8"<br><br>--<br>Andrei Gherza=
n<br><br>On Wed, Nov 11, 2015 at 9:09 AM, Raj Jar &lt;<a ymailto=3D"mailto:=
jarraj400@gmail.com" href=3D"mailto:jarraj400@gmail.com">jarraj400@gmail.co=
m</a>&gt; wrote:<br><br>&gt; Hi All,<br>&gt;<br>&gt; I have 60GB space in m=
y build system still i face<br>&gt;<br>&gt;<br>Do you have any custom modif=
ications or so. It seems like the fat partition<br>is not big enough for wh=
at you write in. What poky/meta-rpi are you using?<br><br><br>&gt;<br>&gt; =
NOTE: Preparing RunQueue<br>&gt; NOTE: Executing SetScene Tasks<br>&gt; NOT=
E: Executing RunQueue Tasks<br>&gt; ERROR: Error: The image creation script=
<br>&gt; '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/=
work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image=
.rpi-sdimg'<br>&gt; returned 1:<br>&gt; Creating filesystem with Boot parti=
tion 20480 KiB and RootFS 77824 KiB<br>&gt; 0+0 records in<br>&gt; 0+0 reco=
rds out<br>&gt; 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s<br>&gt; Model:=
&nbsp; (file)<br>&gt; Disk<br>&gt; /home/raj/Projects/raspberry_pi/yacto/po=
ky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberry=
pi-20151102024300.rootfs.rpi-sdimg:<br>&gt; 105MB<br>&gt; Sector size (logi=
cal/physical): 512B/512B<br>&gt; Partition Table: msdos<br>&gt; Disk Flags:=
<br>&gt;<br>&gt; Number&nbsp; Start&nbsp;  End&nbsp; &nbsp;  Size&nbsp; &nb=
sp; Type&nbsp; &nbsp;  File system&nbsp; Flags<br>&gt;&nbsp; 1&nbsp; &nbsp;=
 &nbsp; 4194kB&nbsp; 25.2MB&nbsp; 21.0MB&nbsp; primary&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;  boot, lba<br>&gt;&nbsp; 2&nbsp; &nbsp; &nbsp; =
25.2MB&nbsp; 105MB&nbsp;  79.7MB&nbsp; primary<br>&gt;<br>&gt; mkfs.vfat 2.=
11 (12 Mar 2005)<br>&gt; Disk full<br>&gt; WARNING:<br>&gt; /home/raj/Proje=
cts/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-lin=
ux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1<br>&gt; exit=
 1 from<br>&gt;&nbsp;  mcopy -i<br>&gt; /home/raj/Projects/raspberry_pi/yac=
to/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-=
image/1.0-r0/boot.img<br>&gt; -s<br>&gt; /home/raj/Projects/raspberry_pi/ya=
cto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.=
bin<br>&gt; ::kernel.img<br>&gt;<br>&gt; ERROR: Function failed: do_rootfs<=
br>&gt; ERROR: Logfile of failure stored in:<br>&gt; /home/raj/Projects/ras=
pberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnue=
abi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457<br>&gt; ERROR: Task 7<br=
>&gt; (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-=
core/images/<br>&gt; rpi-hwup-image.bb, do_rootfs) failed with exit code '1=
'<br>&gt; NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't ne=
ed to be<br>&gt; rerun and 1 failed.<br>&gt; No currently running tasks (19=
53 of 1955)<br>&gt;<br>&gt; Summary: 1 task failed:<br>&gt;<br>&gt; /home/r=
aj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/<b=
r>&gt; rpi-hwup-image.bb, do_rootfs<br>&gt;<br>&gt;<br>&gt; On Tue, Nov 3, =
2015 at 10:17 AM, Raj Jar &lt;<a ymailto=3D"mailto:jarraj400@gmail.com" hre=
f=3D"mailto:jarraj400@gmail.com">jarraj400@gmail.com</a>&gt; wrote:<br>&gt;=
<br>&gt;&gt; I got this error when i do bitbake rpi-hwup-image<br>&gt;&gt; =
I suspect error come from mcopy .....<br>&gt;&gt; how to recover this error=
<br>&gt;&gt; MACHINE ?=3D"raspberry pi"<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;=
 NOTE: Preparing RunQueue<br>&gt;&gt; NOTE: Executing SetScene Tasks<br>&gt=
;&gt; NOTE: Executing RunQueue Tasks<br>&gt;&gt; ERROR: Error: The image cr=
eation script<br>&gt;&gt; '/home/raj/Projects/raspberry_pi/yacto/poky/raspb=
errypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/=
temp/create_image.rpi-sdimg'<br>&gt;&gt; returned 1:<br>&gt;&gt; Creating f=
ilesystem with Boot partition 20480 KiB and RootFS 77824 KiB<br>&gt;&gt; 0+=
0 records in<br>&gt;&gt; 0+0 records out<br>&gt;&gt; 0 bytes (0 B) copied, =
7.4427e-05 s, 0.0 kB/s<br>&gt;&gt; Model:&nbsp; (file)<br>&gt;&gt; Disk<br>=
&gt;&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/d=
eploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.r=
pi-sdimg:<br>&gt;&gt; 105MB<br>&gt;&gt; Sector size (logical/physical): 512=
B/512B<br>&gt;&gt; Partition Table: msdos<br>&gt;&gt; Disk Flags:<br>&gt;&g=
t;<br>&gt;&gt; Number&nbsp; Start&nbsp;  End&nbsp; &nbsp;  Size&nbsp; &nbsp=
; Type&nbsp; &nbsp;  File system&nbsp; Flags<br>&gt;&gt;&nbsp; 1&nbsp; &nbs=
p; &nbsp; 4194kB&nbsp; 25.2MB&nbsp; 21.0MB&nbsp; primary&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;  boot, lba<br>&gt;&gt;&nbsp; 2&nbsp; &nbsp; &=
nbsp; 25.2MB&nbsp; 105MB&nbsp;  79.7MB&nbsp; primary<br>&gt;&gt;<br>&gt;&gt=
; mkfs.vfat 2.11 (12 Mar 2005)<br>&gt;&gt; Disk full<br>&gt;&gt; WARNING:<b=
r>&gt;&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp=
/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_imag=
e.rpi-sdimg:1<br>&gt;&gt; exit 1 from<br>&gt;&gt;&nbsp;  mcopy -i<br>&gt;&g=
t; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/ra=
spberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img<br>&gt;&gt; -s<=
br>&gt;&gt; /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tm=
p/deploy/images/raspberrypi/Image-raspberrypi.bin<br>&gt;&gt; ::kernel.img<=
br>&gt;&gt;<br>&gt;&gt; ERROR: Function failed: do_rootfs<br>&gt;&gt; ERROR=
: Logfile of failure stored in:<br>&gt;&gt; /home/raj/Projects/raspberry_pi=
/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-h=
wup-image/1.0-r0/temp/log.do_rootfs.13457<br>&gt;&gt; ERROR: Task 7<br>&gt;=
&gt; (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-c=
ore/images/<br>&gt;&gt; rpi-hwup-image.bb, do_rootfs) failed with exit code=
 '1'<br>&gt;&gt; NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 di=
dn't need to be<br>&gt;&gt; rerun and 1 failed.<br>&gt;&gt; No currently ru=
nning tasks (1953 of 1955)<br>&gt;&gt;<br>&gt;&gt; Summary: 1 task failed:<=
br>&gt;&gt;<br>&gt;&gt; /home/raj/Projects/raspberry_pi/yacto/poky/meta-ras=
pberrypi/recipes-core/images/<br>&gt;&gt; rpi-hwup-image.bb, do_rootfs<br>&=
gt;&gt; Summary: There were 2 ERROR messages shown, returning a non-zero ex=
it<br>&gt;&gt; code.<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt;<br>&gt=
;<br>&gt;<br>&gt; --<br>&gt; Regards,<br>&gt; RAJ M<br>&gt; Mob. # +91-9597=
208150<br>&gt;<br>&gt;<br>&gt; Have a great day ahead.<br>&gt;<br>&gt;<br>&=
gt; --<br>&gt; _______________________________________________<br>&gt; yoct=
o mailing list<br>&gt; <a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D=
"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>&gt; <a href=
=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https:=
//lists.yoctoproject.org/listinfo/yocto</a><br>&gt;<br>&gt;<br>------------=
-- next part --------------<br>An HTML attachment was scrubbed...<br>URL: &=
lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachments/201=
51111/6a216dee/attachment.html" target=3D"_blank">http://lists.yoctoproject=
.org/pipermail/yocto/attachments/20151111/6a216dee/attachment.html</a>&gt;<=
br><br>------------------------------<br><br>-- <br>_______________________=
________________________<br>yocto mailing list<br><a ymailto=3D"mailto:yoct=
o@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><br><br=
>End of yocto Digest, Vol 62, Issue 39<br>*********************************=
****<br><br><br></div>  </div> </div>  </div></div></body></html>

------=_Part_2579826_961093132.1447249649354--
