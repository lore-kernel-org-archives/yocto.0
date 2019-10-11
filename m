Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDC4FE00CBC; Fri, 11 Oct 2019 00:51:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B2FE00875
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 00:51:49 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id r9so7813056edl.10
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 00:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=E2IpvAQaw+fQAXK1KFAwmHMeI3GZXTybMgD5BR7y3m4=;
	b=UDcrcmQNyxaraSaH3tAjQ5frVRQtHXCovBPkoYcCe1uz6RHLJssBgMcyiaxTPEg89d
	LmPMQykCycRGN5KkpAsQkoSp92OehnQ7ISBliVgYF+CepxrS3eTyzxJ7bOUNdITUoL8o
	om9Z4LO6IgDsXmyzepsO+IqQw9DaOUwBkdYGnLDJ3t3eqhhH3mMqc+JC3YxpLlZJO5cH
	aGVnuxr8OzyM//MGIgZ7878lCGkDoyf+YgNtXFAUFueqhVQ/Z2zlF93oud41UrYEL+N4
	nV8xC3J8/aIf3x8mi85adx+dmHh0MmqgsgHJZYZCWMXqZhcwefm4o63WNZhAYVqJXS5r
	ruYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=E2IpvAQaw+fQAXK1KFAwmHMeI3GZXTybMgD5BR7y3m4=;
	b=ZPuFx5uZnQycK3GLoClkMcc/UxgFJ5eBx5u1Nxs4XyLW9JzYpBG76T1/g3wSKlcgaS
	ssbmIDCAiMNqN9Pysmts/ZBK5s4/6UOiKGXjXIXzhMGXs4kr4GBGQIyky52fBBDS+0XR
	2gVNjNetk34NhYBagwky17p9GYpRvIcTjczGvqxDN4mEleqryS7DjvoJ7iiFOa2Ku7wA
	SnBPuk6DjppElfF/3JJFH2ENcCQt/tu6kGr0iPV6GXs1RhXFBXdbHvLgI0eghJQDBW62
	o1l7oh8brqaaI072VOJWHgrlFoke/KqkUFUindclzMyDce0iqpugFFGvEt3ploldZeHh
	vegw==
X-Gm-Message-State: APjAAAXnmnK0q+R/RobCP7xY81L8hHBkVPeTJF8h2oRf9XTAAjTshzv/
	PL6yKfLKkt6PK7kuzpv415m23rvre/LGBX5ds2IzkM2zUr8=
X-Google-Smtp-Source: APXvYqxN0+ANN0CeyI18mPo6v0f8iGKCdg2fTwbmZ69yzB9MorV5vN2GhvfiLsRdSqzaMVMldnRBrKCpq+QxE7iTZYU=
X-Received: by 2002:a50:8dc9:: with SMTP id s9mr12007312edh.168.1570780308679; 
	Fri, 11 Oct 2019 00:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191008225435.6074-1-akuster808@gmail.com>
In-Reply-To: <20191008225435.6074-1-akuster808@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 11 Oct 2019 09:51:40 +0200
Message-ID: <CA+chaQdhYq0K-i81kFauzTQ4Pc-CJMWvGk2xCutZX39X=w0JxQ@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] layer.conf: Update for zeus series
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
X-List-Received-Date: Fri, 11 Oct 2019 07:51:50 -0000
Content-Type: multipart/alternative; boundary="00000000000051afdb05949dca95"

--00000000000051afdb05949dca95
Content-Type: text/plain; charset="UTF-8"

Acked-by: Martin Jansa <Martin.Jansa@gmail.com>

Please merge this to unblock CI.

On Wed, Oct 9, 2019 at 12:55 AM Armin Kuster <akuster808@gmail.com> wrote:

> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  conf/layer.conf                          | 2 +-
>  meta-integrity/conf/layer.conf           | 2 +-
>  meta-security-compliance/conf/layer.conf | 2 +-
>  meta-tpm/conf/layer.conf                 | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index b9a4f25..3e890e1 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"
>  BBFILE_PATTERN_security = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_security = "8"
>
> -LAYERSERIES_COMPAT_security = "warrior"
> +LAYERSERIES_COMPAT_security = "zeus"
>
>  LAYERDEPENDS_security = "core openembedded-layer perl-layer
> networking-layer meta-python"
> diff --git a/meta-integrity/conf/layer.conf
> b/meta-integrity/conf/layer.conf
> index 41989da..962424c 100644
> --- a/meta-integrity/conf/layer.conf
> +++ b/meta-integrity/conf/layer.conf
> @@ -21,6 +21,6 @@ INTEGRITY_BASE := '${LAYERDIR}'
>  # interactive shell is enough.
>  OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
>
> -LAYERSERIES_COMPAT_integrity = "warrior"
> +LAYERSERIES_COMPAT_integrity = "zeus"
>  # ima-evm-utils depends on keyutils from meta-oe
>  LAYERDEPENDS_integrity = "core openembedded-layer"
> diff --git a/meta-security-compliance/conf/layer.conf
> b/meta-security-compliance/conf/layer.conf
> index 9ccadab..0e93bd0 100644
> --- a/meta-security-compliance/conf/layer.conf
> +++ b/meta-security-compliance/conf/layer.conf
> @@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "scanners-layer"
>  BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_scanners-layer = "10"
>
> -LAYERSERIES_COMPAT_scanners-layer = "warrior"
> +LAYERSERIES_COMPAT_scanners-layer = "zeus"
>
>  LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
> diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
> index cdccc55..3af2d95 100644
> --- a/meta-tpm/conf/layer.conf
> +++ b/meta-tpm/conf/layer.conf
> @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
>  BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_tpm-layer = "10"
>
> -LAYERSERIES_COMPAT_tpm-layer = "warrior"
> +LAYERSERIES_COMPAT_tpm-layer = "zeus"
>
>  LAYERDEPENDS_tpm-layer = " \
>      core \
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000051afdb05949dca95
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Acked-by:=C2=A0Martin Jansa &lt;<a href=3D"mailto:Martin.J=
ansa@gmail.com">Martin.Jansa@gmail.com</a>&gt;<div><br></div><div>Please me=
rge this to unblock CI.</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Oct 9, 2019 at 12:55 AM Armin Kuster =
&lt;<a href=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Signed-off-=
by: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_bla=
nk">akuster808@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0meta-integrity/conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| 2 +-<br>
=C2=A0meta-security-compliance/conf/layer.conf | 2 +-<br>
=C2=A0meta-tpm/conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A04 files changed, 4 insertions(+), 4 deletions(-)<br>
<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
index b9a4f25..3e890e1 100644<br>
--- a/conf/layer.conf<br>
+++ b/conf/layer.conf<br>
@@ -9,6 +9,6 @@ BBFILE_COLLECTIONS +=3D &quot;security&quot;<br>
=C2=A0BBFILE_PATTERN_security =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_security =3D &quot;8&quot;<br>
<br>
-LAYERSERIES_COMPAT_security =3D &quot;warrior&quot;<br>
+LAYERSERIES_COMPAT_security =3D &quot;zeus&quot;<br>
<br>
=C2=A0LAYERDEPENDS_security =3D &quot;core openembedded-layer perl-layer ne=
tworking-layer meta-python&quot;<br>
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.con=
f<br>
index 41989da..962424c 100644<br>
--- a/meta-integrity/conf/layer.conf<br>
+++ b/meta-integrity/conf/layer.conf<br>
@@ -21,6 +21,6 @@ INTEGRITY_BASE :=3D &#39;${LAYERDIR}&#39;<br>
=C2=A0# interactive shell is enough.<br>
=C2=A0OE_TERMINAL_EXPORTS +=3D &quot;INTEGRITY_BASE&quot;<br>
<br>
-LAYERSERIES_COMPAT_integrity =3D &quot;warrior&quot;<br>
+LAYERSERIES_COMPAT_integrity =3D &quot;zeus&quot;<br>
=C2=A0# ima-evm-utils depends on keyutils from meta-oe<br>
=C2=A0LAYERDEPENDS_integrity =3D &quot;core openembedded-layer&quot;<br>
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compl=
iance/conf/layer.conf<br>
index 9ccadab..0e93bd0 100644<br>
--- a/meta-security-compliance/conf/layer.conf<br>
+++ b/meta-security-compliance/conf/layer.conf<br>
@@ -8,6 +8,6 @@ BBFILE_COLLECTIONS +=3D &quot;scanners-layer&quot;<br>
=C2=A0BBFILE_PATTERN_scanners-layer =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_scanners-layer =3D &quot;10&quot;<br>
<br>
-LAYERSERIES_COMPAT_scanners-layer =3D &quot;warrior&quot;<br>
+LAYERSERIES_COMPAT_scanners-layer =3D &quot;zeus&quot;<br>
<br>
=C2=A0LAYERDEPENDS_scanners-layer =3D &quot;core openembedded-layer meta-py=
thon&quot;<br>
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf<br>
index cdccc55..3af2d95 100644<br>
--- a/meta-tpm/conf/layer.conf<br>
+++ b/meta-tpm/conf/layer.conf<br>
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS +=3D &quot;tpm-layer&quot;<br>
=C2=A0BBFILE_PATTERN_tpm-layer =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_tpm-layer =3D &quot;10&quot;<br>
<br>
-LAYERSERIES_COMPAT_tpm-layer =3D &quot;warrior&quot;<br>
+LAYERSERIES_COMPAT_tpm-layer =3D &quot;zeus&quot;<br>
<br>
=C2=A0LAYERDEPENDS_tpm-layer =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0core \<br>
-- <br>
2.17.1<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000051afdb05949dca95--
