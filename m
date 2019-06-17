Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2897E00D5C; Mon, 17 Jun 2019 00:19:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FBC7E00CAA
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 00:19:49 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 45S2fD72lRz1rJhH;
	Mon, 17 Jun 2019 09:19:48 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 45S2fD6qnDz1qql7;
	Mon, 17 Jun 2019 09:19:48 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id 58b6YceaUIZD; Mon, 17 Jun 2019 09:19:47 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Mon, 17 Jun 2019 09:19:47 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 67033454044F;
	Mon, 17 Jun 2019 09:19:46 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id UhQ08dKBPdfe; Mon, 17 Jun 2019 09:19:43 +0200 (CEST)
Received: from [192.168.178.89] (stefano-MacBookPro.fritz.box [192.168.178.89])
	by babic.homelinux.org (Postfix) with ESMTPS id E34DB45403C6;
	Mon, 17 Jun 2019 09:19:42 +0200 (CEST)
To: Moritz Porst <moritz.porst@gmx.de>, yocto@yoctoproject.org
References: <trinity-b159ef9f-c6c8-4d3e-bd0b-ca88d3c5596e-1560500116612@3c-app-gmx-bs53>
	<CAGAf8LzTzOPr8p0Jf61tOu2U50fVafFiwV1X3WTVtPEYtv+BXg@mail.gmail.com>
	<trinity-c1af16bc-9d60-4a88-a48b-24690878e39b-1560507591276@3c-app-gmx-bs22>
	<bf5c8bfd-87bd-ddf1-246b-4095c349fca3@denx.de>
	<7935c256-d143-e826-8021-db787d98477c@gmx.de>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <68a5877c-3299-1ab2-a273-fe98ea5eb965@denx.de>
Date: Mon, 17 Jun 2019 09:19:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <7935c256-d143-e826-8021-db787d98477c@gmx.de>
Subject: Re: [meta-swupdate] failed update leads to kernel panic
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
X-List-Received-Date: Mon, 17 Jun 2019 07:19:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Moritz,

On 17/06/19 08:23, Moritz Porst wrote:
> Hello Stefano,
> Thanks very much for your answer
> 
> On 14.06.19 14:14, Stefano Babic wrote:
>> Hi Moritz,
>>
>> On 14/06/19 12:19, Moritz Porst wrote:
>>> (Sorry, the answer should go to everyone)
>>> Thanks for your response, unfortunately it didn't work out for me.
>>> Because I am not 100% sure whether I did the correct thing I describe it:
>>> In my layer I went to recipes-kernel/kernel/files, here I added a file
>>> defconfig which I filled with the content of your config-initramfs
>>> my linux-yocto_%.bbappend, residing one level lower (kernel), got this
>>> file added so it reads (in its entirety):
>>>  
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>> SRC_URI += "file://0001-sdcard-power-management-off.patch"
>>> SRC_URI += "file://defconfig"
>>>  
>>> However I *also* have a file called defconfig in meta-swupdate which is
>>> basically the swupdate config that comes from menuconfig. I let this
>>> untouched but since this is not the kernel defconfig I guess you didn't
>>> mean this file ?
>>>  
>>> Additionally I can't mount the rootfs with the failed boot so I cannot
>>> access the dmesg log file. Any advice here ?
>>>  
>>> Best regards
>>> Moritz
>>>  
>>>  
>>>  
>>> *Gesendet:* Freitag, 14. Juni 2019 um 11:00 Uhr
>>> *Von:* "Zoran Stojsavljevic" <zoran.stojsavljevic@gmail.com>
>>> *An:* "Moritz Porst" <Moritz.Porst@gmx.de>
>>> *Cc:* "Yocto Project" <yocto@yoctoproject.org>
>>> *Betreff:* Re: [yocto] [meta-swupdate] failed update leads to kernel panic
>>>> However if I abort the update while running (i.e. simulating a power cut)
>>>> and then reboot I end up in a kernel panic: "Unable to mount rootfs on
>>>> unknown block". My understanding is that I should at least end up in a
>>>> busybox or that the update is retried, but this does not happen.
>>> You missed to attach failed dmesg while the system booted and aborted.
>>> Nevertheless, I expect problem with your defconfig, which does NOT
>>> have options set for initramfs. These ones:
>>> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/config-initramfs
>>>
>>> Please, could you add these one to your current .config, this might
>>> very well solve your problem.
>>>
>>> Best Regards,
>>> Zoran
>>> _______
>>>
>>> On Fri, Jun 14, 2019 at 10:15 AM Moritz Porst <Moritz.Porst@gmx.de> wrote:
>>>> Hello,
>>>>
>>>> I am currently having trouble to get swupdate working properly.
>>>> My problem:
>>>> I can execute swupdate -i normally and if the update fits I have no
>>> problem. However if I abort the update while running (i.e. simulating a
>>> power cut) and then reboot I end up in a kernel panic: "Unable to mount
>>> rootfs on unknown block". My understanding is that I should at least end
>>> up in a busybox or that the update is retried, but this does not happen.
>>>> I receive 1 error when updating which does not stop the update: "Could
>>> not find MTD".
>>>> My configuration:
>>>> I have a single rootfs and a separate boot partition. I build the
>>> initramfs using:
>> You have a *single* rootfs, you stop an upgrade (resulting of course in
>> a corrupted rootfs or worse), and you wonder that kernel cannot mount
>> it....your update concept is broken.
> Well conceptually I want to go through the bootloader, I just fail to
> understand how I tell swupdate to do this.
>> You *must* check the bootloader marker in U-Boot (default is the
>> "recovery_status" variable) and you *mus*t start again the updater (the
>> ramdisk) until the marker (it is a transaction flag) is set. It is
>> erased by SWUpdate only after a successful update. You are now starting
>> your board with a half-completed update.
> 
> So I configured swupdate in menuconfig to work with grub which I set in
> my machine as "EFI_PROVIDER". Doesn't this single rootfs update strategy
> work with grub ?

