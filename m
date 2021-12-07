Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72E74C433F5
	for <webhook@archiver.kernel.org>; Tue,  7 Dec 2021 00:27:21 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web09.60336.1638836840029232878
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Dec 2021 16:27:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=eOgCjdiv;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.48,
 mailfrom: steve@sakoman.com)
Received: by mail-wm1-f48.google.com with SMTP id
 az34-20020a05600c602200b0033bf8662572so1053395wmb.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 06 Dec 2021 16:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xGRX2PkiZ6mAcfgLt1VkTPc9ZfPJcmP6VFMR9Ww9HgE=;
        b=eOgCjdivqtl9T21ppBb2TwgQQ/Ryiuh21S3UacO/lPvGbHx16tFt7ay8h+gBovCSTV
         V6Al7GJqam877x+8ObzPpFDOrvbQ2lnWgbuo5YLDbpSE6C3Bbq4U0dtqH8sOt1Hj2O2q
         xe/Jc3mQnMqGZFFXYfFKZPHSguWVUfn54865zykEudbe5afIl14AOl6G86K8serLPkZp
         q979wdGHW1Hx5OdVKxqz59iYzBhk4RBl4BNSjQ6farbdubs3YbgJai5gXBh2meOZg1Bs
         7xecXvsJ8yhV+Qh4tMr07wtqc1gRWJp+1VDd3/uvH7wdFOHAb22SUH/Ckb6su2IvyxRH
         IUEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xGRX2PkiZ6mAcfgLt1VkTPc9ZfPJcmP6VFMR9Ww9HgE=;
        b=wPWgXza9Q4hfQd5/yrrs+0DVvITjbmeAtVkItW41aKLKD9LEJMvnEzfyH9aBaWQYF9
         5BHpLTEll3BNHYayiDRxHnHc+efXnpEZAtIltDZ37pSe0nPAcbJ14FkjOltdW0rO2FwF
         rs1lrPI1IJXg1XnEhH5MgdM41Gq2QOgK6S0OJXgiIx8YE0MvXGnIS+j6Sa2ttFv9OK5e
         0tUCys5z5j8JuOMfMbM+JHTEerHzc5zDLnStITSJx7kRCjC9Gw4qmDJm7/nRCrWmKLKZ
         Uoy6S2sZ3C2ZlAcHk6Y788KsPhlSZkif9sgqb18GxEyl19lQW4WdCqhmmr1nK1a2maKH
         ydrw==
X-Gm-Message-State: AOAM532CFVRMiTiUkqaO5zo3fcV/LOEQoWFM9bIdTcHLvfgx3gPtU+Jz
	DADu+IIakeTtjons5zodmSHRR0RQFQPt1EV4EqsiZQ==
X-Google-Smtp-Source: 
 ABdhPJw6LKAALfz6eOlahDdc8JuJj8CfJzW+M+PY9VJtt5tjbGuM7yJ2hz4FcSLBOaqd3IkgKi1pMCp4qN530Nonq7w=
X-Received: by 2002:a05:600c:1988:: with SMTP id
 t8mr2477545wmq.48.1638836838363;
 Mon, 06 Dec 2021 16:27:18 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAF1P4FEULketOK1DizcW5hmutF2HZdVyPZLhD4gh3cuiP31GAg@mail.gmail.com>
In-Reply-To: 
 <CAF1P4FEULketOK1DizcW5hmutF2HZdVyPZLhD4gh3cuiP31GAg@mail.gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Mon, 6 Dec 2021 14:27:01 -1000
Message-ID: 
 <CAOSpxdap8+v96Dkk9ofrQmFkbc43Cuv=VErjgdj6CDupJ=uGxg@mail.gmail.com>
Subject: Re: [yocto] Setting BUILDNAME to a string broke in 3.1.12
To: Henrik Riomar <henrik.riomar@gmail.com>
Cc: yocto@lists.yoctoproject.org,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Dec 2021 00:27:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55490

On Mon, Dec 6, 2021 at 6:40 AM Henrik Riomar <henrik.riomar@gmail.com> wrote:
>
> Hi,
>
> We set the BUILDNAME (via local.conf) variable to the output of "git
> describe --long --always" so this info ends up in /etc/version instead
> of a date. (i.e to know the exact source version of the code
> deployed on a target)
>
> This has worked fine for us up until 3.1.12, but now we just get a
> date (201803...) in /etc/version.

After doing a bit of bisecting it appears that this commit is the culprit:

reproducible_build: Remove BUILD_REPRODUCIBLE_BINARIES checking
https://git.yoctoproject.org/poky/commit/?h=dunfell&id=0d6ebaf8ff3232248ebf0e859cd09aefaee54a8a

Since this was cherry-picked from master to fix some reproducibililty
errors I suspected that the issue might also exist in the master
branch.

A quick test with:

BUILD_REPRODUCIBLE_BINARIES = "0"
BUILDNAME = "my custom name"

added to local.conf confirmed that /etc/version was indeed
"20180309123456" instead of the expected "my custom name"

I'm out of time to work on this today, but perhaps Richard might have
some ideas on how to address this.

Steve



>
> Note that since switching to Dunfell we were forced to set
> BUILD_REPRODUCIBLE_BINARIES to 0, so the build system would not "mess
> up" /etc/version, but not even that helps now.
>
> What's the official way to get something more useful than a date (in
> the long past) in /etc/version?
>
> Thanks,
>  Henrik
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55484): https://lists.yoctoproject.org/g/yocto/message/55484
> Mute This Topic: https://lists.yoctoproject.org/mt/87544009/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

