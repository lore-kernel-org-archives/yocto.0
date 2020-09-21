Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.39621.1600686774052102715
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 04:12:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g4BGwut5;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id gr14so17187624ejb.1
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 04:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yg/bLsgmHJmH95We/3qF7gYFMipgLOmbdOm+dB1EKfY=;
        b=g4BGwut5ENmBGUyfg3Ccu31hAz28AGGV2E/ZD4gZ1qkhNZIlONozRoyf3A6DAInqkx
         e1oHDwszqJEcKNFFjFkorxecDfeTfchzkkAYu6+VdBxvCP08i80edn+b9KJWq62gbKBL
         Y9BkNnqZL+9XEI9cZB+K3SVMt0SPxMh8B/3KRBDEm5pb10H57hA+QZXNUSluHXEWAYtw
         Hvno7THwXtm2wAIKJo37oAXQYVl+HCOvustoB1RQcIgWhm5csFmu9fC3kbB6+jwvCfMO
         Jezaiopx5YuoWoJo2EvmKhiEbODRuTdtvJyTSw4/5rBFxxdo6SC/iYqreBENUSyNdKv9
         V5Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yg/bLsgmHJmH95We/3qF7gYFMipgLOmbdOm+dB1EKfY=;
        b=nsUoMMgKnDx1sb4GwDj1UPSZh5MhEmhJaEct/o0nRPT+YBto+rQbU4eI8ru9/UCh+J
         M0rThvnuhbHQQgTWFjbOmELIV6RfZejccWlQmwX/JRNmZQBo4eP5iGor/mWxkpI7y5nf
         qqibUAr8A6MCfxLPy/MayBT0mx/U89uiDnatWiWOFO9PJWSMz2kwyv6VOOuwr5x8OlBz
         UljGlbplz46e4h1gT75+tpBZCf8QtzUdiKCiSgkUT9mtRr8ciZSGqaK7ZtqJkT1H5OZt
         YWcbvDm0CXemGOVDA0M2yuvtfWw0UmwanBfFFWloSMzafMN7/FzUzuI4oWkNKBiI0s0N
         3csg==
X-Gm-Message-State: AOAM5326kEafQAwN6nkwzk7Mt9gFpiAc8WKz+OjJp1RVU+psghrPFPm5
	cZo0rruvIE1XZCQTTL1OZHBHieJqe2OMmGerJ4k=
X-Google-Smtp-Source: ABdhPJwKCFohMN1qXj/L4FaLr/OafX0Jh+usnsPd0R794EZmE80WKO/YL6ox/nliN2iZDY1mvAVonZow8RNSpqCLU+Y=
X-Received: by 2002:a17:907:444f:: with SMTP id on23mr47847086ejb.392.1600686772194;
 Mon, 21 Sep 2020 04:12:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAHwRhWaXaC0eWDeY5mL9USjF+4OL7_iXsBteVBtVuu8H1Zx9-A@mail.gmail.com>
In-Reply-To: <CAHwRhWaXaC0eWDeY5mL9USjF+4OL7_iXsBteVBtVuu8H1Zx9-A@mail.gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 21 Sep 2020 13:12:41 +0200
Message-ID: <CA+chaQdWf_HV_e7=+=0M0PPXrgYXwGjDSnt4VeC4Y9kKyMceBg@mail.gmail.com>
Subject: Re: [yocto] wvdial & wvstream Error
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007412b905afd0ee3d"

--0000000000007412b905afd0ee3d
Content-Type: text/plain; charset="UTF-8"

Are you trying to use it with openssl-1.0.*? Either use openssl-1.1 or
revert the changes from https://github.com/apenwarr/wvstreams/pull/2/commits
.

On Mon, Sep 21, 2020 at 10:55 AM Zoltan Kerenyi Nagy <
kerenyi.nagy.zoltan@gmail.com> wrote:

> Hi,
>
> I was messing around with wvdial & wvstream for a while. Now the patches
> are at the correct locations, but still there is a compile error:
>
> Here is the error log:
>
> https://pastebin.ubuntu.com/p/GFCZ7dYjsX/
>
> Could you please point me the error? I suppose, its gonna be a Layer 8
> error :-)
>
> Thanks guys!
>
> Zolee
>
> 
>
>

--0000000000007412b905afd0ee3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Are you trying to use it with openssl-1.0.*? Either use op=
enssl-1.1 or revert the changes from=C2=A0<a href=3D"https://github.com/ape=
nwarr/wvstreams/pull/2/commits">https://github.com/apenwarr/wvstreams/pull/=
2/commits</a>.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Sep 21, 2020 at 10:55 AM Zoltan Kerenyi Nagy &lt;<=
a href=3D"mailto:kerenyi.nagy.zoltan@gmail.com">kerenyi.nagy.zoltan@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"color:rgb(51,51,15=
3)">Hi, <br></div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153=
)"><br></div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)">I =
was messing around with wvdial &amp; wvstream for a while. Now the patches =
are at the correct locations, but still there is a compile error:</div><div=
 class=3D"gmail_default" style=3D"color:rgb(51,51,153)"><br></div><div clas=
s=3D"gmail_default" style=3D"color:rgb(51,51,153)">Here is the error log:</=
div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)"><br></div><=
div class=3D"gmail_default" style=3D"color:rgb(51,51,153)"><a href=3D"https=
://pastebin.ubuntu.com/p/GFCZ7dYjsX/" target=3D"_blank">https://pastebin.ub=
untu.com/p/GFCZ7dYjsX/</a></div><div class=3D"gmail_default" style=3D"color=
:rgb(51,51,153)"><br></div><div class=3D"gmail_default" style=3D"color:rgb(=
51,51,153)">Could you please point me the error? I suppose, its gonna be a =
Layer 8 error :-)</div><div class=3D"gmail_default" style=3D"color:rgb(51,5=
1,153)"><br></div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153=
)">Thanks guys!</div><div class=3D"gmail_default" style=3D"color:rgb(51,51,=
153)"><br></div><div class=3D"gmail_default" style=3D"color:rgb(51,51,153)"=
>Zolee<br></div></div>
<br>
<br>
<br>
</blockquote></div>

--0000000000007412b905afd0ee3d--
