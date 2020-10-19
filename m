Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
 by mx.groups.io with SMTP id smtpd.web12.14549.1603119171938475668
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 07:52:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HYKk2Uou;
 spf=pass (domain: gmail.com, ip: 209.85.208.68, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f68.google.com with SMTP id l24so10555986edj.8
        for <yocto@lists.yoctoproject.org>; Mon, 19 Oct 2020 07:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ffR/jnEyIc9YyYXQzH11ACRiondR7fIWvWm5keE0Sa0=;
        b=HYKk2Uou32CcC/VxkT+xHdpL/F1LkXIK5pynSxkR5ktROwJnchR5cJolepU1NwxKW9
         hcOPE/KI1nerI/6ULWs7EcmsYnK+9QQzHBOKCoQWpiSuHtPZiEqlRxKW9qy7ISRv4ZDB
         WfYogMrAC1WEt2/6eb95InQ5xMtua6RgegwH4JrOakdOXXGHjo2MkcjNGRuNtOsMViss
         40I6uj73JvZQrtE4K6RO7Ite6XsD9kA4cgw+2WhUyJP9ygMGfn5/ihkS4FJI4k99bTFE
         5QZ3/CjUhbOKgpTJHAnsc2e7X67xAarSOEakmfUMKjrVlYu26oED8RpXBX4GNNMuNaNG
         pvWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ffR/jnEyIc9YyYXQzH11ACRiondR7fIWvWm5keE0Sa0=;
        b=QbU9zmFTjIc8Xm/xJqf8HHudwwbG8WqzgEi7ZXX4LFRFzaOsPV2WamkRNZh72zE8J9
         WXwtYs7444kTYahOXiP29mjQPDpWkzqmp2FTjzq7Gf/k0xkfR8h9Zj9iyfqkcPzS+1WT
         Fw27+BXjfxxZ+Ts89hsbqzwlsG78xeAxY9TJ7e8U9yFoQ3Rcj0SvtODTNr/a3v+Ml80S
         LG8jLvEFb6Jt4y6SgXZ6GimLqoGobGdauTfhihRWqQ/uUhyKEyuRgCNGiO1wwroV/ths
         Aa1q0MBwc+nnwHwhJ0nvMUIjj47yduZr1Y2glBpYQ2RrGXY10/xOmD4BjSUfd+m4ojgB
         BF+g==
X-Gm-Message-State: AOAM532eDYv2XX1Q119Cgp1xL+V+Swv0BSYtUvR5PKqiprm3m2uVxnMo
	WMCck/+NtLrhkXR87f/kRpp8ktoeLuurEUeNNbE=
X-Google-Smtp-Source: ABdhPJxKXqAUjvwHgy/AM4zzpSEbQKAiFIqduukTWWxGvD0EIH8etnMSPQzKbWpKNdXEcB1ZF3szu3qrmKyEOCApams=
X-Received: by 2002:a05:6402:c84:: with SMTP id cm4mr182801edb.270.1603119170335;
 Mon, 19 Oct 2020 07:52:50 -0700 (PDT)
MIME-Version: 1.0
References: <20201016043850.24267-1-akuster808@gmail.com>
In-Reply-To: <20201016043850.24267-1-akuster808@gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 19 Oct 2020 16:52:39 +0200
Message-ID: <CA+chaQdg+r0WrM_gMpZfY3SkX7TObEcOSikJppTphgGmxWmUFg@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] meta-securtiy: Add gatesgarth to LAYERSERIES_COMPAT
To: akuster <akuster808@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ae394905b2074424"

--000000000000ae394905b2074424
Content-Type: text/plain; charset="UTF-8"

Small typo in commit summary, but other than that please merge :).

On Fri, Oct 16, 2020 at 6:39 AM akuster <akuster808@gmail.com> wrote:

> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  conf/layer.conf                          | 2 +-
>  meta-hardening/conf/layer.conf           | 2 +-
>  meta-integrity/conf/layer.conf           | 2 +-
>  meta-security-compliance/conf/layer.conf | 2 +-
>  meta-security-isafw/conf/layer.conf      | 2 +-
>  meta-tpm/conf/layer.conf                 | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 2c3bd96..8c0254b 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"
>  BBFILE_PATTERN_security = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_security = "8"
>
> -LAYERSERIES_COMPAT_security = "dunfell"
> +LAYERSERIES_COMPAT_security = "gatesgarth"
>
>  LAYERDEPENDS_security = "core openembedded-layer perl-layer
> networking-layer meta-python"
> diff --git a/meta-hardening/conf/layer.conf
> b/meta-hardening/conf/layer.conf
> index 5896214..22d8874 100644
> --- a/meta-hardening/conf/layer.conf
> +++ b/meta-hardening/conf/layer.conf
> @@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "harden-layer"
>  BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_harden-layer = "10"
>
> -LAYERSERIES_COMPAT_harden-layer = "dunfell"
> +LAYERSERIES_COMPAT_harden-layer = "gatesgarth"
>
>  LAYERDEPENDS_harden-layer = "core openembedded-layer"
> diff --git a/meta-integrity/conf/layer.conf
> b/meta-integrity/conf/layer.conf
> index 6075df9..76374eb 100644
> --- a/meta-integrity/conf/layer.conf
> +++ b/meta-integrity/conf/layer.conf
> @@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
>  # interactive shell is enough.
>  OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
>
> -LAYERSERIES_COMPAT_integrity = "dunfell"
> +LAYERSERIES_COMPAT_integrity = "gatesgarth"
>  # ima-evm-utils depends on keyutils from meta-oe
>  LAYERDEPENDS_integrity = "core openembedded-layer"
>
> diff --git a/meta-security-compliance/conf/layer.conf
> b/meta-security-compliance/conf/layer.conf
> index 965c837..db243f7 100644
> --- a/meta-security-compliance/conf/layer.conf
> +++ b/meta-security-compliance/conf/layer.conf
> @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
>  BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_scanners-layer = "10"
>
> -LAYERSERIES_COMPAT_scanners-layer = "dunfell"
> +LAYERSERIES_COMPAT_scanners-layer = "gatesgarth"
>
>  LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
>
> diff --git a/meta-security-isafw/conf/layer.conf
> b/meta-security-isafw/conf/layer.conf
> index 63f990a..b8ee1c0 100644
> --- a/meta-security-isafw/conf/layer.conf
> +++ b/meta-security-isafw/conf/layer.conf
> @@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
>
>  LAYERDEPENDS_security-isafw = "core"
>
> -LAYERSERIES_COMPAT_security-isafw = "dunfell"
> +LAYERSERIES_COMPAT_security-isafw = "gatesgarth"
> diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
> index 46d0279..cd62fba 100644
> --- a/meta-tpm/conf/layer.conf
> +++ b/meta-tpm/conf/layer.conf
> @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
>  BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_tpm-layer = "10"
>
> -LAYERSERIES_COMPAT_tpm-layer = "dunfell"
> +LAYERSERIES_COMPAT_tpm-layer = "gatesgarth"
>
>  LAYERDEPENDS_tpm-layer = " \
>      core \
> --
> 2.17.1
>
>
> 
>
>

