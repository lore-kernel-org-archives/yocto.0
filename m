Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.6979.1627548649937727853
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jul 2021 01:50:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20150623.gappssmtp.com header.s=20150623 header.b=FZCAkwOy;
 spf=pass (domain: smile.fr, ip: 209.85.218.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-ej1-f47.google.com with SMTP id nb11so9445128ejc.4
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jul 2021 01:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b2Aa2vgN3HQiOYugCTxghAlf+6wZtZXAjnCaVpivUAc=;
        b=FZCAkwOy13sbzxbIWjwIXH1OjyIZVgpKlkEjNYhrryznKIJXdhBZzPafSoS6bbWZ2i
         6W6U9RLbhFwDEy/N6Ro9IiuOw8+Jx5NJfiiCiGtTbQyYZF1wb80qUyfjdtbXdKe1tfqm
         spcvyiEsgsb0zQrof1pD/JoGuy85lJ+e3VHX8+VTvtfwYmSJXpFIj0bBV1e6uoXW+UEU
         6iDhN0ilwX9Au/PbeBsd1s07XzFcMACOo+ZYkck+m8h1FzSSIMpQIeX9CdV7mXKqVTzY
         EhpPSRArezRaYMH4VwAYsbRPIQFCAoR4KxMdYl9DEMDO451tGezoYVOS1UtFSgiGtBdQ
         fbXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b2Aa2vgN3HQiOYugCTxghAlf+6wZtZXAjnCaVpivUAc=;
        b=LPXeg5DNlb9E49IOuxASQAiDXTYwmAbOJjvrdIkrLyNdl8u1LGenj2YtBy18TM0mYa
         3BKDRVdxFC9uj3Ddlfo2xcc1lHMJVp28k1R9wiAgBVKVdzEvMM4FIygtXWefygKo7ITs
         lvouFrYL2Bc5EXglwjIG9TiWE533ICcxeu67ux39KLHZgHCgxt2mOfh0ixADU7ki5B1K
         gemjCktqbVTqNVxogDN3kT0py7f1bWuSysLuVuPNruvjxwMkZ9KeUpxOddQhs4Q8uIA6
         UsplGEQdybJmJBxPGuDYWQ73fR4AVUkdV8KBxmbRlpvvBC3CLOqpSSS/Ml/86mMfN8JP
         RMxg==
X-Gm-Message-State: AOAM532wrU8oRsRI9ItZhdWN8WTqBAP6COLSqM5ygoY6hOEXFOYzOcJD
	F9zTtgKDexmKIxC0HwoPtP+utvweipj6o9Gjga6YBQ==
X-Google-Smtp-Source: ABdhPJyC1IQSTn1B3ThZt1HUeaHyFuwbAPCMwTw1fW4RaMgiu+Eu2hQq29i/yqotswb3DKDSqVa5VyY/9epYd7x7b9Q=
X-Received: by 2002:a17:906:38ce:: with SMTP id r14mr3547576ejd.268.1627548648153;
 Thu, 29 Jul 2021 01:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <dRHt.1627539766955102394.JGL7@lists.yoctoproject.org>
In-Reply-To: <dRHt.1627539766955102394.JGL7@lists.yoctoproject.org>
From: "Yoann Congal" <yoann.congal@smile.fr>
Date: Thu, 29 Jul 2021 10:50:22 +0200
Message-ID: <CAMSfU+7AhfXUZX-YMi5DmFUecjhMyiWiLjGJ3RQ-rHZD66UDJQ@mail.gmail.com>
Subject: Re: [yocto] #bitbake Can't get application sources from private git using SSH keys #bitbake #yocto
To: mail2uvijay@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000073c4b05c83f3338"

--000000000000073c4b05c83f3338
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Le jeu. 29 juil. 2021 =C3=A0 08:22, <mail2uvijay@gmail.com> a =C3=A9crit :

> SRC_URI =3D "git://git@xxxx.com:xxx/xxx.git"
> Could someone please suggest on how to write a recipe to get the
> application code from private git hub using SSH keys.
>

The ':' in SRC_URI is not handled like in the git clone command line. You
may need to change it to a '/'
SRC_URI =3D "git://git@xxxx.com/xxx/xxx.git;protocol=3Dssh;"

This is a frequent error (I make it at least once per project)

Hope this helps!

Regards,
--=20
Yoann Congal
Smile ECS - Expert technique

--000000000000073c4b05c83f3338
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 29 juil. 2021 =C3=A0=C2=A008:2=
2, &lt;<a href=3D"mailto:mail2uvijay@gmail.com">mail2uvijay@gmail.com</a>&g=
t; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">SRC_URI =3D &quot;git://git@xxxx.com:xxx/xxx.git&quot;<br>Could some=
one please suggest on how to write a recipe to get the application code fro=
m private git hub using SSH keys.<br></blockquote><div><br></div><div>The &=
#39;:&#39; in SRC_URI is not handled like in the git clone command line. Yo=
u may need to change it to a &#39;/&#39;<br></div><div>SRC_URI =3D &quot;gi=
t://<a href=3D"http://git@xxxx.com/xxx/xxx.git;protocol=3Dssh">git@xxxx.com=
/xxx/xxx.git;protocol=3Dssh</a>;&quot;</div><div><br></div><div>This is a f=
requent error (I make it at least once per project)<br></div><div><br></div=
><div>Hope this helps!<br></div><div><br></div><div>Regards,<br></div></div=
>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><font f=
ace=3D"Raleway, regular">Yoann Congal</font><div><font face=3D"Raleway, reg=
ular">Smile ECS - Expert technique</font></div></div></div></div>

--000000000000073c4b05c83f3338--
