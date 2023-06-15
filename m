Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BB2BEB64DA
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 16:35:02 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web11.23511.1686846900195032216
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 09:35:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=VBEzXjKH;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-19fa4346498so5930087fac.1
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 09:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686846899; x=1689438899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ebIYF6GYF4gKa0PIayyUGrxJbaU6/4MDpdqjup5crlc=;
        b=VBEzXjKHBUwREKnmwiJNbpCI47VDfUrnA/MZU7eDkragfGRymwHvXijdLCNn8jGoTz
         jaSSwod3HGIJeFDxHp/Hr4IQjIJbne4WTawf0BeY8rLv3RJlLoZSd+le39nP9S5U3jR/
         Y6y1BPSC/uTbc0TJjdVIwgp8jaHXwihfP5U450nSbZG0O0g/P968QgwQgi4yP1NUnVTX
         HJQrPPdgTjISE4TGgda/guXkIoGpnWBJ9thxKVJ3G99FT243LlzIpHdT2jf/5bc3akuF
         lp86DQIsdsRudh0mxM2m9N7xkQYeoB0uUnm9I6aIm/wICyWM8+kSvglgCaUVb4CNK/A8
         O0nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686846899; x=1689438899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ebIYF6GYF4gKa0PIayyUGrxJbaU6/4MDpdqjup5crlc=;
        b=GhYM55eISn38rABfqiD7b079hyF9WZeohRebBDSd8wpNst/xzqN+Q/96bcqmLBKUCX
         q2alLQkrFotroMi/ylcbX7/ZwOJ8OzFI3p1xMe3kFNGa+EE5uI1SBvO9DUHvK3fcduuL
         7sHD+8fm1+F2YPg6bZuJDrRi3/8oL0LhOy1fmpsSHsROKvmkOXTad8P8tj+CDTBI13i4
         zCBXqlTZ88xtDYU9lLpVE2T2WFcO1tdP52tmCNKWHXCO0L5Ec/uQ3LaN0ltRtCET/816
         adVD7qMqAe783AW8tJbBE0HUq/dOK8OnFIsH81LV7DcP9dsqk4ZWFM1s69x5jY5n2eFr
         jd7w==
X-Gm-Message-State: AC+VfDwN7+vKtr9CK4/6x2Car9rtdfUpYAwhRtFznUFQRzi/QhmaHZog
	nqeM0uzC7CuzcfIWgG26T1OUybt59h4YRt8DXHAc31Zd
X-Google-Smtp-Source: ACHHUZ5JOxT2p2doEUNIXtCwBj3Fin4pUvQ2bZEhtAGtQOgxyvfG0sAIgxpH4tyeG806QVJN6xje1uzRnnnaNRaQou4=
X-Received: by 2002:a05:6870:8c30:b0:19e:a1aa:4812 with SMTP id
 ec48-20020a0568708c3000b0019ea1aa4812mr12667447oab.36.1686846899373; Thu, 15
 Jun 2023 09:34:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1686845688.git.pidge@baylibre.com> <dbb196bee808f3ecf1a085ef099cdfd72bcd0e8b.1686845688.git.pidge@baylibre.com>
In-Reply-To: <dbb196bee808f3ecf1a085ef099cdfd72bcd0e8b.1686845688.git.pidge@baylibre.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Jun 2023 09:34:33 -0700
Message-ID: <CAMKF1soj1D_sDG44rH4Xy3fXM-C7YiT0DrPHQYQHbUvaARmAZQ@mail.gmail.com>
Subject: Re: [yocto] [PATCH 1/3] wayland-utils: upgrade 1.1.0 -> 1.2.0
To: =?UTF-8?B?RWlsw61zICdwaWRnZScgTsOtIEZobGFubmFnw6Fpbg==?= <pidge@baylibre.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 16:35:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60317

On Thu, Jun 15, 2023 at 9:16=E2=80=AFAM Eil=C3=ADs 'pidge' N=C3=AD Fhlannag=
=C3=A1in
<pidge@baylibre.com> wrote:
>
> Signed-off-by: Eil=C3=ADs 'pidge' N=C3=AD Fhlannag=C3=A1in <pidge@baylibr=
e.com>
> ---
>  .../wayland/{wayland-utils_1.1.0.bb =3D> wayland-utils_1.2.0.bb} | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>  rename meta/recipes-graphics/wayland/{wayland-utils_1.1.0.bb =3D> waylan=
d-utils_1.2.0.bb} (82%)
>
> diff --git a/meta/recipes-graphics/wayland/wayland-utils_1.1.0.bb b/meta/=
recipes-graphics/wayland/wayland-utils_1.2.0.bb
> similarity index 82%
> rename from meta/recipes-graphics/wayland/wayland-utils_1.1.0.bb
> rename to meta/recipes-graphics/wayland/wayland-utils_1.2.0.bb
> index dcee87e2cd..16a5dc072c 100644
> --- a/meta/recipes-graphics/wayland/wayland-utils_1.1.0.bb
> +++ b/meta/recipes-graphics/wayland/wayland-utils_1.2.0.bb
> @@ -10,9 +10,8 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D548a66038a77=
415e1df51118625e832f \
>                     "
>
>  SRC_URI =3D "https://gitlab.freedesktop.org/wayland/wayland-utils/-/rele=
ases/${PV}/downloads/${BPN}-${PV}.tar.xz \
> -           file://0001-wayland-info-Fix-build-without-libdrm.patch \

The patch is removed here from recipe, but patchfile is not deleted it seem=
s.

>             "
> -SRC_URI[sha256sum] =3D "9e685863025b4feade36d53bbc8e31b43e26498be743dea8=
4c7a84912959410a"
> +SRC_URI[sha256sum] =3D "d9278c22554586881802540751bcc42569262bf80cd9ac9b=
0fd12ff4bd09a9e4"
>
>  UPSTREAM_CHECK_URI =3D "https://wayland.freedesktop.org/releases.html"
>
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60313): https://lists.yoctoproject.org/g/yocto/messag=
e/60313
> Mute This Topic: https://lists.yoctoproject.org/mt/99552500/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

