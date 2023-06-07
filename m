Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81B0DC7EE29
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 09:37:36 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.4356.1686130655504900928
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 02:37:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=bcgsLBiE;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2b1b06af50eso63993541fa.1
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 02:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686130653; x=1688722653;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ORPrUCMwmCOGaG6XrDl8XSpWD+oZKX56eJ8HSbOXS0M=;
        b=bcgsLBiEUj56AC1oqvuXlAPjmMtWwR7UvEg271pVcOYNbbPPEUp8Pj/DnAxhBIqS1n
         oxiRRt5Ob+6ZpKnsXlk6oCVo0VKomqzWUubMrJlEO2vgdJkYAWmEbAcE7Iaj2ZlOV2x+
         pfHa2OE8SXgJ/GfHtooDjTGoqBOcr/9vH2C0OaNNtTG7fObMSy4Ih9hNBFGN+nbo8bWr
         Vm0GNbNvxPGJSg3lmZRe+7QTzFY9K2TRCiyNvW8TtW0lB1bCUwZENcx/0jev88fDgITq
         XDvataosbnDdoEeB37R7V0Lt4VUChWkzPJp59ymmICaQICGbElJvaMYMNFZ2dNrsZoC4
         skSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686130653; x=1688722653;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ORPrUCMwmCOGaG6XrDl8XSpWD+oZKX56eJ8HSbOXS0M=;
        b=UownfUgvubRV78K8octbWv2NzJ8NAKuLX2BUprWF8lPuswiqK0fFwMzY8lJA9PFaQ+
         y/wfWSxdnK8sBH1gqGx742MRZAXnpLMApespCGdLyMb4tcc/tNUESplyOFBmakW92K+E
         XII2fRyv91Lcm6AYF2mVE0AHSp13vxk0T9e5Qy33q1ZG61XwoFZSDfbolTgmDTf8BdLm
         w9qPR395giSXb92xTadGoJM8RGjJ1uvH60AIrlz1enMcAvQHeTcI3NbJKf9Zg73LJ0Xi
         sm6SstFhYih70NGo3g8DPt9yNkZzIunePFOn+m2deHibjjcesMVGdlZDPSsQjrFcqJfR
         TmvQ==
X-Gm-Message-State: AC+VfDzLLKaYdPd2GxGDU4Ky2qDuETDmwlcWy6lbqBjp4IBvWyjiaN3q
	/ZabhZFoSvIZ28BLbc6y0h7mq608WUjq/ffpqdU=
X-Google-Smtp-Source: ACHHUZ7pUP5AsW2v+15ivnBI4BqnLCJwGToDFrRT/TljCXisDskLnmo+lTSJiIJTBWFIeMc6boRuR+dezZyw1mVEgQ0=
X-Received: by 2002:a2e:6a08:0:b0:2ad:1ba2:eff9 with SMTP id
 f8-20020a2e6a08000000b002ad1ba2eff9mr2117425ljc.20.1686130653354; Wed, 07 Jun
 2023 02:37:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAHUKmYbWvf9LoEkk31rNg+dzqFnw_zxyYuwNBr1HkUmjVUGe7w@mail.gmail.com>
In-Reply-To: <CAHUKmYbWvf9LoEkk31rNg+dzqFnw_zxyYuwNBr1HkUmjVUGe7w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 7 Jun 2023 11:37:22 +0200
Message-ID: <CANNYZj8Q5AOVig83euLbs7+Jv9YR+sDajSedg4nen-93egP1ww@mail.gmail.com>
Subject: Re: [yocto] How to scroll in the yocto devshell?
To: ecordonnier@snap.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 09:37:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60199

devshell is not a regular terminal window, but something running under
tmux or screen. Use ps to see what you got, then read the manpage for
it to see how to scroll :)

Alex

On Wed, 7 Jun 2023 at 11:26, Etienne Cordonnier via
lists.yoctoproject.org <ecordonnier=snap.com@lists.yoctoproject.org>
wrote:
>
> Hi,
> how to scroll up/down in the yocto devshell (started with bitbake -c devshell my-recipe)?
>
> Scrolling with the mouse is scrolling through the command history instead of through the terminal. Using shift + page up simply prints "~2". Using "reset" doesn't fix it.
>
> Environment: Ubuntu 22.04 with default terminal.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60198): https://lists.yoctoproject.org/g/yocto/message/60198
> Mute This Topic: https://lists.yoctoproject.org/mt/99380857/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

