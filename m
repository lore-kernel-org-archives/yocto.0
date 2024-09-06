Return-Path: <vanusuri@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F219CE7AFA
	for <webhook@archiver.kernel.org>; Fri,  6 Sep 2024 09:40:04 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.31130.1725615601213072332
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Sep 2024 02:40:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=Zp9iA8BL;
 spf=pass (domain: mvista.com, ip: 209.85.208.181, mailfrom: vanusuri@mvista.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f752d9ab62so6431071fa.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Sep 2024 02:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1725615599; x=1726220399; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PXuCIU6ZEC/S9S2gPtQD+4DeZ9VSZTIqHsnnxZz5gJg=;
        b=Zp9iA8BLEOcyCOGNDpaMIhvTNtgJxC/NBimW048x41m+nlrqFGDP5wKSILdTIykZZo
         RINqMmu3WbRADMmdEKpvofavDNb0aPUTCfoplVnzkvRzdhKasifEZL9tlqWNjpPXsu3N
         9d4TLRobhiCvDy8JFX1mMOpbd5+ZVPdl9HNw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725615599; x=1726220399;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PXuCIU6ZEC/S9S2gPtQD+4DeZ9VSZTIqHsnnxZz5gJg=;
        b=aALEvf6m6Xod37nJcELD2CIA0srcRnht1rVAsqLqYkydnCGrVEYI83EgCo5JkcD3Uh
         oKvjhUS3zdd3R7RqCHVEsoQ5KM7dBLTJTu0WuED2nuVvRvmUi1x3B84ur2dzHrsTe2FC
         Bge6noi/3phQphi/jKw2/gyEpH5luIduNMv5ZPDGpQVnN/AYTo+r6Ou0SJywxAg3kmEU
         Poj/RGwLe4R5RKH/QMukKaj9CEGw++6USFXfhUFm7LIqll4lG/mDhg3YeZ/uEp5aqM49
         aHiGE8BYDcf+0XyqUJ/C8sBiwI5vgNjzIIasAWV73+OOaFKoLZX+d8Rn6DIK4zMljcSt
         XU5g==
X-Gm-Message-State: AOJu0Ywdf33j085N6xQmUtbZPAOE4e/4amwomEdMBNZbvD6rv5EWHTBn
	rbmpxu4wdIa3P4yRCVuTVUWwzm6WRMKcN8W64y5Jllo2F3VGF4Cbyvzpi1UOhVg8aGCJqo6YaXm
	PBrhVmoBykqHsjjdE2lNm+0VaF1tiNy+MzEj5v6m96zZ14dugp8o=
X-Google-Smtp-Source: AGHT+IGtxsutgNayReqWW4wVBeXKbT1Ae+LpCJ0aqDeGEc4x2Zw2PBPwOh9tGYFoSIpA1uF8yPbUevdoIYBl32PGYo8=
X-Received: by 2002:a05:651c:b13:b0:2f1:6cb1:44c0 with SMTP id
 38308e7fff4ca-2f61038c633mr205423651fa.6.1725615598823; Fri, 06 Sep 2024
 02:39:58 -0700 (PDT)
MIME-Version: 1.0
References: <20240828114336.436725-1-vanusuri@mvista.com>
In-Reply-To: <20240828114336.436725-1-vanusuri@mvista.com>
From: Vijay Anusuri <vanusuri@mvista.com>
Date: Fri, 6 Sep 2024 15:09:46 +0530
Message-ID: <CANQUz1-q2LkXpHqMEFhPVbWOcjzSiJqC1qHH6JeAvpkAA0ihTA@mail.gmail.com>
Subject: Re: [meta-security][kirkstone][PATCH] tpm2-tools: Upgrade 5.2 -> 5.7
To: yocto@lists.yoctoproject.org, Armin Kuster <akuster808@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000c9843106217030a5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Sep 2024 09:40:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63792

--000000000000c9843106217030a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Armin,

Gentle Reminder...!!!
Any update on this ?

Thanks & Regards,
Vijay

On Wed, Aug 28, 2024 at 5:13=E2=80=AFPM <vanusuri@mvista.com> wrote:

> From: Vijay Anusuri <vanusuri@mvista.com>
>
> Include Security fixes:
> Fixed CVE-2024-29038
> Fixed CVE-2024-29039
>
> Changelog:
> https://github.com/tpm2-software/tpm2-tools/releases/tag/5.7
> https://github.com/tpm2-software/tpm2-tools/releases/tag/5.6
> https://github.com/tpm2-software/tpm2-tools/releases/tag/5.5
> https://github.com/tpm2-software/tpm2-tools/releases/tag/5.4
> https://github.com/tpm2-software/tpm2-tools/releases/tag/5.3
>
> Signed-off-by: Vijay Anusuri <vanusuri@mvista.com>
> ---
>  .../tpm2-tools/{tpm2-tools_5.2.bb =3D> tpm2-tools_5.7.bb}  | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
>  rename meta-tpm/recipes-tpm2/tpm2-tools/{tpm2-tools_5.2.bb =3D>
> tpm2-tools_5.7.bb} (51%)
>
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
> b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
> similarity index 51%
> rename from meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
> rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
> index c20af7e..bd3d34b 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.7.bb
> @@ -1,21 +1,16 @@
>  SUMMARY =3D "Tools for TPM2."
>  DESCRIPTION =3D "tpm2-tools"
>  LICENSE =3D "BSD-3-Clause"
> -LIC_FILES_CHKSUM =3D
> "file://doc/LICENSE;md5=3Da846608d090aa64494c45fc147cc12e3"
> +LIC_FILES_CHKSUM =3D
> "file://docs/LICENSE;md5=3Da846608d090aa64494c45fc147cc12e3"
>  SECTION =3D "tpm"
>
>  DEPENDS =3D "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
>
>  SRC_URI =3D "
> https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${=
PV}.tar.gz
> "
>
> -SRC_URI[sha256sum] =3D
> "c0b402f6a7b3456e8eb2445211e2d41c46c7e769e05fe4d8909ff64119f7a630"
> +SRC_URI[sha256sum] =3D
> "3810d36b5079256f4f2f7ce552e22213d43b1031c131538df8a2dbc3c570983a"
>
>  inherit autotools pkgconfig bash-completion
>
> -do_configure:prepend() {
> -    # do not extract the version number from git
> -    sed -i -e 's/m4_esyscmd_s(\[git describe --tags --always
> --dirty\])/${PV}/' ${S}/configure.ac
> -}
> -
>  # need tss-esys
>  RDEPENDS:${PN} =3D "libtss2 tpm2-abrmd"
> --
> 2.25.1
>
>

