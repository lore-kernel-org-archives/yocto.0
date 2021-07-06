Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.1426.1625529736671742143
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jul 2021 17:02:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aSMTtigl;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B506138C069E
	for <yocto@yoctoproject.org>; Tue,  6 Jul 2021 00:02:15 +0000 (UTC)
Received: by mail-qv1-f41.google.com with SMTP id g15so6573924qvi.13
        for <yocto@yoctoproject.org>; Mon, 05 Jul 2021 17:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2qDd0u9SMbxR3gO15uoKSHE/MPa5sjhodACDCMC7oWQ=;
        b=aSMTtiglIGhl08mBfXJtsq2wTPJ+u4hwOKOaNl4sjyd5AlCsDMTzwHW+xjcibDCVmX
         5SCx3pUCWKKi7Ap5M9P1h7WcUCzAYgQIKT5ePnoPiKJM3L2fV2IZsMojMr/yWCw6fX2K
         GWp0eLPaH764pDzpzgYKIKU+a/cCsAUBB9nUoAU+N7WMH+AVAYGp4QE0CxIyqVWdQq6i
         lZfnRihMM8sTXZ/eSSR1kKokZmEHvIdKmn9wNk7trFqmkIqL8r5ydgKhBIR3DAvSAUpH
         /DP8MwLeulYlsc6M7/DeyeERW5akBdmjTNydLWdtm+JlzgRfzulR7vbtwh3M/0ymwYjb
         khqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2qDd0u9SMbxR3gO15uoKSHE/MPa5sjhodACDCMC7oWQ=;
        b=UUplQcfd+U/FFCDVZcemm2CdiBaygkKdjyXCfssJuZj2Vfg/nVsnEzs+dX2DHYeQKc
         GYxkfCm5rNmXpRFt3TP9Iipfj01WCcmfcjT8BoStiDJ3h3GwpLQ+/349R89G9AP1aPji
         5c4+22KyLOWOZXew/U1PvGVhduTEihnwsS3LzrwtJYio50otWFONh/iHeRSnWoEKIX0q
         yRrLmsIGbklTsdiU6VWWxvh5kpupRFCnxpR7dBfraBAnobdZfY00niZ1jrsZDqloej9k
         tnL3DXJMfBJbXy3D9dDMfuMG+PhFPpLyNW3v2w3TqMKX9vmIhd5EaZyULqBHT4xhCAaJ
         X/jQ==
X-Gm-Message-State: AOAM532bhQexuzgRMsMDV5RvQFQO+kgI8K6hIuZvlyxrWQkeKpN/kJnZ
	9TdqasYI/3zWLADGjtMmX6r6ea4ITTZnlALnWnQ=
X-Google-Smtp-Source: ABdhPJzH0zqS8Xuf+Rcsw+ZIGTuu7f4TX4rY4ETFieaHzRsmb/t+smYUhvIjNjLukj532oE6U7IQQ/t3Ciz/dMYsezc=
X-Received: by 2002:a0c:80c1:: with SMTP id 59mr15708027qvb.31.1625529734748;
 Mon, 05 Jul 2021 17:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <f3333619-005e-02f7-e26a-bd7d3e810e58@gmail.com>
 <CAMKF1sqSkPjtfaOH=mF4Vzp4o+pQgaSy48_XDPRG+TKLVWVX=g@mail.gmail.com> <8bfb3511-b2b6-1ad1-7271-b72c00cecf3c@gmail.com>
In-Reply-To: <8bfb3511-b2b6-1ad1-7271-b72c00cecf3c@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 5 Jul 2021 17:01:48 -0700
Message-ID: <CAMKF1sqNSERLVA7VPt+=GEQMucBmFqZofdNbyjXbj1W-x_73AQ@mail.gmail.com>
Subject: Re: [yocto] meta-parsec build failure
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Anton Antonov <Anton.Antonov@arm.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 5, 2021 at 4:50 PM akuster808 <akuster808@gmail.com> wrote:
>
>
>
> On 7/5/21 4:15 PM, Khem Raj wrote:
> > yeah perhaps try using -DMBEDTLS_FATAL_WARNINGS=OFF
> I would love to try that out, Where would I apply that?
>  mbedtls is a dependent create to a dependent create to parsec-service
> recipe.  The Rust paradigm in OE  does make my head hurt.

yeah perhaps you need to fork this repo and let main package know via
editing the toml file perhaps.

>
> -armin
> >
> > On Mon, Jul 5, 2021 at 1:57 PM Armin Kuster <akuster808@gmail.com> wrote:
> >> The parsec-service in meta-parsec has been failing ever since gcc 11 was
> >> merged into core.
> >>
> >> https://errors.yoctoproject.org/Errors/Build/123537/
> >>
> >> I have already opened an issue with upstream:
> >> https://github.com/parallaxsecond/rust-psa-crypto/issues/85
> >>
> >> If anyone is interested in this package, I could use an extra set of
> >> eye's on progress of this build failure.
> >>
> >> regards,
> >> Armin
> >>
> >> 
> >>
>
