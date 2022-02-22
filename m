Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1399CC433EF
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 11:59:54 +0000 (UTC)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
 [209.85.221.174])
 by mx.groups.io with SMTP id smtpd.web11.11763.1645531192689200059
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 03:59:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZJYPZqPf;
 spf=pass (domain: gmail.com, ip: 209.85.221.174,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-vk1-f174.google.com with SMTP id n142so10249586vkf.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 03:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dSZw9QuaUQZkqcD9OyoRCB0OCf5VtTu5JmaVwBQ4lS8=;
        b=ZJYPZqPftbgzERgSUReVrch2EuKNB7ns78RT209YX7bV540QNZiinFPUieen3CqbTS
         6Wkz5gtiEFdvOL0g2bhIZkwuGGFVo6mEsv++ljVfmJo8LJtP921IJZU1zVCK4sW34kFR
         eiZ9QFPpo046qZKLzozAhwXpVnrV0m+8lm/OtlZmWxH84SZIwzGgRjI9PAK3Z6+KFonn
         LlK/s3wOQ19ate/UgX8kk/iDxE9g+pB38rZ68+UxDIPtFix8glEGiLpDl8qtDrVoHXmy
         0SYRBJd/roJLTe8u0T0oKooyD3x9898whgTd/eTVnEyjuDaqo3/hYJaMDjHBzF8Y7isy
         kA4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dSZw9QuaUQZkqcD9OyoRCB0OCf5VtTu5JmaVwBQ4lS8=;
        b=ONQC2wAONUta3SyquKWUhYmelPEKfMMeH0mJh1EykuWi1aUwKxQ7WNgj8H44m5Ewoz
         CpIxTj/m5iyoYC9rPmZkkzPYmwmDxfPvO5ixXEexxCmj7AgRqyPy0QfusPedQ052+svm
         TJpYnZu6Kf0V+UzZ9sa5x27dgSRoE71a0huDqARD0zKTHZJbk4k9BjYLpYQ4WApuFzt7
         a4P3MHXIMtFvDUp7dex0xyVn1TaVZQnUB8JIQQPOwgB8ArB9Sq5Rk+fLBjP6CxM9gCv6
         PQTIdJYXCwH7YZk7EfHvNCWFJxLBVwT4qZumn6fL/w4sH7Qpir5IbByX8Hwd5oiK1Xcu
         5zhg==
X-Gm-Message-State: AOAM532av4rOOvq8DLvD6FizuoJFdy7KywKa0lQE83Kd3hrDZEFBonBR
	I1wSFamT67qP8jcd/OtcehZ80zEWQYsXggIOxbA=
X-Google-Smtp-Source: 
 ABdhPJy+4kzXVLu0JTZCRrNX0NpqVh79JUgBkjjxhh2ARzpp7JZZwZzVRk388sVr3VaPrUWt7epBLko5YHr6R6opYAg=
X-Received: by 2002:a05:6122:253:b0:331:2f06:f496 with SMTP id
 t19-20020a056122025300b003312f06f496mr9735666vko.28.1645531191761; Tue, 22
 Feb 2022 03:59:51 -0800 (PST)
MIME-Version: 1.0
References: <16D61979FB58F5D0.10452@lists.yoctoproject.org>
In-Reply-To: <16D61979FB58F5D0.10452@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 22 Feb 2022 12:59:41 +0100
Message-ID: 
 <CA+chaQcNS==2Lqu4dRcj8jkktoS=5f+_b6xC_JWKFTn6vm7fKQ@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] meta: update variable names
To: martin.jansa@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000026e0b505d89a16fc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 11:59:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56236

--00000000000026e0b505d89a16fc
Content-Type: text/plain; charset="UTF-8"

I see you have already sent similar patches earlier yesterday, please
ignore this one, but also please merge yours soon as meta-security already
claims kirkstone compatibility, but doesn't parse with kirkstone.

On Tue, Feb 22, 2022 at 12:52 PM Martin Jansa via lists.yoctoproject.org
<Martin.Jansa=gmail.com@lists.yoctoproject.org> wrote:

