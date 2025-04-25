Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A74C369D1
	for <webhook@archiver.kernel.org>; Fri, 25 Apr 2025 06:21:26 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web11.1297.1745562081076823050
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Apr 2025 23:21:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M2Kv/K5A;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e5dce099f4so2405970a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 24 Apr 2025 23:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745562079; x=1746166879; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B9fWhsrU6GVLfifFq4N3wNo5zWfzRAgoQsQh2GN076A=;
        b=M2Kv/K5ADXI+94HH04IcIlEmb1jSGhzgZaDh0K3wiZ5KyIGVMa4STrlAD1KcOuGphu
         j2Lbh71Beq4pf75RBMB/tNCRXM66CeqJG7n19/eBP+KiaeD788IoIOI145pT32DNsAZ0
         bMrBHieq8k0ZJkna+HtHHn8JgrEQHhM2/DPMql1v7cZj7UinXtaHPgVtUL+pjR1vdG2r
         otnQvmPy1rRywOPu7eizU99r612WuCLbK2JOWNuwfSq49gjg5w4eblW2gUxjMhZ0oDRm
         HgZu8vEMoZWCHybQfJRaSG7cTNSB5bFFN6nepIZ66zSdI5XO39klIyKfemM7ghE/KV9i
         kx1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745562079; x=1746166879;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B9fWhsrU6GVLfifFq4N3wNo5zWfzRAgoQsQh2GN076A=;
        b=KywYzVyF2lePvS9HoX+Z08RXbdiZh+R4p1S8uYj3cyIlBjJRCy2gdttG+x4kjlltWq
         6Z1McpEPnu6KiLRE2FeUhwtPmVzImbPEWGY6GvoP+WxVFJIOlwz6RTNt/QcCh6N9rZo6
         JbNPCct68juVeI1IqZpnhfUz1O66HZVWRj9GO4dMHJQ8HUBPM+7IVkLgZQrxbaP2egC2
         qRbvt75k6t+8LOSdeubYHMjUmeMQ4uTQTJMe4sxPvbBoveWzWMJNgldGKdMOimGfsBnW
         cuUPRVNYkMolenzzsQq9ua1zkSQDWfqKTjMJqQNU0TgSnLjaOTmBVJLxwVP4dLZLOSLE
         hBNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGDq7GyKT91cbEY+2bz8XooW/9FewiuAhmvZcw4vocs8mXooyFZ/fG4g1D8CNjj16itq/NkA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yy02uRqkr18CWwcC1Mo9uWYTdFb3xdrUTsydzWBakuA8xz+dtCh
	C3zNSC6ojhHRN5AGM/VMJiUIvv5ryYwpRI9p+B+xb8XrEmC4opXU
X-Gm-Gg: ASbGncvxgGcLDWjkyPkmng/8ubPmIxoZRxCH6uFyvpNCBGVoT46V10VX9egQ1tsPPxB
	5oUCOiPTfusdUZ5aogKZ02pEewtOb4MlEx1vzgx4WrAXnpt17BQnVPNvRNzUOvVq/4LvrPnI4nO
	ElUpFW0liJqYZn529dguHJyqij/oGMqRObcp2cx5qlReEkDHXuDmn/0p/UwWaJHbEvkayPY/ooa
	RpJfyLzld8vNlNiGv1bl6BOnY1Zv931HMJHL0YgORk0vkT2E40LuZLgAKZRI7UIQZ9iqxanu6F7
	YqkKHOmLAUgNxPeLGN4TL7GXYxOQaglcmWc8DheREg+pHQP+
X-Google-Smtp-Source: AGHT+IEbLsO6FasdtQiAhFUAxDqfnCPbXPHKpjl9f5JHmrfCCoJLSCsINquH5teUd9tvgh+IXYLJWw==
X-Received: by 2002:a17:906:da88:b0:ac1:e881:8997 with SMTP id a640c23a62f3a-ace710482demr126566166b.3.1745562079064;
        Thu, 24 Apr 2025 23:21:19 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e587093sm82022766b.80.2025.04.24.23.21.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 23:21:18 -0700 (PDT)
Message-ID: <33176f93-ccb4-48e1-a322-3be9ae04ac6a@gmail.com>
Date: Fri, 25 Apr 2025 08:21:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Btrfs root filesystem permission issue
To: Ferry Toth <fntoth@gmail.com>, yocto@lists.yoctoproject.org,
 landervanloock@gmail.com
