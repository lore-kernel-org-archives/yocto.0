Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web11.296.1617729418760992267
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 10:16:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=rF5hyklD;
 spf=pass (domain: linaro.org, ip: 209.85.208.44, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ed1-f44.google.com with SMTP id s15so2529823edd.4
        for <yocto@lists.yoctoproject.org>; Tue, 06 Apr 2021 10:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KAKdv/wRaCTSQt/p5PsAS+Nl673SKz/7moqyh8tAJN4=;
        b=rF5hyklDg40JbVuQGDsr3Ic8GwrCFww0kIZ7/xIXy5w8L+6WuGUf9BL8cMMb2D/cQa
         eoBUJLNy2udx7I7Z3igiPNwCEDdnTX+WnCCi9bECjyiq6N3kXNcbTIaE8EIaIUzSRYS2
         EhpU/E1c8MTTsbvIo/aKA6+37G8Z+IAnQ1BFrwwPq3NmjoUTLOulXdcOqc54VxAE13+u
         0F/VkTHuTt22ah/rXaqBT355VuZ5ynsc7CRgb3XhlG3q7OTaYN9X5PWczQd2xI4eUmc2
         +IXlHLaxjq8zsuTJplk5iicp6JNDKFTrgGoYJWONUpAQno3psQzBsNbcIDuYGu+zGHwY
         SEZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KAKdv/wRaCTSQt/p5PsAS+Nl673SKz/7moqyh8tAJN4=;
        b=QGNiB0t0s5kZA7XIzMLUT5jKyEvoVrlnBfXWKYtUL+gyBFXg2tElcdoOdsymQ7z5CV
         b+3+r8dp2Lf+eVuOTgRwnxrHpYx6eplTu6/3H8MdXM6/EzmNmVTjU6F561whbZMQjngi
         42n8nNYbY3Whm4Ww/BLxgj02CAx7lnhYPo3SdJhNqWZkILZ/JhoDIigWA+T7cl4BZsw8
         vO0AKFyd0SqmwzSUIM57vwvj8rBu8mwMHVHKqOC63agKui8FaO8sVKB8nRZzVJj5mmbf
         Y1RPcOokIgmC1P7gcL7RC6g8qk8/GdN1gvsdvTSuVIgBYFgSfW4vC4OYFzyArLl+glsS
         XUDA==
X-Gm-Message-State: AOAM5320iKnpPxQUUdWOLbAd2Yy9/xJSHyw7qaQOoXfmWovWNW4Hr8yY
	9mKi04VsZlKhrDAaVdO5DmIo+srIJ5fzSjTc1/MM4A==
X-Google-Smtp-Source: ABdhPJyw8sbnhuPDdhiU9R1TSKPuAm6c+hX/Fi0ACdKF9w5UdXjVtpk6/V0zcC5tV2K+dPljGAK6rsV6YYOjvaJR9+8=
X-Received: by 2002:a05:6402:22f9:: with SMTP id dn25mr717285edb.101.1617729415792;
 Tue, 06 Apr 2021 10:16:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210406170633.8165-1-mhalstead@linuxfoundation.org>
In-Reply-To: <20210406170633.8165-1-mhalstead@linuxfoundation.org>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Tue, 6 Apr 2021 19:16:45 +0200
Message-ID: <CAP71Wjyi+OwUV5GPjOd5w+=u_9H2to608Tc8NHno0UsC-9b39g@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] run-docs-build: add 3.2.3 release to docs build
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002bdb0e05bf50fbb0"

--0000000000002bdb0e05bf50fbb0
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 6, 2021 at 7:06 PM Michael Halstead <
mhalstead@linuxfoundation.org> wrote:

> Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
>

Thanks for the patch.

Reviewed-by: Nicolas Dechesne <nicolas.dechesne@linaro.org>


> ---
>  scripts/run-docs-build | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> index 4af23fd..910f03d 100755
> --- a/scripts/run-docs-build
> +++ b/scripts/run-docs-build
> @@ -77,7 +77,7 @@ for branch in dunfell gatesgarth hardknott; do
>  done
>
>  # Yocto Project releases/tags
> -for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2; do
> +for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2 3.2.3; do
>      cd $ypdocs
>      git checkout yocto-$tag
>      make clean
> --
> 2.30.2
>
>
> 
>
>

--0000000000002bdb0e05bf50fbb0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 6, 2021 at 7:06 PM Michae=
l Halstead &lt;<a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@l=
inuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Signed-off-by: Michael Halstead &lt;<a href=3D"mailto:mha=
lstead@linuxfoundation.org" target=3D"_blank">mhalstead@linuxfoundation.org=
</a>&gt;<br></blockquote><div><br></div><div>Thanks for the patch.</div><di=
v><br></div><div>Reviewed-by: Nicolas Dechesne &lt;<a href=3D"mailto:nicola=
s.dechesne@linaro.org">nicolas.dechesne@linaro.org</a>&gt;=C2=A0</div><div>=
=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
---<br>
=C2=A0scripts/run-docs-build | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/scripts/run-docs-build b/scripts/run-docs-build<br>
index 4af23fd..910f03d 100755<br>
--- a/scripts/run-docs-build<br>
+++ b/scripts/run-docs-build<br>
@@ -77,7 +77,7 @@ for branch in dunfell gatesgarth hardknott; do<br>
=C2=A0done<br>
<br>
=C2=A0# Yocto Project releases/tags<br>
-for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2; do<br>
+for tag in 3.1.5 3.1.6 3.2 3.2.1 3.2.2 3.2.3; do<br>
=C2=A0 =C2=A0 =C2=A0cd $ypdocs<br>
=C2=A0 =C2=A0 =C2=A0git checkout yocto-$tag<br>
=C2=A0 =C2=A0 =C2=A0make clean<br>
-- <br>
2.30.2<br>
<br>
<br>
<br>
<br>
</blockquote></div></div>

--0000000000002bdb0e05bf50fbb0--
