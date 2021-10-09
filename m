Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08A65C433EF
	for <webhook@archiver.kernel.org>; Sat,  9 Oct 2021 02:18:49 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web11.1987.1633745927649609458
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 19:18:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=o80rFomL;
 spf=pass (domain: gmail.com, ip: 209.85.208.44,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id d3so15449298edp.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 19:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M3fx6cpxSB3jz85fpPDX2OLuZuExlO4jbIxFplzx18Y=;
        b=o80rFomL31XDsiAs86GpiRUY9DyDdss7xy2kAuT2jEaw8qjvO1UQkTKVIkJp20Cl02
         OVHOEGvk+2PGnn2CU6HYJFFA3NQ6/eHat/HCF/jq+eAz/ViafCiwTkn+o0tdOD/5e7gw
         WgjFeIAqAS1PnBKWzXKFfaeZN2XVTzkswjV2uvdmVP+O9GU66rNPWeR2n1QDUalgQPlK
         jd5+Yqdqb//ebrRoyylfzSGmRFI3FhkOt4bhOXKzAYQd2Fl8pGpllbsuBEmt0YFyuVu7
         H9FXDnHJwM7vJiL2cxmsFzyWRjq9oT2jXOPv1MGU6vlR3FzNzTGwmaZNsbLFFnXUURoe
         r2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M3fx6cpxSB3jz85fpPDX2OLuZuExlO4jbIxFplzx18Y=;
        b=ILO0SDYjAg0JEcPA1jLEK6tte0PXaM0F37zmf7HvHWV4zRJ9lIYTXEFRvk5Pr5ZGjG
         VhMi4lB4ul4PzWxQ8+inAW2BhkIMgnuTtWRV4AJbSn+yXQvn0apn3NRfrcuuYJkI3wgO
         w4MMbc85waUWEnwUvyarrgB+4rCIDQQJbVlBolPwdGQkNWRZXcgFB3dNGy+fazv/G14Q
         sFGEob2BSF0QNs/1xvUuLMmdbtK0Mmgk4lcbwyWLgfAbt0ni4Vy78kSV0WvN2UGiLT/c
         qmCOxhdbBIuJyPLM9IGzLYSQQQU+kZg/+eiwrIJSkj6RMiMrweJTBm/PXUe2rSPg1WHF
         Z6mg==
X-Gm-Message-State: AOAM532ljWsCYCptOAeB1lYGWbo6wQLdXewCGQ5/f3u/4kkkTnaGfVPE
	S4TtYiYJTgtxDHXZBpRq8TTYzt8U8HdDfccM5G8=
X-Google-Smtp-Source: 
 ABdhPJyPki+VMYkLip+55x+vy9Tfas4OUZPPrldeMwbgMoUULqqxRaDG2+RIZ+hdeoKOT0KnC+H9jTP3enoKgrol2sQ=
X-Received: by 2002:a17:907:7fa8:: with SMTP id
 qk40mr8434741ejc.445.1633745925921;
 Fri, 08 Oct 2021 19:18:45 -0700 (PDT)
MIME-Version: 1.0
References: <laYy.1633708368952635911.w8hA@lists.yoctoproject.org>
In-Reply-To: <laYy.1633708368952635911.w8hA@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 8 Oct 2021 22:18:35 -0400
Message-ID: 
 <CADkTA4PwLNXJoU3ZdnE=0pa3UA0tpewNU1-yrr+M45EHp5dHwQ@mail.gmail.com>
Subject: Re: [yocto] LINUX_VERSION_EXTENSION has no effect #yocto #kernel
 #dunfell
To: mrkozmic@hotmail.com
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Oct 2021 02:18:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55006

On Fri, Oct 8, 2021 at 11:52 AM <mrkozmic@hotmail.com> wrote:
>
> I have defined LINUX_VERSION_EXTENSION in my kernel recipe.
>
> I have no CONFIG_LOCALVERSION or CONFIG_LOCALVERSION_AUTO defined in my defconfig
>
> After i run bitbake -c kernel_configme <my kernel recipe> I can see in my .config file:
>
> CONFIG_LOCALVERSION=""
> # CONFIG_LOCALVERSION_AUTO is not set
>
> and at the very end:
>
> CONFIG_LOCALVERSION="<my extention>"
> So far so good.
>
> Then I execute  bitbake -c configure <my kernel recipe>
> and the .config file is changed. Now there is:
> CONFIG_LOCALVERSION=""
> CONFIG_LOCALVERSION_AUTO=y
> and there is no trace of CONFIG_LOCALVERSION="<my extention>"

Assuming what you are using as a kernel recipe is linux-yocto based,
the code that is adding the CONFIG_LOCALVERSION is a task that runs
after do_configure. So just running -c configure, it shouldn't be in
the .config (and the default kernel configure task, will copy your
defconfig -> .config, and then lets the kernel process it, so you will
have symbols in the .config that are not in your defconfig
explicitly).

If you can make your recipe available, I can probably offer more
specific comments.

Bruce

>
> Yocto: dunfell
> Kernel 5.4.70
>
>
>
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55003): https://lists.yoctoproject.org/g/yocto/message/55003
> Mute This Topic: https://lists.yoctoproject.org/mt/86173754/1050810
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #kernel:https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

