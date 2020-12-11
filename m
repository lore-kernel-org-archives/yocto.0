Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com [209.85.167.195])
 by mx.groups.io with SMTP id smtpd.web09.8926.1607702103645320957
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 07:55:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ts3lIK9m;
 spf=pass (domain: gmail.com, ip: 209.85.167.195, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f195.google.com with SMTP id s2so10304631oij.2
        for <yocto@lists.yoctoproject.org>; Fri, 11 Dec 2020 07:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=j2Ll4bitTf1QJ/iM/ac/WM73yNmmC/fBda4kQb3Spbs=;
        b=Ts3lIK9mi2XqF3PLOdMdT+1NzLh4bVn+ndOhQAdNuRREOJHaQ4eNodR6NZ01HrDQnj
         aiqPsbdLq4WQgj076YjSoI11ByjKstSGpcWi5NnVm4dnW9ofMgUjs2ZB4EfSSY9pxdx5
         Ks8wkii+AmIx07+zIeEtjf1A945zqcPf1XaZ1mmWGWf9zBB7l6RKni1OGd2GM/FJ1+9o
         7UzIRUDWWS/DSQ4pUb+vnrc2VFy8qE8NCh+M31A2Gk1/ROHLHfuxjUGQkpRxDoY0j6pn
         KhvmuV5qjEx7e4EiQRWRk/kLNoJjnk5ql5guzHaNk75YBmSCHWlGPLNTUV2BdJkGkc9A
         Iikg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=j2Ll4bitTf1QJ/iM/ac/WM73yNmmC/fBda4kQb3Spbs=;
        b=o+TGI70zeDrZGTrR81Yx5oEd34xsSDOaVPhxN8tJOfDuBaPdTosByiasE+46gk0Jej
         8yvcX5LCvTy5Iyo6hFs+BbepTYky56/mHbL33ltmxkm/a5iCMhA6Jy4CPbk1GT/t60qg
         EURL4wt8IpGgCWOcBgM3tVB5VzjRMeHQd8jmi8x5nRT5cqNRK3DJ11I//AYI9G6bWlj3
         devWPQGbyfA80q1Ndo+eD08G+P7irv4tbc3Ac0+QHWxeF1wDRUkrMUMz0YUgzQjUa1/s
         Q9jnqtHi0faJ+qJuBL0zH7VsH2uTYhdz1SPDtnBhe5CrisESuQODIUcojNAJyey+nbf9
         ymmw==
X-Gm-Message-State: AOAM531uIUdphwCFc08HsKJzGI/+foPUnpMlmVob9v/jVxmHzbTrvDHt
	9UlSDECVZ3rI1rDl7L7/XEM=
X-Google-Smtp-Source: ABdhPJw46/IUcKh17vWteQbJRA/INXKswzh6E97zxtG9VgfDnt0wyNLdzFm9hTS6iDJ/Mv65JBo6Aw==
X-Received: by 2002:a05:6808:3b8:: with SMTP id n24mr9461365oie.89.1607702102993;
        Fri, 11 Dec 2020 07:55:02 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id j11sm1876897oos.47.2020.12.11.07.55.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 07:55:02 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Fix Rock Pi 4 serial port
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>, Trevor Woerner <twoerner@gmail.com>
References: <20201211144752.13869-1-JPEWhacker@gmail.com>
 <CADkTA4NtO3M+aX0aFNBFqu9-7sGZxRCo9GrJKojmve0Dry3Gpg@mail.gmail.com>
Message-ID: <a0c2e84f-acb8-2619-dbab-a401cc20e2b3@gmail.com>
Date: Fri, 11 Dec 2020 09:55:01 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CADkTA4NtO3M+aX0aFNBFqu9-7sGZxRCo9GrJKojmve0Dry3Gpg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 12/11/20 9:16 AM, Bruce Ashfield wrote:
> On Fri, Dec 11, 2020 at 9:48 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
>> Fixes the serial port output stopping mid way through the boot process
>> by reverting the kernel commit that caused it.
> If you want, I can also pick this up and merge it directly into
> linux-yocto and do a SRCREV bump.
>
> Have you tested against 5.10 ? I'm working through issues with it now,
> and it would be nice to fix this before it pops up again on the next
> reference kernel bump.

When I use `linux-yocto-dev` as the kernel provider, it works just fine 
(in fact, I can't seem to find the commit that *fixes* the problem 
there....), so I think 5.10 will be OK? Is there something else I should 
try instead?


I'm not sure if we want to backport it to linux-yocto or not... I 
presume upstream backported it because it fixed something, so I'd be a 
little worried about a regression somewhere else.

>
> Cheers,
>
> Bruce
>
>> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
>> ---
>>   ...-resolve-supply-after-creating-regul.patch | 53 +++++++++++++++++++
>>   recipes-kernel/linux/linux-yocto_5.8.bbappend |  4 ++
>>   2 files changed, 57 insertions(+)
>>   create mode 100644 recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
>>   create mode 100644 recipes-kernel/linux/linux-yocto_5.8.bbappend
>>
>> diff --git a/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch b/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
>> new file mode 100644
>> index 0000000..3dd336b
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
>> @@ -0,0 +1,53 @@
>> +From a414d39b848002e15531f2538d2b6427ce51d07d Mon Sep 17 00:00:00 2001
>> +From: Joshua Watt <JPEWhacker@gmail.com>
>> +Date: Thu, 10 Dec 2020 15:59:47 -0600
>> +Subject: [PATCH] Revert "regulator: resolve supply after creating regulator"
>> +
>> +This commit prevents the serial console from working on the Rock Pi 4
>> +for some reason. It *appears* to possibly be fixed by some other commit
>> +upstream, but after a lot of head scratching and bisecting, I was unable
>> +to find which one, so just revert it for now and we can deal with it
>> +later.
>> +
>> +This reverts commit 96c6b5d5775637b3095ef934f871044811fd4db7.
>> +
>> +---
>> + drivers/regulator/core.c | 21 ++++++++-------------
>> + 1 file changed, 8 insertions(+), 13 deletions(-)
>> +
>> +diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
>> +index 25e601bf9383..be8c709a7488 100644
>> +--- a/drivers/regulator/core.c
>> ++++ b/drivers/regulator/core.c
>> +@@ -5187,20 +5187,15 @@ regulator_register(const struct regulator_desc *regulator_desc,
>> +       else if (regulator_desc->supply_name)
>> +               rdev->supply_name = regulator_desc->supply_name;
>> +
>> ++      /*
>> ++       * Attempt to resolve the regulator supply, if specified,
>> ++       * but don't return an error if we fail because we will try
>> ++       * to resolve it again later as more regulators are added.
>> ++       */
>> ++      if (regulator_resolve_supply(rdev))
>> ++              rdev_dbg(rdev, "unable to resolve supply\n");
>> ++
>> +       ret = set_machine_constraints(rdev, constraints);
>> +-      if (ret == -EPROBE_DEFER) {
>> +-              /* Regulator might be in bypass mode and so needs its supply
>> +-               * to set the constraints */
>> +-              /* FIXME: this currently triggers a chicken-and-egg problem
>> +-               * when creating -SUPPLY symlink in sysfs to a regulator
>> +-               * that is just being created */
>> +-              ret = regulator_resolve_supply(rdev);
>> +-              if (!ret)
>> +-                      ret = set_machine_constraints(rdev, constraints);
>> +-              else
>> +-                      rdev_dbg(rdev, "unable to resolve supply early: %pe\n",
>> +-                               ERR_PTR(ret));
>> +-      }
>> +       if (ret < 0)
>> +               goto wash;
>> +
>> +--
>> +2.29.2
>> +
>> diff --git a/recipes-kernel/linux/linux-yocto_5.8.bbappend b/recipes-kernel/linux/linux-yocto_5.8.bbappend
>> new file mode 100644
>> index 0000000..5a31842
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-yocto_5.8.bbappend
>> @@ -0,0 +1,4 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +
>> +SRC_URI_append_rock-pi-4 = " file://0001-Revert-regulator-resolve-supply-after-creating-regul.patch"
>> +
>> --
>> 2.29.2
>>
>>
>> 
>>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
