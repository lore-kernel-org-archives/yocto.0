Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.32821.1605036404076546769
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 11:26:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jE3vu2EF;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 880F238C0883
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2020 11:26:43 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id w123so2989332vka.4
        for <yocto@yoctoproject.org>; Tue, 10 Nov 2020 11:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bnuFRdNmMoOUknF4AYylAWTAlnRI+3zAEvA6NmQO+8g=;
        b=jE3vu2EFqI38m7FCI5bGBOaNnroenYZ4xqVTDStjJbXg+HuSoasBGnDdODilct+aZZ
         9vKGzvxBkLGq2Gm4TS6CWSOpmQhphBGqm9FG2s+u9LPkp5wWlK92WFm4wHM3Zet7UrHe
         ooFC1NBVQ4IJlzvvf1HzPbrxNag1Jj792c7jHZB3cQZ5wT9glAXEVN/pk7ICQqajmI+D
         Y9o3BzFD/OC5lAbCZHrBs7Wze3I3uD6SbKMx03wIahpU0v9iNHCbVecn8jOz8QkQhf4l
         jXYiE2qxV3YBKcZBZ9hDBvGsp5ReSGcvi+zYpwufMw6hohe9ZQx89osy9fwSc6NT3CVY
         Q+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bnuFRdNmMoOUknF4AYylAWTAlnRI+3zAEvA6NmQO+8g=;
        b=TNyqkQscF6fmAJ1W5ymLZsW/m8z2KVnX8JRZr1J+0zpFz6qXUo83hXqPnmX/3Qw6pZ
         ErukMtxitYphrEzae5pWa5I27areyKec/xG5V5UzNkQZhcwPUC38LWWm5zrGZ/iC5wys
         5rYSbwe+13LllYHVhrdN/dCbh/v2+v/cnc8aRLa04N/tXj/YOUukSKAOrWOgV0F6YDG9
         8qIju24vJh3MNkKzjaE2FzvlCNQUY+j1TqQRNceMsPYkiMj8Uk/uEZk3a/Yu0o5PE0OB
         NLPkvbm2YQ178RPdiB2biEaZ5i0K/TljNOzNN7YFDPjUfOSIDT94b3drkP6aD9IkaEZg
         MPVw==
X-Gm-Message-State: AOAM533iKpO2RbMQ9Mqs73mrQNL/v3+sZWpnXXSUzLLGaznq+WHFKbil
	+Uq9Fl/XnlevHwWrntEn0wPq5nexj8XG2MGHxvY=
X-Google-Smtp-Source: ABdhPJzvNE6Y5NG2vRDA3PobI/XCCbPERM4l30/PRkAN1hnyjT1eztq1b90OazRpJ5GAX9kG84eJlCbRV448Hfn4swQ=
X-Received: by 2002:a1f:a4cf:: with SMTP id n198mr11813041vke.0.1605036402531;
 Tue, 10 Nov 2020 11:26:42 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv37ayVuQRRk+oKAX_=HtMeN_oGW+tCGCw2F8GEPBOzCdbQ@mail.gmail.com>
In-Reply-To: <CAAfyv37ayVuQRRk+oKAX_=HtMeN_oGW+tCGCw2F8GEPBOzCdbQ@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 10 Nov 2020 20:26:31 +0100
Message-ID: <CANNYZj-aZBD7Ld_RRkEtnPonUzuv8Qp8iEWC2y_nG8asueQzeQ@mail.gmail.com>
Subject: Re: [yocto] python bump
To: Marek Belisko <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009fe08b05b3c5a8c0"

--0000000000009fe08b05b3c5a8c0
Content-Type: text/plain; charset="UTF-8"

You should rather move to a yocto release that has the needed python,
backporting major pieces like that is difficult to impossible.

Alex

On Tue, 10 Nov 2020 at 19:45, Marek Belisko <marek.belisko@gmail.com> wrote:

> Hi,
>
> I'm using poky release thud and would like to bump python3 to 3.8.x. I
> took recipe from most recent poky version but I'm hitting issue with
> e.g. meson build like:
> Log data follows:
> | DEBUG: Executing shell function do_configure
> | Traceback (most recent call last):
> |   File "setup.py", line 25, in <module>
> |     from setuptools import setup
> | ModuleNotFoundError: No module named 'setuptools'
>
> Are there some other things I need to take care when want to bump python3?
>
> Thanks and BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> 
>
>

--0000000000009fe08b05b3c5a8c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You should rather move to a yocto release that has th=
e needed python, backporting major pieces like that is difficult to impossi=
ble.</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 10 Nov 2020 at 19:45, M=
arek Belisko &lt;<a href=3D"mailto:marek.belisko@gmail.com">marek.belisko@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">Hi,<br>
<br>
I&#39;m using poky release thud and would like to bump python3 to 3.8.x. I=
<br>
took recipe from most recent poky version but I&#39;m hitting issue with<b=
r>
e.g. meson build like:<br>
Log data follows:<br>
| DEBUG: Executing shell function do_configure<br>
| Traceback (most recent call last):<br>
|=C2=A0 =C2=A0File &quot;setup.py&quot;, line 25, in &lt;module&gt;<br>
|=C2=A0 =C2=A0 =C2=A0from setuptools import setup<br>
| ModuleNotFoundError: No module named &#39;setuptools&#39;<br>
<br>
Are there some other things I need to take care when want to bump python3?=
<br>
<br>
Thanks and BR,<br>
<br>
marek<br>
<br>
-- <br>
as simple and primitive as possible<br>
-------------------------------------------------<br>
Marek Belisko - OPEN-NANDRA<br>
Freelance Developer<br>
<br>
Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
Tel: +421 915 052 184<br>
skype: marekwhite<br>
twitter: #opennandra<br>
web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" target=3D"_blan=
k">http://open-nandra.com</a><br>
<br>
<br>
<br>
</blockquote></div>

--0000000000009fe08b05b3c5a8c0--
