Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C082BC433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 17:49:17 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web08.30181.1644428956327901269
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 09:49:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dE+23XkS;
 spf=pass (domain: gmail.com, ip: 209.85.160.179,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id s1so2457946qtw.9
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 09:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1Nx6yx+rhYBAjhX7R3ZqLREm8pt5MIAQ0fSJ6b1RnZg=;
        b=dE+23XkSVHl/AdRK3vvCFhLqKa/SKEJDGSvanCXJDepoqo34NspbBQQfKexTR0fVxw
         g0AiUN06oQpxuUHkMR+xNbhbpoFVumZ3b+B6KctCl6w0VSij4QWRgxe5truJY4gmwl76
         cTxo1YbE+TZaXYQ/LC2SerGZILupM4dcV4N+1Y3UVwawu8U2Jjy1KuXx/Td8CuzfodTg
         pMj3tgb06m8tu38W5AvvicYCKOKzGslbok90BHReA7U3La+WIVGPk6KZvA7gE4JajsFx
         MA+PtBCnH3O7/Hfdahaxcg4cQrmjef7jcKB6Q/MS+a/J7dziY0ZjXuqk27tTOz5HcEvm
         PcyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1Nx6yx+rhYBAjhX7R3ZqLREm8pt5MIAQ0fSJ6b1RnZg=;
        b=RQ4nazA13SSWTm0Y6XpG0nutGEsPmSjkcKDfD7r0m0FUO0UcslD9cS5ZrzIsHDoMQu
         hR+uPCl7av/VY39q6v1FRiRrBFnRILQxQGGDr0gq0c52MGBE8T5AAbjD42nYzPVWZ66W
         0ulJo9LeKOYzACHJKmFTx3LGhMxYgOVzW0NqT4aMYgGd4u2DjJPx8a8e/x4Gwv8HK1CC
         MGOZqXoxeZ8Qppv2fYq8Gwh5BK1U1yzbHdXBi2qkeQxM8rT5nyfKu6JcDQh0MxLBv8ce
         VtZ7/PzeIIG0DTkqPvTnkpstCagaB/KQC9bEVkZ54B1BAveUZXLYjsmIiZ/7+JgWkkdf
         ffBA==
X-Gm-Message-State: AOAM5308GH5E6cTRmtLLDfcMaiQVbSjg6Vo9+R7be3H8oVEnVuidrr34
	b5siCvXiPDnlmfwQMeo1H4KqVq1xntnGDW/cpbc=
X-Google-Smtp-Source: 
 ABdhPJzBmZJw/cJwjzYsjzw7f8wSptTV9cKZZoZgz4LQV+1M8syMTRKbKqCse1QFs6jT7sK3MFFDI+zs+O7lPUJT33Q=
X-Received: by 2002:ac8:75c6:: with SMTP id z6mr2162570qtq.532.1644428955242;
 Wed, 09 Feb 2022 09:49:15 -0800 (PST)
MIME-Version: 1.0
References: <Q8ra.1644418462082229338.hNo2@lists.yoctoproject.org>
In-Reply-To: <Q8ra.1644418462082229338.hNo2@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 Feb 2022 09:48:49 -0800
Message-ID: 
 <CAMKF1spZ9wOkNsj=AOF3oxfkNPrKi-cmmsJeb2UXpb-D+SLKPA@mail.gmail.com>
Subject: Re: [yocto] Error: Transaction check error: while doing do_rootfs
 task
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 17:49:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56126

I think core-image-swupdate.bb is adding sysvinit explicitly, please
remove it from that.

On Wed, Feb 9, 2022 at 6:54 AM Sourabh Hegde <hrsourabh011@gmail.com> wrote:
>
> Hello All,
>
> While bitbaking an image recipe with systemd configured in "local.conf", I am facing an error while doing do_rootfs task.
>
> In the local.conf :
>
> DISTRO_FEATURES_append = " systemd"
> #DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
>
> Bitbake error:
> .
> .
> Transaction check succeeded.
> Running transaction test
> Error: Transaction check error:
>   file /sbin/telinit conflicts between attempted installs of sysvinit-2.96-r0.cortexa7t2hf_neon_vfpv4 and systemd-1:244.5-r0.cortexa7t2hf_neon_vfpv4
>
> I was not facing this error before without systemd.
>
> Can anyone please let me know how to resolve this error and what does this error mean?
>
> Your help will be much appreciated.
>
> Thanks in advance
>
> P.S: If I uncomment DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit" in local.conf I get below error:
>
> ERROR: Nothing RPROVIDES 'sysvinit' (but [...]/core-image-swupdate.bb RDEPENDS on or otherwise requires it)
> sysvinit was skipped: missing required distro feature 'sysvinit' (not in DISTRO_FEATURES)
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56118): https://lists.yoctoproject.org/g/yocto/message/56118
> Mute This Topic: https://lists.yoctoproject.org/mt/89022709/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

