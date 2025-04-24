Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F093AC369AB
	for <webhook@archiver.kernel.org>; Thu, 24 Apr 2025 20:18:15 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web11.3831.1745525890188080310
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Apr 2025 13:18:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=af6rCInW;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: fntoth@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5f6c3f7b0b0so2715434a12.0
        for <yocto@lists.yoctoproject.org>; Thu, 24 Apr 2025 13:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745525888; x=1746130688; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Oil+qQoy0AxU7VUy1+pzkMXXjVuvGnZuM4MgzgxjUtI=;
        b=af6rCInWa26caJRnNA8+rT0VIU+jxCBmei0ddE6WPMn4cisgcca7LHojP2nmRc4BDm
         V8tHfPpW/neSQc3PJ2RkK9qZerAtL1vcmWbOjBmiTVwsxKOQvVsHl5CXAkZVzZ4an5oD
         VdpLqu0PFQZfCXVqwhvPaMr27rlYvgco88UWrpVxHGWQwA03nFkXgMbdmlngMNHJNv3R
         HpP3m+coYdqUVdpStXMo/UzT3Ug32kF0NeGh1X/97Yt5dwjASjUufTg7xP5wfYYwkYSy
         MfA0PYZbNkF4ElZah3erw3TqnKoYqw8ZVg3rCHEQSr3olnbITtGiHluy3uIjXfRei3xe
         wjBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745525888; x=1746130688;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Oil+qQoy0AxU7VUy1+pzkMXXjVuvGnZuM4MgzgxjUtI=;
        b=r9ZVw+9akYqf/eJ/Rb9xqhbNT94YC6rC7BBECERNU13Dgm8GvSP+lEPXMIH6LL+j8O
         DPyx7hXbDwXGlkwqmG5tuHPvfgNwPy015QOGHJG8f8uuEm2kLQrBx9TobLcG5EDVOzf5
         meqXtm6B0s9JKLrixPT7kjwCMk+j+9MTTeXdd03+Cz11/pcyyjiQ09u/wPsnbCTUNZjv
         of4pBDxpm86+t0MTJ3WKypla8BjWrQWFGfGfSBc4PlwVdBuPdgf6Izav6x7TCRP1+QKI
         L3A5ThqY5ziC0GXdlb1hVxdn0fu00TUumymeqxSYae5PiedU7qSoKWufdB/b/wTchv1o
         uCUg==
X-Forwarded-Encrypted: i=1; AJvYcCXj3tolMTSyeroWotb0HKnx3NPOzbSWDGiLGMGrU+UnwUZPK2KOCZa92KmphmdFbHdUC/K1Zg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yy+YMct8UEM/le0nRyn9jCBwEaz/YOmWOfFao6bME5qZ4sSM9oy
	PMjcojLD08ycnfTLaU331WuKWzvq+gn/gWJgh1MoYJpsbRbZ66tg
X-Gm-Gg: ASbGnctnuK7StooeZsgLkI9NVhvR8lPZxLuTKvH4Quv9f9MpRhMHyEcpcFF2Vsb+uIn
	Sx/uBCJpNaTg5+awLB0FktXfMqLk8sfaI3Z/Vho69FmXT8Ig7A9bcG3CZbqSnrE8Wfsx3d5aGCK
	mYrk7frBrJzJO6vTWx3dhsyMyUKXfxSR5ZfQIikhuCOwg2xNA/TmooqJWf2YrAuAOy7nwa7DIls
	LuQ+1g8mkfxjFo/jsIDR0myNzp4b97sv0t0oY1d0qSefveULQYAxJIMRXmxQ/ibiUUqYF01nyX8
	4zE57bVDoqvD1l00PHmfxW1Z+Ev0//Go3DqQXsuJXsmook/3UsX+A+zHFM8JOxURkKO+qFybCQn
	wcBFOn55955u2U6LX5uIHx4VTJRajNoCTNmtcz3wqu+uRA/EWzMw+lVumyNcDfg==
X-Google-Smtp-Source: AGHT+IFsNYl1xLOCJtglORfniJj3UhOT2fmoclaJh89LBVFMqEs/B9kk+xtcHD0c/azKIugbg1+FbA==
X-Received: by 2002:a17:907:3c96:b0:aca:d48f:4d48 with SMTP id a640c23a62f3a-ace5746281emr407853966b.60.1745525888104;
        Thu, 24 Apr 2025 13:18:08 -0700 (PDT)
