Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38736C001B0
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 20:19:34 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web10.43400.1688415570285555236
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 13:19:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=ukcKXv60;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.219.51, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-635eb3a1d93so37870906d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 13:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1688415569; x=1691007569;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4+ytIDv0JzqMDaHjd21v8tE9rk+RmVngGW2sxc2Ejhg=;
        b=ukcKXv60Q/KNySzBSHKDdJjDmZuDzYM51rxoWzGOuu9saOBc7dECImGtky8rxORtUi
         x+U5frHHFCW9Hfrl0K6QWyWxDQknRndRfaqvWbrDIwDT4mygTYftoIIISP7VWDkxDjbJ
         a2CGh4lIlsW0tDvgKkuB5tS++2sqzTNRZKTWeGtNUBt4BXMTlUThoFtH3L9V8X5uJ0+E
         ph0kBtKYGOARJeSpHHUOEVvThVuQYqzEWDiK7ePE3e7NjPZCqIMiON5WWIY5RAKk+Yg+
         FQp5KPkS6RpVdYtfKA0Curxr0RfhyQYKZReYZPbV82vzwgMmaZFK1QHfyUoycMfFo1hC
         N2LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688415569; x=1691007569;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4+ytIDv0JzqMDaHjd21v8tE9rk+RmVngGW2sxc2Ejhg=;
        b=eCUZyGYIT8CZUdqrPAQkwaIajHZu7JUuqDYWUwm1jCThkU47aVxeMMvZwPHpyr8W75
         Df0GdL/tzDFiHU28cIuubke/kKTprrYUYWSjrEdSLLH3VYQ8PKPWCL7PuKgpSWUMxAyl
         mv5U1uZ5mhLQULQ6QJiSdB7k6IEkpBcQqyPTgtrazxVMxA9GwQmUZJqs1iaoKbsvdYb3
         bu52QPfJJThSk6bvXM0qHFgxjHCTSVECdci+aFDrN7ytDtjb304EfjEBk/QNyspmoIef
         7PZn5L11rFqTH3CeSPhxw7gc4zRHZVVO57k2myfvrEWEqrOV7W4YUKDiZutdih84OS8C
         0D+A==
X-Gm-Message-State: ABy/qLYTEevWKSQzJCFpmLG+2zbpFMpVpaQzdjYU0x2bERiUgJxRXddZ
	btKcGZAVB7rrSi7NokVG9CfoGJVxmyuROiomNn8npw==
X-Google-Smtp-Source: APBJJlHfBBP1qrGK4qMhjbKl4aJfre4eHrU3XgmOk8qEEUXprSiq6Ok52cmI8DSmFX3VdxXTS8+N1sFv86H1AvQPJlw=
X-Received: by 2002:a05:6214:5099:b0:637:ca3:67e8 with SMTP id
 kk25-20020a056214509900b006370ca367e8mr1591867qvb.39.1688415569289; Mon, 03
 Jul 2023 13:19:29 -0700 (PDT)
MIME-Version: 1.0
References: <4HqO.1688327140014497685.1oIK@lists.yoctoproject.org>
In-Reply-To: <4HqO.1688327140014497685.1oIK@lists.yoctoproject.org>
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Tue, 4 Jul 2023 08:19:20 +1200
Message-ID: <CA+EiEZKj4uE_xQZ=YZjpddB+F=qxPhq5FqD2hHYeXHXbyhxRPQ@mail.gmail.com>
Subject: Re: [yocto] Building Tailscale with Yocto #golang
To: przemek.recha@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 20:19:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60507

What Yocto release are you using? I tried building Tailscale with
Dunfell but the version of Go it includes was too old.

On Mon, Jul 3, 2023 at 7:45=E2=80=AFAM <przemek.recha@gmail.com> wrote:
>
> Hi!
> I'm trying to build Tailscale with Yocto
> This is me recipe:
>
> inherit go-mod
>
> SRC_URI =3D "git://github.com/tailscale/tailscale;protocol=3Dhttps;branch=
=3Dmain"
> SRCREV =3D "30d9201a11ebc2e3a0f17bf8963956b77dadeb5d"
>
> GO_IMPORT =3D "tailscale.com"
> GO_WORKDIR =3D "${GO_IMPORT}"
> GO_INSTALL =3D "\
>     ${GO_IMPORT}/cmd/tailscale \
>     ${GO_IMPORT}/cmd/tailscaled \
> "
>
> do_install() {
>     install -d ${D}/${bindir}
>     install -d ${D}/${sbindir}
>     install ${B}/bin/tailscale ${D}/${bindir}/tailscale
>     install ${B}/bin/tailscaled ${D}/${sbindir}/tailscaled
> }
>
>
> However, build step ends up with errors like these (full log):
>
> | wgengine/netstack/netstack.go:34:2: gvisor.dev/gvisor@v0.0.0-2023050417=
5454-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.=
0-20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.=
8.8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable
> | wgengine/netstack/netstack.go:35:2: gvisor.dev/gvisor@v0.0.0-2023050417=
5454-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.=
0-20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.=
8.8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable
> | net/tstun/tap_linux.go:23:2: gvisor.dev/gvisor@v0.0.0-20230504175454-7b=
0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.0-20230=
504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.8.8.8:5=
3: dial udp 8.8.8.8:53: connect: network is unreachable
> | wgengine/netstack/netstack.go:37:2: gvisor.dev/gvisor@v0.0.0-2023050417=
5454-7b0a1988a28f: Get "https://proxy.golang.org/gvisor.dev/gvisor/@v/v0.0.=
0-20230504175454-7b0a1988a28f.zip": dial tcp: lookup proxy.golang.org on 8.=
8.8.8:53: dial udp 8.8.8.8:53: connect: network is unreachable
> | ipn/ipnauth/ipnauth.go:16:2: inet.af/peercred@v0.0.0-20210906144145-089=
3ea02156a: Get "https://proxy.golang.org/inet.af/peercred/@v/v0.0.0-2021090=
6144145-0893ea02156a.zip": dial tcp: lookup proxy.golang.org on 8.8.8.8:53:=
 dial udp 8.8.8.8:53: connect: network is unreachable
>
> On some resources I have found it was recomended to add environmental var=
iables: `GOPROXY=3D"direct"` and `GOSUMDB=3D"off"`, but it didn't helped.
>
> Maybe someone has some ideas what is the cause of these errors?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60491): https://lists.yoctoproject.org/g/yocto/messag=
e/60491
> Mute This Topic: https://lists.yoctoproject.org/mt/99915079/7359542
> Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [tom.isaacson@t=
eknique.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Tom Isaacson

