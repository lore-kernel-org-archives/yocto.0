Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6CB4C77B6E
	for <webhook@archiver.kernel.org>; Thu, 13 Apr 2023 20:14:20 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web11.2306.1681416852977854436
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Apr 2023 13:14:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sidebranch-com.20221208.gappssmtp.com header.s=20221208 header.b=bJ7r+bRA;
 spf=softfail (domain: sidebranch.com, ip: 209.85.219.177, mailfrom: leon@sidebranch.com)
Received: by mail-yb1-f177.google.com with SMTP id by8so508126ybb.9
        for <yocto@lists.yoctoproject.org>; Thu, 13 Apr 2023 13:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20221208.gappssmtp.com; s=20221208; t=1681416852; x=1684008852;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6qvB0hk4CdR9Gb2NM5JU65++59tuyR3U7sDg78xezaA=;
        b=bJ7r+bRAasJSkgGi0a38ML/zH5eOLhsYuz0tn5Wyeo6uQGzlsYRgn+DIcPREKb8lce
         +pNUj5Z2Y2kiPJ4T+KbnNOeraNHvao5+D6Dyeom08coLrVwm1KrktfZ14/Rn8rfH8D49
         AND2+2eHFE45j4vMSYiKM6MEgH9Bs837TNFhVn/NE/zQe+K5aW++PxF7Nhx7cykou6cg
         cxkBlPOku9WnNPc6v22Wx+6YR/9aK3XTrC5dHx7ZWIQwj56No2BpwhctqCMHSYfKSc9H
         lkYYuJGQIfRjhxARFM+CQKxzEjlsIw+2HmWIEvJzU0ArJosdNDHW6sc92eQAOiNNu7F+
         fbTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681416852; x=1684008852;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6qvB0hk4CdR9Gb2NM5JU65++59tuyR3U7sDg78xezaA=;
        b=H+nr9ucydSvRfXSTxxIQ5gClrgvf8OLGvyrgxwPjh/45KFkKNTG+tiKyM/HkIAhg4D
         PEE8KKwSjqUARkAibW6CVAXm71LnuMPAmGStsXvvhAocQ/MhWJruv8yMBNFtJBw6J7Yr
         o3LMFcGzADglUDECr1Q4qUA3D/+lMiH1WtyYcOB1pc5EAUYJtl/PBC4AEnsHirRd2iT3
         BtPxMyaaXRpzWjKH1Ay8/jj2vIjrBuA3SwUg2YmvMzb7gInkhA55q14p5n3btOkn4apu
         yyufz1e5zikkFjfT3LvPZW6lq8ShgATqO/A20r9uJSG0BmArSQblVtDdSaEOeBmj2tav
         nHOA==
X-Gm-Message-State: AAQBX9fDTcC1oGk5anBPoQ6U8232VV2qS5W0XaQOkMafsL3Ad1agW78y
	ej+jKZ5DXBGrfX9Fqhnu83FzKWKzgsefaaG782ZKxw==
X-Google-Smtp-Source: AKy350Y+/fk4jt+nKQ4lvZzTGFHFdlsYKo4fxTY2wjx0aRHZ5vAdx7+exTSyxxaoDq4rG5ahjPun1ml3ZuxCQMvZHzU=
X-Received: by 2002:a25:cfce:0:b0:b33:531b:3dd4 with SMTP id
 f197-20020a25cfce000000b00b33531b3dd4mr1859928ybg.1.1681416851863; Thu, 13
 Apr 2023 13:14:11 -0700 (PDT)
MIME-Version: 1.0
References: <YT3P288MB0272CE87F9889C6CDF8F0AEDCF989@YT3P288MB0272.CANP288.PROD.OUTLOOK.COM>
In-Reply-To: <YT3P288MB0272CE87F9889C6CDF8F0AEDCF989@YT3P288MB0272.CANP288.PROD.OUTLOOK.COM>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Thu, 13 Apr 2023 22:14:00 +0200
Message-ID: <CAMjhiJj50N47x7ZvLx_sHRj6MBBdU_B64kQwZcHhAPwLzoeSKg@mail.gmail.com>
Subject: Re: [yocto] Give access token to yocto build. (pass environment
 variable to bitbake)
To: philippe@rmds.ca
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Apr 2023 20:14:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59709

Hello Philippe,

On Thu, Apr 13, 2023 at 9:54=E2=80=AFPM Philippe Lafontaine via
lists.yoctoproject.org <philippe=3Drmds.ca@lists.yoctoproject.org>
wrote:

> I have a recipe that fetch a pre-built binary from a build machine using =
an access token. Every developer will have different access token, for obvi=
ous reason. Therefore, the token cannot be hard coded in the recipe.
>
The question seems off-topic and CI/CD related, but unrelated to Yocto
Project in general. Although you may find experience here, I would
search on StackOverflow or the support forums on your CI/CD of choice.

GitLab supports (project) group access tokens. I have used those
instead of user access tokens in projects.

> While this strategy does work. We were wondering if there was a better wa=
y of doing this.
>
I think recent CI/CD tools have support for secrets that are not
exposed, also for during docker based builds.

Regards,

Leon.