Received: from ?IPV6:2a02:a466:68ed:1:e82f:dba5:732c:3d0a? (2a02-a466-68ed-1-e82f-dba5-732c-3d0a.fixed6.kpn.net. [2a02:a466:68ed:1:e82f:dba5:732c:3d0a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e4e6498sm15946666b.42.2025.04.24.13.18.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 13:18:07 -0700 (PDT)
Message-ID: <6c8ec705-3a92-47a3-bbb3-f43686234b6b@gmail.com>
Date: Thu, 24 Apr 2025 22:18:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Btrfs root filesystem permission issue
To: Gyorgy Sarvari <skandigraun@gmail.com>, yocto@lists.yoctoproject.org,
 landervanloock@gmail.com
References: <tRtu.1740682678597454399.5171@lists.yoctoproject.org>
 <1adcf6c5-d4be-4701-948c-3a6425f3da07@gmail.com>
Content-Language: en-US
From: Ferry Toth <fntoth@gmail.com>
In-Reply-To: <1adcf6c5-d4be-4701-948c-3a6425f3da07@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Apr 2025 20:18:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65245

Hi,

Op 01-03-2025 om 15:35 schreef Gyorgy Sarvari:
> The reason seems to be this[1] update of btrfs-tools, which included
> this[2] commit. The important change is that previously mkfs.btrfs was
> using lstat syscall to get file stats, but then it switched to nftw libc
> function to do the same. Pseudo[3] however doesn't support this call -
> it "knows" that it exists (at least nftw64), but there seems to be no
> implementation.
> 
> Possibilities at the first sight:
> 1 - Downgrade btrfs-tools in your custom layer (unless you need any of
> the new functions)
> 2 - Revert the change with a patch in a bbappend
> 3 - Make pseudo support nftw
> 
> #1 and #2 would be a fast change.

There is a problem with mkfs.btrfs that creates a file system with 
errors if there are hardlinks out of the the rootfs (as we have). You 
can this easily by running btrfs check on the image file.

The change if fixed after btrfs-tools v6.12

See this thread (Errors on newly created file system):
https://lore.kernel.org/linux-btrfs/d98ffb69-195b-4c07-ac56-8ae1f811af32@gmail.com/T/#m30ef7259fe280660c55733a7ba37c356d292fe10

> #3 would be the best of course (it seems to be a nice extension, I might
> try to look at it over the weekend - though chances are that it won't
> happen or I will give up/fail. So feel free, anyone.).
> 
> [1]:
> https://git.yoctoproject.org/poky/commit/?id=2ff9d40ccb493967151bfed6aed889de45bdd464
> [2]:
> https://web.git.kernel.org/pub/scm/linux/kernel/git/kdave/btrfs-progs.git/commit/?id=c6464d3f99ed1dabceff1168eabb207492c37624
> [3]: https://git.yoctoproject.org/poky/tree/meta/recipes-devtools/pseudo
> 
> On 27.02.25 19:57, Lander0606 via lists.yoctoproject.org wrote:
>> Hi guys,
>>   
>> For my project, I changed the filesystem from ext4 to btrfs. The image
>> builds and flashes fine, but when booting the system some mount
>> problems occur because the root filesystem has UID 1000 all over it.
>> So, when creating the filesystem, the directories are not created with
>> /root:root/ as owner. Some important notes:
>>   
>>
>>    * Currently I'm on the master branch to use the newest kernel 6.12,
>>      but when switching back to the /scarthgap/ branch, the issue with
>>      permissions doesn't exist for a btrfs image. The filesystem mounts
>>      fine.
>>    * I use Fedora 41 with a btrfs filesystem as build host, but I
>>      checked on an Ubuntu 24.04 machine with an ext4 filesystem as well
>>      and the issue still persists.
>>    * I tried adding a fix with /do_image[postfuncs] /to run /chown -R
>>      root:root/ on all directories, but the issue still persists...
>>    * To test, I just mount the generated btrfs filesystem to my Fedora
>>      host and check the permissions with /ls -lah/
>>
>>   
>> Has anyone experienced similar problems with btrfs? Or does anyone
>> have an idea how to patch this?
>>   
>> Any help is appreciated! Thanks in advance!
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#64889): https://lists.yoctoproject.org/g/yocto/message/64889
>> Mute This Topic: https://lists.yoctoproject.org/mt/111420988/6084445
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
> 


