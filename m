Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10DD0C4332F
	for <webhook@archiver.kernel.org>; Sat, 28 Oct 2023 18:11:09 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.23168.1698516660620800951
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Oct 2023 11:11:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QkXqP6l7;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-5a7dd65052aso27893397b3.0
        for <yocto@lists.yoctoproject.org>; Sat, 28 Oct 2023 11:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698516660; x=1699121460; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=549+L0U1m1ZE37LBUjyrknJfJ4aH1Ulb1NommQDCUxg=;
        b=QkXqP6l7G7uKYNKW95aW2o+mWPHzArjcnKkcGIM4lGjKT/ZwwnF4Rvwm07W8WaBe7Q
         NwYiR1Vg6jpB+fUPSe29Z8bytrCNkpSWkMM1h8jKetqHuCF00B7hSrzNBbyFiczUrsXi
         /ecDTWqNj90cZOloQ3R1xsgDzp0Yn9agIaDDxQJ1NBHO8DxEGjd+H19syVUFnjxYr4WI
         qHwZ+6M8slb8gdefqGmZohnLr1aOy1LyigX3loUk9cuTeqBvfFFphqvYTYYaU5ZDlOm3
         S9KfiiRwhKK6l9cMfzZSc1uqCV+HVyv6G4x7JqnrAQ0YocteBA1Iee+Ou9cmd2wBfVYl
         WLaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698516660; x=1699121460;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=549+L0U1m1ZE37LBUjyrknJfJ4aH1Ulb1NommQDCUxg=;
        b=oGS9kBts5SW2ncpRW0/efPiyPnT5KIqJvvoCZCxWaKvOGDnHQ2hveMZUAjwisrnQOT
         tCHUgo279IhrVXQGt2u0hXwYwLC4S0nwOeAvfbNRud20bgOqywOTLngwazxpj4qY8/hO
         IUDMhBNgCcSERk23YgsKvw84Ynu5FSLJwjTvytIb1704ItglgymFtv3+LIfIyIstHsXZ
         cp6CBLGMqXDtd22XTWn8xUJSAuAL9Y0rwF49FdNBiXWVMEZcvGRTzAALWYBVaIvf3vKQ
         mCgllsWqxyR5FRthFq+fNrmnhvp370u5kFHIEXZHukDNCorgERvTVlMhRHRv9DT4q6RJ
         bi1Q==
X-Gm-Message-State: AOJu0YxrcFaR/qbdHz6Pfw2Ye4OJ5vSEzU9jydFX6brZUgIjlTT29ih+
	7MvqeHTH4KmxN87xNJhbug0oglQzLo1Cgm++St4=
X-Google-Smtp-Source: AGHT+IG+nQJ/qShgg20zcrL/GHpBRP6TJUbBA3efati3N6iny6xNI/qHKXWr466iNf/P+WPa/lnxI/Pv+JHITewR5Hg=
X-Received: by 2002:a25:3c7:0:b0:da0:228e:9cc5 with SMTP id
 190-20020a2503c7000000b00da0228e9cc5mr5035937ybd.42.1698516659717; Sat, 28
 Oct 2023 11:10:59 -0700 (PDT)
MIME-Version: 1.0
References: <20231021091829.968295-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20231021091829.968295-1-richard.purdie@linuxfoundation.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Sat, 28 Oct 2023 11:10:48 -0700
Message-ID: <CANx9H-BX880Zc1ozQps=Q3W9+oWYzTS8jKusUzZo0RsEes1Sig@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH] config.json: Fix
 check-layer for meta-poky/meta-yocto-bsp
To: Steve Sakoman <steve@sakoman.com>
Cc: yocto@lists.yoctoproject.org, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="00000000000025cdab0608caba9d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Oct 2023 18:11:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61511

--00000000000025cdab0608caba9d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Steve,

This needs to be applied to dunfell, kirkstone, mickledore and
nanbield (none of those are performing the correct check now).

On Sat, Oct 21, 2023 at 2:18=E2=80=AFAM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> Currently, the tests for meta-poky and meta-yocto-bsp were malfunctioning=
.
> We need to a) set a distro other than poky and b) avoid the isolation
> wrapper
> since it will use the default environment and reset to the poky distro an=
d
> default bblayers.conf which will disable the layer test.
>
> With those two fixes, the layer checks work correctly.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  config.json | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/config.json b/config.json
> index 27e56c5..55fde54 100644
> --- a/config.json
> +++ b/config.json
> @@ -1150,11 +1150,12 @@
>          },
>          "check-layer" : {
>              "NEEDREPOS" : ["poky", "meta-mingw"],
> +            "DISTRO" : "nodistro",
>              "step1" : {
> -                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-poky"]
> +                "EXTRACMDS" : ["bitbake-layers remove-layer ../meta-poky=
;
> yocto-check-layer ../meta-poky"]
>              },
>              "step2" : {
> -                "EXTRACMDS" : ["yocto-check-layer-wrapper
> ../meta-yocto-bsp"]
> +                "EXTRACMDS" : ["bitbake-layers remove-layer
> ../meta-yocto-bsp; yocto-check-layer ../meta-yocto-bsp"]
>              },
>              "step3" : {
>                  "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-mingw"=
]
> --
> 2.39.2
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61444):
> https://lists.yoctoproject.org/g/yocto/message/61444
> Mute This Topic: https://lists.yoctoproject.org/mt/102097822/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/leave/7531966/924729/429220467/xyz=
zy
> [ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000025cdab0608caba9d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Steve,</div><div><br></div>This needs to be applied t=
o dunfell, kirkstone, mickledore and nanbield=C2=A0(none of those are perfo=
rming the correct check now).</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, Oct 21, 2023 at 2:18=E2=80=AFAM Richa=
rd Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard=
.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Currently, the tests for meta-poky and meta-yoct=
o-bsp were malfunctioning.<br>
We need to a) set a distro other than poky and b) avoid the isolation wrapp=
er<br>
since it will use the default environment and reset to the poky distro and<=
br>
default bblayers.conf which will disable the layer test.<br>
<br>
With those two fixes, the layer checks work correctly.<br>
<br>
Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfou=
ndation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;<b=
r>
---<br>
=C2=A0config.json | 5 +++--<br>
=C2=A01 file changed, 3 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/config.json b/config.json<br>
index 27e56c5..55fde54 100644<br>
--- a/config.json<br>
+++ b/config.json<br>
@@ -1150,11 +1150,12 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;check-layer&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;NEEDREPOS&quot; : [&q=
uot;poky&quot;, &quot;meta-mingw&quot;],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;DISTRO&quot; : &quot;nodis=
tro&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step1&quot; : {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;yocto-check-layer-wrapper ../meta-poky&quot;]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;bitbake-layers remove-layer ../meta-poky; yocto-check-layer ..=
/meta-poky&quot;]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step2&quot; : {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;yocto-check-layer-wrapper ../meta-yocto-bsp&quot;]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;bitbake-layers remove-layer ../meta-yocto-bsp; yocto-check-lay=
er ../meta-yocto-bsp&quot;]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step3&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;EXTRACM=
DS&quot; : [&quot;yocto-check-layer-wrapper ../meta-mingw&quot;]<br>
-- <br>
2.39.2<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61444): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61444" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61444</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102097822/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/102097822/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/leave/753196=
6/924729/429220467/xyzzy" rel=3D"noreferrer" target=3D"_blank">https://list=
s.yoctoproject.org/g/yocto/leave/7531966/924729/429220467/xyzzy</a> [<a hre=
f=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@gmail.com</a>]<b=
r>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000025cdab0608caba9d--