--000000000000ae394905b2074424
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Small typo in commit summary, but other than that please m=
erge :).</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Fri, Oct 16, 2020 at 6:39 AM akuster &lt;<a href=3D"mailto:akust=
er808@gmail.com">akuster808@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Signed-off-by: Armin Kuster &lt;<a hre=
f=3D"mailto:akuster808@gmail.com" target=3D"_blank">akuster808@gmail.com</a=
>&gt;<br>
---<br>
=C2=A0conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0meta-hardening/conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0| 2 +-<br>
=C2=A0meta-integrity/conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0| 2 +-<br>
=C2=A0meta-security-compliance/conf/layer.conf | 2 +-<br>
=C2=A0meta-security-isafw/conf/layer.conf=C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0meta-tpm/conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A06 files changed, 6 insertions(+), 6 deletions(-)<br>
<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
index 2c3bd96..8c0254b 100644<br>
--- a/conf/layer.conf<br>
+++ b/conf/layer.conf<br>
@@ -9,6 +9,6 @@ BBFILE_COLLECTIONS +=3D &quot;security&quot;<br>
=C2=A0BBFILE_PATTERN_security =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_security =3D &quot;8&quot;<br>
<br>
-LAYERSERIES_COMPAT_security =3D &quot;dunfell&quot;<br>
+LAYERSERIES_COMPAT_security =3D &quot;gatesgarth&quot;<br>
<br>
=C2=A0LAYERDEPENDS_security =3D &quot;core openembedded-layer perl-layer n=
etworking-layer meta-python&quot;<br>
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.co=
nf<br>
index 5896214..22d8874 100644<br>
--- a/meta-hardening/conf/layer.conf<br>
+++ b/meta-hardening/conf/layer.conf<br>
@@ -8,6 +8,6 @@ BBFILE_COLLECTIONS +=3D &quot;harden-layer&quot;<br>
=C2=A0BBFILE_PATTERN_harden-layer =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_harden-layer =3D &quot;10&quot;<br>
<br>
-LAYERSERIES_COMPAT_harden-layer =3D &quot;dunfell&quot;<br>
+LAYERSERIES_COMPAT_harden-layer =3D &quot;gatesgarth&quot;<br>
<br>
=C2=A0LAYERDEPENDS_harden-layer =3D &quot;core openembedded-layer&quot;<br=
>
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.co=
nf<br>
index 6075df9..76374eb 100644<br>
--- a/meta-integrity/conf/layer.conf<br>
+++ b/meta-integrity/conf/layer.conf<br>
@@ -20,7 +20,7 @@ INTEGRITY_BASE :=3D &#39;${LAYERDIR}&#39;<br>
=C2=A0# interactive shell is enough.<br>
=C2=A0OE_TERMINAL_EXPORTS +=3D &quot;INTEGRITY_BASE&quot;<br>
<br>
-LAYERSERIES_COMPAT_integrity =3D &quot;dunfell&quot;<br>
+LAYERSERIES_COMPAT_integrity =3D &quot;gatesgarth&quot;<br>
=C2=A0# ima-evm-utils depends on keyutils from meta-oe<br>
=C2=A0LAYERDEPENDS_integrity =3D &quot;core openembedded-layer&quot;<br>
<br>
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-comp=
liance/conf/layer.conf<br>
index 965c837..db243f7 100644<br>
--- a/meta-security-compliance/conf/layer.conf<br>
+++ b/meta-security-compliance/conf/layer.conf<br>
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS +=3D &quot;scanners-layer&quot;<br>
=C2=A0BBFILE_PATTERN_scanners-layer =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_scanners-layer =3D &quot;10&quot;<br>
<br>
-LAYERSERIES_COMPAT_scanners-layer =3D &quot;dunfell&quot;<br>
+LAYERSERIES_COMPAT_scanners-layer =3D &quot;gatesgarth&quot;<br>
<br>
=C2=A0LAYERDEPENDS_scanners-layer =3D &quot;core openembedded-layer meta-p=
ython&quot;<br>
<br>
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/con=
f/layer.conf<br>
index 63f990a..b8ee1c0 100644<br>
--- a/meta-security-isafw/conf/layer.conf<br>
+++ b/meta-security-isafw/conf/layer.conf<br>
@@ -14,4 +14,4 @@ LAYERVERSION_security-isafw =3D &quot;1&quot;<br>
<br>
=C2=A0LAYERDEPENDS_security-isafw =3D &quot;core&quot;<br>
<br>
-LAYERSERIES_COMPAT_security-isafw =3D &quot;dunfell&quot;<br>
+LAYERSERIES_COMPAT_security-isafw =3D &quot;gatesgarth&quot;<br>
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf<br>
index 46d0279..cd62fba 100644<br>
--- a/meta-tpm/conf/layer.conf<br>
+++ b/meta-tpm/conf/layer.conf<br>
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS +=3D &quot;tpm-layer&quot;<br>
=C2=A0BBFILE_PATTERN_tpm-layer =3D &quot;^${LAYERDIR}/&quot;<br>
=C2=A0BBFILE_PRIORITY_tpm-layer =3D &quot;10&quot;<br>
<br>
-LAYERSERIES_COMPAT_tpm-layer =3D &quot;dunfell&quot;<br>
+LAYERSERIES_COMPAT_tpm-layer =3D &quot;gatesgarth&quot;<br>
<br>
=C2=A0LAYERDEPENDS_tpm-layer =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0core \<br>
-- <br>
2.17.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000ae394905b2074424--