Yes, but you have to set / configure yourself how Grub start, that is a
suitable grub.cfg where variables in grubenv are evalutated (do not
forget load_env in grub.cfg).

The interface between SWUpdate and Grub is grubenv - SWUpdate just sets
variables, but it is duty of bootloader to evaluated them.

> (I prefer to stick to EFI because partitioning of
> images works out of the box with .wic images)
> When you say "you must start again the updater", that's where I'm lost.
> From the documentation I understand that I initiate an update using
> "swupdate -i abc.swu" but this just runs the update without setting any
> flag for the bootloader.

SWUpdate sets

> One more thing: swupdate complains that there is no grubenv file.

Then it does not work, you have to fix it...

> I
> defined a path in the config file and create this file using
> "grub-editenv /path/as/in/config create".

Grubenv is just a simple 1KB file, you can dump it.

> swupdate does not give an
> error after I have done this.

If the interface to bootloader (for grub, this means grubenv) is
specified and correct, SWUpdate will set the variable "recovery_status"
as transaction flag. You have to evaluate it in grub.cfg and start the
ramdisk again if the variable is set.

Best regards,
Stefano Babic

> 
>> Best regards,
>> Stefano Babic
> 
> Best regards
> Moritz
> 
>>
>>>> ---
>>>> IMAGE_INSTALL = "base-files \
>>>> base-passwd \
>>>> swupdate \
>>>> busybox \
>>>> libconfig \
>>>> util-linux-sfdisk \
>>>> mtd-utils \
>>>> mtd-utils-ubifs \
>>>> ${@bb.utils.contains('SWUPDATE_INIT', 'tiny',
>>> 'virtual/initscripts-swupdate', 'initscripts sysvinit', d)} \
>>>> "
>>>> ---
>>>> This is taken from swupdate-image. I include the same packages (via
>>> _append) in my base image, is this necessary ?
>>>> I bundle the initramfs with my image using INITRAMFS_IMAGE_BUNDLE = "1"
>>>>
>>>> Can you see a mistake I made ?
>>>>
>>>> Best regards
>>>> Moritz
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
> 

