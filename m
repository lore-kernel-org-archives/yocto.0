Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.15233.1603810835242953849
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 08:00:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gd+oVbiM;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: vincent.prince.fr@gmail.com)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A1B0A38C0636
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2020 08:00:34 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id n6so2233816wrm.13
        for <yocto@yoctoproject.org>; Tue, 27 Oct 2020 08:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=17EoHKJHmEWwiLxJC9KymmAJhexGxmWRtus41WmPW3w=;
        b=gd+oVbiMzDz3AdlbURJJFnBq/UrmF/anzD5IKVg1jqSkZfRSwdZbm3A7j7jcu7PBNR
         y/pP9GzcXDEYxm43yYCL3xS1B6/EA3snAUWzCvQikyTZCJLwvVbrGtZj3U43rVY1waH9
         I6BkFPwZak9JQxCxs+2Ml6/s5SMrW9c7CDUwHgVSQBqmSvhQ/gx/CA6Wui1ee6f45Axj
         thdIgmlNnXs+yFm3uN12B2nm7C0Gh+YaWcGkVLj1DFI6NWWJmPwAPiFm2LvCmyK92Ia3
         vECUdjt5yX7zfcqHbBwo1/L9y22yod5/+8iSx6YZU3yAOUOSX0lzp4mhPurs0LlFR4tG
         LHKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=17EoHKJHmEWwiLxJC9KymmAJhexGxmWRtus41WmPW3w=;
        b=eBq/5tP0yC+AHruFAcZ4LRrMGniLg6rIb9jCPBxf+E2qTiOM761MBsF/6eMf/FK8h1
         S4HZQmO0UaMxrjLvQQZWcchr6GDT4KXURc9N8IzN7WVyWwWgRd/bCDUYU641XxuoaNyC
         Uzr5TMfnJ5C60551V/l9iC0jousCVMH5buidAx7T/XaP+1v7TWLDW1dtR5VkD+CgB0Pe
         5vD0CcI2CY3NPF1xew11GktCQ1kFwDtsZt1FC8IKNcI8brLuO3LtDICZQ8ePZbs7EKGx
         PzBJMGe8QzOGfiPHKIHzvCAU6Sd47UDtP97bG4f4mSOzmXTMBOo/HUokkl7NUF5qRilH
         OA1Q==
X-Gm-Message-State: AOAM533mE07dO/DCsMnttBxK7MUIYI0m1Wwxj1QepLz+lAgI3MZWN5Mg
	U2QDrLj5PqmSwAUMwL828fPHKXQq8yMACzkVbz0=
X-Google-Smtp-Source: ABdhPJxGK1szqnyWdimkW1AP3YhD+JMOMEqtQ9uj3hC/wf7l2u96W4mlNz/raZygJMgnZ9VXvjCJT47yzEZGRtoNnrw=
X-Received: by 2002:a05:6000:1d1:: with SMTP id t17mr3560728wrx.164.1603810833076;
 Tue, 27 Oct 2020 08:00:33 -0700 (PDT)
MIME-Version: 1.0
References: <20201026205608.5994-1-jdmason@kudzu.us>
In-Reply-To: <20201026205608.5994-1-jdmason@kudzu.us>
From: "nefethael" <vincent.prince.fr@gmail.com>
Date: Tue, 27 Oct 2020 16:00:21 +0100
Message-ID: <CAB2nKc-LLwRZ8MN+zJWQpS=5Ldjz5vsMJSu1hoVe5gTg0gS-Mg@mail.gmail.com>
Subject: Re: [yocto] [meta-selinux][PATCH] layer.conf: add gatesgarth compatibility
To: Jon Mason <jdmason@kudzu.us>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>, joe_macdonald@mentor.com, flihp@twobit.us, 
	nicolas.dechesne@linaro.org, =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linaro.org>, 
	yi.zhao@windriver.com
Content-Type: multipart/alternative; boundary="000000000000fe17c805b2a84e78"

--000000000000fe17c805b2a84e78
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jon,

There is already a pending patch submitted some time ago by An=C3=ADbal Li=
m=C3=B3
here
https://patchwork.openembedded.org/patch/177350/

Best regards,
Vincent



Le lun. 26 oct. 2020 =C3=A0 21:56, Jon Mason <jdmason@kudzu.us> a =C3=A9cr=
it :

> Signed-off-by: Jon Mason <jdmason@kudzu.us>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index da24359b7484..178ce1b734d3 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -23,7 +23,7 @@ BBFILE_PRIORITY_selinux =3D "5"
>  # cause compatibility issues with other layers
>  LAYERVERSION_selinux =3D "1"
>
> -LAYERSERIES_COMPAT_selinux =3D "dunfell"
> +LAYERSERIES_COMPAT_selinux =3D "dunfell gatesgarth"
>
>  LAYERDEPENDS_selinux =3D " \
>      core \
> --
> 2.20.1
>
>
>=20
>
>

--000000000000fe17c805b2a84e78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jon, <br></div><div><br></div><div>There is alread=
y a pending patch submitted some time ago by=20
An=C3=ADbal Lim=C3=B3 here

</div><div><a href=3D"https://patchwork.openembedded.org/patch/177350/">ht=
tps://patchwork.openembedded.org/patch/177350/</a></div><div><br></div><div=
>Best regards,</div><div>Vincent<br></div><div><br></div><div><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=
=C2=A0lun. 26 oct. 2020 =C3=A0=C2=A021:56, Jon Mason &lt;<a href=3D"mailto=
:jdmason@kudzu.us">jdmason@kudzu.us</a>&gt; a =C3=A9crit=C2=A0:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Signed-off-by: Jon Mason &l=
t;<a href=3D"mailto:jdmason@kudzu.us" target=3D"_blank">jdmason@kudzu.us</a=
>&gt;<br>
---<br>
=C2=A0conf/layer.conf | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
index da24359b7484..178ce1b734d3 100644<br>
--- a/conf/layer.conf<br>
+++ b/conf/layer.conf<br>
@@ -23,7 +23,7 @@ BBFILE_PRIORITY_selinux =3D &quot;5&quot;<br>
=C2=A0# cause compatibility issues with other layers<br>
=C2=A0LAYERVERSION_selinux =3D &quot;1&quot;<br>
<br>
-LAYERSERIES_COMPAT_selinux =3D &quot;dunfell&quot;<br>
+LAYERSERIES_COMPAT_selinux =3D &quot;dunfell gatesgarth&quot;<br>
<br>
=C2=A0LAYERDEPENDS_selinux =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0core \<br>
-- <br>
2.20.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000fe17c805b2a84e78--
