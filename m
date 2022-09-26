Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EBF3C32771
	for <webhook@archiver.kernel.org>; Mon, 26 Sep 2022 17:38:58 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web08.967.1664213933153061324
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 10:38:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a5ntbDGM;
 spf=pass (domain: gmail.com, ip: 209.85.222.53,
 mailfrom: mahendrasondagar08@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id e3so2699937uax.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 10:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=0KwwWiUF+7DbV3FtGClZu3Ug/XIjGun+W6eImsGT+70=;
        b=a5ntbDGMZ9749zyO5inu6H3SiEoCPB1CbxXfbG+zCjcC7vbG3qox5rBmZhef1zQxja
         rioBHxzm8gi173z83rCDpz9MyXVR3wg9JMRrjjpDjVbB5zEvnyFutSYRkiWfs8F3yUk2
         sTaDedNRYaTYj89DPIHgkYDoOH4dAZZWmIGHFbAbJPi8ayHlUGHy8hUfIpCZSDIWPlbx
         n5QDtJ2enJLbYH5AV0e5O56XZ07ik348aVw+02VplnwJGyIyzHbdXEl7KWoUOVzv1pQj
         Cs9nSFEcEPCSrFBCJJ/XrO3B0C0fgBZMFG7EEBisADmG5ZL2LWZavn+I1N+f1OgpbQbu
         +0BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=0KwwWiUF+7DbV3FtGClZu3Ug/XIjGun+W6eImsGT+70=;
        b=Ucl+7Sm7fhdSAh71mWd86kbPtGcyEbCPOeVOcvttZ6QRjF00blUdd0V2/NQuY2ctaS
         2bXqit3dyjpZEeCPt6AxsskSqhYxiywXWBPTEV6ra+5370Sy0oFzNzEiQT5FGMYyRguh
         wQgud+tMkfnVruyNzGRYNbkhiHd9RYRqusCt+9hbtzivv4bdEd0WikPlM8sqAxC+I0/z
         59ODqs3HeIUIh/IKyudLnBvqRi1vLWwJBpEPozMkXVcgoYkGUcVOh3Mu7nFiCg2bTcNi
         IqEOiUADRUXoEe/sGFChS9mUz/MLUoPiiqFOXO81dCddyi605UEYF387bktLj/BMWq0w
         zUZQ==
X-Gm-Message-State: ACrzQf0rNhwZ6Lqd73rVF0KEt38d7gZJvnIaXxNVf25/Fs406rWbLPb8
	Al6CQFzYALtNKqzRaHMaDWBwkX1jExE+sN0QCMVZKTN5a2o=
X-Google-Smtp-Source: 
 AMsMyM4F5XPHN/KqUO+KegvCr+tA24+bVSBxWLpCW/LeqZd43YwqcbMpvWul89LUfpNLskuTyszMsKhJZcTEYFsoSj4=
X-Received: by 2002:ab0:136d:0:b0:3b3:da15:c7de with SMTP id
 h42-20020ab0136d000000b003b3da15c7demr9489155uae.25.1664213932088; Mon, 26
 Sep 2022 10:38:52 -0700 (PDT)
MIME-Version: 1.0
References: <j7Ra.1664127515524437911.bdfX@lists.yoctoproject.org>
 <0e5478f0-8c37-bfdf-9f8f-ad652fbcf580@theobroma-systems.com>
In-Reply-To: <0e5478f0-8c37-bfdf-9f8f-ad652fbcf580@theobroma-systems.com>
From: Mahendra Sondagar <mahendrasondagar08@gmail.com>
Date: Mon, 26 Sep 2022 23:08:38 +0530
Message-ID: 
 <CAMho1OEGbdOQQYHJuDDNxn2g7pB+6hdweqJ-Q4URGogLZK=+gQ@mail.gmail.com>
Subject: Re: [yocto] meta-swupdate integration with the custom Yocto image
 #dunfell
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000040a2c905e9980084"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 17:38:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58167

--00000000000040a2c905e9980084
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi... Quentin
Thanks for the reply...

let me try this

Regards
Mahendra

On Mon, Sep 26, 2022 at 1:44 PM Quentin Schulz <
quentin.schulz@theobroma-systems.com> wrote:

> Hi Mahendra Sondagar,
>
> On 9/25/22 19:38, Mahendra Sondagar wrote:
> > Hey.. There
> > Hope all are doing well
> >
> > I'm dealing with the swupdate with the my custom Yocto image created fo=
r
> STM32MP1 dk1 board
> > The intend is, to update the rootfs remotely
> >
> > I have successfully integrated meta-swupdate layer with the custom Yoct=
o
> image by adding the layers in to bblayer.conf file
> > The both layers meta-swupdate & meta-custom are parallel to each-others
> >
> > To change the flags and setting with the swupdate, i have created the r
> *ecipes-myswupdate* file inside the meta-custom layers
> > The content of the recipes-myswupdate are as follows
> > .
> > =E2=94=94=E2=94=80=E2=94=80 swupdate
> > =E2=94=9C=E2=94=80=E2=94=80 stm32mp1
> > =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 09-swupdate-args
> > =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 defconfig
> > =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 sw-description
> > =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 swupdate.cfg
> > =E2=94=94=E2=94=80=E2=94=80 swupdate_%.bbappend
> >
>
> Considering you're using SRC_URI unconditionally, I suggest you use:
> .
> =E2=94=9C=E2=94=80=E2=94=80 swupdate
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 09-swupdate-args
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 defconfig
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 sw-description
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 swupdate.cfg
> =E2=94=94=E2=94=80=E2=94=80 swupdate_%.bbappend
>
> > The content of the *swupdate_%.bbappend* are as follows
> >
> >
> -------------------------------------------------------------------------=
-------------
> >
> > DESCRIPTION =3D "Example recipe generating SWU image"
> > SECTION =3D ""
> >
> > LICENSE =3D ""
> >
> > # Add all local files to be added to the SWU
> > # sw-description must always be in the list.
> > # You can extend with scripts or wahtever you need
> > SRC_URI +=3D " \
> > file://sw-description \
> > file://09-swupdate-args \
> > file://swupdate.cfg \
> > "
> >
> > # images to build before building swupdate image
> > IMAGE_DEPENDS =3D "core-image-full-cmdline virtual/kernel"
> >
> > # images and files that will be included in the .swu image
> > SWUPDATE_IMAGES =3D "core-image-full-cmdline uImage"
> >
> > # a deployable image can have multiple format, choose one
> > SWUPDATE_IMAGES_FSTYPES[core-image-full-cmdline] =3D ".ubifs"
> > SWUPDATE_IMAGES_FSTYPES[uImage] =3D ".bin"
> >
> > inherit swupdate
> >
>
> I'm pretty sure you're not appending to the correct recipe, swupdate
> recipe is the SWUpdate recipe for building the SWUpdate update mechanism
> SW, it's not for building an image that is making use of SWUpdate
> mechanism.
>
> I think you want to append to swupdate-image recipe or create your own
> inheriting swupdate-image?
>
> Or probably both actually, one for adding your configuration files to
> the SWUpdate SW and the
> IMAGE_DEPENDS/SWUPDATE_IMAGES/SWUIPDATE_IMAGE_FSTYPES to the image recipe=
.
>
> In any case, you're missing:
> FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
> in your bbappend for adding files. c.f.
>
> https://docs.yoctoproject.org/ref-manual/variables.html#term-FILESEXTRAPA=
THS
>
> Cheers,
> Quentin
>

--00000000000040a2c905e9980084
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi... Quentin<br></div>Thanks for the reply=
...<br><br></div>let me try this <br><br></div><div>Regards</div><div>Mahen=
dra <br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Sep 26, 2022 at 1:44 PM Quentin Schulz &lt;<a href=
=3D"mailto:quentin.schulz@theobroma-systems.com">quentin.schulz@theobroma-s=
ystems.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi Mahendra Sondagar,<br>
<br>
On 9/25/22 19:38, Mahendra Sondagar wrote:<br>
&gt; Hey.. There<br>
&gt; Hope all are doing well<br>
&gt; <br>
&gt; I&#39;m dealing with the swupdate with the my custom Yocto image creat=
ed for STM32MP1 dk1 board<br>
&gt; The intend is, to update the rootfs remotely<br>
&gt; <br>
&gt; I have successfully integrated meta-swupdate layer with the custom Yoc=
to image by adding the layers in to bblayer.conf file<br>
&gt; The both layers meta-swupdate &amp; meta-custom are parallel to each-o=
thers<br>
&gt; <br>
&gt; To change the flags and setting with the swupdate, i have created the =
r *ecipes-myswupdate* file inside the meta-custom layers<br>
&gt; The content of the recipes-myswupdate are as follows<br>
&gt; .<br>
&gt; =E2=94=94=E2=94=80=E2=94=80 swupdate<br>
&gt; =E2=94=9C=E2=94=80=E2=94=80 stm32mp1<br>
&gt; =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 09-swupdate-args<br>
&gt; =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 defconfig<br>
&gt; =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sw-description<br>
&gt; =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 swupdate.cfg<br>
&gt; =E2=94=94=E2=94=80=E2=94=80 swupdate_%.bbappend<br>
&gt; <br>
<br>
Considering you&#39;re using SRC_URI unconditionally, I suggest you use:<br=
>
.<br>
=E2=94=9C=E2=94=80=E2=94=80 swupdate<br>
=E2=94=82=C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 09-swupdate-args<br>
=E2=94=82=C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 defconfig<br>
=E2=94=82=C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 sw-description<br>
=E2=94=82=C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 swupdate.cfg<br>
=E2=94=94=E2=94=80=E2=94=80 swupdate_%.bbappend<br>
<br>
&gt; The content of the *swupdate_%.bbappend* are as follows<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
----------------<br>
&gt; <br>
&gt; DESCRIPTION =3D &quot;Example recipe generating SWU image&quot;<br>
&gt; SECTION =3D &quot;&quot;<br>
&gt; <br>
&gt; LICENSE =3D &quot;&quot;<br>
&gt; <br>
&gt; # Add all local files to be added to the SWU<br>
&gt; # sw-description must always be in the list.<br>
&gt; # You can extend with scripts or wahtever you need<br>
&gt; SRC_URI +=3D &quot; \<br>
&gt; file://sw-description \<br>
&gt; file://09-swupdate-args \<br>
&gt; file://swupdate.cfg \<br>
&gt; &quot;<br>
&gt; <br>
&gt; # images to build before building swupdate image<br>
&gt; IMAGE_DEPENDS =3D &quot;core-image-full-cmdline virtual/kernel&quot;<b=
r>
&gt; <br>
&gt; # images and files that will be included in the .swu image<br>
&gt; SWUPDATE_IMAGES =3D &quot;core-image-full-cmdline uImage&quot;<br>
&gt; <br>
&gt; # a deployable image can have multiple format, choose one<br>
&gt; SWUPDATE_IMAGES_FSTYPES[core-image-full-cmdline] =3D &quot;.ubifs&quot=
;<br>
&gt; SWUPDATE_IMAGES_FSTYPES[uImage] =3D &quot;.bin&quot;<br>
&gt; <br>
&gt; inherit swupdate<br>
&gt; <br>
<br>
I&#39;m pretty sure you&#39;re not appending to the correct recipe, swupdat=
e <br>
recipe is the SWUpdate recipe for building the SWUpdate update mechanism <b=
r>
SW, it&#39;s not for building an image that is making use of SWUpdate mecha=
nism.<br>
<br>
I think you want to append to swupdate-image recipe or create your own <br>
inheriting swupdate-image?<br>
<br>
Or probably both actually, one for adding your configuration files to <br>
the SWUpdate SW and the <br>
IMAGE_DEPENDS/SWUPDATE_IMAGES/SWUIPDATE_IMAGE_FSTYPES to the image recipe.<=
br>
<br>
In any case, you&#39;re missing:<br>
FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
in your bbappend for adding files. c.f. <br>
<a href=3D"https://docs.yoctoproject.org/ref-manual/variables.html#term-FIL=
ESEXTRAPATHS" rel=3D"noreferrer" target=3D"_blank">https://docs.yoctoprojec=
t.org/ref-manual/variables.html#term-FILESEXTRAPATHS</a><br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--00000000000040a2c905e9980084--

