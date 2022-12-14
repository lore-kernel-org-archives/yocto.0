Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C0B8C4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 08:38:53 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.97850.1671007123948199569
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Dec 2022 00:38:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=I0SOejOW;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id z26so9244464lfu.8
        for <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 00:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W3XCAerMFeSWGAzKiCCi9EdreO5PhtZNq+aczoeO9E0=;
        b=I0SOejOWWyuDP82sd7c9CZrah3fjK3/+Up8pnJp62Uopv/o9stsSd75iGlgHJz/Dpf
         kkz2eivGurFe8uKfBCB2NTbD4nR/W0aGN5ek/1p14Xs+ign2g1cIOz/0wfJwxAk3Y6ZD
         U8XtQ5YlTHZMOG2YelQX3/KnhxQpsJ/1ujtzYok0EGvdBPhUEwAmIq93f4Erw77ZZMKc
         RGyg1Dx36l7Yng7kqSWZR1+8HzLxF2M5I1p72DJZ+PhugnzfZyOUI0Bq1E5+Dejx5Udj
         fri2kzVPRGTli36nuAaOMFkMYmE4MsWJAkDwryX3118boRqErOJJA/G8lRbJT1FeiQaU
         NTaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W3XCAerMFeSWGAzKiCCi9EdreO5PhtZNq+aczoeO9E0=;
        b=p8EjOGCd57exrLL5xB7BaDCkAmcfB43ML0KOGnqjoSK8h6StPgcPZAT8SvCJA+dwyQ
         NYrOBhU3XHixplm8dt1dXp8kfhHGwPY1IjbIuP/oKNxYV3HnlbBak+4eR3a0e/IWVqO4
         eyTHdySgZ59HQZE5ElklB0x6HnP5ipavqAd9wtVdesRiCq/5IoV+7CqZL6nlrA8cmuIP
         +jnu+W9zD17xcFmHPaSLT1RhPFRyr8S3yf4Ex5o4Qv2yRhpvnZElAnk15cyVTB5lBl+I
         SKJEXIBHTzV7dpUDbyAstzMPwVVXE8Cc9XF1qccHm2tjrH3EdQHuVxEyWCco8Kpg2zKu
         DW1Q==
X-Gm-Message-State: ANoB5pnjaxVpfbp4e+bgfQXCapI6Xcsjd0GAYnsFSX0qJ7xjFzELdb3n
	FliGLquAPp/sRq6zHB5C2+l3vo8W2khCnzSEF5Q=
X-Google-Smtp-Source: AA0mqf4+631LUfxAmQXwm6jVF3U/uYUN7QrZDsMbI+JWRBm0bj1v7Qia2OGDJ/xnnD9qepMdvge/Qqk1KZJlZTH01gI=
X-Received: by 2002:a05:6512:259f:b0:4b5:a6ba:b1e4 with SMTP id
 bf31-20020a056512259f00b004b5a6bab1e4mr2247585lfb.393.1671007122075; Wed, 14
 Dec 2022 00:38:42 -0800 (PST)
MIME-Version: 1.0
References: <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
In-Reply-To: <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Dec 2022 09:38:30 +0100
Message-ID: <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com>
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
To: David Antliff <d.antliff@unsw.edu.au>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 08:38:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58790

It helps if you explain why you want a monorepo in the first place.
What use case is being solved by that?

Alex

On Tue, 13 Dec 2022 at 22:11, David Antliff <d.antliff@unsw.edu.au> wrote:
>
> Hello,
>
> I'm seeking advice around using Yocto in a mono-repository,
> specifically how to include my own C/C++ applications that have their
> source code stored elsewhere in the same repository (and specifically
> not under the recipe's files/ directory, or anywhere in the layer structure).
>
> For example, my project might be structured like this:
>
>   myproject/   (root of repository)
>       - src/myapp1  (C++ app with Makefile)
>       - src/myapp2  (C app with CMakeLists.txt)
>       - yocto/layers/meta-local/myapps/
>           - myapp1.bb
>           - myapp2.bb
>
> The core of the matter is that the applications' source is not in a
> separate repository, so bitbake's fetcher needs to look locally, rather
> than remote. Having bitbake download the same repository again via git
> seems inefficient, and it's also potentially a huge download.
>
> I've looked at using EXTERNALSRC but it disables devtool, which I really
> need to use. When set to an absolute path (based on TOPDIR), it also
> does weird things with the paths in the build directory, resulting in a
> directory tree that depends on the user's environment (the path to their
> home directory, the path to where they checked out the mono-repo, etc).
> It is also considered "hacky" and not for production use according to
> some sources. I don't think I can use this.
>
> I've also looked at setting FILESEXTRAPATHS to an absolute directory
> based on TOPDIR, and this actually works, but the Yocto docs seem to
> implicitly discourage this, as my recipe is in a .bb file:
>
> | Best practices dictate that you accomplish this by using FILESEXTRAPATHS from within a .bbappend file
>
> What would go wrong if I did set this in a .bb file?
>
> Another option is to have the external system that invokes bitbake (in
> my case, a GitLab-CI pipeline script) make sure that a fresh tarball is
> created from the original source and put into the files/ directory at
> build time. Although this will work, and it seems clunky, if it's the
> best option then I'll use it. Not sure yet how to handle tarball
> checksums in this case though.
>
> Is anyone using Yocto in a monorepo? If so, what approach would you
> recommend for the mono-repo project structure?
>
> Note: my applications' source files are outside of the Yocto layer tree
> because they are independent of Yocto and can be built with other
> toolchains - that's why I haven't put them under the files/ directory.
>
> -- David.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58787): https://lists.yoctoproject.org/g/yocto/message/58787
> Mute This Topic: https://lists.yoctoproject.org/mt/95654029/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

