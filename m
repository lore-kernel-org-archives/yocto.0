Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5814.1589639451135581910
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 May 2020 07:30:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=olIlPlXz;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8115E00CD1; Sat, 16 May 2020 07:30:50 -0700 (PDT)
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
	*      [209.85.160.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0F0EE00A6B
	for <yocto@yoctoproject.org>; Sat, 16 May 2020 07:30:49 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id x12so4476984qts.9
        for <yocto@yoctoproject.org>; Sat, 16 May 2020 07:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ta3Tvvy/3R9SD7Ij0p/44xfdZqyo0/DpzX8tstCWhd8=;
        b=olIlPlXzwxLutRKO6Pv47F3P8LvNCHJ34HeaDsy79pKgdMXcKfSscTaNKR32eFNkJt
         xxiHYlzIaOxx/AfuKXtHT1A647CPa0Iw5pIMBqVmBz5uN1u6L8KghlHLVfeV13wo4NBd
         0mnoGYO4AhWGSQ0jSM7M64noNp8PRTrkZfc2XixCn+XbimiXFwAZKljh3eQW94SghXh5
         Lz8dzuOgD9kSXCTsgiCGP3mStVtcTnbkCwIJ9cF+quJ7mDCT1cjEjCkgwUf6IVzf3vWP
         aG4ZpTdsWtT/K2uyOnX0Nvz5rYXzvtNtMbAVtgU0wFOrvrxVToxyXLjamlC1Fe9wKzz6
         hD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ta3Tvvy/3R9SD7Ij0p/44xfdZqyo0/DpzX8tstCWhd8=;
        b=W/foCP/Y/xAtIF+8Ync9/AAnqS6vylDrcv9Gc34vYXd+kDg80zwWyQImhDsulLepvn
         xVK7BXIEyEOMEZM23qRuHAeI8BDwMIdAPDCpX7qijjqzw7Dtfp9RCD3+iz1AMP9IL7CP
         mX87DdqFLNizEI3cJnUysb0BpLmyOQZpSBNyZ8yjQozjZ47R/C7nUJroU32QrH/CcAYT
         mUKr5d1Isn8uqqSQKYSY0JnIZcv1sXYnkQxTX7n4um2fZpiWJ757tdErH6yYB1N6iwM2
         gSsvC4Q7YatmMJ7VG7g7m+/SCQa67Y2nczfQXfHs0gHPeGmTg1qXUh1pmytFwmfPvvYk
         DEEA==
X-Gm-Message-State: AOAM533SuJxj0g1t8P4i9brssYwwf+OJHaOc2doW9b58SlY1OSmjOoxX
	w72yQ5f275ZBA5W2FxgNrYSXCT6xY4IHZUMXe48=
X-Google-Smtp-Source: ABdhPJx0MTSK+ckJbVGBIjbgMUGxyhZSXm3W+NEK6l5uHReny7fJzw8qqapQ/mmMBd/Bp+86eJxmaaXeOvGTSQZN6yc=
X-Received: by 2002:ac8:668b:: with SMTP id d11mr8273557qtp.285.1589639448966;
 Sat, 16 May 2020 07:30:48 -0700 (PDT)
MIME-Version: 1.0
References: <5e93c06b-61a1-a89c-a2f7-0dadda804be2@googlemail.com>
 <ce772f60-45d4-61c1-5305-53c571cd4079@gmail.com> <eb4ddd34-4b76-4f9d-a41a-cc06058296da@googlemail.com>
In-Reply-To: <eb4ddd34-4b76-4f9d-a41a-cc06058296da@googlemail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sat, 16 May 2020 07:30:22 -0700
Message-ID: <CAMKF1so+aUFHpw6EBfZcrTpO0wsSDVVfnmGON+2y15ZQb1cw+g@mail.gmail.com>
Subject: Re: [yocto] Package libgcc-lic cannot be installed into the image because it has incompatible license(s): GPL-3.0
To: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, May 16, 2020 at 7:12 AM Matthias Schoepfer
<matthias.schoepfer@googlemail.com> wrote:
>
> Hi Khem!
>
> On 5/15/20 4:46 PM, Khem Raj wrote:
> > On 5/15/20 2:32 AM, Matthias Schoepfer via lists.yoctoproject.org wrote:
> >> Hi!
> >>
> >> I am trying to migrate to dunfell. Out customer does not want GPLv3
> >> or anything like that on the firmware.
> >>
> >> So - same as in zeus - we have a line:
> >>
> >> INCOMPATIBLE_LICENSE = "GPLv3 LGPLv3 GPLv3+ LGPLv3+ GPL-3.0 LGPL-3.0
> >> AGPL-3.0"
> >>
> >> during do_rootfs, the process fails with:
> >>
> >> do_rootfs: Package libgcc-lic cannot be installed into the image
> >> because it has incompatible license(s): GPL-3.0
> >>
> >> The package basically consists of the license information for libgcc,
> >> libgcc is allowed due to the linking exception.
> >>
> >> Even, when I try to allow this package with something like this:
> >>
> >> INCOMPATIBLE_LICENSE_pn-libgcc-lic = ""
> >> INCOMPATIBLE_LICENSE_pn-libgcc = ""
> >>
> >> which has worked in the past to have an in house debug image with the
> >> gdbserver on it, it still fails.
> >>
> >> Am I the first to experience this? Am I doing something wrong?
> >>
> >> We do
> >>
> >> COPY_LIC_MANIFEST = "1"
> >> COPY_LIC_DIRS = "1"
> >> LICENSE_CREATE_PACKAGE = "1"
> >>
> >> as well, if that info is needed.
> >>
> >> Any help would be appreciated.
> >>
> >
> > Can you try adding
> >
> > LICENSE_${PN}-lic = "GPL-3.0-with-GCC-exception"
> >
> > in meta/recipes-devtools/gcc/libgcc.inc
> >
> > and see if it helps ?
> >
> It did help, thank you very much! I needed to repeat this for libgcrypt
> and libidn2. It does look like a bug though, does it not?
>

if it happens on master too then send the patch to openembedded-core
mailing list

>
> Regards,
>
>
>    Matthias
>
