Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2ED4BE014B3
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 21:10:43 -0800 (PST)
Received: by mail-wg0-f52.google.com with SMTP id 12so7009354wgh.7
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 21:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type; bh=5Adrq+3Pk4yYVu2DD3QCuXYj3rcmejjXb+eZBcmt3gA=;
	b=HiLY2u+htNuBiMZ3kISgjPcGRtbEjPdSXLcUeLuPbmuJExiZiRwnJ/YK8tJoO+z7R8
	aE0ZsWnEp8cIv9ubG5uhG4uV/XozFG2C2QaGzxfGdy2n9fJsQ5BA7aKV+wdzjLMTspad
	ifCMzT1HvYPfaHpR7ob9sxe0b54ABDKu9DPykrfAdtI8inQ7/LnrmGOZran0oiFS0suQ
	g5wFgwcZhwuGj9GS6TiAikLT5FaOUn+CdVtP+6iIZNBtjRnL2G6dZ7oG5yboaWaZf5Bl
	U+j6RodDMo67yOBBwzOZPi/IYn+nLVVXhQYNlqgBK9qaxKbLNgn6By6I5Jbh4LFjvDzq
	9LMQ==
X-Received: by 10.194.84.8 with SMTP id u8mr44115877wjy.29.1362546641200; Tue,
	05 Mar 2013 21:10:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Tue, 5 Mar 2013 21:10:21 -0800 (PST)
From: Insop Song <insop.song@gmail.com>
Date: Tue, 5 Mar 2013 21:10:21 -0800
Message-ID: <CACzyEJ-DRarP=jMBngPLAMQJFLWsJFWrhqS0rxoWuog2vMjFOg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: qemu not getting dhcp question.
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
X-List-Received-Date: Wed, 06 Mar 2013 05:10:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I've built a new meta layer image based on core-image-minimal and
core-image-sato.

After the successful build, whey I run "runqemu" with the image, my
qemu image won't get a dhcp IP.
I can manually assign IP after the boot up.

Does anyone know why or which log to look at?

Here is the message from qemu
---------
Configuring network interfaces... udhcpc (v1.20.2) started
Sending discover...
Sending discover...
Sending discover...
No lease, failing
[   20.280668] rc (824) used greatest stack depth: 5632 bytes left
INIT: Entering runlevel: 5
Starting syslogd/klogd: done
Stopping Bootlog daemon: bootlogd.
----------

Here is the host side message
----------
 $ runqemu tmp/deploy/images/bzImage-3.8-dl7-dl-qemux86-20130303034712.bin
tmp/deploy/images/core-image-minimal-dev-dl-qemux86-20130306045344.rootfs.ext3
Set MACHINE to [qemux86] based on kernel
[tmp/deploy/images/bzImage-3.8-dl7-dl-qemux86-20130303034712.bin]

Continuing with the following parameters:
KERNEL: [tmp/deploy/images/bzImage-3.8-dl7-dl-qemux86-20130303034712.bin]
ROOTFS: [tmp/deploy/images/core-image-minimal-dev-dl-qemux86-20130306045344.rootfs.ext3]
FSTYPE: [ext3]
Setting up tap interface under sudo
Acquiring lockfile for tap0...
WARNING: distccd not present, no distcc support loaded.
Running qemu-system-i386...
/home/insop/mybuilds/dl/tmp/sysroots/x86_64-linux/usr/bin/qemu-system-i386
-kernel tmp/deploy/images/bzImage-3.8-dl7-dl-qemux86-20130303034712.bin
-net nic,vlan=0 -net tap,vlan=0,ifname=tap0,script=no,downscript=no
-hda tmp/deploy/images/core-image-minimal-dev-dl-qemux86-20130306045344.rootfs.ext3
-show-cursor -usb -usbdevice wacom-tablet -vga vmware -no-reboot -m
128 --append "vga=0 root=/dev/hda rw mem=128M
ip=192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=1 "
-------------

Thank you,

Insop

