Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48EF0E77173
	for <webhook@archiver.kernel.org>; Fri,  6 Dec 2024 19:39:03 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web10.46315.1733513933038119567
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2024 11:38:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=De/SXxDM;
 spf=pass (domain: gmail.com, ip: 209.85.210.50, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-71db6687504so1121615a34.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Dec 2024 11:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733513932; x=1734118732; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Yt/SK3nRgvOuTwslxfMRbFSrNhDMk6C8mSdfQbciz4=;
        b=De/SXxDMjAJpdK7LDbAQB7JbLfi4NUFnNrLSN7dHX0AIRGpFYJcXKjGp4FGSC4xbR+
         3o5W/sGJIupMX5ac8s2+NaxE3VPUrmHYCFkRNT0ecCXKdf8yl8eS8pN9+RgcquuE6yBy
         UAHkwtz+nTouCxRxaouMCbW2O6fOfZSjFRvJpnn6t9GaLdWFNwg4Q5ZObgVXlaJWUfO7
         Lqx+QRMvuLnE80mIYpGSJ65vv6t2+nrkiKQ86dLE+s4G53BbZlIcoAaRxwkQJ0WMLKqo
         jUd8DxmLzmZrnq7XOVXj23lDyXHEYfeva1MsGE5IkDpbTPmxLIpC+4AFy7uZd1amYkhD
         28BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733513932; x=1734118732;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Yt/SK3nRgvOuTwslxfMRbFSrNhDMk6C8mSdfQbciz4=;
        b=FAyUj3kNsr8vVzkclVvw1S7g/p1UtHQbwe+hgxhg6C3ldV6xzFrVw5Z88TLSfrIGKJ
         yoU6W/ovK0YHkaCZfUnZ1wC0eZWOu18tv7nXyj1RerBEKVIh4otli1N5U/UQ61AiNz7V
         cQg+D273apWJoxdSicK7/EEDD3ENwIwXBG8P/8GwHbYi+DiDI31SF7vl4oFaiUA97gSm
         o6WanE7Vo8r7ZaGzyblJJOPXPT8uh0MLOuB2BOQGZ2NkeLK9TxyckrGyCHn3cwF/0XGS
         3D1g8j+AsgyXWVWfDfYLJYTEHH3TufOoRTuzoZEfiqItZyt0mIXt3slpwKUS7z6X8I3B
         PCEg==
X-Gm-Message-State: AOJu0Ywhua/LR7VoNJQTkWVOs8r+uv6Vr81dVkTuDjb9HxS3frUO4+1a
	hbhajGVQnnebeI+krMNaLNJEPgK00Hncw0HScWu7FRRl6PwxW77IUcLeC9EUsxWJh2sFZ+2jtMX
	sntlxjMsR7rNN7Totc5YAdiy7lU1Fp4HF3PI=
X-Gm-Gg: ASbGncs+AWGCEuJBgsBdkz6RlmjhoeU8KDXBSXwMQj7LuiSDvxy4Bl2uK+Ooj7Ku4P8
	Z2F5k1Qdi0WKWN+dq9LeoPxJET647tGpR12ZXNR3UC0q39Hx/N8DN65oP9H4=
X-Google-Smtp-Source: AGHT+IEH5Ixo3eQOS+Whme72gQ/J8PEjD7Zi9tJGBJr8wenDfSSljYX+MVF15YKZzSfArF0WI4D2iqVue3Chn1gTdDM=
X-Received: by 2002:a05:6830:6583:b0:71d:6543:e839 with SMTP id
 46e09a7af769-71dcf4e3b9cmr2499786a34.14.1733513932198; Fri, 06 Dec 2024
 11:38:52 -0800 (PST)
MIME-Version: 1.0
References: <bxWZ.1733494705574893719.QHJ0@lists.yoctoproject.org>
In-Reply-To: <bxWZ.1733494705574893719.QHJ0@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 6 Dec 2024 11:38:25 -0800
Message-ID: <CAMKF1sqTPBXR2CO8YspWhpw8RbKaKJD_qU_vMfyARPaOvgzbWQ@mail.gmail.com>
Subject: Re: [yocto] perf.bb: do_comipler error
To: yocto@lists.yoctoproject.org, rprronadrit@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Dec 2024 19:39:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64414

On Fri, Dec 6, 2024 at 6:18=E2=80=AFAM RAVIKUMAR RONAD via
lists.yoctoproject.org <rprronadrit=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Dear Experts,
>
> I am trying to generate a multimedia image using the Yocto Project build =
system for our custom board, which is based on the i.MX6ULL processor.
>
> I followed the steps below:
>
> Executed:
> DISTRO=3Dfsl-imx-xwayland MACHINE=3Dimx6ull-versa256 source imx-setup-rel=
ease.sh -b build-wayland
> Then ran:
> bitbake -f imx-image-multimedia
>
> But, I encountered the error: perf.bb:do_compile failed.
>
> Could you please help me resolve this issue?
Its not clear which branch/release are you building. It always help to
include the Build Configuration that bitbake prints at the beginning
of build.
however, check if your poky/openembedded-core repo has this patch
https://git.yoctoproject.org/poky/commit/?id=3Ddc0af3be0f5477adf4e2ac8a2d7c=
1b7c36fe4d8e

>
>
> Thanks & Regards
> Ravikumar
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64412): https://lists.yoctoproject.org/g/yocto/messag=
e/64412
> Mute This Topic: https://lists.yoctoproject.org/mt/109958018/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

