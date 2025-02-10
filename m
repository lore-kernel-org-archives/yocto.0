Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78FA5C02198
	for <webhook@archiver.kernel.org>; Mon, 10 Feb 2025 17:37:51 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
 by mx.groups.io with SMTP id smtpd.web11.58017.1739209062784496959
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2025 09:37:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MDklW7T0;
 spf=pass (domain: gmail.com, ip: 209.85.160.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-2b8a0c095cfso242339fac.0
        for <yocto@lists.yoctoproject.org>; Mon, 10 Feb 2025 09:37:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739209062; x=1739813862; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NDJmi5tuWih9CZe9vqfRiVO9sIW+3dEFXu6xWn03B+g=;
        b=MDklW7T0mBB9/9ka0sHwPBRl31RP9gbKsewIqu2819yID8NZrCfQ/7F5SwbYitlPzC
         LJi0FRcqSxTNOkXMpQejZPnjgLm0oNwhoaCs6yb6uue93OV7YS4rGPRlIEXaknJsm8EE
         vpTHSYN6veMREfRBjOGOOAcoKZ9EuKla0wTZ98EITHykVBkSjxVp8czOv5aeVS648XOE
         aqOc/1obFoSmfrucvF2C3y/pcQselqD6W8T/Pvj91tojHMchUPouggO907m77EVAwzt5
         vSFGBrJmovPP0vZkS0/KFHGfLT2AMLOlq6Ye6ssMxix9zbFuqoxGXQA9XrnqHKpy5dvh
         9v2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739209062; x=1739813862;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NDJmi5tuWih9CZe9vqfRiVO9sIW+3dEFXu6xWn03B+g=;
        b=hsrFVMS7F/NWX1WbzvcS8a01SZgSL39V85Chb+gPcMLX1bxOUiNWEgl2nltWeNwfgQ
         51jsgQ3gN2M91n4GgjD/PhBvdnCpBzAPkaV1hpS3W0vYki9Z+Did5zLZeQEwSGX1ClQv
         VtDsFRiErkvD/DvTQuN16X1u3UEof2bL00yxneOqt36NYVs8DRPJkAHfFoTo/DcP7xOV
         uzGPjffG9cS71pSAAcVX/sd/sB35B8Pjmt69KGg76Mb9q7he9oh+HHdnimJOj3je1XGt
         Pmk5IUNGs0YQxlyQh6IDLLzqxSwh5Y8SATIi/v5wJeST45pJIlPowkvD9cVHnEQ8c/DQ
         gjmQ==
X-Gm-Message-State: AOJu0YzkCitC/ongk4/PJYkrF+3o2ggEZyKJW6DAb1JwLg5K2QqMhPgo
	hF0SCa1Wz9N7dnjBzl07XI06b9FsiSy+md0uxNdDN+gl2NP4AqT20Tthv1f8BALE0sW83IG9mfq
	2OjDVS9oAj1X0wrM7CgGNVrhhB6qK8eFYqms=
X-Gm-Gg: ASbGnctHnAdGVnVDi/khBXejoc6iEveiachvIf/TRS9Ydi0DQ5kBZ18IT/nqlTivobI
	XKveHrpuUBkYDmAncKoDo265QMAwCqhH0MJMgabyb6CNBjSH8vP8POiPf8KuqfXZXzXFJCDea2Z
	mrMNWz3Qxw8AUDngUxJZu/O/Pn6A4F0w==
X-Google-Smtp-Source: AGHT+IHi4VandoUJydkK4qGFz+bWoZYPgtQTLi5rABcD+9xqHo7JFCd59feoCo8KdhC4/1wjLb6WCy2G7HEOzEFr+B4=
X-Received: by 2002:a05:6870:c0b:b0:29e:3132:5897 with SMTP id
 586e51a60fabf-2b83eba9bf7mr8439110fac.5.1739209061602; Mon, 10 Feb 2025
 09:37:41 -0800 (PST)
MIME-Version: 1.0
References: <425c68c49ab93d982c494417ce6573f7dd330c36.camel@hanoverdisplays.com>
In-Reply-To: <425c68c49ab93d982c494417ce6573f7dd330c36.camel@hanoverdisplays.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 10 Feb 2025 09:37:15 -0800
X-Gm-Features: AWEUYZkuJGa-LsQrzNIkrPyicJWoYzZjKNxvEnpi8-utS5v0jNhDK0P0A7CQnIM
Message-ID: <CAMKF1soDMLbyo3t1rGC23x7CY-ELsGKuaWL3O5RWvEziD4TWfg@mail.gmail.com>
Subject: Re: [yocto] [psplash][PATCH] psplash.c: fix crash from length
 becoming negative
To: yocto@lists.yoctoproject.org, cmoore@hanoverdisplays.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Feb 2025 17:37:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64754

On Mon, Feb 10, 2025 at 12:54=E2=80=AFAM Chris Moore via
lists.yoctoproject.org
<cmoore=3Dhanoverdisplays.com@lists.yoctoproject.org> wrote:
>
> From: Chris Moore <cmoore@hanoverdisplays.com>
> Date: Fri, 7 Feb 2025 15:21:02 +0000
> Subject: [psplash][PATCH] psplash.c: fix crash from length becoming
> negative
>
> Fixes [Yocto #14806]
>
> If there is an error in read(), it returns -1 but this is just added to
> length without checking first. This can lead to a runaway negative
> value
> for length which eventually crashes when memchr() is called with the
> negative value.
>
> The fix is to check the return from read() first and handle the error
> state.
>
> Signed-off-by: Chris Moore <cmoore@hanoverdisplays.com>
> ---
>  psplash.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/psplash.c b/psplash.c
> index ee1af6b..0db0aa4 100644
> --- a/psplash.c
> +++ b/psplash.c
> @@ -140,6 +140,7 @@ psplash_main (PSplashFB *fb, int pipe_fd, int
> timeout)
>  {
>    int            err;
>    ssize_t        length =3D 0;
> +  ssize_t        ret =3D 0;
>    fd_set         descriptors;
>    struct timeval tv;
>    char          *end;
> @@ -170,15 +171,16 @@ psplash_main (PSplashFB *fb, int pipe_fd, int
> timeout)
>           return;
>         }
>
> -      length +=3D read (pipe_fd, end, sizeof(command) - (end -
> command));
> +      ret =3D read (pipe_fd, end, sizeof(command) - (end - command));

good find.  even -Wunused-result would not catch it :)

>
> -      if (length =3D=3D 0)
> +      if (ret <=3D 0)
>         {
>           /* Reopen to see if there's anything more for us */
>           close(pipe_fd);
>           pipe_fd =3D open(PSPLASH_FIFO,O_RDONLY|O_NONBLOCK);
>           goto out;
>         }
> +      length +=3D ret;
>
>        cmd =3D command;
>        do {
> --
> 2.45.2
>
>
> Chris Moore
>
>
> Embedded Software Engineer
>
>
>
>
>
> @ cmoore@hanoverdisplays.com
> T   +44 1273 477528
>
>
> www.hanoverdisplays.comHanover Displays Ltd. Southerham House, Southerham=
 Lane, Lewes, East Sussex BN8 6JN, UK
>
>
> Registered in England No: 1876684
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64753): https://lists.yoctoproject.org/g/yocto/messag=
e/64753
> Mute This Topic: https://lists.yoctoproject.org/mt/111098996/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

