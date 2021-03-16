Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web08.6182.1615888758336153670
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 02:59:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=UG0i1GLo;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.171, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f171.google.com with SMTP id 16so19706023ljc.11
        for <yocto@lists.yoctoproject.org>; Tue, 16 Mar 2021 02:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=55igmS/r5YPDepCvfXgSD9/aMu2c9GiB8ahmHnPWFWg=;
        b=UG0i1GLoUblczzVHDyZEucaTo0sS3FzFGL0b2cbQTIqTxIwGDRYpw5Zzs7og0cp0Gj
         KVXLKxaLqIMRrJ7Y1iygz9Cj4E2PZXXSmhTlHK4zKMGYx75DqTP7KrIc/pdI8FaBrtN/
         EULk3dlldXftKICiWyaPrcCKLHDVjrROOxEDpR3OoARpwcDY4EVAuddKQXZMe1oHhkas
         99ig8VesWUUMlQFA9c+8lxU5wGrnJHLGh8P2eC/BFQdDqIj4Dea6D+ya/P5kAR71p4+y
         ixp+xtAaOVglXhPH8oMozShQypi0bGK+dgGm2MBuw99AmF507DkHB+l1oCGcSEId5VcT
         70hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=55igmS/r5YPDepCvfXgSD9/aMu2c9GiB8ahmHnPWFWg=;
        b=hCR95oF1c0T15lx65Dpmlsbk+lrtHe4bd9rsLrf1GHh912KC6eIzAEHcCH1L5RFBMM
         KcBJw6G3wVYUwtc4PIefUb4PiRgW5p3K7Sc2GdNcSSvCoAX/AfWUiA1uUTh99V3IUbch
         RMp/GS8VTgvuuy+dinEA5onSpS26UsZ1f+wEF2yk4m8+4PFepiGt+sgTJkHO6cnWHh3C
         O7xN5h42PgAmuxpEZPPmNWqk/qbac/xlrbSifQQxDIMbVHaSRSjE1h4KzoRYn+ybeXbL
         EE+tEMpHwcx3Hx8YHAHf/jpsgWl0TC+KbNhduofke5fj6TB6i74A5Q46Gmd0zZyMdDDj
         kI8A==
X-Gm-Message-State: AOAM5325+Myg9vmfrt/TuLFPscyB4ZiUVhEdGrgnHenvlXBLGJJBz45I
	lL9ajdzRekAH7hCqbl8b1yVk5U7gWG1UWwqFQqA1kQ==
X-Google-Smtp-Source: ABdhPJx6W0+LgrC4fkCjXXlF/qnInMW6ayWMh55ztGxk298Ny4sFINpF8Gy/UUQ4Ra4Ys9OiMhcEgcIQIsZ/5zFbb0k=
X-Received: by 2002:a2e:7409:: with SMTP id p9mr2113492ljc.165.1615888756184;
 Tue, 16 Mar 2021 02:59:16 -0700 (PDT)
MIME-Version: 1.0
References: <bdb239f7ebf89f1567d5fbd2530fa12c@vivaldi.net> <503454c9-ea3c-6ecb-bfdf-eb5fce6feeee@gmail.com>
 <247c426e3db4a7f031aad842303134f1@vivaldi.net> <CAP71WjwJmSVGGXCtfChNkoN3u-UjXXCmWbO_1tj2iF+aP2RHPQ@mail.gmail.com>
In-Reply-To: <CAP71WjwJmSVGGXCtfChNkoN3u-UjXXCmWbO_1tj2iF+aP2RHPQ@mail.gmail.com>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Tue, 16 Mar 2021 10:58:49 +0100
Message-ID: <CAEt6NwpHM72t3KLzU=2kNApQxqqZN4FJOsUiZUV+WumDT2qjNg@mail.gmail.com>
Subject: Re: [yocto] Building test code?
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: jchludzinski@vivaldi.net, akuster <akuster808@gmail.com>, 
	Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Am Di., 16. M=C3=A4rz 2021 um 10:49 Uhr schrieb Nicolas Dechesne
<nicolas.dechesne@linaro.org>:
>
> On Tue, Mar 16, 2021 at 8:07 AM jchludzinski via
> lists.yoctoproject.org
> <jchludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:
> >
> > It certainly appears to be BUT I'm not certain what I'm looking at?
> >
> > What is meta-openembedded?
> >
> > Is it a GIT repo that can be cloned and built?
>
> Short answer is yes. The whole Yocto Project / Open Embedded concept
> is based around 'layers. A layer is a repository that contains recipes
> (and/or machine/distro, ..). The Yocto Project releases include a
> couple of common/core layers, but there are plenty of layers out there
> which can be used
> I am sure there are quite a bit of documentation on this topic, but
> perhaps you might want to start with:
> https://docs.yoctoproject.org/overview-manual/yp-intro.html#the-yocto-pr=
oject-layer-model

Or grab a beer and start bingewatching
https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj

</SCNR>

>
>
> >
> >
> >
> > How do I use this to build spidev-test?
> >
> >
> > ---John
> >
> >
> > On 2021-03-15 19:54, akuster wrote:
> >
> > On 3/15/21 4:11 PM, jchludzinski via lists.yoctoproject.org wrote:
> >
> > I got a piece of code from github:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tre=
e/tools/spi/spidev_test.c
> >
> > I'd like to add it somewhere under /*tools/testing*/ and build it ther=
e.
> >
> > Not sure if this is appropriate? If so, how do I go about this?
> >
> > If not, what's the best way to build this?
> >
> >
> > Is this what you are looking for?
> >  https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-k=
ernel/spidev-test/spidev-test.bb
> >
> > -armin
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
>
>=20
>
