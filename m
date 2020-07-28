Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web12.6066.1595913556524954471
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jul 2020 22:19:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OmQKkULP;
 spf=pass (domain: gmail.com, ip: 209.85.222.43, mailfrom: nikhilvp29@gmail.com)
Received: by mail-ua1-f43.google.com with SMTP id o25so6133008uar.1
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jul 2020 22:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=rXVVlbU2IQWmupN3UHLxjidXDOfUcLgmE5HV3GjLb9E=;
        b=OmQKkULPARROPpLcQ8i63N5Rm0VSAokpRzbbQvnWwkHUSCoB/cR8plesZ5Gm+Pml61
         tX2bgRBscToBAiM9777bzW+i+BgiyzlfSmfugD5f30O6yBjJ/9DskmNZeTlr5zoRr5iX
         c9TJDCQhsDl8SitmkOYSBHKfWLmDssEBdZZE99J2CSTArd7Fzfr3MbHXNUnu9nL3jAcH
         l0cqn8yoxqXyAap4lbaBhWnpE0LrrwXzK8nt5i3ufzxKUs6hFaQpbtxSnzuhIdqsZfPT
         17HysIEhVof/uDkbXwAGEaBC6G8vcFCI/CdxFC+9gSO9txQSOtziDBGHOu6WpHWhBZf2
         4RqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rXVVlbU2IQWmupN3UHLxjidXDOfUcLgmE5HV3GjLb9E=;
        b=S5GGmwdoy30lpkN4gpgaQ0iLb0xBZrxujBLiQNZEXZ2mrT59d58BSAI3vjVuXWGkgH
         zsVGYEZVCkXqGU8CetrABBfPze6Io3mjWse8BAV5hEXVViNL29MFWg324eFpg7KGyHJa
         IpxFNsjfbVKpL5TE2BAMxf4klTT0nSSUwy/CkD+9BzEwl+npOCfUBTrkkkjUomxZsTya
         Hs2fe51hRe6hmetP7wmt4/4IfDiZ6aMRW1iYhPhmVeONEL18Z9aZ/kr6CSV2hl67zVK9
         3rCkr4MuiQskTMRcZkCSIiPB8Dt3mYb4swm1mE3flBvPra0EmW+GvycP3IllKjWrqzgT
         bp9w==
X-Gm-Message-State: AOAM530ISwYZAuHAH0MheitKeMhkEy1fHwZ5q6MOXawkZySMkzbW30/p
	bNvjtV91RbF2PM4at/SwghE9a4qNFN0j2A2xxppcb2va
X-Google-Smtp-Source: ABdhPJz5M45hilnaGN58XK+v71jsC8Dl5cKMoCH3IWJUebXvaBBC6uXPdEKn0FT7936DV4G0sFlIeQV781E36WP0tRI=
X-Received: by 2002:ab0:6585:: with SMTP id v5mr4644201uam.73.1595913555236;
 Mon, 27 Jul 2020 22:19:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAJw=dJ_yy8+A6JWoB39rRB0+FbQX+LGFgFmnn9dTWcqPFN2ruQ@mail.gmail.com>
In-Reply-To: <CAJw=dJ_yy8+A6JWoB39rRB0+FbQX+LGFgFmnn9dTWcqPFN2ruQ@mail.gmail.com>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Tue, 28 Jul 2020 10:49:03 +0530
Message-ID: <CAJw=dJ-WJfC=sss_aS6mokwUPTZby65GN+cayYM=pqWs6o7JVw@mail.gmail.com>
Subject: Re: Remove connman package from yocto sdk.
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008d5c8205ab7994ef"

--0000000000008d5c8205ab7994ef
Content-Type: text/plain; charset="UTF-8"

hi,
 Still we ar facing same issue  ,
  If anyone know, please help.

On Fri, Jul 24, 2020 at 6:14 PM NIKHIL PATIL <nikhilvp29@gmail.com> wrote:

> Hi team,
>           We want to use NetworkManager to access internet using LTE
> module . but connman and Networkmaanger both are installed.
>
>           I struggled so much to remove connman,  I tried as follows :-
>            1) Added IMAGE_INSTALL_remove = "connman"  in local.conf
>                             but it still come with sato image.
>
>             2) Added DISTRO_FEATURE_remove = "connman"  in local.conf
>                             but it still come with sato image.
>
>     By default connman is coming in image , how to remove connman ?
>
>

--0000000000008d5c8205ab7994ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi,<div>=C2=A0Still we ar facing same issue=C2=A0 ,</div><=
div>=C2=A0 If anyone know, please help.</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 24, 2020 at 6:14 P=
M NIKHIL PATIL &lt;<a href=3D"mailto:nikhilvp29@gmail.com">nikhilvp29@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">Hi team,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 We wan=
t to use NetworkManager to access internet using LTE module . but connman a=
nd Networkmaanger both are installed.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I=
 struggled so much to remove connman,=C2=A0 I tried as follows=C2=A0:-</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01) Added IMAGE_INSTALL_remov=
e =3D &quot;connman&quot;=C2=A0 in local.conf</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 but it still come with sato image.</div><div><br></div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2) Added DISTRO_FEATURE_remove =3D &quot=
;connman&quot;=C2=A0 in local.conf</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 but i=
t still come with sato image.</div><div>=C2=A0 =C2=A0</div><div>=C2=A0 =C2=
=A0 By default connman is coming in image , how to remove connman ?</div><d=
iv>=C2=A0 =C2=A0 =C2=A0=C2=A0</div></div>
</blockquote></div>

--0000000000008d5c8205ab7994ef--
