Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D977E7E626
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 11:35:02 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.16544.1695728095803619736
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 04:34:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=google header.b=n7jj9cwR;
 spf=pass (domain: gherzan.ro, ip: 209.85.214.182, mailfrom: andrei@gherzan.ro)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1c44c0f9138so60596805ad.2
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 04:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.com; s=google; t=1695728095; x=1696332895; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1+n1Alir7QCVKMMBSSYIsatzyoTJjXBQnkz7RGngjgo=;
        b=n7jj9cwR0UEHqzJHbYd2V7y+gypc3peEf4FR9HWe2BQnWPBNkvmg3pl3toM5/x0SSo
         Ei9oqJFWShFqCx2wRzq0gGr69QQcsxC74VdH0LtCP7H9QzMg07x1/X7Kg1nrpZRDAYlz
         dqTcI11EQER9ftVeCGpsc21fPP7Pv+q9es5YOICf7BcaAA9izb0O0bV51ONYna6iHb4Q
         OXLRrELw2M2MQu6exFVcduil4iT7FcZ7kCFKfx7eD/P5pMX12c/yn6Ex+htiRP/VmLio
         qXnhXG+qEz/3+FqbmnUbBPU53ku3TElGCbEJTBsnLu9XCihWdiSYeWJqwG1+RgyOq949
         /rDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695728095; x=1696332895;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1+n1Alir7QCVKMMBSSYIsatzyoTJjXBQnkz7RGngjgo=;
        b=M75defJsoFw/TQuu8ZqAQClWBv+9vI2N4oP5M6LuNFj2upQKzqmyHz8BEqqZXMSrvt
         Hnb5DH99n3Nfb7u3H3NNlfV6gGH8RGAwZJzR9H+ESuhnWGh4y93UlRgdtlIOLxoXht9G
         6+H0gu50jnaHXRTkn35xWn2LKqyidFuuPw9YxDrwtf00lvnmi+Qxb24/u0TrItiGrTOj
         xrZ9dEHE3yOmP/2lNtLmSRckX6/cw3ypfTRYbNSYsf/b/PaSkTnwvib1b8m3xtpsRgDC
         rXGD89VYE2icgkJNKTaJ81zkh+X1wVsNlHTr85XcUnv6HIfLx96YaD/XWbUTMxA/Lq65
         YVcw==
X-Gm-Message-State: AOJu0YxRRMRWijPXoAe/hUdJ4HZZEvAseHk/y8jMTlGZStWoN5G7HysN
	R92Ims/g5YdFfBV/ZHLLcroYapc42AYYS0cXgttCjw==
X-Google-Smtp-Source: AGHT+IGuKGG8DK3sntI0lP8h9huUhKMDEFly6HU3F6SrvH/dHhdY33gpLRSvokjFU4NPc/Jt8P0bifP7whDHqVPBwkE=
X-Received: by 2002:a17:90a:bf0a:b0:26f:7555:76 with SMTP id
 c10-20020a17090abf0a00b0026f75550076mr6901800pjs.11.1695728094122; Tue, 26
 Sep 2023 04:34:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230925204900.1218494-1-JPEWhacker@gmail.com>
In-Reply-To: <20230925204900.1218494-1-JPEWhacker@gmail.com>
From: Andrei Gherzan <andrei@gherzan.com>
Date: Tue, 26 Sep 2023 12:34:17 +0100
Message-ID: <CAK18fxE2MWggz51X+Jsj+XbZHGuRk9XH5MCMKpNYa74K5hbVRg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH] rpi-base: wic images depend on
 the kernel
To: Joshua Watt <JPEWhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000afab7706064176a4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 11:35:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61129

--000000000000afab7706064176a4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joshua,

This makes sense, and thanks for the patch. Can you push this as a PR in
GitHub? It would help us run some CI before applying it.

Thanks once again,
--=20
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640


On Mon, Sep 25, 2023 at 9:49=E2=80=AFPM Joshua Watt <JPEWhacker@gmail.com> =
wrote:

> wic images depend on the kernel device trees, and therefore should
> depend on virtual/kernel:do_deploy to make sure these are present in the
> deploy directory.
>
> Most of the time, this dependency is satisfied indirectly since a rootfs
> image will depend on the kernel, but add it explicitly for the cases
> where it is not.
>
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  conf/machine/include/rpi-base.inc | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/machine/include/rpi-base.inc
> b/conf/machine/include/rpi-base.inc
> index 895fcfe..64f60ab 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -149,6 +149,7 @@ IMAGE_BOOT_FILES ?=3D "${BOOTFILES_DIR_NAME}/* \
>                   ${RPI_EXTRA_IMAGE_BOOT_FILES} \
>                   "
>  do_image_wic[depends] +=3D " \
> +    virtual/kernel:do_deploy \
>      rpi-bootfiles:do_deploy \
>      ${@bb.utils.contains('RPI_USE_U_BOOT', '1', 'u-boot:do_deploy',
> '',d)} \
>      "
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61106):
> https://lists.yoctoproject.org/g/yocto/message/61106
> Mute This Topic: https://lists.yoctoproject.org/mt/101583229/3617190
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> andrei@gherzan.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000afab7706064176a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Joshua,</div><div><br></div><div>This makes sense,=
 and thanks for the patch. Can you push this as a PR in GitHub? It would he=
lp us run some CI before applying it.</div><div><br></div><div>Thanks once =
again,<br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><div><div>--=C2=A0<br></div><=
div>Andrei Gherzan=C2=A0<br></div><div>gpg: rsa4096/D4D94F67AD0E9640<br></d=
iv></div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 25, 2023 at 9:49=E2=80=AFP=
M Joshua Watt &lt;<a href=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">wic images depend on the kernel device trees, and therefore should<br>
depend on virtual/kernel:do_deploy to make sure these are present in the<br=
>
deploy directory.<br>
<br>
Most of the time, this dependency is satisfied indirectly since a rootfs<br=
>
image will depend on the kernel, but add it explicitly for the cases<br>
where it is not.<br>
<br>
Signed-off-by: Joshua Watt &lt;<a href=3D"mailto:JPEWhacker@gmail.com" targ=
et=3D"_blank">JPEWhacker@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rpi-base.inc | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-b=
ase.inc<br>
index 895fcfe..64f60ab 100644<br>
--- a/conf/machine/include/rpi-base.inc<br>
+++ b/conf/machine/include/rpi-base.inc<br>
@@ -149,6 +149,7 @@ IMAGE_BOOT_FILES ?=3D &quot;${BOOTFILES_DIR_NAME}/* \<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${RPI_EXTRA_=
IMAGE_BOOT_FILES} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
=C2=A0do_image_wic[depends] +=3D &quot; \<br>
+=C2=A0 =C2=A0 virtual/kernel:do_deploy \<br>
=C2=A0 =C2=A0 =C2=A0rpi-bootfiles:do_deploy \<br>
=C2=A0 =C2=A0 =C2=A0${@bb.utils.contains(&#39;RPI_USE_U_BOOT&#39;, &#39;1&#=
39;, &#39;u-boot:do_deploy&#39;, &#39;&#39;,d)} \<br>
=C2=A0 =C2=A0 =C2=A0&quot;<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61106): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61106" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61106</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101583229/361=
7190" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101583229/3617190</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:andrei@gherzan.com" target=3D"_blank">andrei@ghe=
rzan.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000afab7706064176a4--

