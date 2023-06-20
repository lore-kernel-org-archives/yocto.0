Return-Path: <sumit.garg@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34DE1EB64DB
	for <webhook@archiver.kernel.org>; Tue, 20 Jun 2023 12:09:06 +0000 (UTC)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
 by mx.groups.io with SMTP id smtpd.web11.8576.1687262941142099767
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jun 2023 05:09:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linaro.org header.s=google header.b=V1mJdrUR;
 spf=pass (domain: linaro.org, ip: 209.85.217.50, mailfrom: sumit.garg@linaro.org)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-44098ef627eso1337794137.2
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 05:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687262940; x=1689854940;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=37BT61sPnyOSCU+Z/dPUx/i9fLYi4E0winDL9SEsQ+o=;
        b=V1mJdrURKkPZx/s39Rkb0L4YaOSwy8Xm9JjAFjzioKOrjze7aNHsrm2CAd/6R9eQd3
         HC7HlOCAk8j4IWOAORh2smtAE9VL/s7hnZqb8pCw5+ooQSAHCSAA8lx/5Ujo/VjN2QVe
         3RY3PPp0xjmHA7DKdu/P+uEBblr8kU1jqk6+T5QMYm+UDIVzV86cbF1ZLhtYhxRRPhjx
         wKX/P2EkF28kBLeyeiNqijvIRAXMSOQDPtvsXPvnZMscOPOJVl/tpTi9wq/vAYMpgOxg
         euBTz3NbsVs0VNgoO/DeHdC+iOdw3u5fKGFyySHFYDYq5jqo6IZP9MlIGPhMIM90WgBc
         HLcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687262940; x=1689854940;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=37BT61sPnyOSCU+Z/dPUx/i9fLYi4E0winDL9SEsQ+o=;
        b=dxBjtlObamrt76ETPJQ8TgdVR/MW8T3f3REHRJZHe4+ZOES8QzD21rgGwuL+YihSC9
         S0u8r+FBhfJcm31MWUgXp28StylXdgyM90g22BQshMQvN7jaC13oZ4FA7cQH/aTluUSz
         wWNEdO6fQAknwruAgqQKGAQhm2gBg9HpJ4o2HAkknpzjInVawueMVlTirCBuQVnKrH2z
         onPbUK3zbYsZ6kaLDbc5EERAV+pCkv69TqRvanfZhoi7RjU6afbSH/fJaLuMyQUYRuup
         p/kbxPX7nFJkvOUn5kyN+QjifG1CcLZ26Z3vfP7lNHTSrF8vN8RWinL41nOObp6TSBWp
         AaVQ==
X-Gm-Message-State: AC+VfDz+OhOpmsCnFzLOEiDBFD71bAwYhX+1lYJOLIBQUJWIu4M7fU1l
	RTg260wHdAWwII0WKI3BNv2APaMHvuAw7YPBR62RYQ==
X-Google-Smtp-Source: ACHHUZ4RTIGfnjkiTgfn29CmxTb1dDNO7Bzy/Kx4CIqfXin+VfD23ROij7GL/sl8YoDJHTEMUiOXLyUSPf1CR3r110w=
X-Received: by 2002:a67:e3c2:0:b0:439:316a:e1eb with SMTP id
 k2-20020a67e3c2000000b00439316ae1ebmr4801884vsm.32.1687262940090; Tue, 20 Jun
 2023 05:09:00 -0700 (PDT)
MIME-Version: 1.0
References: <5H3q.1687192403619815582.2AB4@lists.yoctoproject.org>
In-Reply-To: <5H3q.1687192403619815582.2AB4@lists.yoctoproject.org>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Tue, 20 Jun 2023 17:38:49 +0530
Message-ID: <CAFA6WYMUrPajYNqhgjW9XD8H0inw_MnYLBTAE-ONhgpyg=yi+A@mail.gmail.com>
Subject: Re: [yocto] meta-arm-toolchain: SUPPORTED file not found #toolchain
To: Jesus.JimenezSanchez@verifone.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 12:09:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60360

On Mon, 19 Jun 2023 at 22:03, Jesus.JimenezSanchez via
lists.yoctoproject.org
<Jesus.JimenezSanchez=3Dverifone.com@lists.yoctoproject.org> wrote:
>
> Hello, I'm trying to add the arm toolchain to my yocto project but I just=
 got this error
> ```
> | cp: cannot stat '.../tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-linux-=
gnueabi/external-arm-toolchain/2022.02-r0/image/local/SUPPORTED': No such f=
ile or directory
> ```
> It comes from the `external-arm-toolchain.bb` recipe. I've checked and th=
e `SUPPORTED` file is in the right folder (the `files` folder where the `ex=
ternal-arm-toolchain.bb` file is). I haven't made any modifications to the =
meta-arm repo. I just cloned it and changed to branch `kirkstone`. After th=
at, I have configured my local.conf with this:
> ```
> TCMODE =3D "external-arm"
>
> EXTERNAL_TOOLCHAIN =3D ".../gcc-arm-11.2-2022.02-x86_64-arm-none-linux-gn=
ueabihf"
> ```
>

Don't provide a relative path here. It should be an absolute path to
your external toolchain install directory. This should resolve your
issue.

-Sumit

> I have added this to the `bblayers.conf`:
> ```
> BBLAYERS +=3D "${OEROOT}/layers/meta-arm/meta-arm-toolchain"
> ```
>
> And that's it, I think. Have I missed any steps?
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60349): https://lists.yoctoproject.org/g/yocto/messag=
e/60349
> Mute This Topic: https://lists.yoctoproject.org/mt/99626981/1777089
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolch=
ain
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [sumit.garg@lin=
aro.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

