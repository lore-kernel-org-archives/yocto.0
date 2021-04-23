Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web10.5963.1619158385689743836
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 23:13:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@apide.com header.s=google header.b=jdH0HdhI;
 spf=pass (domain: apide.com, ip: 209.85.160.178, mailfrom: morten.bruun@apide.com)
Received: by mail-qt1-f178.google.com with SMTP id a18so11922950qtj.10
        for <yocto@lists.yoctoproject.org>; Thu, 22 Apr 2021 23:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apide.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Zi43tzknSy627xMufhbUNUUe/Wz+Wkz6BtHWueAiupE=;
        b=jdH0HdhIKxsfimq524hLVkz0cmImv7hRXm0q92beTUGjVffTogJh6zyLQuwOxnVWza
         0AH6FwM7+OfanzR/qCJqhxViU+D8WSq698snFDLQoZCR1Od4gZ3BLjtJFEsPWluO4jIg
         9BNAhXte4h5MhW0LeC+OGaL8fkmsL7FcFF40w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Zi43tzknSy627xMufhbUNUUe/Wz+Wkz6BtHWueAiupE=;
        b=Ho81b+Mqz8rXH/IDyUzo18RKGFnA4M41TuDWl6AZQjBKAguKOoMSBF4mRJv1u3mt13
         9e2xORxbX+qDX3sVtTs/MJtmG1H7HDfnsGQ1QVUchz4MsKycAo2x2l0qttzdSGmScxOL
         YwCaEZPldpT3DQRu5kwC+u9pQJOf+EOU+MjYtBC8Sxz4FE75VS1gbvQ98pXw/uw+clil
         WR6Hksi86ldjLI9y3076AHZ+2ZoPRT7n6bP4/0nc81CKxngRg8wt9j5U4TqfwJsE67uJ
         Wn/w4QTbz9c+STqE+/ls2pUh+7zvy8KdUH2WKE2pWqrreDfae/xNJ399teHQeFM4OirF
         ovLw==
X-Gm-Message-State: AOAM530NPHToz3ZvUBB2Vp0lnzc6NiO6gxnQ9Oq+TOWfiu6eIQN21VCl
	wYC3zbcarIpZRBhTilG4r3zsca6+kr5RTAUSwf5nIQ==
X-Google-Smtp-Source: ABdhPJxwknVyLf/do03+Ef89p4VrNpCe1eqqlELRmL7Oasxhxr2ifOhCeNKUnJVl5XLzO/5vEUXyl1tcEounnCthvAA=
X-Received: by 2002:ac8:5517:: with SMTP id j23mr2240818qtq.148.1619158384824;
 Thu, 22 Apr 2021 23:13:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAMrUZLiOVUDxXUXytS4BRmkb+xK7M03i2fE0hoUOW6SEeP7Y8w@mail.gmail.com>
 <CAMKF1srY4H8r7damyEMnUmNumVD3HEPh8DwRHBsYCnSDT6ij2A@mail.gmail.com>
 <CAMrUZLjApKadn5CcadKmXhrYk2UENEMMFmxvD2ji3-Xf56mNXA@mail.gmail.com> <CAMKF1srE3B+9P5WQWaBKx1AfUgqPYGS2WWH=bLgZ-sCvC8DRZQ@mail.gmail.com>
In-Reply-To: <CAMKF1srE3B+9P5WQWaBKx1AfUgqPYGS2WWH=bLgZ-sCvC8DRZQ@mail.gmail.com>
From: "Morten Bruun" <morten.bruun@apide.com>
Date: Fri, 23 Apr 2021 08:12:53 +0200
Message-ID: <CAMrUZLicdh=eKZcDMMMEy10zevXp7ZQfv4P-qsLH1hEukKqo8Q@mail.gmail.com>
Subject: Re: [yocto] Problems building hardknott for raspberri pi
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005cdb7c05c09db00b"

--0000000000005cdb7c05c09db00b
Content-Type: text/plain; charset="UTF-8"

On Fri, Apr 23, 2021 at 8:03 AM Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Apr 22, 2021 at 10:54 PM Morten Bruun <morten.bruun@apide.com>
> wrote:
> >
> > On Fri, Apr 23, 2021 at 7:30 AM Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> On Thu, Apr 22, 2021 at 10:22 PM Morten Bruun <morten.bruun@apide.com>
> wrote:
> >> >
> >> > I'm upgrading to hardknott. The meta-raspberry layer does not have a
> hardknott branch, so I'm building with the master branch.
> >> >
> >>
> >> I think meta-raspberrypi should branch before mesa-gl restructuring
> >> initiated changes in meta-raspberrypi can you try with
> >> meta-raspberrypi master@d1f191ed3018e0b130311e443f014e30d2f5ed97
> >> and see if it works
> >>
> > Thanks for your quick reply. I tried to build with
> d1f191ed3018e0b130311e443f014e30d2f5ed97 which gives me this error instead:
> >
>
> never mind, I think we perhaps have is broken on master too. Are you
> using DISABLE_VC4GRAPHICS = "1" ?
>
>
No, I'm not using DISABLE_VC4GRAPHICS - should I?

/Morten

--0000000000005cdb7c05c09db00b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:arial,helvetica,sans-serif"><span style=3D"font-family:Arial,Helve=
tica,sans-serif">On Fri, Apr 23, 2021 at 8:03 AM Khem Raj &lt;<a href=3D"ma=
ilto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:</span><br></div>=
</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">On Thu, Apr 22, 2021 at 10:54 PM Morten Bruun &lt;<a href=3D"mailto=
:morten.bruun@apide.com" target=3D"_blank">morten.bruun@apide.com</a>&gt; w=
rote:<br>
&gt;<br>
&gt; On Fri, Apr 23, 2021 at 7:30 AM Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Apr 22, 2021 at 10:22 PM Morten Bruun &lt;<a href=3D"mailt=
o:morten.bruun@apide.com" target=3D"_blank">morten.bruun@apide.com</a>&gt; =
wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I&#39;m upgrading to hardknott. The meta-raspberry layer does=
 not have a hardknott branch, so I&#39;m building with the master branch.<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; I think meta-raspberrypi should branch before mesa-gl restructurin=
g<br>
&gt;&gt; initiated changes in meta-raspberrypi can you try with<br>
&gt;&gt; meta-raspberrypi master@d1f191ed3018e0b130311e443f014e30d2f5ed97<b=
r>
&gt;&gt; and see if it works<br>
&gt;&gt;<br>
&gt; Thanks for your quick reply. I tried to build with d1f191ed3018e0b1303=
11e443f014e30d2f5ed97 which gives me this error instead:<br>
&gt;<br>
<br>
never mind, I think we perhaps have is broken on master too. Are you<br>
using DISABLE_VC4GRAPHICS =3D &quot;1&quot; ?<br>
<br></blockquote><div><br></div><div class=3D"gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif">No, I&#39;m not using DISABLE_VC4GRAPHIC=
S - should I?<br></div><div class=3D"gmail_default" style=3D"font-family:ar=
ial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:arial,helvetica,sans-serif">/Morten</div></div></div>

--0000000000005cdb7c05c09db00b--
