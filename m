Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D1EDEB64D9
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 16:33:52 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
 by mx.groups.io with SMTP id smtpd.web11.23492.1686846831586234523
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 09:33:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=CkLQbXek;
 spf=pass (domain: gmail.com, ip: 209.85.161.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-55b3d77c9deso1664613eaf.0
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 09:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686846831; x=1689438831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=958qA2nBKldu+mU2O5OKvdTrvwRmhCwDGT+VSwz/5Mg=;
        b=CkLQbXekOMiITQ25wXi1lGwKyn6jc/N0V0CSNSm27hj41kpMySKt6Ot4RdsIVdrqZn
         9X4hsgXTMU4A2urDjuVvQ1QL0Qxpj+oGbwDgT5wGwtDuWgD1+deDSvkfC/My/Gc6Dgig
         OfNwdB5ruKL+0HMGNo3WNs3WUrqgLiJReeKfEd9iCgonNHg06B0Oy60Hd6CZamcdkebj
         feM/A5wpl8CQ15VtwFcu63XBW2RI16PNU9aEjXVgh9IgGc6kWo33yyZ5s69NhKS0si7m
         WY8VhHq8UnO0sKH/EmrC+I5TydHgng9M6SHwvREx9LLN3WqdinHAvjLYHZIxtGuN/fNY
         +J+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686846831; x=1689438831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=958qA2nBKldu+mU2O5OKvdTrvwRmhCwDGT+VSwz/5Mg=;
        b=Jf6dIMsM1QrcJyOLtM/b1Coat+TaEIJAtQxrnBVNbwiyP0cJmujl+n+X/aE8XKqZW1
         J5YkjmhkxeNptbhADxAmiHgKHoRSGOUuEK+Ml9bLZ6vfQOoo6pMF0f/yLpsXoa05I1Kd
         fgJBAqnHdFtOha5G0YyD9rx4t4yFFPOKovfn19QHZFit6rZrcktUznnYPbhw2ItePV/v
         JV7bjcIBz4Nd+MLVV6KE24Is2yV1q7HQAg2+szktZwLoCxn3fpA/Z6Wt7jDWSZPYHPlz
         ZpC2Cz+kArCWUqAJMfVzcjLzTP0NU6GKcW16ak0WjuvWtz+Sbbm88VGHuqWnVLx4faYh
         b+Kg==
X-Gm-Message-State: AC+VfDyQr1npYPTZGnRb7eVuRMIc7tN3kTAwjnFob4oO6cxeQ63Gliv3
	MdjKEqgqR2gHtxRJJ6H3Sn0AMNDSHk/6c3hd3FU=
X-Google-Smtp-Source: ACHHUZ7n9ugJ4qJsw7RfmPwxE0eBhTLsM2EWduA6q17jbl7l2PrMNVxODoLCD28KknqRcsiOSdZ4yvgGZOfDko0WwF4=
X-Received: by 2002:a4a:de42:0:b0:55b:85b9:68f5 with SMTP id
 z2-20020a4ade42000000b0055b85b968f5mr8582593oot.3.1686846830568; Thu, 15 Jun
 2023 09:33:50 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1686845688.git.pidge@baylibre.com>
In-Reply-To: <cover.1686845688.git.pidge@baylibre.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Jun 2023 09:33:24 -0700
Message-ID: <CAMKF1sqQeRMSDxRkx0cPCTThmC9uxp1M-wWwZxZ_b5PBLBx6Cg@mail.gmail.com>
Subject: Re: [yocto] [PATCH 0/3] wayland/weston upgrades
To: =?UTF-8?B?RWlsw61zICdwaWRnZScgTsOtIEZobGFubmFnw6Fpbg==?= <pidge@baylibre.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 16:33:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60316

Thanks for patches, however yocto ml is not right place for them. they
should be sent to openembedded-core mailing list

On Thu, Jun 15, 2023 at 9:16=E2=80=AFAM Eil=C3=ADs 'pidge' N=C3=AD Fhlannag=
=C3=A1in
<pidge@baylibre.com> wrote:
>
> Nothing really surprising here, except we should note that launcher-login=
d is
> being depreciated so some thought on how that is dealt with will need to =
occur.
>
> Eil=C3=ADs 'pidge' N=C3=AD Fhlannag=C3=A1in (3):
>   wayland-utils: upgrade 1.1.0 -> 1.2.0
>   weston: Upgrade 11.0.1 -> 12.0.1
>   xwayland: Upgrade 23.1.1 -> 23.1.2
>
>  .../{wayland-utils_1.1.0.bb =3D> wayland-utils_1.2.0.bb} |  3 +--
>  .../wayland/{weston_11.0.1.bb =3D> weston_12.0.1.bb}     | 10 +++++++---
>  .../{xwayland_23.1.1.bb =3D> xwayland_23.1.2.bb}         |  2 +-
>  3 files changed, 9 insertions(+), 6 deletions(-)
>  rename meta/recipes-graphics/wayland/{wayland-utils_1.1.0.bb =3D> waylan=
d-utils_1.2.0.bb} (82%)
>  rename meta/recipes-graphics/wayland/{weston_11.0.1.bb =3D> weston_12.0.=
1.bb} (92%)
>  rename meta/recipes-graphics/xwayland/{xwayland_23.1.1.bb =3D> xwayland_=
23.1.2.bb} (95%)
>
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60312): https://lists.yoctoproject.org/g/yocto/messag=
e/60312
> Mute This Topic: https://lists.yoctoproject.org/mt/99552499/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

