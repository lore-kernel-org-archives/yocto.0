Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
 by mx.groups.io with SMTP id smtpd.web11.1396.1576574134219475270
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 01:15:34 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 212.18.0.9, mailfrom: sbabic@denx.de)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 47cXYJ4Ww0z1qv2l;
	Tue, 17 Dec 2019 10:15:32 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 47cXYJ4BpBz1r0n8;
	Tue, 17 Dec 2019 10:15:32 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id 2TlHY2qSnrFj; Tue, 17 Dec 2019 10:15:30 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Tue, 17 Dec 2019 10:15:30 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id C9F6A4540332;
	Tue, 17 Dec 2019 10:15:30 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id lvOffsvavgCd; Tue, 17 Dec 2019 10:15:27 +0100 (CET)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id AE8464540331;
	Tue, 17 Dec 2019 10:15:27 +0100 (CET)
Subject: Re: [yocto] #raspberrypi
To: Khem Raj <raj.khem@gmail.com>, wojciech.st@tutanota.com
Cc: yocto@lists.yoctoproject.org
References: <W5UD.1576533409237003637.6umO@lists.yoctoproject.org>
 <CAMKF1sqYnuJ_QY6uyw1jTrVwni=oeOECrtx7LJVvVFnEq3xsFA@mail.gmail.com>
From: "Stefano Babic" <sbabic@denx.de>
Autocrypt: addr=sbabic@denx.de; prefer-encrypt=mutual; keydata=
 xsDiBEfdB5IRBADkpYcnh2BoAkGD5p186ysEkWlcp5DU07m7BKzvkEMRhFjeFUOU0klKNmh0
 ZM6rKpYpAYPYBm9YahMyqvj9DmLrZ4yfJ5MssvW9SRETmHpva+h1rN+DzmEcwrqZmLG1JWGy
 LA5ruJaFSzxJHBoROoog1NDMbNDB8A9F7VKrePfkVwCgmODpW/uh2IuMYLVidzDeuvo7alED
 /iV8rwU7C+eBcKy2htuDsEmsqlkBxIDM7IO6h5XxdyqbZOYizuBP3Ksb6xK54weEaB5aQs7S
 8N9Soi0p1Xh0LMWj6PBCzTC4LF+OCGEMBPc6bBHNzivChgztJlUMioCDSVpOXB/QpBaK302G
 yP5WdmcB1Jn6neq/YRlxHN38MV2yA/46jnzeUotL9LliVZKA/ql4GmyWg2Ae1BUiCqEJQNwl
 knGJOmIS4uABLArB5HjsfDU5hA9FORaNGCIiZlezBkZ3JXA2uQMQhfgqBXrZt4j1fcw9I7E+
 7IZ2kSCeTPZFLd5FiGQPDOm3Z9eHrpK6pmBGMeBG0pDgUEbN9awyLNBLj80eU3RlZmFubyBC
 YWJpYyA8c2JhYmljQGRlbnguZGU+wmMEExECACMCGwMGCwkIBwMCBBUCCAMEFgIDAQIeAQIX
 gAUCT9deSgIZAQAKCRD09WXkmmjvppF1AKCRl8d49K4yxWzdBVRTTWG55cyo/gCfRD1RAttl
 R1ofs2wGLHNtXousyL3OwU0ER90HmBAIAIFfX4bKnOmCyB3nPh+jbXZuBSMZTuyDEnguRxl5
 N8Q0ayofQwucCBjXYv65sQ9Rq6FNhEnWqUZBu8A5CwvSakOFOGNC5ta/8VxVRLh0Z0ZTgEep
 SKiPonJyacCbmgWDECdVrKowV7QB9be3Wu67uAZ74rPw2Kd7f0FKnL3djvVRMaBWFIpyQ6SE
 bGOCJjhRQ5L1pIM1Soko+reU7eO+1g6IBw6YkFJisdQE6fzTwaSqUKPPsQLz/W03invQltOb
 Eg7ZwtFs0DFonr1DMm57ksiEhW6SN1wylRO/JzRYG1Qe7u1EVln6iV3ilBvbbfkyRssk4/0e
 kicpSnQknA72YOMAAwYH+QGpAiQ4hAMHrp1bUrtyGXYdeQpYufIZAM4etOnBy/G+e1nfu6y+
 jH4SN9sVK7bwBBAbhEJqkqR5LVsFIRapThJQOWB11rQxLpwkBU9wao/pRM+o95ujGo32WUzf
 wWrzWrkTDy7vMCZuUOLVi4n1GZlUAwpG4rzb6UxPC6GWymkVWGgXp1NC58og5i3Y+rKT7+Xi
 XT2BtvC6PDepoH4JhD+9OkHQO6UfTxPSmtgNbTgtl6L6tj+bm5dOHgkPJFMkEiG8qhUZYQzb
 bYz37orRbA72M2bxK76e9QKn0mVu+d/YCd8wRcvvJbGsozpzcxPvD5Wy5RNJCES8McPtAseU
 tMfCSQQYEQIACQUCR90HmAIbDAAKCRD09WXkmmjvpv+3AJ9RakBsH1j0X/Kxp6t2lf0VUfS2
 qACfZ+J6ktk8PKNuyHf0J/I0mbCrhV4=
