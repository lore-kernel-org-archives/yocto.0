Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
 by mx.groups.io with SMTP id smtpd.web10.7093.1613656744242527910
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 05:59:04 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=nKpIa2cF;
 spf=pass (domain: blade-group.com, ip: 209.85.222.41, mailfrom: yann.dirson@blade-group.com)
Received: by mail-ua1-f41.google.com with SMTP id c44so680848uad.12
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 05:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=f7o5YlTVtuzUSHMNwJqIGHu7wYCKA6svUoLD7sWcYL0=;
        b=nKpIa2cFhWOAlnpJZfyC3gvOL4QCXTXrQj3zgEF5Z9yfYfCphwXc2YC9kDix2IOAvd
         rGDUEAk9AdwmPGvtExl5nPFEwbgmnyZTGyS1E1lCYAL+28NvKOlAdqNwmyT1ku0JF2dC
         qDTRhF/Fy7FBniUBExCF3p50URMaa1MginiGb4rCAp2QSlsAZkqu1SQdbgHnWjyWjt5U
         KnUnvEADuA6vi0vEoB6zGx5TAv52YTq1nZHPQXtjGlF/VPQ5muSDnw8lUaS9qcEbNWRu
         L37Io28szfsm4xIIlX2kIeJb41f+i+yUTO3FWYF9/uu1gGunT1eU7ZljahvJMKaQnyit
         gOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f7o5YlTVtuzUSHMNwJqIGHu7wYCKA6svUoLD7sWcYL0=;
        b=kbGDGajBYWU9kmEUPFLSag1HRAnI8G9ZYF5Aqyn4xRzqhn9Gwa/OTKbv7ti9dg5FMF
         PL5pfi30BCyQ0DsNueUn9HdtpruDSTSoyY9e6wqD6iPBkL800srbI/Llafrw8xpTV554
         PaB7jrP2b++bkvf/oCZdUfxbNGjqnWZOxy8gzdo/9HZXj94kjtVe1zUJfWK2rvnuTuK8
         /F/rC/FFt4kKXai1Kizxv0PpaZ/G5tqHqfNmSvTvdl5hl0DvFX5FHnohg52F10jprm/B
         C86uymCKLy15lQsGlOWouLCONCjDMmyO90T9U7qExLDosnGHo3VgGjuybKkcFXQl4PCz
         B51w==
X-Gm-Message-State: AOAM533vQhRgbbIiJeMRa9GTNJCA9NLJglubrwAtIlxp7ROWaIPac2w4
	ikhfIop3w8sCwd9vdz/GD0RXfH7zjUP0/OzVR/R5iA==
X-Google-Smtp-Source: ABdhPJxGR/CSgZMjv+KxtAkSwrOeg74Pehhw6kK+8+/eW/MKeHMFc0jTwtybiyabl7TyqTgZ1ljRL5EwFqnegKJ4oS8=
X-Received: by 2002:ab0:6f0d:: with SMTP id r13mr3341753uah.8.1613656743301;
 Thu, 18 Feb 2021 05:59:03 -0800 (PST)
MIME-Version: 1.0
References: <20210216174346.29A0D2A0FA6@centos8-ty-1.yocto.io>
In-Reply-To: <20210216174346.29A0D2A0FA6@centos8-ty-1.yocto.io>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Thu, 18 Feb 2021 14:58:52 +0100
Message-ID: <CA+4=imb+CNt9fZgUOMY8f+4Kcat+=rUAqGt5pbHDRZxQ-7M5CQ@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.2.2.rc1)
To: Pokybuild User <pokybuild@centos8-ty-1.yocto.io>
Cc: yocto@lists.yoctoproject.org, qa-build-notification@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f96e9605bb9cbcb0"

--000000000000f96e9605bb9cbcb0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 16 f=C3=A9vr. 2021 =C3=A0 18:43, Pokybuild User <
pokybuild@centos8-ty-1.yocto.io> a =C3=A9crit :

>
> Build hash information:
>
> bitbake: 0a3bf681530bd63fc0036ca81ef868ab53fde56c
> meta-arm: aa63e31b6edb5197764c21434219050ab51f0fbd
> meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43
> meta-intel: 1d866c58534eb1d317b7a674c6e6c57ab9594fb0
> meta-kernel: f793168bd19af3d8c5a260dd35f387ed9a31794b
> meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879
> oecore: ebaaee50cb3ac75112827f935c48affaf622ce7f
> poky: d5d6286a66f46f4523e35e0e3f20cd7396195fdc
>

Is it expected that the noted meta-arm sha1 is on branch "master" and not
"gatesgarth" ?

--000000000000f96e9605bb9cbcb0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 16 f=C3=A9vr. 2021 =C3=
=A0=C2=A018:43, Pokybuild User &lt;<a href=3D"mailto:pokybuild@centos8-ty-1=
.yocto.io">pokybuild@centos8-ty-1.yocto.io</a>&gt; a =C3=A9crit=C2=A0:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
Build hash information: <br>
<br>
bitbake: 0a3bf681530bd63fc0036ca81ef868ab53fde56c<br>
meta-arm: aa63e31b6edb5197764c21434219050ab51f0fbd<br>
meta-gplv2: 6e8e969590a22a729db1ff342de57f2fd5d02d43<br>
meta-intel: 1d866c58534eb1d317b7a674c6e6c57ab9594fb0<br>
meta-kernel: f793168bd19af3d8c5a260dd35f387ed9a31794b<br>
meta-mingw: 352d8b0aa3c7bbd5060a4cc2ebe7c0e964de4879<br>
oecore: ebaaee50cb3ac75112827f935c48affaf622ce7f<br>
poky: d5d6286a66f46f4523e35e0e3f20cd7396195fdc<br></blockquote><div><br></d=
iv><div>Is it expected that the noted meta-arm sha1 is on branch &quot;mast=
er&quot; and not &quot;gatesgarth&quot; ?</div><br></div></div>

--000000000000f96e9605bb9cbcb0--
