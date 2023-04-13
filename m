Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02833C77B61
	for <webhook@archiver.kernel.org>; Thu, 13 Apr 2023 20:17:11 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.2423.1681417022987200031
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Apr 2023 13:17:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Pax0T2LU;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id o1so20744058lfc.2
        for <yocto@lists.yoctoproject.org>; Thu, 13 Apr 2023 13:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681417021; x=1684009021;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F0xDGojpu/kt8ZISL8ppiI3LxQq936jLAEKs1OsuVnQ=;
        b=Pax0T2LUHakYknUnCV4ygSMoT13PGW52yvQCFCIMHURyje4VgCPNW8MknY2OXE5sMM
         9ZpoID0pDiiPwgPn1WAN0ZeEFD7OQdXK1qalGMYdui2Qe6gnlvzkhApqY4wsS9yCT8hG
         bXXHBrD26+HyK66yx896tXZCvXNos6gBkbzoGADxxtBcjkfkGluD+DlcyuLW1k5WX7dg
         0N1d0z0kp88IZc3U2xnWQZi08uOw+OHjrWu/ix0PNlvrMvvexTTcsEzIKeB3+GBP1N0q
         jGzVKDrvIeZ3v2TK1GjP7q6/HvUHFIYFrfi2oTsnhWZbkK3b3EubErYxdmKyqEjBqQ5m
         9WEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681417021; x=1684009021;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F0xDGojpu/kt8ZISL8ppiI3LxQq936jLAEKs1OsuVnQ=;
        b=MWi6r6Xrh2harMX9oVvSBsWy3E1hhKFsFj5jamdQlVwRnr8/LPVFbhkPfKnqjpctJ0
         rqjyn7Cz2nhzQDu+GSACMg0X58PVbWDeGjkkIsVlZhuXIjXGI9x5HhR554RSAwQxmT8D
         2LQW8NV+1Jtxx/PRxEt99EjUTZwfLhg44/Liai3HdBV5rvzi/prdx+NfnZeLGRb5sjoE
         dK3y1F8713Am+JDex05KzAukdTFpUYFFrudqGIUBTccsL3KCLEHzaHKmAlbNM7Z8BUIe
         DS6luQAhSkYQF1loy5PLrQScogB1aO14r8j0nPEarMnODPkJ/xLlFd0bbSvsNaV+Jcr4
         4O1w==
X-Gm-Message-State: AAQBX9c1VFKVhVQeuboXmSZ1Cy7O2eSWKtvObw+VO9ZUep55WuRM4y5I
	g3NiaxHCKnfmnJlz5C7CbLushcix3cAHG632984=
X-Google-Smtp-Source: AKy350aXnbS5ZbEkM6TObZzuGHeLd4TJUTv+a99fLfTnQtRRCeAfs28rrcA9wV8p1tZnoX2IIiFKTddFKQK/+kCyLXY=
X-Received: by 2002:ac2:511d:0:b0:4e1:dbbb:4937 with SMTP id
 q29-20020ac2511d000000b004e1dbbb4937mr1195565lfb.11.1681417021043; Thu, 13
 Apr 2023 13:17:01 -0700 (PDT)
MIME-Version: 1.0
References: <YT3P288MB0272CE87F9889C6CDF8F0AEDCF989@YT3P288MB0272.CANP288.PROD.OUTLOOK.COM>
In-Reply-To: <YT3P288MB0272CE87F9889C6CDF8F0AEDCF989@YT3P288MB0272.CANP288.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Apr 2023 22:16:49 +0200
Message-ID: <CANNYZj-PbAvTqK1N80Pf5YKkAN+BTjYpVu+TPy_n_VR3u1bpzA@mail.gmail.com>
Subject: Re: [yocto] Give access token to yocto build. (pass environment
 variable to bitbake)
To: philippe@rmds.ca
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Apr 2023 20:17:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59710

Such access tokens are best placed into files which can be accessed
only by processes that need them, same as private ssh keys. What
executable is using it, specifically and with which protocol?

Alex

On Thu, 13 Apr 2023 at 21:54, Philippe Lafontaine via
lists.yoctoproject.org <philippe=rmds.ca@lists.yoctoproject.org>
wrote:
>
> Greeting,
>
> I have a recipe that fetch a pre-built binary from a build machine using an access token. Every developer will have different access token, for obvious reason. Therefore, the token cannot be hard coded in the recipe.
>
>
>
> Our current build setup uses a docker container (crops/poky). Our current solution looks like this:
>
>
>
> The host OS has an environment variable containing the access token. This token is then shared with the docker container.
>
>
>
> Once the yocto environment is source we:
>
> export ="$BB_ENV_PASSTHROUGH_ADDITIONS PRIVATE_TOKEN_GIT"
>
> where PRIVATE_TOKEN_GIT is the access token
>
> While this strategy does work. We were wondering if there was a better way of doing this.
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59708): https://lists.yoctoproject.org/g/yocto/message/59708
> Mute This Topic: https://lists.yoctoproject.org/mt/98248615/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