--000000000000c9843106217030a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Armin,<br><br></div>Gentle Reminder...!!!<br>=
</div><div>Any update on this ?</div><div><br></div><div>Thanks &amp; Regar=
ds,</div><div>Vijay<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Aug 28, 2024 at 5:13=E2=80=AFPM &lt;<=
a href=3D"mailto:vanusuri@mvista.com">vanusuri@mvista.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">From: Vijay Anusur=
i &lt;<a href=3D"mailto:vanusuri@mvista.com" target=3D"_blank">vanusuri@mvi=
sta.com</a>&gt;<br>
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
<a href=3D"https://github.com/tpm2-software/tpm2-tools/releases/tag/5.5" re=
l=3D"noreferrer" target=3D"_blank">https://github.com/tpm2-software/tpm2-to=
ols/releases/tag/5.5</a><br>
<a href=3D"https://github.com/tpm2-software/tpm2-tools/releases/tag/5.4" re=
l=3D"noreferrer" target=3D"_blank">https://github.com/tpm2-software/tpm2-to=
ols/releases/tag/5.4</a><br>
<a href=3D"https://github.com/tpm2-software/tpm2-tools/releases/tag/5.3" re=
l=3D"noreferrer" target=3D"_blank">https://github.com/tpm2-software/tpm2-to=
ols/releases/tag/5.3</a><br>
<br>
Signed-off-by: Vijay Anusuri &lt;<a href=3D"mailto:vanusuri@mvista.com" tar=
get=3D"_blank">vanusuri@mvista.com</a>&gt;<br>
---<br>
=C2=A0.../tpm2-tools/{<a href=3D"http://tpm2-tools_5.2.bb" rel=3D"noreferre=
r" target=3D"_blank">tpm2-tools_5.2.bb</a> =3D&gt; <a href=3D"http://tpm2-t=
ools_5.7.bb" rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.7.bb</a>}=C2=
=A0 | 9 ++-------<br>
=C2=A01 file changed, 2 insertions(+), 7 deletions(-)<br>
=C2=A0rename meta-tpm/recipes-tpm2/tpm2-tools/{<a href=3D"http://tpm2-tools=
_5.2.bb" rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.2.bb</a> =3D&gt;=
 <a href=3D"http://tpm2-tools_5.7.bb" rel=3D"noreferrer" target=3D"_blank">=
tpm2-tools_5.7.bb</a>} (51%)<br>
<br>
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_=
5.2.bb" rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.2.bb</a> b/meta-t=
pm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_5.7.bb" rel=3D"nore=
ferrer" target=3D"_blank">tpm2-tools_5.7.bb</a><br>
similarity index 51%<br>
rename from meta-tpm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_5=
.2.bb" rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.2.bb</a><br>
rename to meta-tpm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_5.7=
.bb" rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.7.bb</a><br>
index c20af7e..bd3d34b 100644<br>
--- a/meta-tpm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_5.2.bb"=
 rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.2.bb</a><br>
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/<a href=3D"http://tpm2-tools_5.7.bb"=
 rel=3D"noreferrer" target=3D"_blank">tpm2-tools_5.7.bb</a><br>
@@ -1,21 +1,16 @@<br>
=C2=A0SUMMARY =3D &quot;Tools for TPM2.&quot;<br>
=C2=A0DESCRIPTION =3D &quot;tpm2-tools&quot;<br>
=C2=A0LICENSE =3D &quot;BSD-3-Clause&quot;<br>
-LIC_FILES_CHKSUM =3D &quot;file://doc/LICENSE;md5=3Da846608d090aa64494c45f=
c147cc12e3&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://docs/LICENSE;md5=3Da846608d090aa64494c45=
fc147cc12e3&quot;<br>
=C2=A0SECTION =3D &quot;tpm&quot;<br>
<br>
=C2=A0DEPENDS =3D &quot;tpm2-abrmd tpm2-tss openssl curl autoconf-archive&q=
uot;<br>
<br>
=C2=A0SRC_URI =3D &quot;<a href=3D"https://github.com/tpm2-software/$%7BBPN=
%7D/releases/download/$%7BPV%7D/$%7BBPN%7D-$%7BPV%7D.tar.gz" rel=3D"norefer=
rer" target=3D"_blank">https://github.com/tpm2-software/${BPN}/releases/dow=
nload/${PV}/${BPN}-${PV}.tar.gz</a>&quot;<br>
<br>
-SRC_URI[sha256sum] =3D &quot;c0b402f6a7b3456e8eb2445211e2d41c46c7e769e05fe=
4d8909ff64119f7a630&quot;<br>
+SRC_URI[sha256sum] =3D &quot;3810d36b5079256f4f2f7ce552e22213d43b1031c1315=
38df8a2dbc3c570983a&quot;<br>
<br>
=C2=A0inherit autotools pkgconfig bash-completion<br>
<br>
-do_configure:prepend() {<br>
-=C2=A0 =C2=A0 # do not extract the version number from git<br>
-=C2=A0 =C2=A0 sed -i -e &#39;s/m4_esyscmd_s(\[git describe --tags --always=
 --dirty\])/${PV}/&#39; ${S}/<a href=3D"http://configure.ac" rel=3D"norefer=
rer" target=3D"_blank">configure.ac</a><br>
-}<br>
-<br>
=C2=A0# need tss-esys<br>
=C2=A0RDEPENDS:${PN} =3D &quot;libtss2 tpm2-abrmd&quot;<br>
-- <br>
2.25.1<br>
<br>
</blockquote></div>

--000000000000c9843106217030a5--

