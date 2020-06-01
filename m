Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.45903.1591040340410859690
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jun 2020 12:39:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@taqtiqa.com header.s=google header.b=PpcYYZKz;
 spf=none, err=SPF record not found (domain: taqtiqa.com, ip: 209.85.208.170, mailfrom: mark@taqtiqa.com)
Received: by mail-lj1-f170.google.com with SMTP id s1so9671786ljo.0
        for <yocto@lists.yoctoproject.org>; Mon, 01 Jun 2020 12:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=taqtiqa.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OKSyHfx26+vTybL99tK73sQcpe/Y+/QSGxCcg9vPhRw=;
        b=PpcYYZKzmZKDf1HEX+EOOeUw3MtGqeGrK2wkdja6I4wGQvIYDBkf16KbPF/hTsZF/2
         uMJqQsZWHAWfMj9s02A/xQR2JBP2OAc+zUc4CwnUMJm9Xk8gpMh6K3KtVGIR2YVRGC6p
         cskNopaB9QRTPjgNM1u+DNmo26qPfb3/meEvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OKSyHfx26+vTybL99tK73sQcpe/Y+/QSGxCcg9vPhRw=;
        b=MTLQKfMm+SBD06TPsKSIkny6l3VnC3PXvANMcEwakC+nbcCSvTZSMKhoxnBJQ9lffG
         5AA6XHP2K3hirNj5YOXC1bvJcbTyQHFO7Uwu1dRd2GvO0kezDyUKvxenAPMdxGNU7xiv
         LutMwbte10gbfsJ5Vhzb/nKPjn8qQmxaaT1qmmqtFapwGQM4tcdIpjU3hFQouIS6K2lG
         gFOb9kJwjjSWUYMuvqyJhu0uCHo+VKo0zkdcrXbNvuPGelZ5Cpr/GL+37gkGn637Jls5
         8mHsriJoainmvbA5xIMFvZHJ1jEUIc05vz/XxcozaaVlZh3n9mrixUcBmNNEqg+m/yp0
         BBlA==
X-Gm-Message-State: AOAM531/NAchYgWEFOV3lekg1z+wG11azkPWVElBHPELfWBb5b/EQ283
	6kCwx9yRxwoKic4xlJwG+D8in/GPmd81/W88VjdxYA==
X-Google-Smtp-Source: ABdhPJwgBX2Wl/lSqXseUCw1eJXtJp4OyuMplB2HNz4Oeiwv1NnVKAx6aeCJFmLWD731kvV07E6mEitIt6qmL/gl/Mc=
X-Received: by 2002:a2e:b051:: with SMTP id d17mr10492218ljl.254.1591040338389;
 Mon, 01 Jun 2020 12:38:58 -0700 (PDT)
MIME-Version: 1.0
References: <1590923725.222022924@f462.i.mail.ru> <CAE7Ac0C-=dh6dWpcaCa2AQy_-=fxwOwWUfPpz9xENei7=ey7pQ@mail.gmail.com>
In-Reply-To: <CAE7Ac0C-=dh6dWpcaCa2AQy_-=fxwOwWUfPpz9xENei7=ey7pQ@mail.gmail.com>
From: "Mark Van De Vyver" <mark@taqtiqa.com>
Date: Tue, 2 Jun 2020 05:38:21 +1000
Message-ID: <CAHnt5HiqNjoS-xy8HYP_xo18HBc6TXOiHP6Vs4==+PPMYQjUjQ@mail.gmail.com>
Subject: Re: [yocto] Can I build Yocto Arm Image without QEMU?
To: Sergei Nikulov <sergey.nikulov@gmail.com>
Cc: reffum@bk.ru, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000318a5005a70af248"

--000000000000318a5005a70af248
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 1, 2020 at 2:36 AM Sergei Nikulov <sergey.nikulov@gmail.com>
wrote:

>
>
> =D0=B2=D1=81, 31 =D0=BC=D0=B0=D1=8F 2020 =D0=B3., 14:15 =D0=9E=D0=BB=D0=
=B5=D0=B3 =D0=93=D0=B0=D0=B2=D1=80=D0=B8=D0=BB=D1=8C=D1=87=D0=B5=D0=BD=D0=
=BA=D0=BE via lists.yoctoproject.org
> <reffum=3Dbk.ru@lists.yoctoproject.org>:
>
>> Hello!
>> Sorry for my English. My first language is Russian.
>> I have a question about build yocto image. Can I build image without
>> build any QEMU packages? And how can I do it?
>>
>
> Yes, you can.
> Check MACHINE variable in documentation.
>

HTH:

https://www.yoctoproject.org/docs/3.1/ref-manual/ref-manual.html#var-MACHI=
NE

You should set it to specific HW you're using.
>

> I do not neet QEMU, I run Linux only in hardware.
>> Thank you for answers.
>>
>>
>> ------------------------------
>>
>>=20
>

--000000000000318a5005a70af248
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Mon, Jun 1, 2020 at 2:36 AM Sergei Nikulov &lt;<a href=
=3D"mailto:sergey.nikulov@gmail.com">sergey.nikulov@gmail.com</a>&gt; wrot=
e:<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=81, 31 =D0=BC=D0=B0=D1=8F 2020 =D0=
=
=B3., 14:15 =D0=9E=D0=BB=D0=B5=D0=B3 =D0=93=D0=B0=D0=B2=D1=80=D0=B8=D0=BB=
=D1=8C=D1=87=D0=B5=D0=BD=D0=BA=D0=BE via <a href=3D"http://lists.yoctoproj=
ect.org" target=3D"_blank">lists.yoctoproject.org</a> &lt;reffum=3D<a href=
=3D"mailto:bk.ru@lists.yoctoproject.org" target=3D"_blank">bk.ru@lists.yoc=
toproject.org</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
<div><div><div>Hello!</div><div>Sorry for my English. My first language is=
 Russian.</div><div>I have a question about build yocto image. Can I build =
image without build any=C2=A0QEMU packages? And how can I do it?</div></div=
></div></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">Yes, you can.</div><div dir=3D"auto">Check=C2=A0MACHINE variable in docu=
mentation.</div></div></blockquote><div><br></div><div>HTH: <br></div><div>=
<br></div><div><a href=3D"https://www.yoctoproject.org/docs/3.1/ref-manual/=
ref-manual.html#var-MACHINE">https://www.yoctoproject.org/docs/3.1/ref-manu=
al/ref-manual.html#var-MACHINE</a></div><div> <br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"auto">You s=
hould set it to specific HW you&#39;re using.</div></div></blockquote><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"=
auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div><div><div>I do not neet QEMU, I ru=
n Linux only in hardware.</div><div>Thank you for answers.</div></div><div>=
=
=C2=A0</div><div>=C2=A0<hr></div></div>
<br>
</blockquote></div></div></div>
<br>
</blockquote></div></div>

--000000000000318a5005a70af248--
