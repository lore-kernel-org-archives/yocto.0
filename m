Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBE4C54756
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 17:47:34 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web11.27450.1747763249475829585
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 10:47:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Lwe0R2Ik;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6f8c53aeedbso73981416d6.2
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 10:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747763248; x=1748368048; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zZkW0tjNHsAqQLfPFxJaFWbZLKX+zqXFjSQVIoSSJ6w=;
        b=Lwe0R2IkItgyF+RH8LF2T6KeDnQqt5oFYm3HCphdg55XvfjqvwFg39BpOaDJDn6oKf
         psBG32vgZVgwfryOjiRMrKCL238r57nlm2I6ZqI7chBaNFiOFtzc8J0J+3X+Y+XrHh6j
         QmDXJ1hsV0IdfhaUe6uA1tmzagc7hHKIcrz8a4qSfZS13l163p4dzUIvWg0JAzRCZogZ
         ztxx2FQCHXQ8lB3TKhDL2EpYTyRMy97hof1jGp8kSu7iBP2/YjfrHZd3BzqyT5bt5xmg
         faY6bqxsrAwkrnk3PueGuzj6ekUkRPy4IiicfHBsmv/LraFtu8Cknl2UWgzhPLitB9gH
         8mIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747763248; x=1748368048;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zZkW0tjNHsAqQLfPFxJaFWbZLKX+zqXFjSQVIoSSJ6w=;
        b=kYcXVMoM0sexXSy4fNGSmH1g+buoT2W3n1WJQeDephCISATsJ1KcgCi4EkWku4Y7JC
         opHCq8Bw4WDXe0ub9Lc+eMrv9jXkgh91SmiC0SwnokcFqGlsx1gqPaUw4Ga5C0EMhNwi
         1uYsKh2txGodjeJ9qS58y63xmSaPzxVB8C7I81tCBx/lasv5ODSI5o9H8VkQC1RgosBY
         Bp5KA5RkeGjHYBtajbMA8Xut33/gRRBPf7/AYb8IYN8QNhzLMnRcHfwMLxAPpUqDTc/q
         TKUIwc3l+6a4i78+3bwQ1i/xCMYpe2kGI9mY7Ms8paoXmZ2zo9/NEK5SjLEZGIr3bcrx
         Y11A==
X-Gm-Message-State: AOJu0YyT7h8nbNU94d+F4+GKdZYcpiLp/x2y/c8JLu7wR3aqKx+IvNNG
	J0zBwGtnVMCTkifREkRFzH5vmdzrj4GeMEvAWspgSv+nrEADAR2F+rK27NEjZrubeF3XcVux4au
	fFIOwPLb0zbUfcfmhwFcmPmKGJ5fBtL0=
X-Gm-Gg: ASbGncvVsCl1nt92tygRyPNpbsS/nHGoTucdFmJBMnja2rY4qjX3T9ukNoc7sqPL9aJ
	kYvZ5u1Rrr3vPBkuZkYlOvamuSGjoeOvj03CHkTS51CaiuGh3tyGVwW9vH5mjx6L/2f0wC4HXhA
	C6N37Vm082pFyJYInglbkmpGkursFJpLqH6Q==
X-Google-Smtp-Source: AGHT+IFkr6M+izKiHKYvYzsCro1rMpbv3chQrYPDJfJKLdVFtVty9+RbiFlHf3khQMOXNtCKaor9hRK7bpG6ohfrt8I=
X-Received: by 2002:a05:6214:1cc9:b0:6e8:f2d2:f123 with SMTP id
 6a1803df08f44-6f8b2c576dcmr277652106d6.13.1747763248429; Tue, 20 May 2025
 10:47:28 -0700 (PDT)
MIME-Version: 1.0
References: <CACq04CGjYASSJR6ie3FFGs-BgJLZipzrX8ozBmzrBSrAb+ODyA@mail.gmail.com>
 <CANNYZj_B9XVH1xwUY=4fn7c8B961rVgSqsZGhp-MNixZZUGOxQ@mail.gmail.com> <CACq04CH1gLdyeFdGmf6btfVYeXky6Ygi7bpUNvJyVdmR9XaLHQ@mail.gmail.com>
In-Reply-To: <CACq04CH1gLdyeFdGmf6btfVYeXky6Ygi7bpUNvJyVdmR9XaLHQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 20 May 2025 19:47:17 +0200
X-Gm-Features: AX0GCFtv6mWBjawS32DflHewFbivmF4xcKSs_p8oZcsga6J5S7GsCrZz668Lh8c
Message-ID: <CANNYZj9g0B+=UvnJzZF9ZvtmiSWFQZ3qiN0WDJ8ihH=2iZReMg@mail.gmail.com>
Subject: Re: [yocto] Only build the packages that needs rebuilding
To: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 17:47:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65378

On Tue, 20 May 2025 at 19:29, MOHAMMAD RASIM <mohammad.rasim96@gmail.com> wrote:
> So i still need to build the image first to have the cache, which takes time if i have a modest machine specs.
>
> Are there any public sstate caches that someone can use?

Yocto project publishes the cache that is used by its CI test
pipelines. If your target machine is qemu-something and your config is
standard poky distro, then sstate from that will match, otherwise
there will be misses, or it won't match at all, depending on how big
the deviation is.

I'm working towards defining 'official yocto configurations' which
will be easily to select from bitbake-setup, and come with guaranteed
sstate. It hasn't happened yet.

If you have a really modest machine, asking someone with
Xeon/Epyc/Threadripper to make a build for you, and give you sstate on
a USB stick is an option too. It's a trick often used in Yocto
training classes.

Alex

