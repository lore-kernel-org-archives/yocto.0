Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D3EFC021B8
	for <webhook@archiver.kernel.org>; Sat,  1 Mar 2025 14:35:11 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.9761.1740839708447409465
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Mar 2025 06:35:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RF7kJOYV;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5e51e3274f1so912820a12.0
        for <yocto@lists.yoctoproject.org>; Sat, 01 Mar 2025 06:35:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740839707; x=1741444507; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BHRWS0FYkDf0deigNqmsohjK2XaGqM1yTHzApLwRhmk=;
        b=RF7kJOYV0NIqWM5oQyALenFAM6kXkpJdyJDLXdBW3tzdh2sb9rLuQxXwmwiXzEvkou
         W0DB8ow8Y5LakCba5xwWhrCQtC+XMYOrdDxsVZcA1yvTz6tc2HV4mISgomDf2ZWouIhd
         yHJF+cR5EALp6+UrpKZ5HzbKtsgWtt2VrpnyQ+v0iYSzlCLtz/UrqkAj0w9qbKstW10x
         JA/Y/CYUTfbBltnl2sPGEy7vkgImZcZ9KqZkeoFy0PUDxVJI4oXqiYXH9FT2lAkI1JU3
         fEGvC5HOH5ho3cXSaMiBnKz9SfXDuwKRDDcjBJGy8v33cl41BOwlrS0Bx1lTrgCf41aN
         fWdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740839707; x=1741444507;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BHRWS0FYkDf0deigNqmsohjK2XaGqM1yTHzApLwRhmk=;
        b=BdTIKhXUNOzjUegXFItKgk3LcZYXoLS98WsCvzSXRyI4K4WrsQeecn/co67AIgfu5X
         xceADG5E6ffCBMo9yvAvjSTxMAjBq7WWkEZlr6UjpCnJ/8LOpWzpPz4ezJS0MgUDYLQH
         BqE2wSX2OscFYzqmpooTZgDn2Il/VOvtc6WLFS1PFISdBvWOYZxQJ6IEy+CIrW9DULyO
         BBc/GSTsX6Q9k+LeGiwch8cJGKaZzv//tpOX01u6k9XNrEq08oSju9/SD5lanHzRLykB
         HyB+IfVFIsVUTOm4g1do8898twp6Y68LGg7Aw8yKT0GPaN70BGbv85hxzrjTFajHwXW8
         fd+Q==
X-Gm-Message-State: AOJu0YxobU/fttkjL9FlLJA9lm3G6TFtlZLxd+JQmSHG+sLhMdoBfGTS
	SAIn2tv7VGn+lYmOq+BXxA/fE09u4vzzlneGBW2FMZZUjq9KRxpvVgSClg==
X-Gm-Gg: ASbGnctexpP3Bud10YWU9vQMi4vXgnRafCXvWXjnQx3jrPIUhyQic2bAeU5dlTsXAGe
	n6KLgHJzvxUmaEN8JuwNwrJZjximsr5lfpj0uaLdSFxKAMBqA//PsuxVfl1+yUh+F9d2lHawlvR
	QjxL6XPdruQsw0KnVgRCMhFzWSnHoeNd4I5frktxUJXJe7hnDbwAa6Ogw1UbRtlxm5/rSfrLTx6
	1hOOoet7NWjzqVcEgmSGiXlzq1KL5l+dRKpFEFNwzgHZCEAEFejY+FhPqUPOlRLjRbwiyQwycxf
	qnmMBK2lVxuAEtbV2svQXE64t4ybVAuG1O1pNN/JPu6o+IJ6aE1q
X-Google-Smtp-Source: AGHT+IEaLLqvj6QH5lOvwCgHxmaUI13IVaugUgWS/hZQJ9R5WKJhR3w6Fb34ia40PbKhYG+OKWAy1A==
X-Received: by 2002:a17:907:9816:b0:abf:56e3:e88c with SMTP id a640c23a62f3a-abf56e497b5mr271684766b.42.1740839706380;
        Sat, 01 Mar 2025 06:35:06 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c75bfe2sm479167866b.151.2025.03.01.06.35.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Mar 2025 06:35:05 -0800 (PST)
Message-ID: <1adcf6c5-d4be-4701-948c-3a6425f3da07@gmail.com>
Date: Sat, 1 Mar 2025 15:35:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Btrfs root filesystem permission issue
To: yocto@lists.yoctoproject.org, landervanloock@gmail.com
References: <tRtu.1740682678597454399.5171@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <tRtu.1740682678597454399.5171@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Mar 2025 14:35:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64902

The reason seems to be this[1] update of btrfs-tools, which included
this[2] commit. The important change is that previously mkfs.btrfs was
using lstat syscall to get file stats, but then it switched to nftw libc
function to do the same. Pseudo[3] however doesn't support this call -
it "knows" that it exists (at least nftw64), but there seems to be no
implementation.

Possibilities at the first sight:
1 - Downgrade btrfs-tools in your custom layer (unless you need any of
the new functions)
2 - Revert the change with a patch in a bbappend
3 - Make pseudo support nftw

#1 and #2 would be a fast change.
#3 would be the best of course (it seems to be a nice extension, I might
try to look at it over the weekend - though chances are that it won't
happen or I will give up/fail. So feel free, anyone.).

[1]:
https://git.yoctoproject.org/poky/commit/?id=2ff9d40ccb493967151bfed6aed889de45bdd464
[2]:
https://web.git.kernel.org/pub/scm/linux/kernel/git/kdave/btrfs-progs.git/commit/?id=c6464d3f99ed1dabceff1168eabb207492c37624
[3]: https://git.yoctoproject.org/poky/tree/meta/recipes-devtools/pseudo

On 27.02.25 19:57, Lander0606 via lists.yoctoproject.org wrote:
> Hi guys,
>  
> For my project, I changed the filesystem from ext4 to btrfs. The image
> builds and flashes fine, but when booting the system some mount
> problems occur because the root filesystem has UID 1000 all over it.
> So, when creating the filesystem, the directories are not created with
> /root:root/ as owner. Some important notes:
>  
>
>   * Currently I'm on the master branch to use the newest kernel 6.12,
>     but when switching back to the /scarthgap/ branch, the issue with
>     permissions doesn't exist for a btrfs image. The filesystem mounts
>     fine.
>   * I use Fedora 41 with a btrfs filesystem as build host, but I
>     checked on an Ubuntu 24.04 machine with an ext4 filesystem as well
>     and the issue still persists.
>   * I tried adding a fix with /do_image[postfuncs] /to run /chown -R
>     root:root/ on all directories, but the issue still persists...
>   * To test, I just mount the generated btrfs filesystem to my Fedora
>     host and check the permissions with /ls -lah/
>
>  
> Has anyone experienced similar problems with btrfs? Or does anyone
> have an idea how to patch this?
>  
> Any help is appreciated! Thanks in advance!
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64889): https://lists.yoctoproject.org/g/yocto/message/64889
> Mute This Topic: https://lists.yoctoproject.org/mt/111420988/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

