Return-Path: <abhijeettripathi3003@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F1DC433F5
	for <webhook@archiver.kernel.org>; Sun, 13 Feb 2022 12:24:58 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web08.20276.1644755096901482483
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 04:24:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lkkSICou;
 spf=pass (domain: gmail.com, ip: 209.85.167.50,
 mailfrom: abhijeettripathi3003@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id f10so25327572lfu.8
        for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 04:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=NGB9jClapRYwVLzALTeuUB7Ln5mC5gZSna5BugdnuvM=;
        b=lkkSICouBy5Wy6Mn2fhmk+hwdh8iyIAN89pQi2I0W6FMhOj5KfndnRcoTimIgximQZ
         WZTNYH1/9JvBS5l4f8C2Z4d5A+sVDK6LVjCYpx4SDgn0igtfBxvHwJUf1haF6D4qOu05
         RBO71mPfqrYIPNMDi13B/HZC37O7iHdcbiMxUUxX7LGHq/K55ax74HRS80fgAZ9xUUS4
         DJ2IM2SvqmHRaYOodG1hxy4NWHUkXd2RHjQnUOfnTCm75bx11b8/3wV/PkNSJq3L88hx
         OGzLxxPewzv6wXU+2oIQQeythZICyg9WsufE4JuOJ+wGSogDhKKp+OY0eQ2wpL4T8zr4
         jZsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NGB9jClapRYwVLzALTeuUB7Ln5mC5gZSna5BugdnuvM=;
        b=D0Dcj0D4cOrgLnnn/8Iy8h7qIGP5xTSWbfO7TaCuKiDqV7HUDR+gV81FFli71IHyA3
         /Cf088kj5xBMl+d640Jx3RkJ402rH6wTAB3ObRhIT57NwRbkCQaxIu8dD9PzJo0kXfFu
         t3nLOiWhcUszV08Lx1EglLNxMpqxuKHKjE8NS4e59/kkipu9d5mXOgAs4AiEUubdGMAA
         IovGvkhWuTbrSVXggJ+nC4CvegI2oxzRa1GHrNhYow+3TgPNjYFOEul1Rvr/WbgYTKqN
         bF7VJV1HGWnoolh+r7S/sssxZ/54aBP3ka/BkmhJBHgnZ0oIutu7pBmLUp8lGna63LjP
         ocAA==
X-Gm-Message-State: AOAM530Hxs0WPjJAv85Fn7/pvaKUpOU8+8PBtctj/nsPwZTFPC3fg2sO
	HaRdIe9zBaBMG88Zc5wSIHwH6TbOhTVUqkblcmcA8MebuVE=
X-Google-Smtp-Source: 
 ABdhPJwZGrHKmbQyG+2yr7qk2rV3OkUIv2HFxFNWgJadvufc3QSx4sAZZbi3sZlt+jfdwZBJArYw07cmLqJ4Xd96zm0=
X-Received: by 2002:a19:431e:: with SMTP id q30mr6000321lfa.56.1644755094111;
 Sun, 13 Feb 2022 04:24:54 -0800 (PST)
MIME-Version: 1.0
From: Abhijeet Tripathi <abhijeettripathi3003@gmail.com>
Date: Sun, 13 Feb 2022 17:54:43 +0530
Message-ID: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
Subject: Building Yocto on M1 Mac
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000208a0405d7e5637c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Feb 2022 12:24:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56169

--000000000000208a0405d7e5637c
Content-Type: text/plain; charset="UTF-8"

Hello yocto-devs,

I'm new to the yocto project and trying to set up a build environment on my
M1 Mac which is arm64 architecture.

I'm following the steps as mentioned in below link:
https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructions

But it is always pulling up containers based on amd64 architecture. Are
there any updated steps/link to set up a build environment specific to M1
Mac(arm64)?

Thanks,
Abhijeet

--000000000000208a0405d7e5637c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello yocto-devs,<div><br></div><div>I&#39;m new to the yo=
cto project and trying to set up a build environment on my M1 Mac which is =
arm64 architecture.=C2=A0</div><div><br></div><div>I&#39;m following the st=
eps as mentioned in below link:</div><div><a href=3D"https://github.com/cro=
ps/docker-win-mac-docs/wiki/Mac-Instructions">https://github.com/crops/dock=
er-win-mac-docs/wiki/Mac-Instructions</a>=C2=A0<br></div><div><br></div><di=
v>But it is always pulling up containers based on amd64 architecture. Are t=
here any updated steps/link to set up a build environment specific to M1 Ma=
c(arm64)?</div><div><br></div><div>Thanks,</div><div>Abhijeet</div><div>=C2=
=A0</div></div>

--000000000000208a0405d7e5637c--

