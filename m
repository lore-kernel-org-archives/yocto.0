Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web10.5653.1613648870967860222
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 03:47:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=goGPE3zA;
 spf=pass (domain: gmail.com, ip: 209.85.166.48, mailfrom: maaloulsafouane@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id s24so1659368iob.6
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 03:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=+C+ZAK9h/1tOSHuj9IBKT6k9haco/7lIDl+wO16gMHg=;
        b=goGPE3zAIRBJ7hnLIfT1CTMnbbbtOH0Xz/CrdLpA0p6IBIjkI/zAQ42nCil2P7tbJT
         b2KB1qSjLNLc/vTQmP3kiokykTPKiqe6+WNvOF+/J4koxq/6OU8zZZwnHCghkFpdr28B
         +Rvvsc9YM0X5CqpN1SNKuUYIuGL6A5s+z9ebSiL/pMnKh1w4MLUxWWasTSCChVU1DbOe
         M9BrnkMIbYneWiE9A/Vn29daB15lsrj3lsjyeXmw7RN1Kmr8tnYeGdNlmKmL7IZ763p0
         3kNSVZkGJpHNsihmZiCK8Rj9USFTvoNFoL4smzqqzRP36iHMtl/Yz5V17vYGggbOxIk1
         P8cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=+C+ZAK9h/1tOSHuj9IBKT6k9haco/7lIDl+wO16gMHg=;
        b=Sze13nqcrwFPeWqONAlqPsQDUzPEKhUiXiYrHaVzHheVArLXQduY6V95/mjg9iyN1o
         vTLFMMnwFlWTFXH1egFGrUImOFgS1nwVizByj4M3IhwwsyVMxMtvTyJQSsx19JEo/IZU
         UIkzdlP3MIxwNC00xrwJCWxYK3hwHQ2+e/rvml41AKpzCzfbB7PTUD5JRQJsTXJjJMYI
         9jHbEo2tU7+X796bnWH1pIB2Te1TZEX4QJ0r5JCsg8BWZsVq2nxF8t8lW3COtf/utilN
         ZEV0sEaHdmimlk+6CCW8kNSt619lPSJ/cdEnqeQ/fUby9B576inkagGGUIjvwwpP+NJF
         3QNw==
X-Gm-Message-State: AOAM531Fxz+NOI1MoH+wROMAaoJmOvtLrpcuBrXHkyumiwVGRzHUU4MS
	fux9to7ZajeQv7nCYeoJbp+EhUReQ3+sn6IWdZU=
X-Google-Smtp-Source: ABdhPJxeipPh0TJRk0ntlx9VH1OARcEwKU5O0aIUx+peBIXXZbrBW1+Z2GHg9wnqrWZniQ7eT+JajI3j3tZ1lRTId14=
X-Received: by 2002:a02:74a:: with SMTP id f71mr4006540jaf.30.1613648870204;
 Thu, 18 Feb 2021 03:47:50 -0800 (PST)
MIME-Version: 1.0
References: <OHWd.1613555997180740145.8Ytp@lists.yoctoproject.org>
 <CAGAf8LxoGwaocSUq04jqar4hQH2NiZ2DdumN5dpnQm4dr2wkew@mail.gmail.com>
 <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
 <CAGAf8LyRvfu_iw+BQkiVYUuF6po0d0Pe0xqsVRjG8_bG-u75fA@mail.gmail.com> <CAEj=YVLoCXsYPF_ptXLZTDuQi3JLwRZAJNmbrUziUj-Mf8DHfw@mail.gmail.com>
In-Reply-To: <CAEj=YVLoCXsYPF_ptXLZTDuQi3JLwRZAJNmbrUziUj-Mf8DHfw@mail.gmail.com>
From: "safouane maaloul" <maaloulsafouane@gmail.com>
Date: Thu, 18 Feb 2021 12:47:40 +0100
Message-ID: <CAEj=YVLto27P33dv9Mov9CgszRaf5JzfBoW2z6UyEpf-4aU4dQ@mail.gmail.com>
Subject: Re: [yocto] #av1 #armv6 #raspberrypi #neon
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b36a1905bb9ae753"

--000000000000b36a1905bb9ae753
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 12:44, safouane maaloul <maaloulsafouane@=
gmail.com>
a =C3=A9crit :

> This is my build configuration :
> Build Configuration:
> BB_VERSION           =3D "1.46.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> MACHINE              =3D "raspberrypi0-wifi"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "3.1.5"
> TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs callconvention-hard"
> TARGET_FPU           =3D "hard"
> meta
> meta-poky
> meta-yocto-bsp       =3D "dunfell:7ea41de13774675828239b7738d3f5d70be8b1a=
f"
> meta-oe
> meta-multimedia
> meta-networking
> meta-python          =3D "dunfell:5bba79488b7d393d2258d6e917f7bf7b0d7c407=
3"
> meta-raspberrypi     =3D "dunfell:987993209716302eb8f314f69a2a3340555f94d=
8"
> meta-gstreamer1.0    =3D "dunfell:b489b1ba084544d9c4c08f7c3b3d1c37ffa53c5=
1"
>
> Best regards,
>
> Safouane
>
> Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> a =C3=A9crit :
>
>> So, what is your MACHINE variable set to?
>>
>> Maybe knowing that, somebody can help.
>>
>> Zee
>>
>
>
> --
> *SAFOUANE MAALOUL*
>
> *maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*
>
>

--=20
*SAFOUANE MAALOUL*

*maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*

--000000000000b36a1905bb9ae753
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Le=C2=A0jeu. 18 f=C3=A9vr. 2021 =C3=A0=C2=A012:44, saf=
ouane maaloul &lt;<a href=3D"mailto:maaloulsafouane@gmail.com">maaloulsafou=
ane@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>This is my=
 build configuration :</div><div>Build Configuration:</div><div>BB_VERSION=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.46.0&quot;</div><div>B=
UILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&qu=
ot;</div><div>NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;=
</div><div>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm=
-poky-linux-gnueabi&quot;</div><div>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;raspberrypi0-wifi&quot;</div><div>DISTRO=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><=
div>DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;3.1.5&quot;</div><di=
v>TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv6 vfp arm1176j=
zfs callconvention-hard&quot;</div><div>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;hard&quot;</div><div>meta</div><div>meta-poky</d=
iv><div>meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;dunfell:7ea41de1=
3774675828239b7738d3f5d70be8b1af&quot;</div><div>meta-oe</div><div>meta-mul=
timedia</div><div>meta-networking</div><div>meta-python=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =3D &quot;dunfell:5bba79488b7d393d2258d6e917f7bf7b0d7c4073&q=
uot;</div><div>meta-raspberrypi=C2=A0 =C2=A0 =C2=A0=3D &quot;dunfell:987993=
209716302eb8f314f69a2a3340555f94d8&quot;</div><div>meta-gstreamer1.0=C2=A0 =
=C2=A0 =3D &quot;dunfell:b489b1ba084544d9c4c08f7c3b3d1c37ffa53c51&quot;</di=
v><div><br></div><div>Best regards,</div><div><br></div><div>Safouane</div>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">Le=C2=A0mer. 17 f=C3=A9vr. 2021 =C3=A0=C2=A013:24, Zoran Stojsavljevi=
c &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zo=
ran.stojsavljevic@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">So, what is your MACHINE variable s=
et to?<br>
<br>
Maybe knowing that, somebody can help.<br>
<br>
Zee<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><font color=3D"#000000"><span><b>SAFOUANE MAALOUL</b></sp=
an></font><div><span><b><u style=3D"background-color:rgb(255,255,255)"><fon=
t color=3D"#0b5394"><a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"=
_blank">maaloulsafouane@gmail.com</a></font></u><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)"><br></span></b></span><div><span st=
yle=3D"background-color:rgb(255,255,255)"><font color=3D"#000000"><b><br></=
b></font></span></div></div></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><font color=3D"#000000"><span><=
b>SAFOUANE MAALOUL</b></span></font><div><span><b><u style=3D"background-co=
lor:rgb(255,255,255)"><font color=3D"#0b5394"><a href=3D"mailto:maaloulsafo=
uane@gmail.com" target=3D"_blank">maaloulsafouane@gmail.com</a></font></u><=
span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"><br></spa=
n></b></span><div><span style=3D"background-color:rgb(255,255,255)"><font c=
olor=3D"#000000"><b><br></b></font></span></div></div></div></div>

--000000000000b36a1905bb9ae753--
