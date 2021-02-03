Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web08.220.1612371451690964647
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Feb 2021 08:57:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CW6Y9G7g;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: salerio@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id s11so418727edd.5
        for <yocto@lists.yoctoproject.org>; Wed, 03 Feb 2021 08:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UHK+0t38jdhmf+0utnI9ne2z37Y13yZEuVFpPQ/xvMo=;
        b=CW6Y9G7gqRicoopW2a8mDJrjWSpR0+2Z5nCvAl9jIEvAwjXmnIzlDUHVxAj1limO5r
         4Ow4hg1vF5dx1U3tuW2FNlfbCNC0OBb87oHtnk5zVEgnWu9G2u7jTVW6zmvfNABBLN1J
         eWRuH3MwOkOKUwAb6zJGJQsgQrO/LvEb9yPETCiz++WGWpf4iFIhJE0NbGmlAaipsJID
         /ymM7f5jQZXx2HJ293LMk0GpfQWgA7v7+9IEPb/PLO2YegCAXEEfeYtxOno1cuqodSRe
         4flJkaSn8uxWirDU7ZUPDRMrrB+vQBMpdjELYtwxij7k3foXAsLidKW2jVlxeabhBjxM
         Ku2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UHK+0t38jdhmf+0utnI9ne2z37Y13yZEuVFpPQ/xvMo=;
        b=DuqmzLTKtUIyS5rnY3XrIFaEljLbm1iSovERaL31RsG2WP+merYsxFQRv3ZRK7iFoc
         LVsORDGNcBP76aNUftXi24Cu6ecjliR8JLZ4gn2Q6xVc+Y0cJjU9OBA2HQaPgx8yTdHG
         t8IFWCi4gDUB5VlzMl2KrkXYeVH2Rpi9Dlh6C70BjRmdbz2IyB8QnS2UBv6EpVA+u02e
         nAQfiQgLNFy7LHweRArn8GrV1zFQpnkOZxtrrwQSJqC7aHlRXVOe4NTnoJ1IdxuSCXF6
         i65FWBt0eEkVleIqOh4bWoYNknnA+MZ5HUfumk/Si7tqxEyfNYTQYQEBJ0GGDpoRUOrY
         wnbw==
X-Gm-Message-State: AOAM531u49bpFMWIBZIzJBjFcDz6af2WltAtY/YN3SlOxaozZMW0XT+n
	AN4dEGo/lJwr4ro5Pfb/Ap9WMCbM77CX2XmxHOc=
X-Google-Smtp-Source: ABdhPJyVs4S9k6cFWOLh/KgPI7zT9NV8SkZSF/dlnRnbh9Q9TLkjH63KX/L0UiqeXqPmqSnAX8iUay5G3/D61WO1JNM=
X-Received: by 2002:a05:6402:b6f:: with SMTP id cb15mr3837741edb.277.1612371450221;
 Wed, 03 Feb 2021 08:57:30 -0800 (PST)
MIME-Version: 1.0
References: <CAOx=Z6HG7nG4eC0mU=iDvkz=jtOp_OCeDmacAvF69=X_FqMZfg@mail.gmail.com>
 <CANx9H-DvpKkPpQnMMnFBSnVEvFXiWMHOmxT1iaCUeigp51yTmA@mail.gmail.com>
 <CAAnfSTuyR1bE0jaPdNSp6g0u7dRfKtRHr2gnd0ZgLNyQjdu8zQ@mail.gmail.com> <CAMKF1spLVE8D=wmcK9+7P=Qq0P-M5Kzz4dXmVuzUmXSK5NFBMA@mail.gmail.com>
In-Reply-To: <CAMKF1spLVE8D=wmcK9+7P=Qq0P-M5Kzz4dXmVuzUmXSK5NFBMA@mail.gmail.com>
From: "Peter Smith" <salerio@gmail.com>
Date: Wed, 3 Feb 2021 16:57:19 +0000
Message-ID: <CAOx=Z6FjmLmUyeNR68AY6x+F=FnssHogPKd=Uqb2Thrr7E1MsA@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr] bitbake zephyr-helloworld configure failure
To: Khem Raj <raj.khem@gmail.com>
Cc: Ross Burton <ross@burtonini.com>, Tim Orling <ticotimo@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000089555605ba717b13"

