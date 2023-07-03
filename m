Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12C0BEB64DD
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 13:07:32 +0000 (UTC)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web10.32129.1688389643977604042
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 06:07:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=hay58QGZ;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-777a4c8e8f4so236146239f.3
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 06:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688389643; x=1690981643;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6URmIAq96OPgnN2NVKUmJlqPClGNjXaCXSLOkse2LQs=;
        b=hay58QGZ2rOuPLpQ6YGF/z14qdnrjpZaauTdCsUY767Va6SS2OvviLEy6CQ6DP10za
         dumg8mVtjt+e0CncgTQRsjr9iFzvsq0om1AAv+tHggU9ziYX4orNFr7W2ObbwrwUZBaT
         6b09DShfxqa/AaTYnRFM4ip4FRVOxNaouFF9qHimnKIi+hkDeQeClt/pbopd99vQMop1
         rbS2nhLjXZM9XL57YraCXn3/ZtsDnSr1NLgpQxb8TyDOTnyspT+ygl3n0TyuUN1sMz7I
         W+cILkxwILRZ3SfY01QmoufMs+funq73+MynCRcI92CGBmbXBzPNmTV0xfL7sODIVyK4
         3kbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688389643; x=1690981643;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6URmIAq96OPgnN2NVKUmJlqPClGNjXaCXSLOkse2LQs=;
        b=b0NPNf0rjsaIpLhRQE+aEuta86+vLFc9oAj+z8cRzXGFLkEXaggUfdk/nMEQT1FIN8
         4KUcJhVk/yZ2F+cSmeWDkjXZf7uQgMkZMqt29abnv4kx0e+6wQldzyaLiIZm6LL1C/ds
         farjhr7CzhEXMQuhwq3BGW1g/SanvFQ9lABcQ0XRUJp5T4Fk5IbTcLd8EdUmqZpdCz/y
         g8V71l1NglA1zJni/FgLaqW6eFWsoqZvL54VDa520vKq+5U5eAMBodAqUpBaiELS/6P+
         6iS3ro+MK+uR+hWbJeMV+Jmlrh7t8fHLsJgYCayhmm0ya4s7zCYUEigXPmKc0+U04QJJ
         XcBg==
X-Gm-Message-State: AC+VfDxepOgWFHZ+cc/vwuGPbotx02hYaPapbkbmfL2vmCclpFBOAoSS
	QE62Qz+WnvNpqkik4YWBOKuYKLoyNstZykEoQBc=
X-Google-Smtp-Source: ACHHUZ5b8NW8sZqXdePsRhszd13SuoQKCf1EWCTnHIqYQMyscdF/zVPHuPzL9gB8b8lS2oGJKokL7eMXwkrB7QkKWcA=
X-Received: by 2002:a6b:7106:0:b0:780:c787:637b with SMTP id
 q6-20020a6b7106000000b00780c787637bmr11649585iog.0.1688389642915; Mon, 03 Jul
 2023 06:07:22 -0700 (PDT)
MIME-Version: 1.0
References: <4HqO.1688327140014497685.1oIK@lists.yoctoproject.org> <TMR6XR.EE45UBD6649W1@t-online.de>
In-Reply-To: <TMR6XR.EE45UBD6649W1@t-online.de>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 3 Jul 2023 09:07:11 -0400
Message-ID: <CADkTA4MOWSbCOWtbzKhJ=X97u6GvQiRbBBBLyvK1pg4HjDv5Rw@mail.gmail.com>
Subject: Re: [yocto] Building Tailscale with Yocto #golang
To: Markus Volk <f_l_k@t-online.de>
Cc: przemek.recha@gmail.com, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 13:07:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60496

On Sun, Jul 2, 2023 at 4:30=E2=80=AFPM Markus Volk <f_l_k@t-online.de> wrot=
e:
>
> You need to allow network connection for the do_compile task
>
> do_compile[network] =3D "1"

We really shouldn't suggest the above to a developer without also the
explanation as to why network access is disabled by default in tasks
such as compile.

Your build may in fact work once you've allowed go to fetch its
dependencies / modules, but you will also not have reproducibility, a
full license report or sstate/download reuse (things you'd get from
fetcher integration).

If none of those things are significant to you, then by all means, you
can just allow go fetching in do_compile()

For more details on the options and the long discussions on the topic
in the past, I'd suggest searching the oe-core mailing list archives.

Bruce

>
>
> On Sun, Jul 2 2023 at 12:45:40 PM -0700, przemek.recha@gmail.com wrote:
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
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60492): https://lists.yoctoproject.org/g/yocto/messag=
e/60492
> Mute This Topic: https://lists.yoctoproject.org/mt/99915079/1050810
> Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

