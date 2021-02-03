Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web09.4749.1612325294396812858
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 20:08:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bSxvedDO;
 spf=pass (domain: gmail.com, ip: 209.85.166.49, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-io1-f49.google.com with SMTP id u8so18715843ior.13
        for <yocto@lists.yoctoproject.org>; Tue, 02 Feb 2021 20:08:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=65LM1q0PdbfdLKsPigW4q6RE7bgsZQ0s6aWpGHXSIbE=;
        b=bSxvedDOKllQASu130NXSio0cXBjkwDCP0hoBNueQnPltg6VZXB8dUyMqw3Vybpj/q
         KUOWBn8zH7YiCncGoKj8DqQSEKW6Ooom4AXrL8toVGfs5a31izzxQIO0Dt3NJAqZpOrN
         TZKaRcRBisDnevwzGLd2aDX15z9/7mKwuZ9OSKZIF/R0AhlM01ZRWMR0mjRP8Gaz4Tl2
         UV0xyEgLvHTBYPijAGTiFFaj8z7crapjOX+RdEmAkhbxvh6rphrV09qDDWaaWyb0cMw1
         UNQsF+ovKelwUbxIuz+4CgYEpTRGrUfsQ8H6ORXt4Bx0CPG/SvfNjGBwV/yVmwyqtSx9
         fSCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=65LM1q0PdbfdLKsPigW4q6RE7bgsZQ0s6aWpGHXSIbE=;
        b=pemAYMpoyoU11GXF72depzGLlofhi5j2PCppQkofTORrj6c+77pWkLLwG5lteMbSpm
         O+Co4llV/b+0NFriIYjeA7oeIzv8PmykoJkbVHLHO8O1ZPW4euWzuyqdtvnUwtDbqROy
         HrTvyMIrUlUsPWGuQ0RU2IV61hSrHKr3MHBp7GPy54suq5g2/KMt7YifHu/peCpYscCQ
         QD0p8eKRmEIX2FSotML/5tsUburOJEwKbvyCG44d7krXHxkSzR57McdfxeN6z5tOcomP
         uNjNqEeuVv8WmN9ezuT6GuodN1TdC1qFdlLYZCkWafshJsFVmTMo3a65wJaoTNksUA9Z
         NJEQ==
X-Gm-Message-State: AOAM532mzNk/NKm1VlWPTdr18dPBXzgAGz/4Y6Ms4N3T/pvo54uoq5xT
	T5+MzfpFeNdNVUTCY9qi67x/gEVh1Fa1ij1J5Gk=
X-Google-Smtp-Source: ABdhPJyIMLHE19Ppa1/ZWIz84QKy9QoZ6OtajDVciWViwEmasE+vycX40q98BgEOVi9eIB76rEOn5ctroemjYwZYn8Q=
X-Received: by 2002:a5e:8904:: with SMTP id k4mr1042506ioj.2.1612325293691;
 Tue, 02 Feb 2021 20:08:13 -0800 (PST)
MIME-Version: 1.0
References: <CACX=-dV8QYoF1i7kq_scLejiQfEfpGBoNz5vNj4op1_dMSxoAw@mail.gmail.com>
 <CAMKF1sq8nK+vq8339h3F_Os2DoCaVRRzEk2L-wifSqOJ=hN2kg@mail.gmail.com>
In-Reply-To: <CAMKF1sq8nK+vq8339h3F_Os2DoCaVRRzEk2L-wifSqOJ=hN2kg@mail.gmail.com>
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Wed, 3 Feb 2021 09:38:05 +0530
Message-ID: <CACX=-dXWJeD17ME4sO5dja6yR4MTXpz23kc+T85BcCV8VMPxCg@mail.gmail.com>
Subject: Re: [yocto] Regarding YOCTO
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000064996605ba66bcce"

--00000000000064996605ba66bcce
Content-Type: text/plain; charset="UTF-8"

Hello Raj,

         Actually i want to customize the browser,using the above browser
we cannot customize it. I want to build a browser in the QT creator and
then embed the browser(after customizing) in the core-image-sato. Pls help
me out.

On Wed, Feb 3, 2021 at 9:13 AM Khem Raj <raj.khem@gmail.com> wrote:

> Look at something like
>
> https://github.com/meta-qt5/meta-qt5/tree/master/recipes-qt/qt-kiosk-browser
>
> On Sat, Jan 30, 2021 at 8:13 PM U RAVI KUMAR <uppadaravi2511@gmail.com>
> wrote:
> >
> > Hello folks,
> >
> >  I want to build a qtweb browser using the QT creator, And embed the
> browser in  the core-image-sato.Can anyone pls suggest to me is it possible
> to do that. If yes pls guide me.
> >
> > Thanks,
> > RAVI_UPPADA
> >
> > 
> >
>

--00000000000064996605ba66bcce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Raj,<div><br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0Actually i want to customize the browser,using the above browser we =
cannot customize it. I want to build a browser in the QT creator and then e=
mbed the browser(after customizing) in the core-image-sato. Pls help me out=
.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Feb 3, 2021 at 9:13 AM Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Look at something like<br>
<a href=3D"https://github.com/meta-qt5/meta-qt5/tree/master/recipes-qt/qt-=
kiosk-browser" rel=3D"noreferrer" target=3D"_blank">https://github.com/meta=
-qt5/meta-qt5/tree/master/recipes-qt/qt-kiosk-browser</a><br>
<br>
On Sat, Jan 30, 2021 at 8:13 PM U RAVI KUMAR &lt;<a href=3D"mailto:uppadar=
avi2511@gmail.com" target=3D"_blank">uppadaravi2511@gmail.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; Hello folks,<br>
&gt;<br>
&gt;=C2=A0 I want to build a qtweb browser using the QT creator, And embed=
 the browser in=C2=A0 the core-image-sato.Can anyone pls suggest to me is i=
t possible to do that. If yes pls guide me.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; RAVI_UPPADA<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div>

--00000000000064996605ba66bcce--
