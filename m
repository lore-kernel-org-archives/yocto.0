Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.5548.1627348041184525765
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 18:07:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=svZj9O5L;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: twoerner@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id z4so1277196wrv.11
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 18:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=WwQlZWM221QsT7OYzna5zTxlmpPoLqFsnTOwx8+guo0=;
        b=svZj9O5Lmunp8ArHHM2rL6zO9m7Qh0f+/70YUecuB9U60AjPA/0h9ZCDx9TqznRJJI
         VYe3xb9G0CTe6u9kEbMzUlMGXCsmjujrbpI481fqou4/ZHKumWRQxgtYTCHQvBUE/HkK
         1oEZ9IlE0J5TtTe+1C/v6lCjK5shIi63cWZmxIlhwcAxqwjmc2CQn716rNcfzrZKzQEh
         3K5ew5AnMNLckx6JIULmjF+YB+cYcIqRDgA0Iq4fNyT6eYQHMD2Ri+qpQa3u9ASSyCVf
         8ZcFbK/0smzNS7VnibJX89aTynY51bVfK+6qECFmzWYonfcuN4DxcFCHpPZXEbtqyQb8
         nbuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=WwQlZWM221QsT7OYzna5zTxlmpPoLqFsnTOwx8+guo0=;
        b=Cfv+Enn1Rg6Flh/bpzKPl2aABRQKEYRPt3fHhplwcRcSOsy+Qdf/ibMmiennIRyeE3
         tPV5yo1DbfTlGxzHF5uItyGma+okKxt05ILJhCHh4b7c5CU/IbPsutRNtLR8qFIEdOBX
         MXRTI5GcDdUCW272beYRz/8Wv9DdSSKPlvVzhDKID1RdY8WwlC28kJYY59CGhvkwRPmh
         s7bW+7ezR7o/AhWKpkVs6iEtcA4wPuIyoCEI7rLlRXJOTAoG1uFXh21OTvVEH+ozuQag
         xPHNyEvQ5zn6wdNffan/ujyS3Uvgh9xSHDPvS+ez3VAV+9IfgeIJgK9vQFA4didbusqq
         n/hQ==
X-Gm-Message-State: AOAM531VOTJLY4/C8CkrMnGy1MfkvuajwLpauQ1+KStb4+1vPwmGf5gb
	rLPlTeA8990hO0uU1YpY2ZkqRacmIaHQftbqZKbFi2mF
X-Google-Smtp-Source: ABdhPJz/zXZJ70ccZZBfvp3pm3xxcRaN+rHFGizohjBoE2A1SWMXBQB86ocU/pqXvaKoZIhk/B7UNMdXWoOueVny/6g=
X-Received: by 2002:a05:6000:11c5:: with SMTP id i5mr22483084wrx.268.1627348039565;
 Mon, 26 Jul 2021 18:07:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210713233204.11476-1-twoerner@gmail.com> <20210713233204.11476-2-twoerner@gmail.com>
In-Reply-To: <20210713233204.11476-2-twoerner@gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Mon, 26 Jul 2021 21:07:08 -0400
Message-ID: <CAHUNapTy+vADxhjkmSY2u7nsV+Pq6rQHyfC5xgbdMLU3vK7Umw@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH] rock-pi-e: update preferred kernel
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d3068105c8107d5c"

--000000000000d3068105c8107d5c
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 13, 2021 at 7:32 PM Trevor Woerner <twoerner@gmail.com> wrote:

> The latest updates to linux-yocto-dev now include support for the
> rock-pi-e so
> do away with our custom recipe and use the one from oe-core.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/rock-pi-e.conf                    |  2 +-
>  .../linux/linux-stable-bleeding_5.11.bb        | 18 ------------------
>  recipes-kernel/linux/linux-yocto%.bbappend     |  1 +
>  3 files changed, 2 insertions(+), 19 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-stable-bleeding_5.11.bb
>

applied to meta-rockchip master

--000000000000d3068105c8107d5c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jul 13, 2021 at 7:32 PM Trevor Wo=
erner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; =
wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">The latest updates to linux-yocto-dev now include support=
 for the rock-pi-e so<br>
do away with our custom recipe and use the one from oe-core.<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" tar=
get=3D"_blank">twoerner@gmail.com</a>&gt;<br>
---<br>
=C2=A0conf/machine/rock-pi-e.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 2 +-<br>
=C2=A0.../linux/<a href=3D"http://linux-stable-bleeding_5.11.bb" rel=3D"nor=
eferrer" target=3D"_blank">linux-stable-bleeding_5.11.bb</a>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 18 ------------------<br>
=C2=A0recipes-kernel/linux/linux-yocto%.bbappend=C2=A0 =C2=A0 =C2=A0|=C2=A0=
 1 +<br>
=C2=A03 files changed, 2 insertions(+), 19 deletions(-)<br>
=C2=A0delete mode 100644 recipes-kernel/linux/<a href=3D"http://linux-stabl=
e-bleeding_5.11.bb" rel=3D"noreferrer" target=3D"_blank">linux-stable-bleed=
ing_5.11.bb</a><br>
</blockquote><div><br></div><div>applied to meta-rockchip master=C2=A0</div=
></div></div>

--000000000000d3068105c8107d5c--
