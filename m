Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.18413.1590942964469161507
 for <yocto@lists.yoctoproject.org>;
 Sun, 31 May 2020 09:36:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ctcVzk7F;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: sergey.nikulov@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id z13so5153764ljn.7
        for <yocto@lists.yoctoproject.org>; Sun, 31 May 2020 09:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5at3p36ZIFuzaNKdZqrnJmT5y+NZi2i2JzT5T3iAe0A=;
        b=ctcVzk7FZbQ3KqY/lP0M82+BUzvuXOnIAr7tVsm090ncE868Fa28zWVRsmCeYelLV/
         m57+EsSx3Zn6356Fd4kWJpGOtx3s+fxyhKdBUuLcWYKMsnZ27oQGqSMqSZUggKm11njI
         3RlZpGrS9+1WO7GsL2SaClyNM/f79LHmQ1AvD9wBD9cAcd4Qazx3XREP7m7ww3Q85LM5
         DhlZ9/MLITsjAPO6XcNdouWxU/jGi3jhhFkJysmO/We4ZeKvXmhhNexVVdY/6vF22Dbl
         haJJWsxDf0Jczl9qYNr00Bvqn98L52R8EQJAERsxmEuG8G8lMySRy1CSgHiENclgMi/1
         /D3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5at3p36ZIFuzaNKdZqrnJmT5y+NZi2i2JzT5T3iAe0A=;
        b=lkTNehKm+UmKxbkZF/glHkeH0lh54+PDTpBx5myIykpqYq8U7tlAoQUGzQtLYJHkGF
         R6lyNWnq8u4WIILWjTvGtqEJ4IGWp5PX+ndh5xnpaouZQ24NT7C16z1/KYfT7ryHkh4G
         8qWSLEryPKNGld4uzU2eWSNxSDOiTyCZQBUFdcI+vUWIdBy4zd7SIu2Z/y/yR8KPRbve
         JBKnc8RbV2IQpVxL4AlGuZ1ayoQ+e4DlzssiPydkltm/aMmOTA0pWj+BHpXe0KWHY4NB
         HlUHceksuhV50wVlB/E4YClpl3brecLHYPDwE/g0f9A0xw8QrYd20HbZQaC1W1Vn10uU
         52iw==
X-Gm-Message-State: AOAM5312OuiNM/r+mfYz0IQCvxBWeXZudwsmzhRYXDPlB/3FjmNnlCTX
	IS3tRZiZG55QAkLnEuuXJYxNrmWL15B0uidHplE=
X-Google-Smtp-Source: ABdhPJzGUiUJhhTcxV5Rc/noH89ePF4TgvngPk6MoPG9nLK8KFP9fvVpP91XiNq+JgfozPP1I/YUj+a1FHjXGnUYV30=
X-Received: by 2002:a2e:3215:: with SMTP id y21mr8598157ljy.85.1590942962581;
 Sun, 31 May 2020 09:36:02 -0700 (PDT)
MIME-Version: 1.0
References: <1590923725.222022924@f462.i.mail.ru>
In-Reply-To: <1590923725.222022924@f462.i.mail.ru>
From: "Sergei Nikulov" <sergey.nikulov@gmail.com>
Date: Sun, 31 May 2020 19:35:50 +0300
Message-ID: <CAE7Ac0C-=dh6dWpcaCa2AQy_-=fxwOwWUfPpz9xENei7=ey7pQ@mail.gmail.com>
Subject: Re: [yocto] Can I build Yocto Arm Image without QEMU?
To: reffum@bk.ru
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000024854d05a6f44684"

--00000000000024854d05a6f44684
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=B2=D1=81, 31 =D0=BC=D0=B0=D1=8F 2020 =D0=B3., 14:15 =D0=9E=D0=BB=D0=B5=
=D0=B3 =D0=93=D0=B0=D0=B2=D1=80=D0=B8=D0=BB=D1=8C=D1=87=D0=B5=D0=BD=D0=BA=
=D0=BE via lists.yoctoproject.org
<reffum=3Dbk.ru@lists.yoctoproject.org>:

> Hello!
> Sorry for my English. My first language is Russian.
> I have a question about build yocto image. Can I build image without bui=
ld
> any QEMU packages? And how can I do it?
>

Yes, you can.
Check MACHINE variable in documentation.
You should set it to specific HW you're using.

I do not neet QEMU, I run Linux only in hardware.
> Thank you for answers.
>
>
> ------------------------------
>=20
>

--00000000000024854d05a6f44684
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">=D0=B2=D1=81, 31 =D0=BC=D0=B0=D1=8F 2020 =D0=B3., 14:1=
5 =D0=9E=D0=BB=D0=B5=D0=B3 =D0=93=D0=B0=D0=B2=D1=80=D0=B8=D0=BB=D1=8C=D1=87=
=
=D0=B5=D0=BD=D0=BA=D0=BE via <a href=3D"http://lists.yoctoproject.org">lis=
ts.yoctoproject.org</a> &lt;reffum=3D<a href=3D"mailto:bk.ru@lists.yoctopro=
ject.org">bk.ru@lists.yoctoproject.org</a>&gt;:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
<div><div><div>Hello!</div><div>Sorry for my English. My first language is=
 Russian.</div><div>I have a question about build yocto image. Can I build =
image without build any=C2=A0QEMU packages? And how can I do it?</div></div=
></div></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">Yes, you can.</div><div dir=3D"auto">Check=C2=A0MACHINE variable in docu=
mentation.</div><div dir=3D"auto">You should set it to specific HW you&#39;=
re using.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"=
gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div><div><div>I do not neet QE=
MU, I run Linux only in hardware.</div><div>Thank you for answers.</div></d=
iv><div>=C2=A0</div><div>=C2=A0<hr></div></div>
<br>
</blockquote></div></div></div>

--00000000000024854d05a6f44684--
