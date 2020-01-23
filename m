Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1578.1579807497019509148
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 11:24:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UDB4ZbHy;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96330E015FA; Thu, 23 Jan 2020 11:24:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDF2EE01599
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2020 11:24:54 -0800 (PST)
Received: by mail-qk1-f171.google.com with SMTP id k6so4628586qki.5
        for <yocto@yoctoproject.org>; Thu, 23 Jan 2020 11:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=VUPYJ9KovoZkdFWF5OZ+e8tp9PuZsefHgorY4JHUJlU=;
        b=UDB4ZbHy5V74UBZ2API4B1RI06iS+ucA+lqj4CRabzBu1RcuxHfWEMz6qfPEs7a9GN
         S41/c2FxNb9bXonCuzl1to+CQXjzdkBvNhtYxmryg9x/ZXg92APCK/MC56cxUgIGuZUy
         H7dueQcB2QFhu+4ZWmVaSLbPoy98M+Wa3wFA3amUvcBmIQJ9wqtxJAK2ilRMj/RZ3/jI
         hybGqJTV5DVBniDmGQwXf4fwHNfVKdPvMJDDpiFAeeA/armgX3bxJ0PJy6Lx0aXGPwNn
         CTU9FD43MJLsUaLcCzRRBz+eF/NOGwlAeEhTtAgMuD93GkyVGQ3vvqeRJbPlzNqGqNBe
         P8rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=VUPYJ9KovoZkdFWF5OZ+e8tp9PuZsefHgorY4JHUJlU=;
        b=O08kE+2g6I1NPc8jnF/wZs+PxrNALSvlWMfqKJzvP7/hduPZ6sNKKRoha6vSfcgj+i
         NYR6dQ2Ne2/orRiMwPr2K54OhXJWvT+tIbHjO6RI1TknbtdkvdiRxSjn1fzIQ0C8kqdV
         Xbnu8BFSO7FYCS0V9joHGBPJ1Z2lPyHswq9srKmsxeFU8ZRZz6wvrOk8iPhYR+1omRtT
         NhmL3wo9mKfOjrDN7aEoSodkwCFtkDOLe5YlGlF3sJH3MGeadexl9R9P/PTlCd9bHPLE
         i782Btn92EJyAnOvLYPUqy2U6zY7cABW+HZWwfsnzc13TW1Bsm1EFZoqA971pmdXZbUa
         0diw==
X-Gm-Message-State: APjAAAWU/I7Fn3hadkFat0u6TV37Z6cB8tA/Tc6WT0BZfiUcTcwLQQV4
	GGHsVvlhouqeeZzq5ZWOa3L9G8gMPufIqNVcRXY=
X-Google-Smtp-Source: APXvYqxPVh6QASPJXfHDAb60bwk50hSWlTSaXzexQuJPuB0DGw/9UEIQ//S7vWQkngo+tMqELHACO2o/QGQb2Q+9sdw=
X-Received: by 2002:a37:bf82:: with SMTP id p124mr17954550qkf.337.1579807493697;
 Thu, 23 Jan 2020 11:24:53 -0800 (PST)
MIME-Version: 1.0
References: <61f1edc4d6184022a55eb1feeff1263a@sakuraus.com>
 <CAMKF1srtxG+Uwav_gkrg5gbK4pNz0fJ-UNcGHQh7MSgLN1hb2A@mail.gmail.com> <9158a978900f45dd8c3f7b14e0e56544@sakuraus.com>
In-Reply-To: <9158a978900f45dd8c3f7b14e0e56544@sakuraus.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 23 Jan 2020 11:24:27 -0800
Message-ID: <CAMKF1sr-QJFwyZPAHd=MMes1D7kMLrhsazzkt+N4VoW0SN2DfQ@mail.gmail.com>
Subject: Re: [yocto] generate initramfs for raspberry pi
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2020 at 11:16 AM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> Hi Kem,
> I had figured out your suggestions, my problem is how do I generate the =
"<your-image>" image in:
>
> INITRAMFS_IMAGE_rpi =3D "<your-image>"
>
> I need a recipe for the image and a way to get Yocto to build it when I =
build the rest of my image. Maybe specifying the name will build it, but I =
still need a recipe for the image.
>

Depends what your needs are, its not clear what you want from this
initramfs image.
is it something you want to do some preboot stuff and pivot into final
image during boot
or do you want your full userspace to be running in it
for second case Just use your image if you want that to be bundled in
and build bitbake virtual/kernel
it will get you single kernel image with everything in it.

for first case. define a new image perhaps a derivative of
core-image-minimal and use that

> Regards,
> Greg
>
> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Thursday, January 23, 2020 10:56 AM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: Yocto list discussion <yocto@yoctoproject.org>
> Subject: Re: [yocto] generate initramfs for raspberry pi
>
> On Thu, Jan 23, 2020 at 10:44 AM Greg Wilson-Lindberg <gwilson@sakuraus.=
com> wrote:
> >
> > Hello List,
> >
> > I have not been able to figure out how to generate an initramfs image =
for a raspberry pi build of yocto. I=E2=80=99ve searched it web and have no=
t found anything that mentions generating the actual image, lots of hits on=
 how to configure using the initramfs, but not on generating it. Is there a=
 standard recipe for a raspberry pi initramfs and how would I enable its ge=
neration, or maybe I=E2=80=99m just being clueless.
> >
> >
> >
> > I=E2=80=99m running on a boot2qt build of yocto based on Qt v5.14.0 th=
at uses warrior and I=E2=80=99m targeting an RPi 4 using u-boot.
> >
> >
> >
> > Any help would be greatly appreciated.
> >
> try something like below in local.conf
>
> INITRAMFS_IMAGE_BUNDLE_rpi =3D "1"
> INITRAMFS_IMAGE_rpi =3D "<your-image>"
> # Enlarge boot partition to 1GiB
> BOOT_SPACE =3D "1073741"
> INITRAMFS_MAXSIZE =3D "315400"
> IMAGE_FSTYPES_pn-${INITRAMFS_IMAGE} =3D "${INITRAMFS_FSTYPES}"
>
> >
> >
> > Best regards,
> >
> > Greg Wilson-Lindberg
> >
> >=20
