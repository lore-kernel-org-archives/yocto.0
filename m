Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web11.3041.1625556322525488428
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Jul 2021 00:25:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=I1yJKQaT;
 spf=pass (domain: gmail.com, ip: 209.85.160.179, mailfrom: thisisaash9698@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id n9so13818528qtk.7
        for <yocto@lists.yoctoproject.org>; Tue, 06 Jul 2021 00:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hDShP02ojFZbz3dEMaLz9XNkOWqPIuQUNJXKt45HJQQ=;
        b=I1yJKQaT79bV0cNerW86tIS2xPyPhS9AcH9WayISoUNEDJTIT+MsbAPFl7voMIsxzy
         1b2CL3AAsq2whYzkPQNYoML6WG7yofiBwG+je4drCi6OIy8C0MLSCB4W9D60Jhre8ibm
         nuer/hnRG1fO19h/nJNBoNYck8xWYnh+Y94Iu23fpjJ3+/0kYG8oWxBiPxLQw3ly2mfx
         Oitkky/rwIIgaqhZRXLuI5IaxEkhLqRMFfizqfjiEQCer7CaUALdY+ONA7kkKMJy7xyG
         Ecp2hDnEFOu86NKbzrDOMTDGP4BH4xF+FFiY2FTlnoeu8/0ZAqh0zOiSEsJ3I2sq5Q58
         26qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hDShP02ojFZbz3dEMaLz9XNkOWqPIuQUNJXKt45HJQQ=;
        b=oag+87OqcqdjHFTBFxdSWrrcdv+Z8hPSZDfCV/mz880oqvcbs18VVedf5u1yqUK3hL
         LKkZf7/z/AJmWM28V8VqGNa4V+yJ6T/H6HyeP7EmKDHrNR61wQY7t7iT/EFKW7x/iwJD
         L9tr72ixETdrIQ6x7d+zQe6+bX4Fwix4F1RmWQ8vGb2hmcmxkPfZQ7mf7DIFaTW3m/TM
         +nHqHCfRI0Cx0Opc4qm5yf0fZTJYwrk63yVlbUG7kFPIGGadWo9n3S3t04iBK0B64/c6
         UMuzUpGeqM0iOiWf5AyeLT2ZBhp3BWEO+/VViZjIcWRxlE/MPLmeCrPnFpsgq2lGbp/4
         Jl7Q==
X-Gm-Message-State: AOAM532IZ/yN5WyfaMSAFI5QUYIkPlbG8is7Gdrg3dD/pzzeQCzZAtLJ
	tTHarv6lmeoHb4T3YxJWDZSrfGqpOiUda2d3lnU=
X-Google-Smtp-Source: ABdhPJxLeoDT+glReYPEaQGzloZtnlMai1eTg6AnDTVN9yQvUvzB4dcdkRvhdUsVuHB81L2ZUNhAOqyhlu3Fl1IItDg=
X-Received: by 2002:ac8:5806:: with SMTP id g6mr16041741qtg.112.1625556321594;
 Tue, 06 Jul 2021 00:25:21 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1Z2LtWAbFAyeXEk=JQUN1D8TFvGzWXfCNeYnHgS1qdFGg@mail.gmail.com>
 <CAAnfSTsEsgc7cAdikFhiZFZDfCX6HZ0mfq49yrrTcgYBS2sC2A@mail.gmail.com>
 <CANVQz1brFG-t4k3HZvWU_d6qp6DM_h3R_23hkME-Fx7i5GWTAQ@mail.gmail.com>
 <CAAnfSTvV1BbXEeM+8HO01ZYR8rhq2AibN1i2LwJzYavSBin1aw@mail.gmail.com> <CAGAf8LyJOS2USVCa06w2TiBpGqbFDB_jqs1G2XC6GUa53VR-Eg@mail.gmail.com>
In-Reply-To: <CAGAf8LyJOS2USVCa06w2TiBpGqbFDB_jqs1G2XC6GUa53VR-Eg@mail.gmail.com>
From: "Aashik Aswin" <thisisaash9698@gmail.com>
Date: Tue, 6 Jul 2021 12:55:10 +0530
Message-ID: <CANVQz1bdiDbbFub78Mqz8QEa848PGdYvPqEm3Rs9OpueEQF77A@mail.gmail.com>
Subject: Re: [yocto] QEMU Size Increase from Yocto Thud to Zeus
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Ross Burton <ross@burtonini.com>, Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001c6f5d05c66f53b4"

--0000000000001c6f5d05c66f53b4
Content-Type: text/plain; charset="UTF-8"

Hello Ross,

Thanks ! I was able to reduce the size of the image by modifying the
QEMU_TARGETS variable.. but on enabling buildhistory and checking under
installed-image-sizes.txt , the individual package size of the qemu remains
the same. Is this correct? If not is there any other optimization that can
be done?

Thanks in advance

Aashik

On Mon, Jun 14, 2021 at 4:23 PM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > Yes, look at the PACKAGECONFIGs and setting QEMU_TARGETS.
>
> Does it mean that with the local.conf line:
>
> # enable,disable,depends,rdepends
> #
> PACKAGECONFIG[qemu] = "--with-qemu,--without-qemu,qemu,"
>
> The QEMU is completely removed (this is all that needs to be done, or...)?
>
> Thank you,
> Zee
> _______
>
> On Mon, Jun 14, 2021 at 12:14 PM Ross Burton <ross@burtonini.com> wrote:
> >
> > Yes, look at the PACKAGECONFIGs and setting QEMU_TARGETS.
> >
> > Ross
> >
> > On Mon, 14 Jun 2021 at 09:04, Aashik Aswin <thisisaash9698@gmail.com>
> wrote:
> > >
> > > Thanks for the clarification, yes I am installing QEMU in my image. Is
> there some way that we can disable the additional architectures and
> streamline the size ?
> > >
> > > Thanks
> > >
> > > On Fri, Jun 11, 2021 at 8:48 PM Ross Burton <ross@burtonini.com>
> wrote:
> > >>
> > >> Are you installing qemu into your image though?
> > >>
> > >> Qemu did get larger as it is built with more architectures enabled,
> > >> but unless you're installing it in your image it won't make a
> > >> difference.
> > >>
> > >> Ross
> > >>
> > >> On Fri, 11 Jun 2021 at 11:40, Aashik Aswin <thisisaash9698@gmail.com>
> wrote:
> > >> >
> > >> > Hi Experts,
> > >> >
> > >> > I am upgrading my Linux from Yocto Thud to Zeus (5.4 Kernel) .
> After building I could see a significant increase in the size of the image.
> > >> > On checking with buildhistory enabled, I could see that qemu has
> nearly doubled in size.
> > >> >
> > >> > Thud (4.19) - 223084  KiB     qemu
> > >> > Zeus (5.4) - 474757  KiB     qemu
> > >> >
> > >> > Is this size increase expected or are there some additional configs
> that might have been added as a part of the upgrade ?
> > >> >
> > >> > Appreciate your help.
> > >> >
> > >> > TIA,
> > >> > Aashik
> > >> >
> > >> >
> > >> >
> >
> > 
> >
>

--0000000000001c6f5d05c66f53b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Ross,<div><br></div><div>Thanks ! I was able to redu=
ce the size of the image by modifying the QEMU_TARGETS variable.. but on en=
abling buildhistory and checking under installed-image-sizes.txt , the indi=
vidual package size of the qemu remains the same. Is this=C2=A0correct? If =
not is there any other optimization that can be done?</div><div><br></div><=
div>Thanks in=C2=A0advance</div><div><br></div><div>Aashik</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun=
 14, 2021 at 4:23 PM Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsa=
vljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">&gt; Yes, look at the PACKA=
GECONFIGs and setting QEMU_TARGETS.<br>
<br>
Does it mean that with the local.conf line:<br>
<br>
# enable,disable,depends,rdepends<br>
#<br>
PACKAGECONFIG[qemu] =3D &quot;--with-qemu,--without-qemu,qemu,&quot;<br>
<br>
The QEMU is completely removed (this is all that needs to be done, or...)?=
<br>
<br>
Thank you,<br>
Zee<br>
_______<br>
<br>
On Mon, Jun 14, 2021 at 12:14 PM Ross Burton &lt;<a href=3D"mailto:ross@bu=
rtonini.com" target=3D"_blank">ross@burtonini.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Yes, look at the PACKAGECONFIGs and setting QEMU_TARGETS.<br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt; On Mon, 14 Jun 2021 at 09:04, Aashik Aswin &lt;<a href=3D"mailto:this=
isaash9698@gmail.com" target=3D"_blank">thisisaash9698@gmail.com</a>&gt; wr=
ote:<br>
&gt; &gt;<br>
&gt; &gt; Thanks for the clarification, yes I am installing QEMU in my ima=
ge. Is there some way that we can disable the additional architectures and =
streamline the size ?<br>
&gt; &gt;<br>
&gt; &gt; Thanks<br>
&gt; &gt;<br>
&gt; &gt; On Fri, Jun 11, 2021 at 8:48 PM Ross Burton &lt;<a href=3D"mailt=
o:ross@burtonini.com" target=3D"_blank">ross@burtonini.com</a>&gt; wrote:<b=
r>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Are you installing qemu into your image though?<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Qemu did get larger as it is built with more architectures e=
nabled,<br>
&gt; &gt;&gt; but unless you&#39;re installing it in your image it won&#39=
;t make a<br>
&gt; &gt;&gt; difference.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Ross<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; On Fri, 11 Jun 2021 at 11:40, Aashik Aswin &lt;<a href=3D"ma=
ilto:thisisaash9698@gmail.com" target=3D"_blank">thisisaash9698@gmail.com</=
a>&gt; wrote:<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Hi Experts,<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; I am upgrading my Linux from Yocto Thud to Zeus (5.4 Ke=
rnel) . After building I could see a significant increase in the size of th=
e image.<br>
&gt; &gt;&gt; &gt; On checking with buildhistory enabled, I could see that=
 qemu has nearly doubled in size.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Thud (4.19) - 223084=C2=A0 KiB=C2=A0 =C2=A0 =C2=A0qemu<=
br>
&gt; &gt;&gt; &gt; Zeus (5.4) - 474757=C2=A0 KiB=C2=A0 =C2=A0 =C2=A0qemu<b=
r>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Is this size increase expected or are there some additi=
onal configs that might have been added as a part of the upgrade ?<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Appreciate your help.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; TIA,<br>
&gt; &gt;&gt; &gt; Aashik<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div>

--0000000000001c6f5d05c66f53b4--
