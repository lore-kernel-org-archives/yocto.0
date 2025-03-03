Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9A9C282C6
	for <webhook@archiver.kernel.org>; Mon,  3 Mar 2025 21:57:39 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.7771.1741039051354624427
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Mar 2025 13:57:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HTWP4VRt;
 spf=pass (domain: gmail.com, ip: 209.85.221.51, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-38dcac27bcbso4125538f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 03 Mar 2025 13:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741039050; x=1741643850; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pY2BUzfJGLBPCJMsaFqNEy8C/H6PeYRKwhF6nXadADc=;
        b=HTWP4VRtrs7GLt5aSKLluAoRSG0Rogs05ywoNIl0CmrQ0eoRhjavpqOQ8gXLWVULHP
         aO5LXhBzEXuc8khaH6DvLzQAV+18se7ve5Y/hr3ixacFfRdJSwQ0ALj9OG8G5tTK6q7c
         johLJ7t4LWlhpQR9wZsZAf669WUXgxjkJepuAbuSJj7NHSvwPtmGzQjEdjmPZ73XofoU
         N8uN9Z8Uc1vBm+6pXE0vd/Wbz9948mUnLZIFOtLHP4ABkDII9Lec+FgTLOkH0CpwZP4y
         xOwxR5zcU6s7TSpiGl+LRkHVFVs1eZbdGbIYccE3s4x5CXORUmwpTCS9hQ0p2+YfKISM
         pR4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741039050; x=1741643850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pY2BUzfJGLBPCJMsaFqNEy8C/H6PeYRKwhF6nXadADc=;
        b=waaVW8BkXvtD7mEN8AZmL6LLBb+SJqEnhsjygUpS5DobByD2OnctBfQDzLbDF1cHrF
         7IxwCM9Yxkw7BcbiTYifyxXXrUI3cW93GJO1colEPORwlLgldDHEO6X2wHYPZwZrlyAV
         RwtigWasgvIptTA0XGm2VhK80FeOwFRcX1O6M8jkB4SAEOItP8cl25ejbRyLhoWc40Sa
         hOyCooyGUZ1G7AORxHcAxtKnj89Q2IBiRdEAGQwWlx4L4Iafnm7xOQJJHHbFdLVqPQ9+
         M3/+QON82Ba7IczSbOd4/CUZ3F1a59uA4Si7N3ZcH0tH5XPDZSu3hlpaNqacY1mBS69Y
         OdHw==
X-Forwarded-Encrypted: i=1; AJvYcCXMqTbIoMNedUWZSwlL1aM9qPaWjrIPHRAiV2pjr71OSkco/Y1QGU4eEBlyptD2e1WUCTS+xQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwOfpZh2j7LUlyY3scEh6faAd3yZZRCgjmiCZTa3ByocUvMIo0j
	oz2fqncMGIU733br5B76tLhiJyJAVB3PZyyGFoRMbw5wTAZQoa9M
X-Gm-Gg: ASbGncvrgPWXPzgJNeug9hgXdRMwG8gsbpsuCGrYDRQYz7HnRmBaYk0BQjmAbYmWCP1
	pQX+M8rW210a7KQooRSvKNs91PJQPEaC1qVGpuo7kn3wFymGaN+6j6ufMOKau5s8zGOIAu2HZEt
	HbY+awndGwSr1z1JAH9ld/NY47n7VN8DZmXRxZhKumqR+OPYgn7KCyzZZHIrhjCnkjZviNJ138v
	sRqw5AEHmF0aGAn0ukx9K7rQajVykkgpnrtseE4r39xTAzkXsQ4N75B5llnRySYGjgleAo8vNIJ
	nVmmsaapXC0ldT1YfzJmXwJ515Ym3tGEuKiBdmfEaQz+dl+cTQ==
X-Google-Smtp-Source: AGHT+IEhlllcGMoxsaz8o3+1ie88RXA9+GJaNiUPdD9/w/mhJEPxef7WOBP0+hF/VOEKy1avTe0hkg==
X-Received: by 2002:a05:6000:1a86:b0:38d:e0a9:7e5e with SMTP id ffacd0b85a97d-391155fa44cmr632650f8f.6.1741039049463;
        Mon, 03 Mar 2025 13:57:29 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bcb61139esm4604925e9.12.2025.03.03.13.57.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 13:57:29 -0800 (PST)
Message-ID: <808dccf5-2633-4691-a8ba-359838ad3bab@gmail.com>
Date: Mon, 3 Mar 2025 22:57:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Btrfs root filesystem permission issue
To: landervanloock@gmail.com, yocto@lists.yoctoproject.org
References: <ee3d8230-dfac-4933-810c-586fff8ec0ba@gmail.com>
 <13960.1741038749845086087@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <13960.1741038749845086087@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Mar 2025 21:57:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64913


On 3/3/25 22:52, Lander0606 via Lists.Yoctoproject.Org wrote:
>     I have created a draft patch[1] - simplified (and not a full
>     implementation), but it seems to do the job at least for btrfs-tools. It
>     works for me(TM), though it doesn't always mean an awful lot - I only
>     checked the generated FS with core-image-minimal, which looked what I
>     expected. Would you mind giving it a try, if you have time (or
>     anyone else)?
> 
>     If it works for you too, then I will write a couple of tests, and
>     attempt submitting it for the real thing.
> 
>     Of course, everyone is free to try/comment... I intend to submit
>     something very similar to the current patch - the sooner comments (or
>     rejection) come, the better it is.
> 
>     (If no feedback comes that would discourage me, I will try to submit a
>     patch around Wednesday-ish in any case, for further scrutiny...)
> 
> 
>     Thanks
> 
>     [1]:
>     https://gist.github.com/OldManYellsAtCloud/
>     f6b6ecf37ab65db8d61ac7bed583a7f4 <https://gist.github.com/
>     OldManYellsAtCloud/f6b6ecf37ab65db8d61ac7bed583a7f4>
> 
> Thanks for the patch! I did have a look at the code and added it to 
> pseudo, but when creating the image, I did encounter the following error:
> | DEBUG: Executing shell function do_image_btrfs
> | 0+0 records in
> | 0+0 records out
> | 0 bytes copied, 9.021e-06 s, 0.0 kB/s
> | ERROR: failed to add link for inode 262 ('/home/landervl/yocto-tegra- 
> master/build/tmp/work/jetson_orin_nano_devkit-oe4t-linux/tegra- 
> espimage/1.0/rootfs/./EFI/BOOT/bootaa64.efi'): File exists
> | ERROR: unable to traverse directory /home/landervl/yocto-tegra-master/ 
> build/tmp/work/jetson_orin_nano_devkit-oe4t-linux/tegra-espimage/1.0/ 
> rootfs: -17
> | ERROR: error while filling filesystem: -17
> I use btrfs-tools 6.12, included in the master branch of Poky. When 
> removing the patch and cleaning the objects for pseudo, the error does 
> not occur and the image builds fine. It's important to note that I did 
> not clean the full build and started all over again, just removed the 
> current sstate for pseudo because the full build can run for a few 
> hours :D. I will start a clean build for now to see if the issue may be 
> gone. My machine is a NVIDIA Jetson Orin Nano, I use meta-tegra as BSP.

Most probably it won't - I don't think a new build will change. Thanks a 
lot for trying - I will look more into the patch, and get back once/if I 
get to the bottom of it.