References: <tRtu.1740682678597454399.5171@lists.yoctoproject.org>
 <1adcf6c5-d4be-4701-948c-3a6425f3da07@gmail.com>
 <6c8ec705-3a92-47a3-bbb3-f43686234b6b@gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <6c8ec705-3a92-47a3-bbb3-f43686234b6b@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Apr 2025 06:21:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65250



On 4/24/25 22:18, Ferry Toth wrote:
> Hi,
>
> Op 01-03-2025 om 15:35 schreef Gyorgy Sarvari:
>> The reason seems to be this[1] update of btrfs-tools, which included
>> this[2] commit. The important change is that previously mkfs.btrfs was
>> using lstat syscall to get file stats, but then it switched to nftw libc
>> function to do the same. Pseudo[3] however doesn't support this call -
>> it "knows" that it exists (at least nftw64), but there seems to be no
>> implementation.
>>
>> Possibilities at the first sight:
>> 1 - Downgrade btrfs-tools in your custom layer (unless you need any of
>> the new functions)
>> 2 - Revert the change with a patch in a bbappend
>> 3 - Make pseudo support nftw
>>
>> #1 and #2 would be a fast change.
> There is a problem with mkfs.btrfs that creates a file system with 
> errors if there are hardlinks out of the the rootfs (as we have). You 
> can this easily by running btrfs check on the image file.
>
> The change if fixed after btrfs-tools v6.12
>
> See this thread (Errors on newly created file system):
> https://lore.kernel.org/linux-btrfs/d98ffb69-195b-4c07-ac56-8ae1f811af32@gmail.com/T/#m30ef7259fe280660c55733a7ba37c356d292fe10

So old btrfs generates bad FS, a new one has pseudo problems... Trouble
never comes alone, does it? :)

I have submitted a pseudo patch[1] some time ago, though there isn't a
lot of enthusiasm about it. It works on my machine (TM), and if you want
you are free to try it of course, though I don't think it will be merged.

[1]:
https://lore.kernel.org/yocto-patches/20250407191414.2992785-2-skandigraun@gmail.com/T/#mfd5a2338ea6fefc5ed734c0beb85ac26806b8684


>
>> #3 would be the best of course (it seems to be a nice extension, I might
>> try to look at it over the weekend - though chances are that it won't
>> happen or I will give up/fail. So feel free, anyone.).
>>
>> [1]:
>> https://git.yoctoproject.org/poky/commit/?id=2ff9d40ccb493967151bfed6aed889de45bdd464
>> [2]:
>> https://web.git.kernel.org/pub/scm/linux/kernel/git/kdave/btrfs-progs.git/commit/?id=c6464d3f99ed1dabceff1168eabb207492c37624
>> [3]: https://git.yoctoproject.org/poky/tree/meta/recipes-devtools/pseudo
>>
>> On 27.02.25 19:57, Lander0606 via lists.yoctoproject.org wrote:
>>> Hi guys,
>>>   
>>> For my project, I changed the filesystem from ext4 to btrfs. The image
>>> builds and flashes fine, but when booting the system some mount
>>> problems occur because the root filesystem has UID 1000 all over it.
>>> So, when creating the filesystem, the directories are not created with
>>> /root:root/ as owner. Some important notes:
>>>   
>>>
>>>    * Currently I'm on the master branch to use the newest kernel 6.12,
>>>      but when switching back to the /scarthgap/ branch, the issue with
>>>      permissions doesn't exist for a btrfs image. The filesystem mounts
>>>      fine.
>>>    * I use Fedora 41 with a btrfs filesystem as build host, but I
>>>      checked on an Ubuntu 24.04 machine with an ext4 filesystem as well
>>>      and the issue still persists.
>>>    * I tried adding a fix with /do_image[postfuncs] /to run /chown -R
>>>      root:root/ on all directories, but the issue still persists...
>>>    * To test, I just mount the generated btrfs filesystem to my Fedora
>>>      host and check the permissions with /ls -lah/
>>>
>>>   
>>> Has anyone experienced similar problems with btrfs? Or does anyone
>>> have an idea how to patch this?
>>>   
>>> Any help is appreciated! Thanks in advance!
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#64889): https://lists.yoctoproject.org/g/yocto/message/64889
>>> Mute This Topic: https://lists.yoctoproject.org/mt/111420988/6084445
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>


