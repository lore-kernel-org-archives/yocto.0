Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web08.3241.1612949534341414073
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Feb 2021 01:32:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CPe871kY;
 spf=pass (domain: gmail.com, ip: 209.85.219.177, mailfrom: amayajindal786@gmail.com)
Received: by mail-yb1-f177.google.com with SMTP id r2so1319329ybk.11
        for <yocto@lists.yoctoproject.org>; Wed, 10 Feb 2021 01:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wCXaJEZhaqKhZhOJWlyDPiwE0nFYGcuermXMSFi3Eh8=;
        b=CPe871kYxHoJgUr8PW//cZ28aKS4pqP3WSv/6K2nU2UuycvWMGCiMt1EZ/nNH2kwGL
         TrpKO4z1wfiLi1AXmF9XtsEHwCrBElyC96lf9k0rAXQNAlesVPwQAhoiMp5DI3cSCmnj
         gCquDaPWBoRJ5rAdHlNVpS72jeAnH2AW4kyJHQtCdS0gvgvUONyfJr1aZEbkDygYOCvF
         c3TnNqufV4b2jyMvgjyIcIyI7lCZiOPZuJjUrKhyS//Yu4hYqyy3w+oeP/nUl2XujUZF
         IvZ+YuVO2ph91eIiKbFnQzFoSSflVkEWEWtWkYPTuUImPTVecNL/WCnpvIugj55GSoxw
         pXbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wCXaJEZhaqKhZhOJWlyDPiwE0nFYGcuermXMSFi3Eh8=;
        b=t20pN4pQuwa3SFvguypymSOoZ/X7mlpQpiFIkszlr6bcF11/YuXdwTJ6GXfh+/9miV
         hnzWunDwYlOhxgbBqFw9+Gg0Xz2o26dU7OtPYEGHa6lNbsNKGw7L9Z13NvaaKTQMk9xN
         C/hLdjn2/vgM5sYVjdjTY/5w+iuaLIeMDcLtKTpeYpFKNkaD1RGPI3GxMhnm3k0NZSlZ
         dFqKoMKAIP8AYVeV7qp7+LB9gtOmINh3sm8wcf8rhK2k49jy2304OaC39KiCbiFgQPgd
         YDGzcniu5iRYzaKbFMYs0QuKIC+nQ7N45JRdBF4kKpGZvaQmA3jyWCzREqbjx7A589Vf
         dvtQ==
X-Gm-Message-State: AOAM530KIn4dxW6ZqHCLVtlHRFdHKZM70P2c7KheQsuBdwOiDZHG1Z5b
	4Q4/Ps68iq0gUGva9yJUT16q5k90ylnbNwML/2c=
X-Google-Smtp-Source: ABdhPJzap7ZRjoc1oj6BJv+4gFzsyM4V7/KafFb9zW3ckhVl2jCrEW27tApfiRUVkmGlxqX05j1yDmI53cbupvBdQlk=
X-Received: by 2002:a25:ea52:: with SMTP id o18mr3175507ybe.385.1612949532939;
 Wed, 10 Feb 2021 01:32:12 -0800 (PST)
MIME-Version: 1.0
References: <1662044F5A000658.19464@lists.yoctoproject.org>
In-Reply-To: <1662044F5A000658.19464@lists.yoctoproject.org>
From: "amaya jindal" <amayajindal786@gmail.com>
Date: Wed, 10 Feb 2021 15:01:59 +0530
Message-ID: <CAHXFBWuQi8CiRyTzpGnFzsRt=GVRGdWRXXVr_+psWT+OKf4P_w@mail.gmail.com>
Subject: Re: [yocto] Port toolchain source 4.9.3 to Rocko yocto
To: amaya jindal <amayajindal786@gmail.com>
Cc: yocto <yocto@yoctoproject.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f3987005baf8131e"

--000000000000f3987005baf8131e
Content-Type: text/plain; charset="UTF-8"

Please guide

On Tue, 9 Feb 2021, 1:09 pm amaya jindal via lists.yoctoproject.org,
<amayajindal786=gmail.com@lists.yoctoproject.org> wrote:

> Hi,
>
> I want to port old version of toolchain ie gcc 4.9.3 to Rocko version of
> yocto. I am getting errors in libgcc-initial. Please suggest any one has
> performed the same. Rocko has currently 5.4 gcc version that we don't want
> to use  currently. Please suggest.
>
> Regards,
> Rohit
>
> 
>
>

--000000000000f3987005baf8131e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Please guide=C2=A0<br><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 9 Feb 2021, 1:09 pm amaya ji=
ndal via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</=
a>, &lt;amayajindal786=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org=
">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"auto">Hi,=C2=A0<div dir=3D"auto"><br></div><div =
dir=3D"auto">I want to port old version of toolchain ie gcc 4.9.3 to Rocko =
version of yocto. I am getting errors in libgcc-initial. Please suggest any=
 one has performed the same. Rocko has currently 5.4 gcc version that we do=
n&#39;t want to use=C2=A0 currently. Please suggest.</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Regards,=C2=A0</div><div dir=3D"auto">Rohit=C2=
=
=A0</div></div>
<br>
<br>
<br>
</blockquote></div></div></div>

--000000000000f3987005baf8131e--
