Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51960C46467
	for <webhook@archiver.kernel.org>; Mon, 16 Jan 2023 11:42:27 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.164368.1673869345929076455
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Jan 2023 03:42:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IEy9Oxhu;
 spf=pass (domain: gmail.com, ip: 209.85.221.43, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f43.google.com with SMTP id q10so7875491wrs.2
        for <yocto@lists.yoctoproject.org>; Mon, 16 Jan 2023 03:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=58oX20QgcCh9j3AE5NfAkwElzeDE6SYPs4TCOPqhBW8=;
        b=IEy9OxhuDSItfzxKHKp30DjvbkyBO5+DvgL39XtCDWG/x3Nw3wDt3/cSaUOCohXN8g
         Xcorg1jhIuq2j8y90gTRTpkWTcGloXxYHB6HRipzXob/DsPdztIvoNdB/CuqAybgZVUH
         OrBrZB7WJHhJaWXcmVuHbPTvKQg59jBCbjSP9RKwN3U/cHfxzjGNIDK249D4j9ZE56FR
         sdQEAqOZuPvzvy0TbgZRgVcyQ53M2EnEGoOcP9IqWdrarWfMmlQyEJtd7PUhmzpYgy2G
         jHLR6ga7Pmj8C8A1E7/ZxQh+SeodATERQ2TF6zXIa+qPV1iV3ShHAwa1SgRnFuQCSJA/
         mTSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=58oX20QgcCh9j3AE5NfAkwElzeDE6SYPs4TCOPqhBW8=;
        b=s4oyCEwKFQgcjLulMGMUzaWbuVBCdLO5TJeNwQwuFVxQoG9cxGnnTqbKr2CFthwH0K
         IzkKNa/rh8QbL9jPKWTjA5H27Px/uWSbDd+Meqrd1CbUw7DIiy9vkRq6Q/ybweMFQ/xH
         DNMhpOlngHuz2e+Q76GKc8Riw9MaL9Z1uAUn3ezSpOHihtcSx+jouJgx+eP+tuqo203R
         rbRoBzC37sOc/mdZIpSOTzIqIV035waDBiOCaMxx4C2ST5sPM+T9ob+g8KE/R3tLWhRY
         71rOddTvMXF82WCHp8DK75EmptYa8tTD/TFMEWrIFS0l4KRhGRa7cwOYFMfmfYTxKr+y
         Dj1A==
X-Gm-Message-State: AFqh2kqtDUpxaAmug6AHG7EI6HXsFHglec1sqM/CQ5dqttujdJ3V/K/r
	GFO41AIYPbyMk897vm4ckXHrCfCDD9K9RanFY2g=
X-Google-Smtp-Source: AMrXdXvT3bKrb6/JvPws/cmhti0FxPPkax1oGeFd6yDxkh1ebpuwBqagNOdpOdYNwn+BTsPfXh+rRBFR4ejwFSbretk=
X-Received: by 2002:a5d:6f07:0:b0:2bd:f870:4e91 with SMTP id
 ay7-20020a5d6f07000000b002bdf8704e91mr95265wrb.548.1673869344048; Mon, 16 Jan
 2023 03:42:24 -0800 (PST)
MIME-Version: 1.0
References: <1736D9CF013A70B2.6604@lists.yoctoproject.org>
In-Reply-To: <1736D9CF013A70B2.6604@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 16 Jan 2023 12:42:12 +0100
Message-ID: <CA+chaQfO=K84DoYpJjS5hbEVwNrcFY4rDBP8RrQekfANcVy_Sg@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] layer.conf: update
 LAYERSERIES_COMPAT for mickledore
To: Martin.Jansa@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a70c1705f26013ae"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Jan 2023 11:42:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58997

--000000000000a70c1705f26013ae
Content-Type: text/plain; charset="UTF-8"

Hi Armin,

can you please merge this to master branch? It's in master-next for a
while, but not in master and master-next is missing some changes from
master as well, openscap upgrade and kas changes look different in master
and master-next (which has 2 more chunks):
https://git.yoctoproject.org/meta-security/commit/?id=da93339112d0a53f0008a72dcacdb55dc3bf95a8
https://git.yoctoproject.org/meta-security/commit/?h=master-next&id=04a0e35a79d33aadbec79272072dc105830007b7

