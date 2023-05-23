Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE9FBC7EE23
	for <webhook@archiver.kernel.org>; Tue, 23 May 2023 08:40:38 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.16979.1684831229788818361
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 May 2023 01:40:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=N22xUD2G;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2af225e5b4bso53221291fa.3
        for <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 01:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684831228; x=1687423228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BtMLTCLYJ7J3XpvuOTgmUV5bEbLB4P3DdgO1yZjR2+c=;
        b=N22xUD2GfBhdudYEJrjyDgd7vdCVBDQ4evQgy3Tmtb4HvnZ162Q9uhToxsPOTMXTo5
         N18wFXjoB+/fx5xw4oqS9U+oXVBzIBe+F1SbX6C9b19m5fC5APaLrghnh9BlweuLsq0N
         W14OoSRtD8qpNlR8sN86Hpf2Yc5CF920l7uV560WRSVIJrN4o9ZxHBJpxswSzTGoGi3x
         jmUKHWTYETXpULcerOiySB53Nfpazrh15I2jt0jUkSmUms/EDXooVzjYad2zqakiA7bz
         HC1A1qEiVIjsFrVzOT2B+CTJ52iS1RJeY8E7zovzkX1ECbRQj+3fxEVDvuGXfZjicqqf
         W1yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684831228; x=1687423228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BtMLTCLYJ7J3XpvuOTgmUV5bEbLB4P3DdgO1yZjR2+c=;
        b=VGucvuYXcbvArfJQq9ZjhL+PUaxBB+APXhGENQiMIlVEZcqvzGdXY0X96McwyCdnxc
         Abd9Zzri00HEloUbi2c1xvEIlqkA3tkaNX7lSfgrcCVa0ShrrPTPrheUw7vfb8RkzZcg
         I6U13dEAeN8kB43cvihOqLoDMl12K0gfOjUX0HjhzK/w5wnXzfev2POTXrvodGTwxjrU
         xi30HmpjHG8RqhXAKsxdDQiE4QKpfJjjGmoEFv8Zfyl2jG19E2slo7mer+ZpJwhnTnz4
         UqBWy8wCtQ+NHWJ0zSnfb0qHJGkgsoYvWoitKMvTLdWi4eMgp9qaZs2pNQxyiWWf9lIU
         SOyg==
X-Gm-Message-State: AC+VfDw2/WSSfahd6rOYfanP8MnlJNIIn7Hs172s2aARh8zR+dHKyBEf
	7kZpd4feHCLo2cKHt6GNWzqFOSc2uRh7oMP0NL4=
X-Google-Smtp-Source: ACHHUZ7t3nJdTjwAXqvsoI9YUpM1wDFzNnlneG4XTFkG9FpaSS5dbmX/1kNSFBasKZhNgrrMc3XT6n5lbiyTQDu1nCI=
X-Received: by 2002:a2e:3c0d:0:b0:2ac:826e:c5a with SMTP id
 j13-20020a2e3c0d000000b002ac826e0c5amr5370595lja.1.1684831227478; Tue, 23 May
 2023 01:40:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37WLAeDSnxvWRHjeqPWBcG0eOP71SzSLfW1odT=VrO90g@mail.gmail.com>
 <CAMKF1sp+vtNF2JFmp-CvKGFSqCt__J3QHSmFRRzSnStsJUsG=g@mail.gmail.com>
In-Reply-To: <CAMKF1sp+vtNF2JFmp-CvKGFSqCt__J3QHSmFRRzSnStsJUsG=g@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 23 May 2023 10:40:15 +0200
Message-ID: <CAAfyv35pZYKqW5TibUtY=ZKMYJgwtxD0MSjRxHeHP4sHTDOKTw@mail.gmail.com>
Subject: Re: [yocto] core-image-weston mickledore
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 08:40:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60090

On Mon, May 22, 2023 at 6:22=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote=
:
>
> On Mon, May 22, 2023 at 5:26=E2=80=AFAM Marek Belisko <marek.belisko@gmai=
l.com> wrote:
> >
> > Hi,
> >
> > I'm using core-image-weston and adding chromium to the final image.
> > Weston is properly started on the hdmi monitor. I'm trying to start
> > chromium when weston starts with following:
> >
> > [Unit]
> > Description=3D"Chromium browser start"
> > Requires=3Dweston.service
> > After=3Dweston.service
> >
> >
> > [Service]
> > Type=3Dsimple
> > Environment=3DXDG_RUNTIME_DIR=3D"/run/user/0"
>
> Make it Environment=3DXDG_RUNTIME_DIR=3D"/run/user/`id -u`"
>
> also add
>
> Environment=3DWAYLAND_DISPLAY=3D"`ls -1 /run/user/`id -u`/ | egrep
> 'wayland-[0-9]+$'`"
Tried that but it was still not working. When I move
XDG_RUNTIME_DIR=3D"/run/user/`id -u`" and the same for WAYLAND_DISPLAY
to my startup script it seems it works.
>
> > ExecStart=3D/usr/bin/chromium https://google.com
> > Restart=3Dalways
> > RestartSec=3D5
> >
> > User=3Dweston
> > Group=3Dweston
> >
> >
> > [Install]
> > WantedBy=3Dmulti-user.target
> >
> > but getting this:
> >
> > May 22 12:23:26 orange-pi-pc2 sh[254]:
> > [250:250:0522/122326.671204:ERROR:wayland_connection.cc(186)] Failed
> > to connect
> > to Wayland display: Permission denied (13)
> > May 22 12:23:26 orange-pi-pc2 sh[254]:
> > [250:250:0522/122326.674692:ERROR:ozone_platform_wayland.cc(233)]
> > Failed to init
> > ialize Wayland platform
> > May 22 12:23:26 orange-pi-pc2 sh[254]:
> > [250:250:0522/122326.674738:ERROR:env.cc(255)] The platform failed to
> > initialize
> > .  Exiting.
> >
> > When running the terminal from wayland desktop chromium works fine. Am
> > I missing something to start it properly?
> >
> > Thanks and BR,
> >
> > marek
> >
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#60079): https://lists.yoctoproject.org/g/yocto/mess=
age/60079
> > Mute This Topic: https://lists.yoctoproject.org/mt/99063456/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gma=
il.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

marek

