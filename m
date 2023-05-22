Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B9DAC7EE23
	for <webhook@archiver.kernel.org>; Mon, 22 May 2023 16:22:21 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.148.1684772537491685650
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 May 2023 09:22:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Vs0CMkAb;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-19a77e4c8dcso1785772fac.1
        for <yocto@lists.yoctoproject.org>; Mon, 22 May 2023 09:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684772537; x=1687364537;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J0S7BYz8T0hwfOcyM+a/H29URarBV3Lk52hoR4CXwzU=;
        b=Vs0CMkAb32lwoJKsIkmjIH+JXAuyfk4k7lVVcWAMUY6SegVYYsAsidHUGpVVbBsRnf
         TJK6M84r9oTsTQpZREoOJzTdPfJUTaQWo5Os8MPxbusN7MS6FTiYrhixlNRsFM7MLP//
         x3t4sAkBmBqCBwZ4q/E7Yi9pWBr6iNYmG+vMQg5ii6ymTD2cctMBfPEKEKoRRwapuuan
         omsWdfGdEipAr3X+OiOHeAw447anxOLlX0njq5AZnDCOoGApd9xEgBhENO9xAwe+pzEl
         I5BjtV5OPGMk8zfxLwRtuhdBgEWM0xWvF1n36p+gBYyXI082Op2L8Sf+m1whFRZuea1D
         IVjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684772537; x=1687364537;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J0S7BYz8T0hwfOcyM+a/H29URarBV3Lk52hoR4CXwzU=;
        b=EjS4+2XlZxLghjVmp+cFxOvGmpJOY7RLcy9VHZXd2FENxb0CC+DCS9kze83xuXJMAK
         Hd/sVcIUvA0heSooBoTSvLgvg+ioYGku5Z5q/QKbQDt2o5BwcKOARwBMTjXNPAFj/DLx
         ygBzXrhDQJX4d1GJJo+X9Jv2xAmi88NYW7Y61Ne3+wmVy3IbEc7bDjXsc7Z+BzexOxRr
         Zcl3WCUIdmeIIErw+N08eicY4QFNvQjYbFuWsEkhA3SLoHHq98nShiOLyhTCy9+eOXjK
         OFMAzIFij4j8zRQ5yn1jP+4eVlpNk5lshpljEoZvxAKLycn728Nwjxzh3Hfx2aYIjSWJ
         wg/A==
X-Gm-Message-State: AC+VfDzxvRC+I9a32wqW0K4hTFpLdfKfeOzWMFnCj9/8qIreWvGB7lWy
	pNy5v7CNJljEyGDWE3rfNDzDwklnBBdB3Jv98Qw=
X-Google-Smtp-Source: ACHHUZ7EEvMWEJ6vIbY1bR3xkl2WwIQBn3Fq4Y+pKewSE9h6Y1DyKWOlNNxsaoQpQJD8/tPrfORmNEy/9ZBqRIbkloA=
X-Received: by 2002:a05:6870:73c5:b0:177:a565:a7e1 with SMTP id
 a5-20020a05687073c500b00177a565a7e1mr6007837oan.16.1684772536569; Mon, 22 May
 2023 09:22:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37WLAeDSnxvWRHjeqPWBcG0eOP71SzSLfW1odT=VrO90g@mail.gmail.com>
In-Reply-To: <CAAfyv37WLAeDSnxvWRHjeqPWBcG0eOP71SzSLfW1odT=VrO90g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 May 2023 09:21:50 -0700
Message-ID: <CAMKF1sp+vtNF2JFmp-CvKGFSqCt__J3QHSmFRRzSnStsJUsG=g@mail.gmail.com>
Subject: Re: [yocto] core-image-weston mickledore
To: Marek Belisko <marek.belisko@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 May 2023 16:22:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60084

On Mon, May 22, 2023 at 5:26=E2=80=AFAM Marek Belisko <marek.belisko@gmail.=
com> wrote:
>
> Hi,
>
> I'm using core-image-weston and adding chromium to the final image.
> Weston is properly started on the hdmi monitor. I'm trying to start
> chromium when weston starts with following:
>
> [Unit]
> Description=3D"Chromium browser start"
> Requires=3Dweston.service
> After=3Dweston.service
>
>
> [Service]
> Type=3Dsimple
> Environment=3DXDG_RUNTIME_DIR=3D"/run/user/0"

Make it Environment=3DXDG_RUNTIME_DIR=3D"/run/user/`id -u`"

also add

Environment=3DWAYLAND_DISPLAY=3D"`ls -1 /run/user/`id -u`/ | egrep
'wayland-[0-9]+$'`"

> ExecStart=3D/usr/bin/chromium https://google.com
> Restart=3Dalways
> RestartSec=3D5
>
> User=3Dweston
> Group=3Dweston
>
>
> [Install]
> WantedBy=3Dmulti-user.target
>
> but getting this:
>
> May 22 12:23:26 orange-pi-pc2 sh[254]:
> [250:250:0522/122326.671204:ERROR:wayland_connection.cc(186)] Failed
> to connect
> to Wayland display: Permission denied (13)
> May 22 12:23:26 orange-pi-pc2 sh[254]:
> [250:250:0522/122326.674692:ERROR:ozone_platform_wayland.cc(233)]
> Failed to init
> ialize Wayland platform
> May 22 12:23:26 orange-pi-pc2 sh[254]:
> [250:250:0522/122326.674738:ERROR:env.cc(255)] The platform failed to
> initialize
> .  Exiting.
>
> When running the terminal from wayland desktop chromium works fine. Am
> I missing something to start it properly?
>
> Thanks and BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60079): https://lists.yoctoproject.org/g/yocto/messag=
e/60079
> Mute This Topic: https://lists.yoctoproject.org/mt/99063456/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