--00000000000089555605ba717b13
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thx

On Tue, 2 Feb 2021 at 18:20, Khem Raj <raj.khem@gmail.com> wrote:

> The mentioned patches are in master-next, please use it from there for
> now until its applied to master which might be in couple of days.
>
> On Tue, Feb 2, 2021 at 2:30 AM Ross Burton <ross@burtonini.com> wrote:
> >
> > I sent a patch to meta-oe yesterday: there was a missing dependency in
> > python3-kwalify and missing class extend in the ruamel recipe.
> >
> > Ross
> >
> > On Thu, 28 Jan 2021 at 05:49, Tim Orling <ticotimo@gmail.com> wrote:
> > >
> > >
> > >
> > > On Wed, Jan 27, 2021 at 12:51 AM Peter Smith <salerio@gmail.com>
> wrote:
> > >>
> > >> Using master branch
> > >>
> > >> MACHINE=3D96b_nitrogen bitbake zephyr-helloworld creates a configur=
e
> error due to a failure for native python to import ruamel.
> > >>
> > >> I fixed this temporarily by creating a python3-ruamel-yaml_%.bbappe=
nd
> that includes the required BBEXTEND and adding python3-ruamel-yaml-nativ=
e
> to zephyr-kernel-common.inc.
> > >>
> > >> I don't know (not enough experience) if this is actually a problem =
in
> the meta-openembedded recipe or meta-zephyr?
> > >
> > >
> > >
> > > BBEXTEND =3D =E2=80=9Cnative=E2=80=9D is a perfectly fine patch to s=
ubmit to
> meta-python. We tend to only make those changes when needed (as in your =
use
> case) rather than universally. Please submit a patch :)
> > >>
> > >>
> > >> Best Regards
> > >> Peter
> > >>
> > >>
> > >>
> > >
> > >
> > >
> >
> >=20
> >
>
--=20
Best Regards
Peter

--00000000000089555605ba717b13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thx</div><div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, 2 Feb 2021 at 18:20, Khem Raj &lt;<a href=
=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:r=
gb(204,204,204)">The mentioned patches are in master-next, please use it fr=
om there for<br>
now until its applied to master which might be in couple of days.<br>
<br>
On Tue, Feb 2, 2021 at 2:30 AM Ross Burton &lt;<a href=3D"mailto:ross@burt=
onini.com" target=3D"_blank">ross@burtonini.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I sent a patch to meta-oe yesterday: there was a missing dependency i=
n<br>
&gt; python3-kwalify and missing class extend in the ruamel recipe.<br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt; On Thu, 28 Jan 2021 at 05:49, Tim Orling &lt;<a href=3D"mailto:ticoti=
mo@gmail.com" target=3D"_blank">ticotimo@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On Wed, Jan 27, 2021 at 12:51 AM Peter Smith &lt;<a href=3D"mail=
to:salerio@gmail.com" target=3D"_blank">salerio@gmail.com</a>&gt; wrote:<br=
>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Using master branch<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; MACHINE=3D96b_nitrogen bitbake zephyr-helloworld creates a c=
onfigure error due to a failure for native python to import ruamel.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I fixed this temporarily by creating a python3-ruamel-yaml_%=
.bbappend that includes the required BBEXTEND and adding python3-ruamel-yam=
l-native to zephyr-kernel-common.inc.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I don&#39;t know (not enough experience) if this is actually=
 a problem in the meta-openembedded recipe or meta-zephyr?<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; BBEXTEND =3D =E2=80=9Cnative=E2=80=9D is a perfectly fine patch =
to submit to meta-python. We tend to only make those changes when needed (a=
s in your use case) rather than universally. Please submit a patch :)<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Best Regards<br>
&gt; &gt;&gt; Peter<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Best Regards<div>Peter=
</div></div></div>

--00000000000089555605ba717b13--
