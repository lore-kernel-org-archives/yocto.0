Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BAFDE009CA; Sat, 14 Apr 2018 11:39:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F200BE00932
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 11:39:28 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id f15so8588146pfn.0
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 11:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nnvjr8Xpctvjh8WwDnPOhh4+Lqdz4VKD7pW72qmL/kk=;
	b=kmLquS1bTezZLv9hkpZn6q7+t/3Z5XsJmWeF9u83sNRloC3vKs0aQL4Gt82ZIdcwJH
	uuxl88AoGfry8CG/EJ1nbAnmjUEYfyimyDPf0wWBvYi5aXp7s1A8/dK0U/hU/cFbmlj9
	nkwEsuk9BnR/X2lXrE3Fv9eHuxsUiV2zXGWR1YTvqrFeq+hkzZ0z3BxSdSlSPQj/srqQ
	gs8Wft6Asy0llwe93ZyNk8+NehNvI2BDb0snljQap4zjAP8GAg3N1Z15ntM7xXHhtJt6
	xtL+Sa57iXzPCJvYM7NlsII1fSPgYANehKKd3IpxZjktwmrApnBLGJ7a1qh35ad9c18F
	zGbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nnvjr8Xpctvjh8WwDnPOhh4+Lqdz4VKD7pW72qmL/kk=;
	b=P6El2G8ayMl0oHzfo8FYLU+kXq45AmBUNH09jV54ShoZVVMdXueruSwpqIfNqPaC2I
	mq+fM6MG/hviLBCakMWukgGcbmlKVgjbW3onNdHl0jn1LUieZ2ZEhQeNg7OgXPsUfvaJ
	rmv0k1ZyL3zdGx3OTI9mx526Lad3Zm4a0qKcdrP7npyvG7wXY+GFozHBm8aD08PdOOr6
	6wA/h1fZA+7rVpzsRsyxXcxvTl9H4yRyIawlcSBcOGFxQrKKJhjc2D+lEMR+gnBCVdY9
	f88g5UiaxUeie1YiXuGeVFuWW1KoFrV7mL5DI6pUaGzB7FLqjBeEHmyZPIpRmrQZ7GpT
	N6Jg==
X-Gm-Message-State: ALQs6tC/Zn21a+qcIE4bqFpBhEtXePeVxZhyxQEbcgsqZXXH5gZQtGWt
	Ab5T30j8UbG+xbBAwnJHtSJP2slBbIaQF+NSc9w=
X-Google-Smtp-Source: AIpwx4/+VMGTkDZ07dO/xJhs36aPf7sRvo0282Pp7VcGPZZrBEP/iF8tB/qPu3T+PtV6nCGQ0AxEEKwNUXXRaFjGlW4=
X-Received: by 10.101.97.15 with SMTP id z15mr7819388pgu.393.1523731168167;
	Sat, 14 Apr 2018 11:39:28 -0700 (PDT)
MIME-Version: 1.0
References: <1523720014-3204-1-git-send-email-akuster@mvista.com>
In-Reply-To: <1523720014-3204-1-git-send-email-akuster@mvista.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 14 Apr 2018 18:39:17 +0000
Message-ID: <CAMKF1srHEK-+YtSZ-_vMp=GbZ4k8SRFxpNG=NAhZX1aa82A5Dw@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-cgl][PATCH 1/2] layer: add LAYERSERIES_COMPAT for rocko
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 14 Apr 2018 18:39:29 -0000
Content-Type: multipart/alternative; boundary="089e082b7370030b360569d34f07"

--089e082b7370030b360569d34f07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 14, 2018 at 8:34 AM Armin Kuster <akuster808@gmail.com> wrote:

> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>  meta-cgl-common/conf/layer.conf  | 2 ++
>  meta-cgl-fsl-ppc/conf/layer.conf | 2 ++
>  2 files changed, 4 insertions(+)
>
> diff --git a/meta-cgl-common/conf/layer.conf
> b/meta-cgl-common/conf/layer.conf
> index bdf5f3f..bcbff51 100644
> --- a/meta-cgl-common/conf/layer.conf
> +++ b/meta-cgl-common/conf/layer.conf
> @@ -14,3 +14,5 @@ BBFILE_PRIORITY_cgl-common =3D "7"
>  LAYERDEPENDS_cgl-common =3D "core openembedded-layer networking-layer
> perl-layer filesystems-layer security selinux"
>
>  require conf/distro/include/cgl_common_security_flags.inc
> +
> +LAYERSERIES_COMPAT_cgl-common-layer =3D "rocko"

diff --git a/meta-cgl-fsl-ppc/conf/layer.conf
> b/meta-cgl-fsl-ppc/conf/layer.conf
> index 353824d..2fee17e 100644
> --- a/meta-cgl-fsl-ppc/conf/layer.conf
> +++ b/meta-cgl-fsl-ppc/conf/layer.conf
> @@ -10,3 +10,5 @@ BBFILE_PATTERN_cgl-fsl-ppc =3D "^${LAYERDIR}/"
>  BBFILE_PRIORITY_cgl-fsl-ppc =3D "7"
>
>  LAYERDEPENDS_cgl-fsl-ppc =3D "cgl-common"
> +
> +LAYERSERIES_COMPAT_cgl-fsl-ppc-layer =3D "rocko"
>

Seems this should be cgl-fsl-ppc isn=E2=80=99t it

> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e082b7370030b360569d34f07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Sat, Apr 14, 2018 =
at 8:34 AM Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com">akuster=
808@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Signed=
-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster@mvista.com" target=3D"_=
blank">akuster@mvista.com</a>&gt;<br>
---<br>
=C2=A0meta-cgl-common/conf/layer.conf=C2=A0 | 2 ++<br>
=C2=A0meta-cgl-fsl-ppc/conf/layer.conf | 2 ++<br>
=C2=A02 files changed, 4 insertions(+)<br>
<br>
diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.c=
onf<br>
index bdf5f3f..bcbff51 100644<br>
--- a/meta-cgl-common/conf/layer.conf<br>
+++ b/meta-cgl-common/conf/layer.conf<br>
@@ -14,3 +14,5 @@ BBFILE_PRIORITY_cgl-common =3D &quot;7&quot;<br>
=C2=A0LAYERDEPENDS_cgl-common =3D &quot;core openembedded-layer networking-=
layer perl-layer filesystems-layer security selinux&quot;<br>
<br>
=C2=A0require conf/distro/include/cgl_common_security_flags.inc<br>
+<br>
+LAYERSERIES_COMPAT_cgl-common-layer =3D &quot;rocko&quot;</blockquote><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">diff --git a/meta-cgl-fsl-ppc/conf/layer.conf b/=
meta-cgl-fsl-ppc/conf/layer.conf<br>
index 353824d..2fee17e 100644<br>
--- a/meta-cgl-fsl-ppc/conf/layer.conf<br>
+++ b/meta-cgl-fsl-ppc/conf/layer.conf<br>
@@ -10,3 +10,5 @@ BBFILE_PATTERN_cgl-fsl-ppc =3D &quot;^${LAYERDIR}/&quot;<=
br>
=C2=A0BBFILE_PRIORITY_cgl-fsl-ppc =3D &quot;7&quot;<br>
<br>
=C2=A0LAYERDEPENDS_cgl-fsl-ppc =3D &quot;cgl-common&quot;<br>
+<br>
+LAYERSERIES_COMPAT_cgl-fsl-ppc-layer =3D &quot;rocko&quot;<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Seems this shoul=
d be cgl-fsl-ppc isn=E2=80=99t it</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">-- <b=
r>
2.7.4<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--089e082b7370030b360569d34f07--
