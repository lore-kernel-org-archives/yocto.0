Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA2EB64DC
	for <webhook@archiver.kernel.org>; Fri, 21 Jul 2023 10:42:39 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
 by mx.groups.io with SMTP id smtpd.web11.4484.1689936154597578782
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jul 2023 03:42:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=google header.b=dUzIGqgC;
 spf=pass (domain: gherzan.ro, ip: 209.85.210.51, mailfrom: andrei@gherzan.ro)
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6b9c434fe75so1496538a34.0
        for <yocto@lists.yoctoproject.org>; Fri, 21 Jul 2023 03:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.com; s=google; t=1689936154; x=1690540954;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zvxwhX3r0WPReK4dV36xAFdAK7zudYZCsUtdSV8vosM=;
        b=dUzIGqgCwcl3qLr4O3YXxKla7HPAQqSi7ANMBOiezn6+YbegUu7c1N9VX/Y56MTosx
         lDDVAtbk4SMY2vXy9Wh/XSVI+SqwEHnPoaioUZxWl5gL4jNKu4iS1OHLuiKeq2qMyM+u
         XuWuHp4E8xFTv0uoEYaiK4cStwNcXHihCow6pZ5ZjI5a8I2+hL0yU8MuuF4gZL6c6bQp
         uXE45x7Tbhr2WoXikq4FTI3cEudtWoHfyDnAvZSZFTLubABNhuCeMr6Sd+oRf/J7yLaR
         jhNNsTh/5P+bst/ESdq5J36d253RJ7+2Qvka1yIVGvGNStIL4y1QQhbkjNTMzfVLN6MU
         frBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689936154; x=1690540954;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zvxwhX3r0WPReK4dV36xAFdAK7zudYZCsUtdSV8vosM=;
        b=VS26+YdjeE6LLrmXibNI4r1vtkX9qhvpM3PThtZuNxtHnW2m3C3h9xqccblyLGI5ey
         7kmufr0WdPdY37TWWrw9rO4uIcP6U9LJk0mjKw1gBtm9Vs6XtW+rHFyxV9AC7KNeNReI
         KM+scr/vlPfy+T6yBAvHin60+tkVbRczxfyPGCKFkblgnCA+2uSoGC2jtapBqNrI7vxB
         WVl8N1l3ULvJqaagkZLsoco8Va3kCh4pq/Kd8ARdPPp+h02lp4YZpePZpeDoM7faok7x
         jt8zR1DjTJ6DSUy4TS8W9QrIQmVbUBKw8BBa/d6m53U2rtpmpEy7YzzRlvkaYs3SplgP
         HRtw==
X-Gm-Message-State: ABy/qLY7YaSN5ned0riigCDkhtdf+cRre5XRcFxdD8fc2riCt+Itzft7
	glH4pqKz4c9eoQc4JiLIZCpWhoU9rVe8XEN/0hM2wQ==
X-Google-Smtp-Source: APBJJlG88UNarsdDCCda8H+958iQsVGx01AwL+ji6qe9m7sLApfkNRtRyQXuqOzYg/8X7mvr2IYJpMnL66myK5EJaN8=
X-Received: by 2002:a05:6808:bcb:b0:3a3:dda9:b90d with SMTP id
 o11-20020a0568080bcb00b003a3dda9b90dmr2283974oik.45.1689936153808; Fri, 21
 Jul 2023 03:42:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230720182935.1089619-1-vivien.didelot@gmail.com>
In-Reply-To: <20230720182935.1089619-1-vivien.didelot@gmail.com>
From: Andrei Gherzan <andrei@gherzan.com>
Date: Fri, 21 Jul 2023 11:41:57 +0100
Message-ID: <CAK18fxGMRWJHQKs5jLRBqPo6wAbGa=UeRG8F7PCAkggGk4gW+Q@mail.gmail.com>
Subject: Re: [meta-raspberrypi][PATCH] rpi-libcamera-apps: fix Illegal Instruction
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: yocto@lists.yoctoproject.org, Khem Raj <raj.khem@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000242a450600fcec35"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jul 2023 10:42:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60629

--000000000000242a450600fcec35
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 20, 2023 at 7:30=E2=80=AFPM Vivien Didelot <vivien.didelot@gmai=
l.com>
wrote:

