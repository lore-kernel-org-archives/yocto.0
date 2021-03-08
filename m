Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web08.39534.1615223525475476111
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Mar 2021 09:12:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pzCSIHXE;
 spf=pass (domain: gmail.com, ip: 209.85.217.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f44.google.com with SMTP id b189so5244977vsd.0
        for <yocto@lists.yoctoproject.org>; Mon, 08 Mar 2021 09:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=q0kP+JfYEG0ytuH/qph5eMTuXxw95U6buY3BwuI+9kc=;
        b=pzCSIHXEgEpmI6MAuxJbh3hncwTUhzUOhCes0J8R/CS+FMiTxIZ2MbNNUC8gIVdKN6
         Q1cNG0n/CHVevMtCNmNrU9SwQ0GcvwRhN963/uFqL6pcx3k4wwlBPA3kHibEosFo4qIx
         vpWjfFliQXxm6TFxVlWtMc4dJ+EcVBaR2BIdxAD/bKvT2EJoyf+1wKbWRHC5iXiF/XBz
         TChP0AZB4VvEzmfyRXBsbDx8EFisOmi79KdQN7srrc0NTQrzfDp47dToS8jSt8jSFQYj
         UBgEShlZ1D1jzmq8BUTd7Vfh4v1J5bFO1hcPOQMQlIYBRgEzKJEN7NzFB7m1jJefdErv
         uWZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=q0kP+JfYEG0ytuH/qph5eMTuXxw95U6buY3BwuI+9kc=;
        b=p2DrWitIYS0TDyVDU0LpqLM6Th9ShPM6jsRDrZhtpZPis1yZt/uMU4X35Jj70qL2f1
         oUHsbROIy2Bq8tAEDVZ7Ub5AXKM47B5c2YrTD+tKlET76xZwgubd/C4ZvWVUC9pHZXFN
         E9E76cnu5roirXD737bnnLXWwVlRK3KRm+SL9hZDpPcz3rPvIoUqUqgyjiaNgxr3l2Oy
         fgiwgIDnix7u+DbsSUsc+vn1HrWEaipV8u2NRArWhpDgrBsqCICi9RhLn7Yv11uxqs87
         R79AVnMQJaWZ2Tg58kWdlceelPGIDJNBZNtv5izmTb+YxZlOqCztUJSUG/L96zIXFWne
         q5gw==
X-Gm-Message-State: AOAM531CQFDYhTL7iPa/H3E+ODDi4bjdOdiUDeBkGoVtG+2FAx88oWvp
	2vl9i1WLOmcbQPY63Kuz2puwdGmZTxn6dZW/irKtEyXdJOY=
X-Google-Smtp-Source: ABdhPJwem+4c6XD9waK0AlbT/w0AurTtBBWpBSvH79LbTt7WwGUhayqTCy80oUiu/Qe+EOT4HV5zxFQnIMtiS3inefU=
X-Received: by 2002:a67:33d8:: with SMTP id z207mr7721995vsz.54.1615223524548;
 Mon, 08 Mar 2021 09:12:04 -0800 (PST)
MIME-Version: 1.0
References: <1668D77238FFA0C9.7779@lists.yoctoproject.org>
In-Reply-To: <1668D77238FFA0C9.7779@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 8 Mar 2021 18:11:53 +0100
Message-ID: <CANNYZj8Z_WFzDy8P5fJE8itupgwRKk9xQTUzE28z2CoO81uysQ@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add a systemd no-x11 build
To: yocto@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="00000000000069e4c005bd0988a4"

--00000000000069e4c005bd0988a4
Content-Type: text/plain; charset="UTF-8"

Ping :)

Alex

On Wed, 3 Mar 2021 at 14:16, Alexander Kanavin via lists.yoctoproject.org
<alex.kanavin=gmail.com@lists.yoctoproject.org> wrote:

> Particularly the weston image has now regressed twice under systemd,
> so I think there should be a quality gate for it.
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  config.json | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/config.json b/config.json
> index 8025166..d6e7df8 100644
> --- a/config.json
> +++ b/config.json
> @@ -715,8 +715,19 @@
>              "SANITYTARGETS" : "core-image-full-cmdline:do_testimage
> core-image-weston:do_testimage",
>              "extravars" : [
>                  "DISTRO_FEATURES_remove = 'x11'"
> -            ]
> -
> +            ],
> +            "step1" : {
> +                "shortname" : "Sysvinit weston"
> +            },
> +            "step2" : {
> +                "shortname" : "Systemd weston",
> +                "extravars" : [
> +                     "TEST_SUITES_append = ' systemd'",
> +                     "DISTRO_FEATURES_append = ' pam systemd'",
> +                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
> +                     "DISTRO_FEATURES_BACKFILL_CONSIDERED = 'sysvinit'"
> +                ]
> +            }
>          },
>          "musl-qemux86" : {
>              "MACHINE" : "qemux86",
> --
> 2.29.2
>
>
> 
>
>

--00000000000069e4c005bd0988a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ping :)</div><div><br></div><div>Alex<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, 3 Mar 2021 at 14:16, Alexander Kanavin via <a href=3D"http://lists.yoctop=
roject.org">lists.yoctoproject.org</a> &lt;alex.kanavin=3D<a href=3D"mailto=
:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Particul=
arly the weston image has now regressed twice under systemd,<br>
so I think there should be a quality gate for it.<br>
<br>
Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.=
com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
---<br>
=C2=A0config.json | 15 +++++++++++++--<br>
=C2=A01 file changed, 13 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/config.json b/config.json<br>
index 8025166..d6e7df8 100644<br>
--- a/config.json<br>
+++ b/config.json<br>
@@ -715,8 +715,19 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;SANITYTARGETS&quot; =
: &quot;core-image-full-cmdline:do_testimage core-image-weston:do_testimage=
&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;extravars&quot; : [<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;DISTRO=
_FEATURES_remove =3D &#39;x11&#39;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ]<br>
-<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;step1&quot; : {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;shortname&q=
uot; : &quot;Sysvinit weston&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;step2&quot; : {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;shortname&q=
uot; : &quot;Systemd weston&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;extravars&q=
uot; : [<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0&quot;TEST_SUITES_append =3D &#39; systemd&#39;&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0&quot;DISTRO_FEATURES_append =3D &#39; pam systemd&#39;&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0&quot;VIRTUAL-RUNTIME_init_manager =3D &#39;systemd&#39;&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0&quot;DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &#39;sysvinit&#39;&quot;<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;musl-qemux86&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;MACHINE&quot; : &quo=
t;qemux86&quot;,<br>
-- <br>
2.29.2<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000069e4c005bd0988a4--
