Return-Path: <jandryuk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E721AC433EF
	for <webhook@archiver.kernel.org>; Wed,  3 Nov 2021 13:06:05 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web09.7129.1635944764956622071
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 06:06:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Er9emYZ2;
 spf=pass (domain: gmail.com, ip: 209.85.208.170,
 mailfrom: jandryuk@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id k24so3704680ljg.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 06:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z7xcuojYs1fKeRtF6JQD0f24SfOmiZrEwelItIs2KvI=;
        b=Er9emYZ2Osg534NnRDYZvEQ+Xqx9bct1vfNv82EtFTiljJEsoRIgcV7YA1/hSWdwzJ
         VVoEbgOzEGGcr8qf7DNC1p3Fem2EBf6XqeYPVWlw4tqVud/+tvSqvjSzvVBSRWCn5Igy
         ye/qhLgox+1a/QI9RDSXr0CBcxuQdbuFqijl1K5ODJ77LzOwttOUgB+MvIzX6QkURqBR
         ySdL/OKsGQDqb1gIQyfIQhg8Wp3rfT3Y5cNnjzrH+nbUOIq3f+dN3LMhz3QPFdqteKwy
         MbnZzvSE2VlBywDKVFPY1Y/tJybCE1tAv6H/kaIuszwZVVw/k0f9aG5Y7Wh99q9lHY07
         pxPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z7xcuojYs1fKeRtF6JQD0f24SfOmiZrEwelItIs2KvI=;
        b=pPE1uwXcoDnBDho6Yx9RyEeCEW1we5dhDSATkYLREJSX0YbG02HS31YfBepbByBWPK
         /W3eYar5FUMWtxDH5BPGD+yuc/v9cNgMon/faUcfLKfCgLl5TsqhV54c+WjMHC20DDXZ
         AbZ2GP4EQTo1mA8no7+AAdxiWtAxgHNWoukKFWlIduga6eGxbMopt4/i9UuK3w+peNAI
         LasybWz2xJYt3nA61wIDINVACHR1+Z+Q2du8iHy/X/4M8nEiUyRWUIsJbaeRA4s0t0Qf
         tIbJlzUfO7RbdKDWfY5tLE9FzpYF4xdlAeXtOC3kMZS3DAHvWKT2nLWzUbmOQicr6F0W
         w6+Q==
X-Gm-Message-State: AOAM531hhVua0mqOGN1jkTskA86AB2rZnWxNjjKs06vWrbMG1GioS4zg
	0zE3yyxa6/0zFfR+q8baSWBRG5MYEyW4SFkYcUs=
X-Google-Smtp-Source: 
 ABdhPJwz7gM1aPF9qjXEanY6rlks6+uXdRiDCUMTfantLDIz/ztzGdpiMJ65AOuuH9imdyvjyoaQT3hBEtb7kjk8JiQ=
X-Received: by 2002:a2e:bb98:: with SMTP id
 y24mr44416005lje.168.1635944763234;
 Wed, 03 Nov 2021 06:06:03 -0700 (PDT)
MIME-Version: 1.0
References: <16B1E8342AF01367.31256@lists.yoctoproject.org>
In-Reply-To: <16B1E8342AF01367.31256@lists.yoctoproject.org>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Wed, 3 Nov 2021 09:05:51 -0400
Message-ID: 
 <CAKf6xptPSo5BRXwiFUCQ393Vmm-OMMqZFzpzcuJEzuFRGPRnbA@mail.gmail.com>
Subject: Re: [yocto] [meta-selinux][dunfell][PATCH 0/3] Fix dunfell build
To: Jason Andryuk <jandryuk@gmail.com>
Cc: yocto@lists.yoctoproject.org, Joe MacDonald <joe_macdonald@mentor.com>,
	Philip Tricca <flihp@twobit.us>, Yi Zhao <yi.zhao@windriver.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Nov 2021 13:06:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55225

On Wed, Oct 27, 2021 at 10:04 AM Jason Andryuk via
lists.yoctoproject.org <jandryuk=gmail.com@lists.yoctoproject.org>
wrote:
>
> meta-selinux fails to build libselinux and e2fsprogs.  These patches
> fix that and then removes the unused e2fsprogs overrides.
>
> Jason Andryuk (3):
>   e2fsprogs: Remove misc_create_inode.c-label_rootfs.patch
>   Remove e2fsprogs override
>   libselinux: Fix restorecon_set_sehandle.patch context

Ping?  I'd like to unbreak meta-selinux dunfell.  Other branches may
also be broken, but I'm not in a position to test that.

Thanks,
Jason