Cheers,

On Tue, Jan 3, 2023 at 5:36 PM Martin Jansa via lists.yoctoproject.org
<Martin.Jansa=gmail.com@lists.yoctoproject.org> wrote:

> * oe-core switched to mickedore in:
>
> https://git.openembedded.org/openembedded-core/commit/?id=57239d66b933c4313cf331d35d13ec2d0661c38f
>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  conf/layer.conf                          | 2 +-
>  meta-hardening/conf/layer.conf           | 2 +-
>  meta-integrity/conf/layer.conf           | 2 +-
>  meta-parsec/conf/layer.conf              | 2 +-
>  meta-security-compliance/conf/layer.conf | 2 +-
>  meta-security-isafw/conf/layer.conf      | 2 +-
>  meta-tpm/conf/layer.conf                 | 2 +-
>  7 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 470c7f6..b5a74f1 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "security"
>  BBFILE_PATTERN_security = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_security = "8"
>
> -LAYERSERIES_COMPAT_security = "kirkstone langdale"
> +LAYERSERIES_COMPAT_security = "mickledore"
>
>  LAYERDEPENDS_security = "core openembedded-layer"
>
> diff --git a/meta-hardening/conf/layer.conf
> b/meta-hardening/conf/layer.conf
> index 5983161..add3cbc 100644
> --- a/meta-hardening/conf/layer.conf
> +++ b/meta-hardening/conf/layer.conf
> @@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "harden-layer"
>  BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_harden-layer = "10"
>
> -LAYERSERIES_COMPAT_harden-layer = "kirkstone langdale"
> +LAYERSERIES_COMPAT_harden-layer = "mickledore"
>
>  LAYERDEPENDS_harden-layer = "core openembedded-layer"
> diff --git a/meta-integrity/conf/layer.conf
> b/meta-integrity/conf/layer.conf
> index 1fcf33c..b273b5b 100644
> --- a/meta-integrity/conf/layer.conf
> +++ b/meta-integrity/conf/layer.conf
> @@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
>  # interactive shell is enough.
>  OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
>
> -LAYERSERIES_COMPAT_integrity = "kirkstone langdale"
> +LAYERSERIES_COMPAT_integrity = "mickledore"
>  # ima-evm-utils depends on keyutils from meta-oe
>  LAYERDEPENDS_integrity = "core openembedded-layer"
>
> diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
> index a748d77..0a71694 100644
> --- a/meta-parsec/conf/layer.conf
> +++ b/meta-parsec/conf/layer.conf
> @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "parsec-layer"
>  BBFILE_PATTERN_parsec-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_parsec-layer = "5"
>
> -LAYERSERIES_COMPAT_parsec-layer = "kirkstone langdale"
> +LAYERSERIES_COMPAT_parsec-layer = "mickledore"
>
>  LAYERDEPENDS_parsec-layer = "core clang-layer"
>  BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
> diff --git a/meta-security-compliance/conf/layer.conf
> b/meta-security-compliance/conf/layer.conf
> index ec57541..f07532c 100644
> --- a/meta-security-compliance/conf/layer.conf
> +++ b/meta-security-compliance/conf/layer.conf
> @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
>  BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_scanners-layer = "10"
>
> -LAYERSERIES_COMPAT_scanners-layer = "kirkstone langdale"
> +LAYERSERIES_COMPAT_scanners-layer = "mickledore"
>
>  LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
>
> diff --git a/meta-security-isafw/conf/layer.conf
> b/meta-security-isafw/conf/layer.conf
> index 724742d..550cced 100644
> --- a/meta-security-isafw/conf/layer.conf
> +++ b/meta-security-isafw/conf/layer.conf
> @@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
>
>  LAYERDEPENDS_security-isafw = "core"
>
> -LAYERSERIES_COMPAT_security-isafw = "kirkstone langdale"
> +LAYERSERIES_COMPAT_security-isafw = "mickledore"
> diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
> index 1fd2e4c..81690ca 100644
> --- a/meta-tpm/conf/layer.conf
> +++ b/meta-tpm/conf/layer.conf
> @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
>  BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_tpm-layer = "10"
>
> -LAYERSERIES_COMPAT_tpm-layer = "kirkstone langdale"
> +LAYERSERIES_COMPAT_tpm-layer = "mickledore"
>
>  LAYERDEPENDS_tpm-layer = " \
>      core \
> --
> 2.39.0
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58913):
> https://lists.yoctoproject.org/g/yocto/message/58913
> Mute This Topic: https://lists.yoctoproject.org/mt/96031444/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000a70c1705f26013ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Armin,<div><br></div><div>can you please merge this to =
master branch? It&#39;s in master-next for a while, but not in master and m=
aster-next is missing some changes from master as well, openscap upgrade an=
d kas changes look different in master and master-next (which has 2 more ch=
unks):</div><div><a href=3D"https://git.yoctoproject.org/meta-security/comm=
it/?id=3Dda93339112d0a53f0008a72dcacdb55dc3bf95a8">https://git.yoctoproject=
.org/meta-security/commit/?id=3Dda93339112d0a53f0008a72dcacdb55dc3bf95a8</a=
><br></div><div><a href=3D"https://git.yoctoproject.org/meta-security/commi=
t/?h=3Dmaster-next&amp;id=3D04a0e35a79d33aadbec79272072dc105830007b7">https=
://git.yoctoproject.org/meta-security/commit/?h=3Dmaster-next&amp;id=3D04a0=
e35a79d33aadbec79272072dc105830007b7</a><br></div><div><br></div><div>Cheer=
s,</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Jan 3, 2023 at 5:36 PM Martin Jansa via <a href=3D"http://l=
ists.yoctoproject.org">lists.yoctoproject.org</a> &lt;Martin.Jansa=3D<a hre=
f=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.=
org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">* oe-core switched to mickedore in:<br>
=C2=A0 <a href=3D"https://git.openembedded.org/openembedded-core/commit/?id=
=3D57239d66b933c4313cf331d35d13ec2d0661c38f" rel=3D"noreferrer" target=3D"_=
blank">https://git.openembedded.org/openembedded-core/commit/?id=3D57239d66=
b933c4313cf331d35d13ec2d0661c38f</a><br>
<br>
Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com" t=
arget=3D"_blank">Martin.Jansa@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0meta-hardening/conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| 2 +-<br>
=C2=A0meta-integrity/conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| 2 +-<br>
=C2=A0meta-parsec/conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | 2 +-<br>
=C2=A0meta-security-compliance/conf/layer.conf | 2 +-<br>
=C2=A0meta-security-isafw/conf/layer.conf=C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0meta-tpm/conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A07 files changed, 7 insertions(+), 7 deletions(-)<br>
<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
index 470c7f6..b5a74f1 100644<br>
--- a/conf/layer.conf<br>
+++ b/conf/layer.conf<br>
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS +=3D &quot;security&quot;<br>
=C2=A0BBFILE_PATTERN_security =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_security =3D &quot;8&quot;<br>
<br>
-LAYERSERIES_COMPAT_security =3D &quot;kirkstone langdale&quot;<br>
+LAYERSERIES_COMPAT_security =3D &quot;mickledore&quot;<br>
<br>
=C2=A0LAYERDEPENDS_security =3D &quot;core openembedded-layer&quot;<br>
<br>
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.con=
f<br>
index 5983161..add3cbc 100644<br>
--- a/meta-hardening/conf/layer.conf<br>
+++ b/meta-hardening/conf/layer.conf<br>
@@ -8,6 +8,6 @@ BBFILE_COLLECTIONS +=3D &quot;harden-layer&quot;<br>
=C2=A0BBFILE_PATTERN_harden-layer =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_harden-layer =3D &quot;10&quot;<br>
<br>
-LAYERSERIES_COMPAT_harden-layer =3D &quot;kirkstone langdale&quot;<br>
+LAYERSERIES_COMPAT_harden-layer =3D &quot;mickledore&quot;<br>
<br>
=C2=A0LAYERDEPENDS_harden-layer =3D &quot;core openembedded-layer&quot;<br>
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.con=
f<br>
index 1fcf33c..b273b5b 100644<br>
--- a/meta-integrity/conf/layer.conf<br>
+++ b/meta-integrity/conf/layer.conf<br>
@@ -20,7 +20,7 @@ INTEGRITY_BASE :=3D &#39;${LAYERDIR}&#39;<br>
=C2=A0# interactive shell is enough.<br>
=C2=A0OE_TERMINAL_EXPORTS +=3D &quot;INTEGRITY_BASE&quot;<br>
<br>
-LAYERSERIES_COMPAT_integrity =3D &quot;kirkstone langdale&quot;<br>
+LAYERSERIES_COMPAT_integrity =3D &quot;mickledore&quot;<br>
=C2=A0# ima-evm-utils depends on keyutils from meta-oe<br>
=C2=A0LAYERDEPENDS_integrity =3D &quot;core openembedded-layer&quot;<br>
<br>
diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf<br>
index a748d77..0a71694 100644<br>
--- a/meta-parsec/conf/layer.conf<br>
+++ b/meta-parsec/conf/layer.conf<br>
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS +=3D &quot;parsec-layer&quot;<br>
=C2=A0BBFILE_PATTERN_parsec-layer =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_parsec-layer =3D &quot;5&quot;<br>
<br>
-LAYERSERIES_COMPAT_parsec-layer =3D &quot;kirkstone langdale&quot;<br>
+LAYERSERIES_COMPAT_parsec-layer =3D &quot;mickledore&quot;<br>
<br>
=C2=A0LAYERDEPENDS_parsec-layer =3D &quot;core clang-layer&quot;<br>
=C2=A0BBLAYERS_LAYERINDEX_NAME_parsec-layer =3D &quot;meta-parsec&quot;<br>
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compl=
iance/conf/layer.conf<br>
index ec57541..f07532c 100644<br>
--- a/meta-security-compliance/conf/layer.conf<br>
+++ b/meta-security-compliance/conf/layer.conf<br>
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS +=3D &quot;scanners-layer&quot;<br>
=C2=A0BBFILE_PATTERN_scanners-layer =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_scanners-layer =3D &quot;10&quot;<br>
<br>
-LAYERSERIES_COMPAT_scanners-layer =3D &quot;kirkstone langdale&quot;<br>
+LAYERSERIES_COMPAT_scanners-layer =3D &quot;mickledore&quot;<br>
<br>
=C2=A0LAYERDEPENDS_scanners-layer =3D &quot;core openembedded-layer meta-py=
thon&quot;<br>
<br>
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf=
/layer.conf<br>
index 724742d..550cced 100644<br>
--- a/meta-security-isafw/conf/layer.conf<br>
+++ b/meta-security-isafw/conf/layer.conf<br>
@@ -14,4 +14,4 @@ LAYERVERSION_security-isafw =3D &quot;1&quot;<br>
<br>
=C2=A0LAYERDEPENDS_security-isafw =3D &quot;core&quot;<br>
<br>
-LAYERSERIES_COMPAT_security-isafw =3D &quot;kirkstone langdale&quot;<br>
+LAYERSERIES_COMPAT_security-isafw =3D &quot;mickledore&quot;<br>
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf<br>
index 1fd2e4c..81690ca 100644<br>
--- a/meta-tpm/conf/layer.conf<br>
+++ b/meta-tpm/conf/layer.conf<br>
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS +=3D &quot;tpm-layer&quot;<br>
=C2=A0BBFILE_PATTERN_tpm-layer =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_tpm-layer =3D &quot;10&quot;<br>
<br>
-LAYERSERIES_COMPAT_tpm-layer =3D &quot;kirkstone langdale&quot;<br>
+LAYERSERIES_COMPAT_tpm-layer =3D &quot;mickledore&quot;<br>
<br>
=C2=A0LAYERDEPENDS_tpm-layer =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0core \<br>
-- <br>
2.39.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58913): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58913" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58913</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96031444/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/96031444/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000a70c1705f26013ae--