> With armv8-neon being enforced for all ARM based machines, running
> any libcamera app on raspberrypi (e.g. Raspberry Pi B Rev 2) results
> in Illegal Instruction.
>
> To fix this, defaults to TARGET_ARCH for non-aarch64 machines.
>
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  recipes-multimedia/libcamera-apps/rpi-libcamera-apps_git.bb | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/recipes-multimedia/libcamera-apps/rpi-libcamera-apps_git.bb
> b/recipes-multimedia/libcamera-apps/rpi-libcamera-apps_git.bb
> index 062ded9..3460065 100644
> --- a/recipes-multimedia/libcamera-apps/rpi-libcamera-apps_git.bb
> +++ b/recipes-multimedia/libcamera-apps/rpi-libcamera-apps_git.bb
> @@ -30,7 +30,6 @@ EXTRA_OECMAKE =3D "\
>
>  LIBCAMERA_ARCH =3D "${TARGET_ARCH}"
>  LIBCAMERA_ARCH:aarch64 =3D "arm64"
> -LIBCAMERA_ARCH:arm =3D "armv8-neon"
>  EXTRA_OECMAKE +=3D "-DENABLE_COMPILE_FLAGS_FOR_TARGET=3D${LIBCAMERA_ARCH=
}"
>

Thanks for this. It looks good. Would you be able to send it as an MR in
Github so we can CI it as well?

Andrei

--000000000000242a450600fcec35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Jul 20, 2023 at 7:30=E2=80=AFPM Vivien Did=
elot &lt;<a href=3D"mailto:vivien.didelot@gmail.com" target=3D"_blank">vivi=
en.didelot@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">With armv8-neon being enforced for all ARM based machin=
es, running<br>
any libcamera app on raspberrypi (e.g. Raspberry Pi B Rev 2) results<br>
in Illegal Instruction.<br>
<br>
To fix this, defaults to TARGET_ARCH for non-aarch64 machines.<br>
<br>
Signed-off-by: Vivien Didelot &lt;<a href=3D"mailto:vivien.didelot@gmail.co=
m" target=3D"_blank">vivien.didelot@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-multimedia/libcamera-apps/<a href=3D"http://rpi-libcamera-app=
s_git.bb" rel=3D"noreferrer" target=3D"_blank">rpi-libcamera-apps_git.bb</a=
> | 1 -<br>
=C2=A01 file changed, 1 deletion(-)<br>
<br>
diff --git a/recipes-multimedia/libcamera-apps/<a href=3D"http://rpi-libcam=
era-apps_git.bb" rel=3D"noreferrer" target=3D"_blank">rpi-libcamera-apps_gi=
t.bb</a> b/recipes-multimedia/libcamera-apps/<a href=3D"http://rpi-libcamer=
a-apps_git.bb" rel=3D"noreferrer" target=3D"_blank">rpi-libcamera-apps_git.=
bb</a><br>
index 062ded9..3460065 100644<br>
--- a/recipes-multimedia/libcamera-apps/<a href=3D"http://rpi-libcamera-app=
s_git.bb" rel=3D"noreferrer" target=3D"_blank">rpi-libcamera-apps_git.bb</a=
><br>
+++ b/recipes-multimedia/libcamera-apps/<a href=3D"http://rpi-libcamera-app=
s_git.bb" rel=3D"noreferrer" target=3D"_blank">rpi-libcamera-apps_git.bb</a=
><br>
@@ -30,7 +30,6 @@ EXTRA_OECMAKE =3D &quot;\<br>
<br>
=C2=A0LIBCAMERA_ARCH =3D &quot;${TARGET_ARCH}&quot;<br>
=C2=A0LIBCAMERA_ARCH:aarch64 =3D &quot;arm64&quot;<br>
-LIBCAMERA_ARCH:arm =3D &quot;armv8-neon&quot;<br>
=C2=A0EXTRA_OECMAKE +=3D &quot;-DENABLE_COMPILE_FLAGS_FOR_TARGET=3D${LIBCAM=
ERA_ARCH}&quot;<br></blockquote><div><br></div><div>Thanks for this. It loo=
ks good. Would you be able to send it as an MR in Github so we can CI it as=
 well? <br></div><div><br></div><div></div><div>Andrei<br></div></div></div=
>

--000000000000242a450600fcec35--

