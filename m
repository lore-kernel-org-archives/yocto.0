Return-Path: <vanusuri@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CDFAC531DF
	for <webhook@archiver.kernel.org>; Mon, 19 Aug 2024 01:56:54 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web10.201437.1724032605520190384
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Aug 2024 18:56:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=JQaZl5JJ;
 spf=pass (domain: mvista.com, ip: 209.85.208.178, mailfrom: vanusuri@mvista.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2f025b94e07so42819431fa.0
        for <yocto@lists.yoctoproject.org>; Sun, 18 Aug 2024 18:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1724032603; x=1724637403; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLpSEnqvLj3hI/OmFJi/Q8H6mxmiqyt4KOwikvqlSiY=;
        b=JQaZl5JJSS4x5j45xvqE5xJZFB/20S5spRen2OJX+guy/Ro8of0GP/Z3q37B14xDee
         mleSubtKitzovr+T5bzhyBiXZXwf3Z4Y2RDToqrHhijU4tYuid6ziTGQZosdSNEojcso
         Gmn52HJnUeQHttMj/X/RTJa0iwpEOo0baRAyY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724032603; x=1724637403;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZLpSEnqvLj3hI/OmFJi/Q8H6mxmiqyt4KOwikvqlSiY=;
        b=qGPKmJ+Wrfe+ZxD5raXvI602a6UDhyQCkaZOwe3HDcPPA1PfeRTzYhkidbbJVyOlVg
         gIj8sASlFyP1eV6duvM4TOp2swhFLqgzGsMM9WqDTVr/AMLudfNgC7yxlTnxUX+dO89c
         BurM6111wdyi4yVlvFo77pJNJDylhs+2d4cIwWyCOAH06NBoQYKhFHfUftB0OB7IIH2K
         EhyQ5oXHLQttt36mAo8gA5VEqZA5jFTCFlV3y6dkE/0CwMqKgt/qoSwH6jhtvEv2Evt+
         +l+ncS14Cnn1DSbySvQPcAduLDuxruRfCY1DMAamvcvlZCs2vzxt1F9kqVh3PuuW91KS
         aM7w==
X-Gm-Message-State: AOJu0YyYdBugKqoBbUqGPBt/0uFBIPS8jxlUGee6HV/zhwdkpR4B3JTo
	Thsc33+v8TEcpaFsco8rOvyb2LUTBZkTaxrJ2gvadj5DTh+a39tBAIwX9lUZPhFXnCRGw9+sBxD
	GQyJuOIFnjOdgL+z2GsXVoZWtxqD+gDoiE0kk9aBTFVcoQwBqPuw=
X-Google-Smtp-Source: AGHT+IE3Xxmwidqu21jG8l06JywIPyKheIs6u7eMZFpVQskrhWvXfPpeaAqxsJshgLpyU/+vcxQIvMAWaQFL09xJzVI=
X-Received: by 2002:a2e:9d44:0:b0:2ef:3138:f19 with SMTP id
 38308e7fff4ca-2f3be60c8c4mr61006661fa.43.1724032603084; Sun, 18 Aug 2024
 18:56:43 -0700 (PDT)
MIME-Version: 1.0
References: <20240807041657.189718-1-vanusuri@mvista.com>
In-Reply-To: <20240807041657.189718-1-vanusuri@mvista.com>
From: Vijay Anusuri <vanusuri@mvista.com>
Date: Mon, 19 Aug 2024 07:26:31 +0530
Message-ID: <CANQUz18euX60hh4Z_1W5Ro8wzG2AYMV9pbZ0UXPWMLKT5H+AnQ@mail.gmail.com>
Subject: Re: [meta-security][scarthgap][PATCH] tpm2-tools: Upgrade 5.5 -> 5.7
To: yocto@lists.yoctoproject.org, Armin Kuster <akuster808@gmail.com>
Cc: Armin Kuster <akuster@mvista.com>, Jeremy Puhlman <jpuhlman@mvista.com>
Content-Type: multipart/alternative; boundary="000000000000e375bb061fff9ead"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Aug 2024 01:56:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63720

--000000000000e375bb061fff9ead
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

Gentle Reminder ...!!!

Any update on this ?

Thanks & Regards,
Vijay

On Wed, Aug 7, 2024 at 9:47=E2=80=AFAM <vanusuri@mvista.com> wrote:

> From: Vijay Anusuri <vanusuri@mvista.com>
>
> Include Security fixes:
> Fixed CVE-2024-29038
> Fixed CVE-2024-29039
>
> Changelog:
> https://github.com/tpm2-software/tpm2-tools/releases/tag/5.7
> https://github.com/tpm2-software/tpm2-tools/releases/tag/5.6
>
> Signed-off-by: Vijay Anusuri <vanusuri@mvista.com>
> ---
>  .../tpm2-tools/{tpm2-tools_5.5.bb =3D> tpm2-tools_5.7.bb}         | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>  rename meta-tpm/recipes-tpm2/tpm2-tools/{tpm2-tools_5.5.bb =3D>
> tpm2-tools_5.7.bb} (82%)
>
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
> b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
> similarity index 82%
> rename from meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
> rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
> index 8119bb1..859b3b4 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.5.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
> @@ -8,7 +8,7 @@ DEPENDS =3D "tpm2-tss openssl curl"
>
>  SRC_URI =3D "
> https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${=
PV}.tar.gz
> "
>
> -SRC_URI[sha256sum] =3D
> "1fdb49c730537bfdaed088884881a61e3bfd121e957ec0bdceeec0261236c123"
> +SRC_URI[sha256sum] =3D
> "3810d36b5079256f4f2f7ce552e22213d43b1031c131538df8a2dbc3c570983a"
>
>  UPSTREAM_CHECK_URI =3D "https://github.com/tpm2-software/${BPN}/releases=
"
>
> --
> 2.25.1
>
>

--000000000000e375bb061fff9ead
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Team,<br><br></div>Gentle Reminder ...!!=
!<br><br></div>Any update on this ?<br><br></div><div>Thanks &amp; Regards,=
</div><div>Vijay<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Aug 7, 2024 at 9:47=E2=80=AFAM &lt;<a hre=
f=3D"mailto:vanusuri@mvista.com">vanusuri@mvista.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">From: Vijay Anusuri &lt=
;<a href=3D"mailto:vanusuri@mvista.com" target=3D"_blank">vanusuri@mvista.c=
om</a>&gt;<br>
<br>
Include Security fixes:<br>
Fixed CVE-2024-29038<br>
Fixed CVE-2024-29039<br>
<br>
Changelog:<br>
<a href=3D"https://github.com/tpm2-software/tpm2-tools/releases/tag/5.7" re=
l=3D"noreferrer" target=3D"_blank">https://github.com/tpm2-software/tpm2-to=
ols/releases/tag/5.7</a><br>
<a href=3D"https://github.com/tpm2-software/tpm2-tools/releases/tag/5.6" re=
l=3D"noreferrer" target=3D"_blank">https://github.com/tpm2-software/tpm2-to=
ols/releases/tag/5.6</a><br>
<br>
Signed-off-by: Vijay Anusuri &lt;<a href=3D"mailto:vanusuri@mvista.com" tar=
get=3D"_blank">vanusuri@mvista.com</a>&gt;<br>
---<br>
=C2=A0.../tpm2-tools/{<a href=3D"http://tpm2-tools_5.5.bb" rel=3D"noreferre=
r" target=3D"_blank">tpm2-tools_5.5.bb</a> =3D&gt; <a href=3D"http://tpm2-t=
ools_5.7.bb" rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.7.bb</a>}=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
=C2=A0rename meta-tpm/recipes-tpm2/tpm2-tools/{<a href=3D"http://tpm2-tools=
_5.5.bb" rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.5.bb</a> =3D&gt;=
 <a href=3D"http://tpm2-tools_5.7.bb" rel=3D"noreferrer" target=3D"_blank">=
tpm2-tools_5.7.bb</a>} (82%)<br>
<br>
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_=
5.5.bb" rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.5.bb</a> b/meta-t=
pm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_5.7.bb" rel=3D"nore=
ferrer" target=3D"_blank">tpm2-tools_5.7.bb</a><br>
similarity index 82%<br>
rename from meta-tpm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_5=
.5.bb" rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.5.bb</a><br>
rename to meta-tpm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_5.7=
.bb" rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.7.bb</a><br>
index 8119bb1..859b3b4 100644<br>
--- a/meta-tpm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_5.5.bb"=
 rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.5.bb</a><br>
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_5.7.bb"=
 rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.7.bb</a><br>
@@ -8,7 +8,7 @@ DEPENDS =3D &quot;tpm2-tss openssl curl&quot;<br>
<br>
=C2=A0SRC_URI =3D &quot;<a href=3D"https://github.com/tpm2-software/$%7BBPN=
%7D/releases/download/$%7BPV%7D/$%7BBPN%7D-$%7BPV%7D.tar.gz" rel=3D"norefer=
rer" target=3D"_blank">https://github.com/tpm2-software/${BPN}/releases/dow=
nload/${PV}/${BPN}-${PV}.tar.gz</a>&quot;<br>
<br>
-SRC_URI[sha256sum] =3D &quot;1fdb49c730537bfdaed088884881a61e3bfd121e957ec=
0bdceeec0261236c123&quot;<br>
+SRC_URI[sha256sum] =3D &quot;3810d36b5079256f4f2f7ce552e22213d43b1031c1315=
38df8a2dbc3c570983a&quot;<br>
<br>
=C2=A0UPSTREAM_CHECK_URI =3D &quot;<a href=3D"https://github.com/tpm2-softw=
are/$%7BBPN%7D/releases" rel=3D"noreferrer" target=3D"_blank">https://githu=
b.com/tpm2-software/${BPN}/releases</a>&quot;<br>
<br>
-- <br>
2.25.1<br>
<br>
</blockquote></div>

--000000000000e375bb061fff9ead--