> * openembedded-core/scripts/contrib/convert-variable-renames.py .
>   ...
>   All files processed with version 0.1
> ---
>  recipes-ids/tripwire/tripwire_2.4.3.7.bb         | 2 +-
>  recipes-mac/smack/smack_1.3.1.bb                 | 6 +++---
>  recipes-security/libest/libest_3.2.0.bb          | 2 +-
>  recipes-security/opendnssec/opendnssec_2.1.10.bb | 2 +-
>  4 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
> b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
> index 93cb443..5bb0e3e 100644
> --- a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
> +++ b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
> @@ -74,4 +74,4 @@ FILES:${PN}-ptest += "${PTEST_PATH}/tests "
>  RDEPENDS:${PN} += " perl nano msmtp cronie"
>  RDEPENDS:${PN}-ptest = " perl lib-perl perl-modules "
>
> -PNBLACKLIST[tripwire] ?= "Upsteram project appears to be abondoned, fails
> to build with gcc11"
> +SKIP_RECIPE[tripwire] ?= "Upsteram project appears to be abondoned, fails
> to build with gcc11"
> diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/
> smack_1.3.1.bb
> index 79a8f5a..7a8ca78 100644
> --- a/recipes-mac/smack/smack_1.3.1.bb
> +++ b/recipes-mac/smack/smack_1.3.1.bb
> @@ -14,9 +14,9 @@ SRC_URI = " \
>  PV = "1.3.1"
>
>  # CVE-2014-0363, CVE-2014-0364, CVE-2016-10027 is valnerble for other
> product.
> -CVE_CHECK_WHITELIST += "CVE-2014-0363"
> -CVE_CHECK_WHITELIST += "CVE-2014-0364"
> -CVE_CHECK_WHITELIST += "CVE-2016-10027"
> +CVE_CHECK_IGNORE += "CVE-2014-0363"
> +CVE_CHECK_IGNORE += "CVE-2014-0364"
> +CVE_CHECK_IGNORE += "CVE-2016-10027"
>
>  inherit autotools update-rc.d pkgconfig ptest
>  inherit
> ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','',
> d)}
> diff --git a/recipes-security/libest/libest_3.2.0.bb
> b/recipes-security/libest/libest_3.2.0.bb
> index 41a4025..b4c6165 100644
> --- a/recipes-security/libest/libest_3.2.0.bb
> +++ b/recipes-security/libest/libest_3.2.0.bb
> @@ -27,4 +27,4 @@ PACKAGES = "${PN} ${PN}-dbg ${PN}-dev"
>  FILES:${PN} = "${bindir}/* ${libdir}/libest-3.2.0p.so"
>
>  # https://github.com/cisco/libest/issues/104
> -PNBLACKLIST[libest] ?= "Needs porting to openssl 3.x"
> +SKIP_RECIPE[libest] ?= "Needs porting to openssl 3.x"
> diff --git a/recipes-security/opendnssec/opendnssec_2.1.10.bb
> b/recipes-security/opendnssec/opendnssec_2.1.10.bb
> index 6b53711..64bacf1 100644
> --- a/recipes-security/opendnssec/opendnssec_2.1.10.bb
> +++ b/recipes-security/opendnssec/opendnssec_2.1.10.bb
> @@ -33,4 +33,4 @@ do_install:append () {
>
>  RDEPENDS:${PN} = "softhsm"
>
> -PNBLACKLIST[opendnssec] ?= "Needs porting to openssl 3.x"
> +SKIP_RECIPE[opendnssec] ?= "Needs porting to openssl 3.x"
> --
> 2.35.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56235):
> https://lists.yoctoproject.org/g/yocto/message/56235
> Mute This Topic: https://lists.yoctoproject.org/mt/89314901/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000026e0b505d89a16fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see you have already sent similar patches earlier yester=
day, please ignore this one, but also please merge yours soon as meta-secur=
ity already claims kirkstone compatibility, but doesn&#39;t parse with kirk=
stone.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Feb 22, 2022 at 12:52 PM Martin Jansa via <a href=3D"http://l=
ists.yoctoproject.org">lists.yoctoproject.org</a> &lt;Martin.Jansa=3D<a hre=
f=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.=
org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">* openembedded-core/scripts/contrib/convert-variable-renames.py .<br>
=C2=A0 ...<br>
=C2=A0 All files processed with version 0.1<br>
---<br>
=C2=A0recipes-ids/tripwire/<a href=3D"http://tripwire_2.4.3.7.bb" rel=3D"no=
referrer" target=3D"_blank">tripwire_2.4.3.7.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| 2 +-<br>
=C2=A0recipes-mac/smack/<a href=3D"http://smack_1.3.1.bb" rel=3D"noreferrer=
" target=3D"_blank">smack_1.3.1.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 6 +++---<br>
=C2=A0recipes-security/libest/<a href=3D"http://libest_3.2.0.bb" rel=3D"nor=
eferrer" target=3D"_blank">libest_3.2.0.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | 2 +-<br>
=C2=A0recipes-security/opendnssec/<a href=3D"http://opendnssec_2.1.10.bb" r=
el=3D"noreferrer" target=3D"_blank">opendnssec_2.1.10.bb</a> | 2 +-<br>
=C2=A04 files changed, 6 insertions(+), 6 deletions(-)<br>
<br>
diff --git a/recipes-ids/tripwire/<a href=3D"http://tripwire_2.4.3.7.bb" re=
l=3D"noreferrer" target=3D"_blank">tripwire_2.4.3.7.bb</a> b/recipes-ids/tr=
ipwire/<a href=3D"http://tripwire_2.4.3.7.bb" rel=3D"noreferrer" target=3D"=
_blank">tripwire_2.4.3.7.bb</a><br>
index 93cb443..5bb0e3e 100644<br>
--- a/recipes-ids/tripwire/<a href=3D"http://tripwire_2.4.3.7.bb" rel=3D"no=
referrer" target=3D"_blank">tripwire_2.4.3.7.bb</a><br>
+++ b/recipes-ids/tripwire/<a href=3D"http://tripwire_2.4.3.7.bb" rel=3D"no=
referrer" target=3D"_blank">tripwire_2.4.3.7.bb</a><br>
@@ -74,4 +74,4 @@ FILES:${PN}-ptest +=3D &quot;${PTEST_PATH}/tests &quot;<b=
r>
=C2=A0RDEPENDS:${PN} +=3D &quot; perl nano msmtp cronie&quot;<br>
=C2=A0RDEPENDS:${PN}-ptest =3D &quot; perl lib-perl perl-modules &quot;<br>
<br>
-PNBLACKLIST[tripwire] ?=3D &quot;Upsteram project appears to be abondoned,=
 fails to build with gcc11&quot;<br>
