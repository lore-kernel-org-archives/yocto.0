Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web10.4692.1617266019900273503
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Apr 2021 01:33:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inside-m2m.de header.s=default header.b=FeQj59tb;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from localhost (localhost [127.0.0.1])
	by mail.inside-m2m.de (Postfix) with ESMTP id B010A410B2
	for <yocto@lists.yoctoproject.org>; Thu,  1 Apr 2021 10:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1617266007;
	bh=ly9ALKxRzeSPYP8YHYll7Y16corysJUJBtK1oKSV3Vw=;
	h=Date:From:To:Subject:From;
	b=FeQj59tb7bbC0gvx17w5MCSJVQw1aLmtgIJ5iXSZtae1KAKb/hH0uc9ZSLdVcy57F
	 0v/mBrKg1w1gOmwOZ8S/xukL2IFfMlfLMFeSn2qGegsn1o4fxgBm2/PWJTr1dgBLRG
	 PBadcIjVBDzeX4dYMTWVQesagBOZKQnnwEJdlfnFrHHlILlwlk5F/Kjw6tp02DRJG+
	 H0Jg690f9IFg6CGq4B5TWqXyxdlkklrvv94edTll043oyRemxcI0FVO/a5DuVt1HTN
	 p0iDzsx6nl9FysRbjopItDCWTDb8D7qAXtlm3scftt6dgKtLP24OCqs9dZVUOrvvtL
	 i0kt6QIoBm+xQ==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
	by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vIVU5lMIrtdk for <yocto@lists.yoctoproject.org>;
	Thu,  1 Apr 2021 10:33:27 +0200 (CEST)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 3A30D4020F
	for <yocto@lists.yoctoproject.org>; Thu,  1 Apr 2021 10:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1617266007;
	bh=ly9ALKxRzeSPYP8YHYll7Y16corysJUJBtK1oKSV3Vw=;
	h=Date:From:To:Subject:From;
	b=FeQj59tb7bbC0gvx17w5MCSJVQw1aLmtgIJ5iXSZtae1KAKb/hH0uc9ZSLdVcy57F
	 0v/mBrKg1w1gOmwOZ8S/xukL2IFfMlfLMFeSn2qGegsn1o4fxgBm2/PWJTr1dgBLRG
	 PBadcIjVBDzeX4dYMTWVQesagBOZKQnnwEJdlfnFrHHlILlwlk5F/Kjw6tp02DRJG+
	 H0Jg690f9IFg6CGq4B5TWqXyxdlkklrvv94edTll043oyRemxcI0FVO/a5DuVt1HTN
	 p0iDzsx6nl9FysRbjopItDCWTDb8D7qAXtlm3scftt6dgKtLP24OCqs9dZVUOrvvtL
	 i0kt6QIoBm+xQ==
MIME-Version: 1.0
Date: Thu, 01 Apr 2021 10:33:27 +0200
From: konstantin.kletschke@inside-m2m.de
To: yocto@lists.yoctoproject.org
Subject: BeagleBone Black wig image does not boot
Organization: Inside M2M GmbH
Message-ID: <fce20dedb8dd11bd95e1c1cca206cdf6@inside-m2m.de>
X-Sender: konstantin.kletschke@inside-m2m.de
User-Agent: Roundcube Webmail/1.3.0 
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I successfully compile/create a target image and binaries for a 
BeagleBone Black:

MACHINE ?= "beaglebone-yocto"

The resulting wic image does not boot, when I write it to a sdcard nor 
when I write it directly into the internal /dev/mmcblk0. There is no 
console output despite of some capital "C" sometimes (the internal boot 
loader-loader failing to find u-boot?).
The image looks rather healthy, though:

fdisk p output:

Disk core-image-base-beaglebone-yocto-20210331083925.rootfs.wic: 1 GiB, 
1098599424 bytes, 2145702 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xa63a46ea

Device                                                      Boot Start   
   End Sectors    Size Id Type
core-image-base-beaglebone-yocto-20210331083925.rootfs.wic1 *        8   
49065   49058     24M  c W95 FAT32 (LBA)
core-image-base-beaglebone-yocto-20210331083925.rootfs.wic2      49072 
2145701 2096630 1023.8M 83 Linux

ls -la of the mounted first boot partition:

insidem2m@konsti ~/Y $ ls -la /mnt
total 8648
drwxr-xr-x  3 root root   16384 Jan  1  1970 .
drwxr-xr-x 17 root root    4096 Mar  4 12:06 ..
-rwxr-xr-x  1 root root  107940 Apr  6  2011 MLO
-rwxr-xr-x  1 root root   59303 Apr  6  2011 am335x-bone.dtb
-rwxr-xr-x  1 root root   62629 Apr  6  2011 am335x-boneblack.dtb
-rwxr-xr-x  1 root root   59567 Apr  6  2011 am335x-bonegreen.dtb
drwxr-xr-x  2 root root    2048 Apr  6  2011 extlinux
-rwxr-xr-x  1 root root  892736 Apr  6  2011 u-boot.img
-rwxr-xr-x  1 root root 7645608 Apr  6  2011 zImage



The strange thing is, when I prepare a sdcard (or the internal flash!) 
with partitions manually, format manually and copy the same kernel and 
u-boot binaries into the first and the rootfs into the second partition, 
the system works fine!


Since the complete Image layout looks fine to me, what could be the 
culprit of that?

Kind Regards
Konsti


