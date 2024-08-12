Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF83C3DA7F
	for <webhook@archiver.kernel.org>; Mon, 12 Aug 2024 20:43:47 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
 by mx.groups.io with SMTP id smtpd.web10.57188.1723495419178994516
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Aug 2024 13:43:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DwxaVhGK;
 spf=pass (domain: gmail.com, ip: 209.85.167.173, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3db14339fb0so2848103b6e.2
        for <yocto@lists.yoctoproject.org>; Mon, 12 Aug 2024 13:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723495418; x=1724100218; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HC/KauUCelrfIIpHjYkRfAARJK+6q6zgIJxfHkimf6U=;
        b=DwxaVhGKmreUosx9tjTsL8MwjiZCcZS5YAeqFi9HI4Nfeij9j4EH4qJVQucfqXDsnF
         9mBLenOy3+9e8SavR4Bur9i7adgJqqV1ATqRapBGy5gznB+9s4jO/8bB0OizSIRHMSTg
         XgqrHLiQxx7DN5lJSQNOuxFq5HiBYL/i1o0dQj7Eo2KZvAWzWeH3dkwwnsq6sRNinyIx
         VEndgqnzNp8LfYiGP38d20dmgTggLcP/QVAJmEPfGw3rcg2sbUMHJG2x1XCqIzF3lzjg
         Pzkv5snwCm+L0q6CrC0kIVtBh0dnfa4nWTz9GFfLZHd/fS7QO+qjFUSqnPxH9peYja/2
         8uyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723495418; x=1724100218;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HC/KauUCelrfIIpHjYkRfAARJK+6q6zgIJxfHkimf6U=;
        b=pdgksbh/aU9+yTKlAStSF95WhPf5ZDvNWtiY3Q8t3sK8cOgllGDkqtyIggcTxDjubx
         MjStoSiiKE9F3JXKD+zfqpCco5rKL7qxJCYbMPhkEcCDDW06+5ps4lt5+xUboz/grE0H
         4hOmsF5fQ4yKDfGmh3L4z7DYJ9pkzy5iLZSGMdYqeoeploIrzbZV8nLYR6SYAiDi3rh1
         1rGHeAhp2yxs2hD1cxuQnnHKxp/Fh0H+slsZKKTaI0WU3Wbdxm9j2HDsl+QAYVgwDheg
         A77M4u5XSBjf8B14yocGIlGqE5stlAbiZcxQHS3Yh5x4kOhzeHimSi5l83rwHrgYkEeY
         1eXQ==
X-Gm-Message-State: AOJu0YxzV0zKh5BoXi2GGurMqP21vBQABbO+/TpMt/TiQ9Iu45eZc1yb
	Y+oVEFBAOamPIjp7rZwGszJal7/mgahQ0ko60QbdX2rYNRb0eXN1j5/hGJHjXynAAaJdbfo7Wdv
	G5COkjvopOUpNM/5coxsFLc0l1r6OBg==
X-Google-Smtp-Source: AGHT+IG9f124z78WJT4+pviCYVCZKUgLQHO+35oUtVWMxEIJXQnQG2gSU29FOgl/Kq5BsQSWmoE3drAB/LOy/gwxFO0=
X-Received: by 2002:a05:6808:6492:b0:3d5:5fbe:b2fa with SMTP id
 5614622812f47-3dd1eea1b6cmr1400741b6e.35.1723495418144; Mon, 12 Aug 2024
 13:43:38 -0700 (PDT)
MIME-Version: 1.0
References: <CALEqzqc_navEO-Q07KD=aCn3qNDHanZ8a2kLp0s7haqfW3Qofg@mail.gmail.com>
In-Reply-To: <CALEqzqc_navEO-Q07KD=aCn3qNDHanZ8a2kLp0s7haqfW3Qofg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 12 Aug 2024 13:43:12 -0700
Message-ID: <CAMKF1sobk2HAmLnJVbMPOdkyLKo+NzqOGDV0jtRArw=+o5QQ8w@mail.gmail.com>
Subject: Re: [yocto] ot-br-posix error Scarthgap
To: yocto@lists.yoctoproject.org, maik@quatt.io
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Aug 2024 20:43:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63690

On Mon, Aug 12, 2024 at 6:07=E2=80=AFAM Maik Vermeulen via
lists.yoctoproject.org <maik=3Dquatt.io@lists.yoctoproject.org> wrote:
>
> Hi,
>
> Currently we are using Yocto Kirkstone and would like to connect to an Op=
enthread RCP with Spinel RCP API version 10. The ot-br-posix recipe in Kirk=
stone unfortunately uses a slightly older OpenThread version, which is not =
compatible with our RCP USB dongle, and unfortunately there is no older fir=
mware available for the dongle.We tried ignoring the version mismatch warni=
ng with the --skip-rcp-compatibility-check option, but then it crashes when=
 we try to connect a client to our network, likely due to the mismatch.
>
> Hence we tried using the Scarthgap recipe in our build, which builds succ=
essfully but does not run:
> systemd[1]: Started OpenThread Border Router Agent.
> otbr-agent[2680]: 49d.17:17:20.280 [C] Platform------: ConfigFile() at co=
nfig_file.cpp:50: Failure
> systemd[1]: otbr-agent.service: Main process exited, code=3Dexited, statu=
s=3D1/FAILURE

maybe try to obtain the backtrace by using gdb or some such ?

> systemd[1]: otbr-agent.service: Failed with result 'exit-code'.
>
> Are we using it incorrectly or is this a bug?
>
> Thanks,
> Kind regards,
>
> --
> Maik Vermeulen
> Embedded Software Engineer
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63687): https://lists.yoctoproject.org/g/yocto/messag=
e/63687
> Mute This Topic: https://lists.yoctoproject.org/mt/107855804/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

