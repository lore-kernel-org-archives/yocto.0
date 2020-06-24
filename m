Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [81.169.146.167])
 by mx.groups.io with SMTP id smtpd.web11.8067.1592980939707564176
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jun 2020 23:42:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=U6rqk7mz;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 81.169.146.167, mailfrom: prvs=144477170e=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1592980937;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:Date:Message-ID:From:References:To:Subject:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=eDR+Fo0pCtawAW1wCVZloAcK6OWLuDhdXPTXBzatpXA=;
	b=U6rqk7mzGyubJPsjLrWqXapGvLOWcW9P1iJVVPjhJ425SlY+pC+GTMbSiyWY0OScKb
	vnLzz7vXmd/H8lbC5bPfGrigSITnLK7fqvKKhhoOpnFIUndFUZFjgNXlLxza9Dy4gslt
	Q9g0MvD7u+u+IfaqmTYbVDkUVSfARCfuLfSgE6Qk0E2/JywBB1IBM2+FtAm19b/tZID0
	KvGOlQD44daViENJxG7P9LhhckByVxiOW5DSfM7ZZO0KxuH/reDgJzcZh0JWfiJsY939
	CSvgE1JDstOKdpKPcEAhKspxSCvOFrHuKq4pNNzFVVV9QwaNf4sFUjpPgBDEBmEDVxVF
	UYSw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.10.5 AUTH)
	with ESMTPSA id t09fdew5O6gH0Bd
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate)
	for <yocto@lists.yoctoproject.org>;
	Wed, 24 Jun 2020 08:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1592980936; x=1593585736;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Transfer-Encoding; bh=eDR+Fo0pC
	tawAW1wCVZloAcK6OWLuDhdXPTXBzatpXA=; b=CbnUEu7mScQJGUZzxc/DuIDza
	vd1WrTIFszxsUdOWDGvXEqNNicqDhzV0P99v0g5Qie/ki26/jSFD0A9mDPYT485e
	+nKYIz4589HbSLTShyWrxQx7/k++yOlOGTO4+oc4o3U5fIkRRzpeEKjKENVSd001
	XTMmypr5JUjcqya3ys=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.5) with ESMTPSA id md50000284246.msg; 
	Wed, 24 Jun 2020 08:42:15 +0200
X-Spam-Processed: mail.rsi-elektrotechnik.de, Wed, 24 Jun 2020 08:42:15 +0200
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Wed, 24 Jun 2020 08:42:15 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=144477170e=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-MDaemon-Deliver-To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Nested images, a.k.a. two-stage booting
To: yocto@lists.yoctoproject.org
References: <DB6P192MB0214395F93E78A3751ABF4EFC3950@DB6P192MB0214.EURP192.PROD.OUTLOOK.COM>
 <CAP71WjyTZVWTJmd_CazWnyNpEYkTGhwCJubU=CSfq6PwApqYkg@mail.gmail.com>
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
Message-ID: <ab193574-d16c-c135-7f98-11b62bf647b8@rsi-elektrotechnik.de>
Date: Wed, 24 Jun 2020 08:42:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAP71WjyTZVWTJmd_CazWnyNpEYkTGhwCJubU=CSfq6PwApqYkg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Howdy!

Am 24.06.2020 um 07:48 schrieb Nicolas Dechesne:
> On Wed, Jun 24, 2020 at 3:12 AM Peter Budny <pbudny@witekio.com> wrote:
>>
>> Hello all,
>>
>> I have an unusual and uncommon situation, and could use some help to get Yocto to do what I need.
>>
>> I'm working on a legacy system which is being ported to use Yocto and Linux. The hardware architecture is complex, but the main detail to know is that the processor I'm running on boots entirely from RAM. A co-processor puts a FIT image into shared memory, which this processor uses to boot Linux and then decompress the initramfs, which is not an "initial" ramdisk but is actually the only rootfs it uses. Unfortunately, RAM is quite limited, and the image has become large enough that Linux runs out of space decompressing it.
>>
>> The problem is that to decompress the rootfs, there has to be enough RAM for the compressed image, and the decompressed image, and working space for the decompressor. However, I figured out a workaround: I can have a minimal initramfs that contains just enough to boot plus the desired compressed rootfs. This way it only needs ~12MB free to decompress the outer rootfs. Once the kernel is done booting and has freed some memory used during boot, there's enough free memory that it can decompress the inner rootfs and pivot_root. It sounds a little crazy, but it does work.
>>
>> This is easy enough to do manually:
>> * Create the inner rootfs as a .cpio.xz (or whatever)
>> * Create the outer rootfs, which is similar to core-image-minimal-initramfs.
>> * To the outer rootfs, manually add inner_rootfs.cpio.xz and a script to decompress it and pivot_root.
>>
>> I can do that the evil way (by modifying the outer rootfs inside the build/tmp/work/ directory, which I know will confuse sstate) or in a nicer but still manual way (with a script run afterwards to decompress the outer rootfs, add the files, and recompress it... however, putting a bootable image back together involves several extra steps on this baroque system, more than just building a CPIO and FIT image).
>>
>> The ideal way would be to put this into a recipe or class, and that's where I'm stuck. There doesn't seem to be a way to do it with just an image recipe; you can't simply RDEPEND on it, nor do image recipes generate package output that could be "installed" in another recipe. I was hoping that IMAGE_FSTYPES="live" might get me close, but alas that depends on Syslinux and is only for x86.
>>
>> Has anyone seen something like this two-stage boot or nested images before? I searched around but couldn't find anything useful to my situation.
> 
> in the outer rootfs image recipe, you can create a task which creates
> your custom 'bundle' (e.g. do_custom_image), and set:
> 
> do_custom_image[depends] += "inner-recipe:do_image_complete"
> 
> It will ensure that your inner rootfs will exist in DEPLOY_DIR_IMAGE
> before you run your outer custom bundle task, and at that point you
> have both the inner and outer images available , and you can process
> them as needed.
> 
> Something similar is used in the kernel.bbclass, see:
> d.appendVarFlag('do_bundle_initramfs', 'depends', '
> ${INITRAMFS_IMAGE}:do_image_complete')

Yet that actually only holds true if both images share DISTRO, MACHINE 
and local.conf.

Generally I would rather advise to look into multiconfig builds.

Greetz!

> 
>>
>> Assuming a class is the best way to do this, any suggestions on how to implement this? I'm pretty competent with ordinary recipes, but the code for generating images is a lot more opaque, and I'm having a hard time figuring out what will be required. (For instance, it's not even clear to me whether inner image should depend on outer image, or outer image should depend on inner image.)
>>
>> 

-- 
_____________________________________________________________
R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
Fon: +49 8444 9204-0
Fax: +49 8444 9204-50
www.rsi-elektrotechnik.de

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

