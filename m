Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web11.14902.1605647399498127583
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 13:09:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BV6ug9X6;
 spf=pass (domain: gmail.com, ip: 209.85.217.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f54.google.com with SMTP id m16so11888756vsl.8
        for <yocto@lists.yoctoproject.org>; Tue, 17 Nov 2020 13:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=D07v+jnIIMhnmqj6jqx3t/KAkfFwL0ulj3pOoLo2kCA=;
        b=BV6ug9X6c1+8hTz15EvvNsEVJFBs4EkoK3+Pl4CXTOqXlQPOIaDtnzsr+nVyEAdpSe
         OIgECd2Id2dlcxYJx2Ui+d+vlEIyd5F5F0Uw31CCD3Nv+XpTJOR2ftZ0j62K89Tt5Pji
         u8xexlilr2preh/VR1pYF7516Gwul0usc//+p6Y2RLM1JqFdGQp/SkN+Kvt5E1mphhPC
         CzAOuG8OiKiz60v9f21rVr1CzOwXu+4ixn85Ie1pKhaPQGcJrc11YQhPH+XaPS8Hk7uP
         8h317uJnrQvXtxs3LRxAQtb3sRyq5KCwddiSo5RgNe8QKr11sTyEX75TezaHKFlCdHIV
         Ie0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D07v+jnIIMhnmqj6jqx3t/KAkfFwL0ulj3pOoLo2kCA=;
        b=rp361Xd61+MZX50HUaDZIvKtKSEjDYdciZAbbNTrpFBP4HoR4XWd7w2x1qnBb6AXc4
         bP0pUN5rBEr85A/czKvLWWCGs9ep3+SM80B5xjnad9vgAy2pTL0JOGsBdt9ZlqBBT8Uc
         2u+rfOoLaVFkSAPHpkVl7yCRhtex3YqDwwM7uju5Wy7z1mZM7bYDpMk7UcOJBgUbWqLH
         6fD+l/AJK8kpLEFr3WG3zncbjBtTVE5V8m3DjryMZTrx1g3+8ZQDK50lmyLPNvmKYUuM
         ZmjQTks0rOyJjk7+3ILmZwamkRUzWT568INNXzfbeGvU06wXrgxKHse+iNJtGtLz+uBf
         WDiA==
X-Gm-Message-State: AOAM532FZisCOM/rGvZGgG6dNo8QZyIgrG+QY+Cf+5gqxDPpmpKux5fP
	Oj/ayxoGLZVMSg7l+i4XcKy5Y0RYBwoS59pBPpAkcCr7fDo=
X-Google-Smtp-Source: ABdhPJxgOr3qhGRHdvtuFWhLZTWBUQMPMrsgeTqa0+5UVq+ljk7iCLE4F6pHX5X9u75zXcqSO3O2AZqfIGgFOr3WD4w=
X-Received: by 2002:a67:e3b1:: with SMTP id j17mr1273757vsm.51.1605647398389;
 Tue, 17 Nov 2020 13:09:58 -0800 (PST)
MIME-Version: 1.0
References: <164619B424331089.10479@lists.yoctoproject.org>
In-Reply-To: <164619B424331089.10479@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 17 Nov 2020 22:09:47 +0100
Message-ID: <CANNYZj_=9jL+JfnRYke_NWyyZJHbxa=2w=uO_jBAa3bRuJforw@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] auh-config: add non-default distro features
To: yocto@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000d0c92b05b453eaf3"

--000000000000d0c92b05b453eaf3
Content-Type: text/plain; charset="UTF-8"

ping :)

Alex

On Tue, 10 Nov 2020 at 09:56, Alexander Kanavin via lists.yoctoproject.org
<alex.kanavin=gmail.com@lists.yoctoproject.org> wrote:

> This adds systemd and pam related recipes to upstream checks and
> devtool-driven updates.
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  scripts/auh-config/local.conf.append | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/scripts/auh-config/local.conf.append
> b/scripts/auh-config/local.conf.append
> index 9628737..b18590f 100644
> --- a/scripts/auh-config/local.conf.append
> +++ b/scripts/auh-config/local.conf.append
> @@ -1,3 +1,4 @@
>
>  INHERIT += "buildhistory"
>  LICENSE_FLAGS_WHITELIST = "commercial"
> +DISTRO_FEATURES_append = ' systemd pam'
> --
> 2.29.1
>
>
> 
>
>

--000000000000d0c92b05b453eaf3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>ping :)</div><div><br></div><div>Alex<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, 10 Nov 2020 at 09:56, Alexander Kanavin via <a href=3D"http://lists.yocto=
project.org">lists.yoctoproject.org</a> &lt;alex.kanavin=3D<a href=3D"mailt=
o:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">This ad=
ds systemd and pam related recipes to upstream checks and devtool-driven up=
dates.<br>
<br>
Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.=
com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
---<br>
=C2=A0scripts/auh-config/local.conf.append | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/loc=
al.conf.append<br>
index 9628737..b18590f 100644<br>
--- a/scripts/auh-config/local.conf.append<br>
+++ b/scripts/auh-config/local.conf.append<br>
@@ -1,3 +1,4 @@<br>
<br>
=C2=A0INHERIT +=3D &quot;buildhistory&quot;<br>
=C2=A0LICENSE_FLAGS_WHITELIST =3D &quot;commercial&quot;<br>
+DISTRO_FEATURES_append =3D &#39; systemd pam&#39;<br>
-- <br>
2.29.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000d0c92b05b453eaf3--
