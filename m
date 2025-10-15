Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3432ACCD190
	for <webhook@archiver.kernel.org>; Wed, 15 Oct 2025 07:56:51 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web10.10463.1760515006007890339
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Oct 2025 00:56:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dcgdDOv0;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-46e6c8bc46eso41360935e9.3
        for <yocto@lists.yoctoproject.org>; Wed, 15 Oct 2025 00:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760515004; x=1761119804; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y3zMDJ0taPfdnE69NyvSEG3qYqRyytq3wOusNkBOrTs=;
        b=dcgdDOv0Qw12qN13pjkcc0tgw6Ab5qPyXH27tSPriSoWuEO7LyLGeaYBwBTRUr+9Hd
         HP2EjCpuvaUkxrtkfih+7Upr7OdakKFfZKLIs3bjrDTc3p5kMCYh0p3wE+rvRugRKYKD
         0/i6I/HnBTdT8wvFfDm8f5UktmX7xeW0fRujPi4ZiHebuW3hsV8SkvcpiyFQQgRutSYu
         7/xlGsJ+9J4X5vWSRlJZtXPGWvjDGt24Ab0TnKibAk8ym13lfET73ao53tlCD4CySm6d
         uhmRHpQz+RvZV16aohNIzm/EzNo0qxvCt6WgVbLMgGbVxa0W/rdDxfZaMS15S16TKvjW
         x4bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760515004; x=1761119804;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y3zMDJ0taPfdnE69NyvSEG3qYqRyytq3wOusNkBOrTs=;
        b=NNg8GHIhUcGkuz8ZGBvNc+E2n1rbsHVaF/UUXeHYyFOQiA81FPHQmV5H/gp3oSCYYS
         cXGX+/94pMculbGMXKGNmuyP/vXMlvcgeftLqAC8PUpvTy34joGeXPVZayOSia1EUa1a
         6z5ieoZQ/v+/PVe7Pi+jQD2B50RSFWubR7ubE5B2XYoiVxbDlGyocOaGLp7x9B4n+WKg
         vOmtMtJTHEbnsNrMJcvmMeByClLFR6yelInNSiz95yvkBzswV+VsmJjHYLouTRYvFIma
         R09o68eaVCwMuuijR5+7pQj5d/Hlxy4dQCO8oy7jmaDR2MjC9vVf8JmXwUuH5OXEXvFi
         yvpA==
X-Gm-Message-State: AOJu0Yy+sKw7K0i2NNZzXV/vVFN3IMjtoXknKoS+b0teW/MA7bDODIpq
	y+KweUpbtb5lecRlnaTasa+O6SJFBQSIuv5C5tjla+TuPy5uAYSxhYQJvLDjjw==
X-Gm-Gg: ASbGnctM5Ls9M8AKK/hFT9jC/kLWERlEqeag+YrFEiU5TkzqG0jOzNhHGSRCsGXxIxf
	jN3rvP6ea60LEgMgB+xm2VlSMsxym0RDuIS+K17Wsir0Du7lEBC1+RBzTp5KghxHibM5gqaJdDK
	j3DB7us5U8n3gndjCr8P2ddtWkHQY/ei9ht3hWfL+lS5J+f87DHA/S7/HhAezgfcmlwNpbVqn+1
	ha0c78VkF0Q3fYgvjP2cJKyu5ie2zij2M9BFhXlqW+0ICjzDONLjkBYhP/v6Bo7dnBCylRQv6TS
	2HlGUFS6RHspxmmTogZsSmvHPTbzp2uJSSmMf0jCsdlXva7U11NHi7lYJuZWWMcAjTGusiQkcw3
	7VuomdYenAI994rH+hhSLrCbWxAExJMygvo1zksohbd96Wid3KwkoI3HpEYQd
X-Google-Smtp-Source: AGHT+IEiznlmKJxA3wDcQ3i1MxAwa6jkvKR8JAHj46K6fHv8j3b9k2PW1+NNWb9/0lZdUfMym5o3/A==
X-Received: by 2002:a05:600c:4584:b0:46f:b42e:e367 with SMTP id 5b1f17b1804b1-46fb42ee40cmr138661645e9.41.1760515004047;
        Wed, 15 Oct 2025 00:56:44 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb489accbsm327413285e9.14.2025.10.15.00.56.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 00:56:43 -0700 (PDT)
Message-ID: <b3332a61-b4a9-44dc-a1dc-84543f45192a@gmail.com>
Date: Wed, 15 Oct 2025 09:56:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [Scarthgap] "ModuleNotFoundError: No module named 'imp'"
To: yocto@lists.yoctoproject.org, bongini.simone@gmail.com
References: <CAHdr16oXZoe5fVbvqRvv5Q3SOTodRfMKKdRrR0uY6dZTN7xTQA@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAHdr16oXZoe5fVbvqRvv5Q3SOTodRfMKKdRrR0uY6dZTN7xTQA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Oct 2025 07:56:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65934

On 10/14/25 12:43, simone bongini via lists.yoctoproject.org wrote:
> Hello All
> i'm trying to build an image based on scarthgap.
> I'm facing 
>
> ERROR: our-image-initramfs-1.0-r0 do_rootfs: Could not invoke dnf.
> Command
> '/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/bin/dnf
> -v --rpmverbosity=info -y -c
> /home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs/etc/dnf/dnf.conf
> --setopt=reposdir=/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs/etc/yum.repos.d
> --installroot=/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs
> --setopt=logdir=/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/temp
> --repofrompath=oe-repo,/home/devlinux/board.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/oe-rootfs-repo
> makecache --refresh' returned 1:
> Traceback (most recent call last):
>   File
> "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/bin/dnf.real",
> line 61, in <module>
>     from dnf.cli import main
>   File
> "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/dnf/__init__.py",
> line 30, in <module>
>     import dnf.base
>   File
> "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/dnf/base.py",
> line 29, in <module>
>     import libdnf.transaction
>   File
> "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/libdnf/__init__.py",
> line 8, in <module>
>     from . import error
>   File
> "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/libdnf/error.py",
> line 28, in <module>
>     _error = swig_import_helper()
>              ^^^^^^^^^^^^^^^^^^^^
>   File
> "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/libdnf/error.py",
> line 15, in swig_import_helper
>     import imp
> ModuleNotFoundError: No module named 'imp'
>
> ERROR: Logfile of failure stored in:
> /home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/temp/log.do_rootfs.3572531
> ERROR: Task
> (/home/devlinux/BOARD.1/scarthgap/board-bsp/meta-sd96/meta-sd96/recipes-core/initramfs/our-image-initramfs.bb:do_rootfs)
> failed with exit code '1'
>
> issue caused by Python 3.12 that is not compatible with "imp" library.
> But, why swig in scarthgap generate error.py that includes "imp" library?

Interesting question - I think also that it shouldn't do that.
Random first thought: if you look into the log.do_configure of
libdnf-native, what does it say, which version of swig did it find, and
at what path? Is it v4.2.1, somewhere from ${RECIPE_SYSROOT_NATIVE}?

>
> our-image-initramfs.bb <http://our-image-initramfs.bb> is an our
> recipes that inherit core-image in order to create a DM-Verity fitImage.
> Note that it works with kirkstone poky. 
>
> Thank you all,
> SB
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65930): https://lists.yoctoproject.org/g/yocto/message/65930
> Mute This Topic: https://lists.yoctoproject.org/mt/115750455/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


