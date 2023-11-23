Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECA2C61D85
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 11:01:26 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web11.88679.1700737284237507281
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 03:01:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AnlA1i/Y;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: quaresma.jose@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3b83fc26e4cso475595b6e.2
        for <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 03:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700737283; x=1701342083; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rEjTMmRLCf6A8MX29Pld6wu7VSK0yMzPwmUqZRcyH28=;
        b=AnlA1i/Yzvup+IpgcxThp6L5TDc5C9MLcn4TazBP2/gRROHKRuQotJZYxhMp8fKabd
         1h6ga1eN1wGbqyU331V1b034iSJQjPGJdkLiNbUJO2ozk7YtTfV7F5+f2cD5BvHc8YhZ
         iyq/yZwKJk5Id6zNnQnjStlJozg4L+tX8Eqi/tx67YKnKbbG7zaRudqO3RnGguXVHCT9
         qzyg0z1DH3gMlsE6b0PbjCDvN3HAipS1VzsrQnPhhuM0F99Kt8tgNQ1HpTJ1uG3S9ZVP
         wkr41DWuWymbabmTTU6WLh2XLi0qyQyJxX7cqBgs2vSuB5/nOszFX0qrLAlJiXigdujT
         i6Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700737283; x=1701342083;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rEjTMmRLCf6A8MX29Pld6wu7VSK0yMzPwmUqZRcyH28=;
        b=A3aZ4s/55jthq0I5xJ7hWhSrrDTC3KhUOq0ynTpuSFOvAUgG2678Y+KqM62QbPSzkF
         8+bofzxdYTiaMR5KkcFvFjYCh7B+Bunw+I7dmWjuUeXlpBCk/+nHvDEl5T0343gjM/aA
         VSUkiXdaDPwk332pa21aIPL75WN/ADQ5+/n7CXlbdGx3JN+RMuX95us32lmH8FyqVJjJ
         uXkLjr9Ensfq2nI7eCWOtDo34hbUnTDKxCtV2pbUcJaa4tsFkBguOrr+08uCoPGS8ViZ
         JStuDhmD+2AaduNTjwYYwT4LSl4SOK/XLC7Oo8eNUMZFoTO85EOsnq2iC/ef1T9ylTh9
         OSpQ==
X-Gm-Message-State: AOJu0Yw/EZLojsAQCildgVaGzF83LkG0pONjp0ygWuoC4pwbaX8aJWJJ
	zSuzztuF4poSZUl9HQvi6Kk6ToPyvd3sWSBbQ3Q=
X-Google-Smtp-Source: AGHT+IEjtb9+j2POgecO2A6xOXBp77Hlh7eQUQfu5wlPC2DNOpdHURpB/ODie9wkamOoACsXB3EJMmFlqoatOZ62qZQ=
X-Received: by 2002:a05:6358:281e:b0:16b:c401:955b with SMTP id
 k30-20020a056358281e00b0016bc401955bmr5952931rwb.2.1700737282945; Thu, 23 Nov
 2023 03:01:22 -0800 (PST)
MIME-Version: 1.0
References: <20231123105340.3929836-1-mikko.rapeli@linaro.org>
In-Reply-To: <20231123105340.3929836-1-mikko.rapeli@linaro.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 23 Nov 2023 11:01:12 +0000
Message-ID: <CANPvuRkY1Nvy3+us3UHRDUqLEX-V4-+15Wa-v2T__GP62o+zSQ@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] tpm2-tss: support native builds
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009b343f060acfc10e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 11:01:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61735

--0000000000009b343f060acfc10e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mikko,

Mikko Rapeli <mikko.rapeli@linaro.org> escreveu no dia quinta, 23/11/2023
=C3=A0(s) 10:53:

> systemd tool ukify
> https://www.freedesktop.org/software/systemd/man/latest/ukify.html
> depends on systemd-measure
>
> https://www.freedesktop.org/software/systemd/man/latest/systemd-measure.h=
tml
> which depends on tpm2-tss. So to support creating UKI
> images containing both kernel and initramfs with systemd-native,
>

Is systemd-native supported in any public layer?
I saw some proposals on the oe-core mailing list but they were not
integrated.

Jose


> tpm2-tss support is needed for native too.
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
> b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
> index 6386105..dceebc2 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
> @@ -93,3 +93,5 @@ FILES:${PN} =3D "\
>      ${sysconfdir}/sysusers.d"
>
>  RDEPENDS:libtss2 =3D "libgcrypt"
> +
> +BBCLASSEXTEND =3D "native"
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61734):
> https://lists.yoctoproject.org/g/yocto/message/61734
> Mute This Topic: https://lists.yoctoproject.org/mt/102764925/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000009b343f060acfc10e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Mikko,</div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">Mikko Rapeli &lt;<a href=3D=
"mailto:mikko.rapeli@linaro.org" target=3D"_blank">mikko.rapeli@linaro.org<=
/a>&gt; escreveu no dia quinta, 23/11/2023 =C3=A0(s) 10:53:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">systemd tool ukify<br>
<a href=3D"https://www.freedesktop.org/software/systemd/man/latest/ukify.ht=
ml" rel=3D"noreferrer" target=3D"_blank">https://www.freedesktop.org/softwa=
re/systemd/man/latest/ukify.html</a><br>
depends on systemd-measure<br>
<a href=3D"https://www.freedesktop.org/software/systemd/man/latest/systemd-=
measure.html" rel=3D"noreferrer" target=3D"_blank">https://www.freedesktop.=
org/software/systemd/man/latest/systemd-measure.html</a><br>
which depends on tpm2-tss. So to support creating UKI<br>
images containing both kernel and initramfs with systemd-native,<br></block=
quote><div><br></div><div>Is systemd-native supported in any public layer?<=
br>I saw some proposals on the oe-core mailing list but they were not integ=
rated.<br><br>Jose<br>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
tpm2-tss support is needed for native too.<br>
<br>
Signed-off-by: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org" =
target=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
---<br>
=C2=A0meta-tpm/recipes-tpm2/tpm2-tss/<a href=3D"http://tpm2-tss_4.0.1.bb" r=
el=3D"noreferrer" target=3D"_blank">tpm2-tss_4.0.1.bb</a> | 2 ++<br>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/<a href=3D"http://tpm2-tss_4.0.=
1.bb" rel=3D"noreferrer" target=3D"_blank">tpm2-tss_4.0.1.bb</a> b/meta-tpm=
/recipes-tpm2/tpm2-tss/<a href=3D"http://tpm2-tss_4.0.1.bb" rel=3D"noreferr=
er" target=3D"_blank">tpm2-tss_4.0.1.bb</a><br>
index 6386105..dceebc2 100644<br>
--- a/meta-tpm/recipes-tpm2/tpm2-tss/<a href=3D"http://tpm2-tss_4.0.1.bb" r=
el=3D"noreferrer" target=3D"_blank">tpm2-tss_4.0.1.bb</a><br>
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/<a href=3D"http://tpm2-tss_4.0.1.bb" r=
el=3D"noreferrer" target=3D"_blank">tpm2-tss_4.0.1.bb</a><br>
@@ -93,3 +93,5 @@ FILES:${PN} =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0${sysconfdir}/sysusers.d&quot;<br>
<br>
=C2=A0RDEPENDS:libtss2 =3D &quot;libgcrypt&quot;<br>
+<br>
+BBCLASSEXTEND =3D &quot;native&quot;<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61734): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61734" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61734</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102764925/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/102764925/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--0000000000009b343f060acfc10e--

