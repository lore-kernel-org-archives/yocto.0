Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D74A7E01459
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 01:24:52 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id bh2so1181387pad.2
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 01:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=aquppVW20PRTESojovX1ggs5Fb6AovAbidftXlYHcUY=;
	b=XsdmtYCS1hpqp8an8lnPnSbWeJb2PUsIadgNXoO9c4bAXCvXHzhqLDfiGfYBlgJRsO
	gZguG7lV51V40nVdH8zRFhrqB+6Rcx7NjQjEFlU918f8iZOaBpBXkXZJquuVeF18mYqK
	BizTJNc0/N0lTSlo1ux7sIQ+Ftu+CWi+hMnVxACcgKKIBZ0xSUFsGzqqCXO+qLa7w871
	3X9vFEvsvkoPtWyijmnQ+sMZPT6ebdsQ69oGqleCeBH5crbqTlu0skBY5oeH0VJiBv2c
	ywvNjOBAkGDjjElH6Th0+3Xm0mXk5SbURP0bLLVocIL46FzggPsISMSJL4xLHbROF90y
	ndJQ==
X-Received: by 10.66.121.198 with SMTP id lm6mr2997806pab.184.1362734692633;
	Fri, 08 Mar 2013 01:24:52 -0800 (PST)
Received: from [192.168.1.91] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id qb10sm4946114pbb.43.2013.03.08.01.24.47
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 01:24:51 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACzyEJ-DRarP=jMBngPLAMQJFLWsJFWrhqS0rxoWuog2vMjFOg@mail.gmail.com>
Date: Fri, 8 Mar 2013 01:24:46 -0800
Message-Id: <A7CC4928-BE8C-43ED-98F4-EA6FD5BB8322@gmail.com>
References: <CACzyEJ-DRarP=jMBngPLAMQJFLWsJFWrhqS0rxoWuog2vMjFOg@mail.gmail.com>
To: Insop Song <insop.song@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: yocto@yoctoproject.org
Subject: Re: qemu not getting dhcp question.
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
X-List-Received-Date: Fri, 08 Mar 2013 09:24:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Mar 5, 2013, at 9:10 PM, Insop Song <insop.song@gmail.com> wrote:

> Hi all,
>=20
> I've built a new meta layer image based on core-image-minimal and
> core-image-sato.
>=20
> After the successful build, whey I run "runqemu" with the image, my
> qemu image won't get a dhcp IP.
> I can manually assign IP after the boot up.
>=20
> Does anyone know why or which log to look at?

runqemu already assigns a static IP to instance and it does not use =
bridging
so dhcp from a server which is not the machine on which qemu is running =
will not work


>=20
> Here is the message from qemu
> ---------
> Configuring network interfaces... udhcpc (v1.20.2) started
> Sending discover...
> Sending discover...
> Sending discover...
> No lease, failing
> [   20.280668] rc (824) used greatest stack depth: 5632 bytes left
> INIT: Entering runlevel: 5
> Starting syslogd/klogd: done
> Stopping Bootlog daemon: bootlogd.
> ----------
>=20
> Here is the host side message
> ----------
> $ runqemu =
tmp/deploy/images/bzImage-3.8-dl7-dl-qemux86-20130303034712.bin
> =
tmp/deploy/images/core-image-minimal-dev-dl-qemux86-20130306045344.rootfs.=
ext3
> Set MACHINE to [qemux86] based on kernel
> [tmp/deploy/images/bzImage-3.8-dl7-dl-qemux86-20130303034712.bin]
>=20
> Continuing with the following parameters:
> KERNEL: =
[tmp/deploy/images/bzImage-3.8-dl7-dl-qemux86-20130303034712.bin]
> ROOTFS: =
[tmp/deploy/images/core-image-minimal-dev-dl-qemux86-20130306045344.rootfs=
.ext3]
> FSTYPE: [ext3]
> Setting up tap interface under sudo
> Acquiring lockfile for tap0...
> WARNING: distccd not present, no distcc support loaded.
> Running qemu-system-i386...
> =
/home/insop/mybuilds/dl/tmp/sysroots/x86_64-linux/usr/bin/qemu-system-i386=

> -kernel =
tmp/deploy/images/bzImage-3.8-dl7-dl-qemux86-20130303034712.bin
> -net nic,vlan=3D0 -net tap,vlan=3D0,ifname=3Dtap0,script=3Dno,downscript=
=3Dno
> -hda =
tmp/deploy/images/core-image-minimal-dev-dl-qemux86-20130306045344.rootfs.=
ext3
> -show-cursor -usb -usbdevice wacom-tablet -vga vmware -no-reboot -m
> 128 --append "vga=3D0 root=3D/dev/hda rw mem=3D128M
> ip=3D192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=3D1 "
> -------------
>=20
> Thank you,
>=20
> Insop
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