+SKIP_RECIPE[tripwire] ?=3D &quot;Upsteram project appears to be abondoned,=
 fails to build with gcc11&quot;<br>
diff --git a/recipes-mac/smack/<a href=3D"http://smack_1.3.1.bb" rel=3D"nor=
eferrer" target=3D"_blank">smack_1.3.1.bb</a> b/recipes-mac/smack/<a href=
=3D"http://smack_1.3.1.bb" rel=3D"noreferrer" target=3D"_blank">smack_1.3.1=
.bb</a><br>
index 79a8f5a..7a8ca78 100644<br>
--- a/recipes-mac/smack/<a href=3D"http://smack_1.3.1.bb" rel=3D"noreferrer=
" target=3D"_blank">smack_1.3.1.bb</a><br>
+++ b/recipes-mac/smack/<a href=3D"http://smack_1.3.1.bb" rel=3D"noreferrer=
" target=3D"_blank">smack_1.3.1.bb</a><br>
@@ -14,9 +14,9 @@ SRC_URI =3D &quot; \<br>
=C2=A0PV =3D &quot;1.3.1&quot;<br>
<br>
=C2=A0# CVE-2014-0363, CVE-2014-0364, CVE-2016-10027 is valnerble for other=
 product.<br>
-CVE_CHECK_WHITELIST +=3D &quot;CVE-2014-0363&quot;<br>
-CVE_CHECK_WHITELIST +=3D &quot;CVE-2014-0364&quot;<br>
-CVE_CHECK_WHITELIST +=3D &quot;CVE-2016-10027&quot;<br>
+CVE_CHECK_IGNORE +=3D &quot;CVE-2014-0363&quot;<br>
+CVE_CHECK_IGNORE +=3D &quot;CVE-2014-0364&quot;<br>
+CVE_CHECK_IGNORE +=3D &quot;CVE-2016-10027&quot;<br>
<br>
=C2=A0inherit autotools update-rc.d pkgconfig ptest<br>
=C2=A0inherit ${@bb.utils.contains(&#39;VIRTUAL-RUNTIME_init_manager&#39;,&=
#39;systemd&#39;,&#39;systemd&#39;,&#39;&#39;, d)}<br>
diff --git a/recipes-security/libest/<a href=3D"http://libest_3.2.0.bb" rel=
=3D"noreferrer" target=3D"_blank">libest_3.2.0.bb</a> b/recipes-security/li=
best/<a href=3D"http://libest_3.2.0.bb" rel=3D"noreferrer" target=3D"_blank=
">libest_3.2.0.bb</a><br>
index 41a4025..b4c6165 100644<br>
--- a/recipes-security/libest/<a href=3D"http://libest_3.2.0.bb" rel=3D"nor=
eferrer" target=3D"_blank">libest_3.2.0.bb</a><br>
+++ b/recipes-security/libest/<a href=3D"http://libest_3.2.0.bb" rel=3D"nor=
eferrer" target=3D"_blank">libest_3.2.0.bb</a><br>
@@ -27,4 +27,4 @@ PACKAGES =3D &quot;${PN} ${PN}-dbg ${PN}-dev&quot;<br>
=C2=A0FILES:${PN} =3D &quot;${bindir}/* ${libdir}/<a href=3D"http://libest-=
3.2.0p.so" rel=3D"noreferrer" target=3D"_blank">libest-3.2.0p.so</a>&quot;<=
br>
<br>
=C2=A0# <a href=3D"https://github.com/cisco/libest/issues/104" rel=3D"noref=
errer" target=3D"_blank">https://github.com/cisco/libest/issues/104</a><br>
-PNBLACKLIST[libest] ?=3D &quot;Needs porting to openssl 3.x&quot;<br>
+SKIP_RECIPE[libest] ?=3D &quot;Needs porting to openssl 3.x&quot;<br>
diff --git a/recipes-security/opendnssec/<a href=3D"http://opendnssec_2.1.1=
0.bb" rel=3D"noreferrer" target=3D"_blank">opendnssec_2.1.10.bb</a> b/recip=
es-security/opendnssec/<a href=3D"http://opendnssec_2.1.10.bb" rel=3D"noref=
errer" target=3D"_blank">opendnssec_2.1.10.bb</a><br>
index 6b53711..64bacf1 100644<br>
--- a/recipes-security/opendnssec/<a href=3D"http://opendnssec_2.1.10.bb" r=
el=3D"noreferrer" target=3D"_blank">opendnssec_2.1.10.bb</a><br>
+++ b/recipes-security/opendnssec/<a href=3D"http://opendnssec_2.1.10.bb" r=
el=3D"noreferrer" target=3D"_blank">opendnssec_2.1.10.bb</a><br>
@@ -33,4 +33,4 @@ do_install:append () {<br>
<br>
=C2=A0RDEPENDS:${PN} =3D &quot;softhsm&quot;<br>
<br>
-PNBLACKLIST[opendnssec] ?=3D &quot;Needs porting to openssl 3.x&quot;<br>
+SKIP_RECIPE[opendnssec] ?=3D &quot;Needs porting to openssl 3.x&quot;<br>
-- <br>
2.35.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56235): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56235" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56235</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89314901/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/89314901/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000026e0b505d89a16fc--

