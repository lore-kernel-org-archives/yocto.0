Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web09.7891.1622206944321825656
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 06:02:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=P0xhNYZj;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: sayinswapna@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id b18so1104987lfv.11
        for <yocto@lists.yoctoproject.org>; Fri, 28 May 2021 06:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=reSZmA/EDSKoErPzNU1EZDTGMzZxBcW5seknd2MHATs=;
        b=P0xhNYZj1G4+IPgwXJHWWrqoNrof3+t8MRBHwZD+LXK8bmVI5ViR58wnT9kZYRGLdn
         FhUE0+UhWHtY3/TWT4R49fUoZIBj5ByFFYrAC44E/lWBShCBTl1lnuR0LPxdA+iQ/xaC
         7bw40y+nHi20GT14t/hcwX9SJqi8lrArxseUNxTLzhK3AecY3svb5kBNJYdglDGmExm9
         S3yXbAx915jz+6+tnzPeXbbqqAcXqC2n3QxwMHtcs04IRNVOama8UC3ko0L8wFe7X0yB
         iVdk4Yi/X1mmLmI7+zGDqJPSk5OrPSDvsPWWB6iB8++1w/LC2OfC+fsEFr7WMyxM5UwU
         Yfzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=reSZmA/EDSKoErPzNU1EZDTGMzZxBcW5seknd2MHATs=;
        b=GNm970Yq0QiiwNtrCbuKYQzpidP+SyHt9gHQrltySaQhV/wshY7gbZR4zH6tnLuRIY
         pDNtSDAEeFYI7s60ftp4RtBG3ixuyo/Mqkukefyu/He2GSnoSyFhrB4nB4UClPxfjzSr
         KATDCmxQpxpegKraa1zCZnCf4JLPREDrhfwaZdsrI2zs8GgehIrZkYPdM6Fh25ed6KBV
         6R5B0mX3UARUmMSenJerOGzyfyIkK7eGxDmYRf3PQplFwz5kiVL7NYXU+N1wpcRTjvkd
         ekHrLPNUWsc5NHBdyYk5SaayTjh5TAPJC742tBBfcLtdUnrpuEACQ+9SQzve6743iNJk
         CeAA==
X-Gm-Message-State: AOAM5307fEKSLdjSd04XrSjQx+wsos9LMc/gqiuwHwJjOABTzpLkwCJO
	X5m+oySk/x+1LTdhmKlbuNFNMyB01b/EMYFtWbs=
X-Google-Smtp-Source: ABdhPJw3sVnaRnu2Hi4rgy1F38uPHQtQV7g1ynJg+fEaAaQ4SWB8y10vJ6uZ0A8GK8J7NIFnvbP7Y4XRNcVh5g/2EVw=
X-Received: by 2002:a05:6512:374c:: with SMTP id a12mr5903442lfs.420.1622206942201;
 Fri, 28 May 2021 06:02:22 -0700 (PDT)
MIME-Version: 1.0
References: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org>
 <7642946a-9a4b-2799-9db2-1187822ffbcf@gmail.com> <CAHUEwNZPjwy93VOvRLK5DA=pQRyFSK5TA32h_uZgzwdKyQFagQ@mail.gmail.com>
 <CAGAf8Lx_MxnDMVWspVDShzq8uLCtxcSAGqZZoT0Vdsh8YT8cRw@mail.gmail.com>
 <bb2c2342-d737-84dd-6f43-c4c515fedf23@crashcourse.ca> <CAGAf8Lwsnn36EbURP_UKi=x6z1N-by+FBvTjOzr1SL3D5eq1kw@mail.gmail.com>
In-Reply-To: <CAGAf8Lwsnn36EbURP_UKi=x6z1N-by+FBvTjOzr1SL3D5eq1kw@mail.gmail.com>
From: "Swapna Nannapaneni" <sayinswapna@gmail.com>
Date: Fri, 28 May 2021 09:02:10 -0400
Message-ID: <CAHUEwNYCxdMWHzyec6TWOGcLWMA=Fyv1g6QErbxcxRj=UHkSmA@mail.gmail.com>
Subject: Re: [yocto] How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: "Robert P. J. Day" <rpjday@crashcourse.ca>, Khem Raj <raj.khem@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008ace7e05c3637ca8"

--0000000000008ace7e05c3637ca8
Content-Type: text/plain; charset="UTF-8"

Typo. No leading space  INIT_MANAGER = "sysvinit".

Thanks,
Priya.

On Fri, May 28, 2021 at 8:55 AM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > you don't want the leading space.
>
> I got the idea from reading
>
> https://docs.yoctoproject.org/ref-manual/migration-3.0.html?highlight=init_manager#init-system-selection
>
> But this is exactly why we need some explicit examples. :-)
>
> Zee
> _______
>
> On Fri, May 28, 2021 at 2:45 PM Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> >
> > On Fri, 28 May 2021, Zoran wrote:
> >
> > > > Tried setting  INIT_MANAGER  = " sysvinit" in build/conf/local.conf
> > >
> > > Is it INIT_MANAGER  = " sysvinit" , or INIT_MANAGER  = "sysvinit" (no
> > > blank at the beginning)?
> > >
> > > Thank you,
> > > Zee
> >
> >   you don't want the leading space.
> >
> > rday
>

--0000000000008ace7e05c3637ca8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Typo. No leading space=C2=A0 I<span style=3D"color:rgb(85,=
85,85);letter-spacing:0.2px;white-space:nowrap">NIT_MANAGER =3D &quot;sysvi=
nit&quot;.</span><div><div><br></div><div>Thanks,</div><div>Priya.</div></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Fri, May 28, 2021 at 8:55 AM Zoran Stojsavljevic &lt;<a href=3D"mailt=
o:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; you don&=
#39;t want the leading space.<br>
<br>
I got the idea from reading<br>
<a href=3D"https://docs.yoctoproject.org/ref-manual/migration-3.0.html?high=
light=3Dinit_manager#init-system-selection" rel=3D"noreferrer" target=3D"_b=
lank">https://docs.yoctoproject.org/ref-manual/migration-3.0.html?highlight=
=3Dinit_manager#init-system-selection</a><br>
<br>
But this is exactly why we need some explicit examples. :-)<br>
<br>
Zee<br>
_______<br>
<br>
On Fri, May 28, 2021 at 2:45 PM Robert P. J. Day &lt;<a href=3D"mailto:rpjd=
ay@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt; wrote:<b=
r>
&gt;<br>
&gt; On Fri, 28 May 2021, Zoran wrote:<br>
&gt;<br>
&gt; &gt; &gt; Tried setting=C2=A0 INIT_MANAGER=C2=A0 =3D &quot; sysvinit&q=
uot; in build/conf/local.conf<br>
&gt; &gt;<br>
&gt; &gt; Is it INIT_MANAGER=C2=A0 =3D &quot; sysvinit&quot; , or INIT_MANA=
GER=C2=A0 =3D &quot;sysvinit&quot; (no<br>
&gt; &gt; blank at the beginning)?<br>
&gt; &gt;<br>
&gt; &gt; Thank you,<br>
&gt; &gt; Zee<br>
&gt;<br>
&gt;=C2=A0 =C2=A0you don&#39;t want the leading space.<br>
&gt;<br>
&gt; rday<br>
</blockquote></div>

--0000000000008ace7e05c3637ca8--
