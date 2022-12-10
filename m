Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C47EC4332F
	for <webhook@archiver.kernel.org>; Sat, 10 Dec 2022 12:29:12 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.13948.1670675351785534844
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Dec 2022 04:29:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VGDYmH+t;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id h10so7625880ljk.11
        for <yocto@lists.yoctoproject.org>; Sat, 10 Dec 2022 04:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ub9IWpY5dBbLH0uBEhMJ46fj6j0WHQy0XMHvi1OvFws=;
        b=VGDYmH+tP8njvkiJCdvrBzIvVgMndXOQCLQklbFMr9edAUMfQdYom22tDDKGlBHWgy
         bhGFFUddMQ9WC4DCunY8QuSzrG0rB9j+HhFKJApnfbfkKVc3UlQz8N/duuOpUjppWytZ
         +GaWwND0GNrhD5ZX4fuqjTPph1euVHr4Lxx6aKiHuhxM/MVDOD+DQ2liojHJI1gsDTGr
         nS1SLoEOm+rJ3V8U8wxTx1ti54b0qjebwjMDWjCRsPBIp9KmJBk4SUSS1YJLUoTy/+OI
         n/lA9/jFcptK+RF3WGWDeAYzFY6M13JcpkwFsjdWhABQbESJqr6/ZjBtBgUDTwuzNnqh
         4r9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ub9IWpY5dBbLH0uBEhMJ46fj6j0WHQy0XMHvi1OvFws=;
        b=nVsfDhDd2VwtYZRHPlG4y5UIgrlXY3dkjOHmJnqenx5yVzV7Uotf32Pujbp/KNSi1g
         q9hs2OjM6W5rQC53hQP8RNWhMFrHuC+9DYfvNIjP2WjZMl0fU+iKfg6lGEVXmjrUYE72
         /jjXRG7PjV9bm7E5wUQSf8pCRe0hpExdgpbKNpcUPOhRghHu4+EaNYgbZh8X7j42Gbph
         qdKLeYX380NosShNcKPQ7fx8ePs2BPBG7OWAvC3vWDl1KdveIEfoJpIYwq7iy8UFiC+B
         0wjYUGTSf5TwhcrBlMO4HN98UgIU/cYDMOTwFd88kAQUMzN8dZa/5hisNC+LNdWul+xx
         sCwg==
X-Gm-Message-State: ANoB5pmzJEU+q2TJDQ7HoBLa1eWNps0/95pbISsaZr1KzKpUpVyFOVkR
	Td6S4cNKVvp8y3JSHj5daaYwu2GxI1MKsEfr+Sor/AGh
X-Google-Smtp-Source: AA0mqf4cyKc+ak/6F4A5ko0xFMLQIECaqusdq9t54X4doQVpdwgwXdIlg/P7rX6uL7PD45pCoBn2qpq0HBlYE07wGz4=
X-Received: by 2002:a05:651c:1145:b0:277:8759:bf65 with SMTP id
 h5-20020a05651c114500b002778759bf65mr28391790ljo.108.1670675349342; Sat, 10
 Dec 2022 04:29:09 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj8fDsCWXCRxCZBMx-ujohUu5wXmGQq1BkP_a_JsfdUHAQ@mail.gmail.com>
 <19362.1670674287260661939@lists.yoctoproject.org>
In-Reply-To: <19362.1670674287260661939@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 10 Dec 2022 13:28:58 +0100
Message-ID: <CANNYZj90XdrgVCE_UOeQiwRBCG+k+vMA280pku4Q-e8rZsCnFg@mail.gmail.com>
Subject: Re: [yocto] Make recipe conditionally download code from Git Repo #yocto
To: ali.ahmad@rtl-corp.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Dec 2022 12:29:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58777

On Sat, 10 Dec 2022 at 13:11, ali.ahmad via lists.yoctoproject.org
<ali.ahmad=3Drtl-corp.com@lists.yoctoproject.org> wrote:
>
> Thank you for getting back.
>
> Context/Use case:
> My current recipe always checks out code from the git repo before buildin=
g it.
> During development, I want to first build my code successfully before pus=
hing it to the repo. Hence I want the recipe to check if the code exists at=
 a certain location on the file system. If it does, it should build that. I=
f it doesn't it should checkout the code from the repo before building it.
>

'devtool modify' should help with that. It will clone the source code
into a 'workspace' folder, and set up a .bbappend in the same
workspace that would instruct bitbake to build from that location
instead of fetching from git. When you're done, there are several
other 'devtool' subcommands to finish up, and revert to building from
git.

Alex

