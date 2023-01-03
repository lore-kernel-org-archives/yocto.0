Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9869C46467
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 17:33:32 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.70361.1672767211377929987
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 09:33:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nl71sTFg;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id cf42so46603506lfb.1
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 09:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=b95g5toUSnAcDW4oJoeJXf1vInFjsWiFS7ZUeqRsliE=;
        b=nl71sTFgYamSuyn8yMEIk90qI/u9zvmfprH6DT/jfNgi3yFJnYmej+2tSkVbgYYzHy
         n5Quq4Yig9ZUzzzJJHwgLk32zJ1qxpfCg9Ark/Sh/jqnR82pWufnkxJOVSXeLLuIXVkd
         Y0ZJf92vFJvIukN8cJhQRwEgwDPf3qgZ4z4/iLkI24IhN6s3pMF4Xa1BHQeF0WPsdzC/
         HEvhoACQTMsMOb/+3D1j/fQ4gc+TDAEwDXkDZ1HVGDDJ6yTzMiuAOaBKmEP8jxfgN9HU
         PXFtjztTy+HsF5387WNWWfxZYXTEAIJo66+cGF/f+XjKdyXck6P5kdjIVcoLpXJukilr
         SA0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b95g5toUSnAcDW4oJoeJXf1vInFjsWiFS7ZUeqRsliE=;
        b=Igg1paaNlkaKXERxue9AC7li36aj23wRCAw6olhwS+pAW6jfN9CmTVQFb2qHoy8uxX
         fgE/vPnTjJz9m0LErD2ckPBm1w+3CRggUAS+D8crvHahy2jC4N0A7V35XtO1nIOFuZhh
         sscagcNzF92+r8JyM9CrUEGigw7+5lUAk8giQkKReYv6Y+CaNT0E7JjAmEYnWtSHkfl0
         YzZnawnzik3JMUcd7M9ZrrAq1Z4yiaF6SWsabUzSmv1au6UjEt704ruXY4vp+j670/f/
         +dVJhoSbtSxNUWW1L/J6K5aggMJMKUU4WZCQ3MoKe14VJICYGxsQkZko72lOd2UDlSSX
         HCow==
X-Gm-Message-State: AFqh2koH1J0HWBgXf26PCLlnmqhEOsgl425g+S6nHKkIPkVttW5ByCRl
	zpMpujCDW4QMQl1W7mcgVmK16vzH9B5LF2IGrgA=
X-Google-Smtp-Source: AMrXdXtURdgTL/T1w7okd5L4PKx2frMk00n/1WCmBnwdiXqqqsLtUvVzvVhZzcEM2mbx3NngOiAGM+rNbJ36usdYetg=
X-Received: by 2002:a05:6512:261f:b0:4ca:fd2a:d984 with SMTP id
 bt31-20020a056512261f00b004cafd2ad984mr1468595lfb.445.1672767209371; Tue, 03
 Jan 2023 09:33:29 -0800 (PST)
MIME-Version: 1.0
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org> <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com> <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com> <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com> <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com> <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
 <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com> <1736D5DCC66BC3DE.4716@lists.yoctoproject.org>
 <CANNYZj_8C0sZA07y86ErjC8kL02oTPFahEV8Tsq9yfVWmxz-HA@mail.gmail.com> <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com>
In-Reply-To: <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 3 Jan 2023 18:33:17 +0100
Message-ID: <CANNYZj-MhN3ruV4KtXKtD+qRkn82i4rtcuK=rMjOWkLn96Rjyg@mail.gmail.com>
Subject: Re: [yocto] bitbake controlling memory use
To: Ferry Toth <fntoth@gmail.com>
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 17:33:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58914

On Tue, 3 Jan 2023 at 16:58, Ferry Toth <fntoth@gmail.com> wrote:

> I know you don't want to spend time on this. So don't. Others may have
> an interest or a tip to improve Yocto in this area.
>
> I'm just trying to get an old patch from Richard Purdie to work
> (http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/wipqueue4&id=d66a327fb6189db5de8bc489859235dcba306237)
> with later fixes by Trevor Gamblin.
>
> Or alternatively something based on https://github.com/olsner/jobclient.

By all means please do. Everyone will benefit from teaching make to
abstain from starting new processes if RAM is tight, even people with
xeon/epyc grade hardware. It's not that I don't want to spend time on
this, it's simply that I do not have the time.

Alex

