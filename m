Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
 by mx.groups.io with SMTP id smtpd.web11.7653.1613658539856887142
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 06:29:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pvaOhXXQ;
 spf=pass (domain: gmail.com, ip: 209.85.166.178, mailfrom: maaloulsafouane@gmail.com)
Received: by mail-il1-f178.google.com with SMTP id g9so1622380ilc.3
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 06:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=jrEayCryZpgB7XvwOdSBjb+e2/NJozgSWlClPwDV428=;
        b=pvaOhXXQgi1xrmOcC9xqnuAX6Gv9re4i10AxNk8wuIbYLmb02acYhyj6g212/6aBpo
         laQDu1zAVZRuTncEYyjHCELdWGnk7/NOMkVpZcbwWF9r2l8GxpS8p18OcSJR7g4uTGnp
         yx/B+vZAfLrya6RDp7l/4i8RB2R641D9Ie6cHp/IRqxJ/SAMuVMx3kKg/S2l5tC7+38P
         fr9JcAx0vcFMURN87LxZARn8Pe/viFmV8gVgtoT4NNkhw1cADG+auER4hHCAPK0yR+Rb
         x0Rya4vCB94mEABV5Af7H5JYZlDfrQhAT7VgM/Yl+m0oIpGaOlXWztPAdsKkbHNZg1eW
         0SfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=jrEayCryZpgB7XvwOdSBjb+e2/NJozgSWlClPwDV428=;
        b=D+x1WcISgOXz9V7p11l2qrPpPfUXDqbKxIQXVYk9QJwHWB+unllqjY97DuyOlYxl4c
         vtwziZoL5j1aLJx2Zy5ehFt2EQzZBEkEsPoGGz/kadBQiq1egZzrcAKL5rqbxyWdFiZQ
         aWBB51AZKgXhwGEJf1rVFc+r2ZsIE1STKjVEdE5+8iO93jfCLPhoIvsqERdLy0LBBbUy
         6aQZc42R8p6whcUWSMV2f8HLa2yHZtZbAGGIVN7F/Egvenap68acrx0t9JNUX7K5qVKx
         6SszPqlB9OgXaRH3R1qf06sCS7FmS96iy1xA9nJKXIW6SrzMPPO0DjVbOEM5aSawwdBp
         EwEA==
X-Gm-Message-State: AOAM5334B8fSE6XHTvHdVK1UEspW5D6YuIUz6YF7YO296qwuBmgiTNwo
	hG+BvGZAxju2OHJBjCfp9/zJ7A2H8gAlndAgT6A=
X-Google-Smtp-Source: ABdhPJxdq7LOC00fkF/0IXM9rrIjyUCB9+c+YNC8sjeBukDnmc9Q8IDrfM2j04VlWeUKZ3XgrGBK8ohkCuNn2Ox4sSA=
X-Received: by 2002:a92:c26a:: with SMTP id h10mr4051790ild.234.1613658539000;
 Thu, 18 Feb 2021 06:28:59 -0800 (PST)
MIME-Version: 1.0
References: <OHWd.1613555997180740145.8Ytp@lists.yoctoproject.org>
 <CAGAf8LxoGwaocSUq04jqar4hQH2NiZ2DdumN5dpnQm4dr2wkew@mail.gmail.com>
 <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
 <CAGAf8LyRvfu_iw+BQkiVYUuF6po0d0Pe0xqsVRjG8_bG-u75fA@mail.gmail.com>
 <CAEj=YVLoCXsYPF_ptXLZTDuQi3JLwRZAJNmbrUziUj-Mf8DHfw@mail.gmail.com> <CAGAf8Lzfz7qyNLiPWDwvyj5gGs64pUHMK3uo9daHKC6-jB7toA@mail.gmail.com>
In-Reply-To: <CAGAf8Lzfz7qyNLiPWDwvyj5gGs64pUHMK3uo9daHKC6-jB7toA@mail.gmail.com>
From: "safouane maaloul" <maaloulsafouane@gmail.com>
Date: Thu, 18 Feb 2021 15:28:47 +0100
Message-ID: <CAEj=YVJroNCPYDdfw9BfhMzySWkVaLSnkmqNv6JTMhBv7NCMoQ@mail.gmail.com>
Subject: Re: [yocto] #av1 #armv6 #raspberrypi #neon
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000001873c05bb9d28e5"

--00000000000001873c05bb9d28e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes I will check it. Do you know how to remove callconvention-hard from
TUNE_FEATURES ?

Best regards,

Safouane

Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 14:52, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> a =C3=A9crit :

> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention-hard=
"
>
> Here is an interesting reading for you, for me also:
> https://www.yoctoproject.org/pipermail/meta-xilinx/2015-July/001060.html
>
> What I am getting from this reading is that you need to try with the
> following line:
> TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs"
>
> I guess, YOCTO people have not too much experience with armv6, nor me,
> but this should be (I hope) generic.
>
> Hope this helps.
> Zoran
> _______
>
> On Thu, Feb 18, 2021 at 12:44 PM safouane maaloul
> <maaloulsafouane@gmail.com> wrote:
> >
> > This is my build configuration :
> > Build Configuration:
> > BB_VERSION           =3D "1.46.0"
> > BUILD_SYS            =3D "x86_64-linux"
> > NATIVELSBSTRING      =3D "universal"
> > TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> > MACHINE              =3D "raspberrypi0-wifi"
> > DISTRO               =3D "poky"
> > DISTRO_VERSION       =3D "3.1.5"
> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention-hard=
"
> > TARGET_FPU           =3D "hard"
> > meta
> > meta-poky
> > meta-yocto-bsp       =3D "dunfell:7ea41de13774675828239b7738d3f5d70be8b=
1af"
> > meta-oe
> > meta-multimedia
> > meta-networking
> > meta-python          =3D "dunfell:5bba79488b7d393d2258d6e917f7bf7b0d7c4=
073"
> > meta-raspberrypi     =3D "dunfell:987993209716302eb8f314f69a2a3340555f9=
4d8"
> > meta-gstreamer1.0    =3D "dunfell:b489b1ba084544d9c4c08f7c3b3d1c37ffa53=
c51"
> >
> > Best regards,
> >
> > Safouane
> >
> > Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> a =C3=A9crit :
> >>
> >> So, what is your MACHINE variable set to?
> >>
> >> Maybe knowing that, somebody can help.
> >>
> >> Zee
> >
> >
> >
> > --
> > SAFOUANE MAALOUL
> > maaloulsafouane@gmail.com
> >
>


--=20
*SAFOUANE MAALOUL*

*maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*

--00000000000001873c05bb9d28e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Yes I will check it. Do you know how to=
=C2=A0<span style=3D"color:rgb(0,0,0);white-space:pre-wrap">remove callconv=
ention-hard from TUNE_FEATURES ?</span></div><div dir=3D"ltr"><span style=
=3D"color:rgb(0,0,0);white-space:pre-wrap"><br></span></div><div><font colo=
r=3D"#000000"><span style=3D"white-space:pre-wrap">Best regards,</span></fo=
nt></div><div><font color=3D"#000000"><span style=3D"white-space:pre-wrap">=
<br></span></font></div><div><font color=3D"#000000"><span style=3D"white-s=
pace:pre-wrap">Safouane</span></font></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 18 f=C3=A9vr. 2021 =
=C3=A0=C2=A014:52, Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavl=
jevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; TUNE_FEATUR=
ES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv6 vfp arm1176jzfs callconve=
ntion-hard&quot;<br>
<br>
Here is an interesting reading for you, for me also:<br>
<a href=3D"https://www.yoctoproject.org/pipermail/meta-xilinx/2015-July/001=
060.html" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org=
/pipermail/meta-xilinx/2015-July/001060.html</a><br>
<br>
What I am getting from this reading is that you need to try with the<br>
following line:<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv6 vfp arm1176jzf=
s&quot;<br>
<br>
I guess, YOCTO people have not too much experience with armv6, nor me,<br>
but this should be (I hope) generic.<br>
<br>
Hope this helps.<br>
Zoran<br>
_______<br>
<br>
On Thu, Feb 18, 2021 at 12:44 PM safouane maaloul<br>
&lt;<a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maalouls=
afouane@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; This is my build configuration :<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.46.0&qu=
ot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-li=
nux&quot;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-=
linux-gnueabi&quot;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;rasp=
berrypi0-wifi&quot;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot=
;poky&quot;<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;3.1.5&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv6 vfp arm11=
76jzfs callconvention-hard&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;hard&quot=
;<br>
&gt; meta<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;dunfell:7ea41de1377=
4675828239b7738d3f5d70be8b1af&quot;<br>
&gt; meta-oe<br>
&gt; meta-multimedia<br>
&gt; meta-networking<br>
&gt; meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;dunfell:5bba79=
488b7d393d2258d6e917f7bf7b0d7c4073&quot;<br>
&gt; meta-raspberrypi=C2=A0 =C2=A0 =C2=A0=3D &quot;dunfell:987993209716302e=
b8f314f69a2a3340555f94d8&quot;<br>
&gt; meta-gstreamer1.0=C2=A0 =C2=A0 =3D &quot;dunfell:b489b1ba084544d9c4c08=
f7c3b3d1c37ffa53c51&quot;<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Safouane<br>
&gt;<br>
&gt; Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stojsavljevic &lt;<a hr=
ef=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsav=
ljevic@gmail.com</a>&gt; a =C3=A9crit :<br>
&gt;&gt;<br>
&gt;&gt; So, what is your MACHINE variable set to?<br>
&gt;&gt;<br>
&gt;&gt; Maybe knowing that, somebody can help.<br>
&gt;&gt;<br>
&gt;&gt; Zee<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; SAFOUANE MAALOUL<br>
&gt; <a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maaloul=
safouane@gmail.com</a><br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><font color=3D"#000000"><span><=
b>SAFOUANE MAALOUL</b></span></font><div><span><b><u style=3D"background-co=
lor:rgb(255,255,255)"><font color=3D"#0b5394"><a href=3D"mailto:maaloulsafo=
uane@gmail.com" target=3D"_blank">maaloulsafouane@gmail.com</a></font></u><=
span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"><br></spa=
n></b></span><div><span style=3D"background-color:rgb(255,255,255)"><font c=
olor=3D"#000000"><b><br></b></font></span></div></div></div></div>

--00000000000001873c05bb9d28e5--