Message-ID: <9676c51d-3efa-f465-8505-9bf1280b8829@denx.de>
Date: Tue, 17 Dec 2019 10:15:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqYnuJ_QY6uyw1jTrVwni=oeOECrtx7LJVvVFnEq3xsFA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 7bit

Hi Khem, Wojciech,

On 17/12/19 05:48, Khem Raj wrote:
> On Mon, Dec 16, 2019 at 1:56 PM <wojciech.st@tutanota.com> wrote:
>>
>> Problem with rootfs boot on my raspberrypi.
>>
>> Hi
>> I am building simple image for my raspbery pi 3 A+ and connect to the pi via USB-UART converter and see the following in the console
>> ...
>> [ 2.071459] Run /bin/init as init process
>> [ 2.076507] Run /bin/sh as init process
>> sh: cannot set terminal process group (-1): Inappropriate ioctl for device
>> sh: no job control in this shell
>> sh-4.4#
>>
>>
>>
>> I build with the "bitbake core-image-base" and tried to run it on rpi 3A+, 3B, 3B+ and the problem is always the same it cannot switch to the rootfs on the sd card it seem like it stack at initramfs or some middle ground.
>>
>> I burn the *.rpi-sdimg image to SD card with dd from my Ubuntu16.04 host machine.
>> I tried with two branches thud and warrior and the problem is exactly the same.
>> The strange thing is that in this initramfs there are no tools like find grep modprobe etc. but I see my extra tools "i2c-tools vim"
>>
>> Here is my local.conf adjustments:
>> MACHINE ?= "raspberrypi3"
>> ENABLE_I2C = "1"
>> ENABLE_UART = "1"
>> IMAGE_INSTALL += "i2c-tools vim"
> 
> Can you turn this into
> IMAGE_INSTALL_append = " i2c-tools vim"
> 
>>
>> and the bblayer.conf
>> BBLAYERS ?= " \
>>   /media/dave/Develop/yoctopi/warrior/sources/poky/meta \
>>   /media/dave/Develop/yoctopi/warrior/sources/poky/meta-poky \
>>   /media/dave/Develop/yoctopi/warrior/sources/poky/meta-yocto-bsp \
>>   /media/dave/Develop/yoctopi/warrior/sources/meta-openembedded/meta-oe \
>>   /media/dave/Develop/yoctopi/warrior/sources/meta-raspberrypi \
>>   "
>>
>> I tried also to build with the deprecated image "bitbake rpi-basic-image" but then I did not get my extra tools "i2c-tools vim".
>>
>> Anyone have any idea what can be wrong with my approach ?
>>

Strange enough, I had the same behaviour a couple of days ago but I
thought it was something on my setup. I built core-iage-full-cmdline on
TOT, and systemd as init manager. The issue was due because adding
"userland", bash was added due RDEPENDS to the image and busybox with
all related tools was dropped. After removing bash from image, it works
again - but I have not git-bisect to check which is the cause.

Regards,
Stefano

>> Regards,
>>
>> Wojciech
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47702): https://lists.yoctoproject.org/g/yocto/message/47702
>> Mute This Topic: https://lists.yoctoproject.org/mt/68744766/1997914
>> Mute #raspberrypi: https://lists.yoctoproject.org/mk?hashtag=raspberrypi&subid=6692173
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47712): https://lists.yoctoproject.org/g/yocto/message/47712
>> Mute This Topic: https://lists.yoctoproject.org/mt/68752649/3618551
>> Mute #raspberrypi: https://lists.yoctoproject.org/mk?hashtag=raspberrypi&subid=6692235
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [sbabic@denx.de]
>> -=-=-=-=-=-=-=-=-=-=-=-


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================
