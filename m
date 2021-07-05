Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.959.1625526983635495028
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jul 2021 16:16:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t/43ndZJ;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 80EB738C0921
	for <yocto@yoctoproject.org>; Mon,  5 Jul 2021 23:16:22 +0000 (UTC)
Received: by mail-qt1-f177.google.com with SMTP id c13so13204191qtb.12
        for <yocto@yoctoproject.org>; Mon, 05 Jul 2021 16:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OdAMC/qHiSDGf+cTEo1qbBGAOCOiLKRFey6KRDhbWKc=;
        b=t/43ndZJQMSWeWDYCHaJVw8yFKoCiXG1obehmGqhzuVVKyDnQSF+f71sM1DdS6mnrh
         eI+SUQSX2aynO/0KNGDUPqXImNujDsGNjsXmTuWeojUKJhTaNO8pai0c27rNhQtVrZC2
         W6pmyEGP3HR38FywF3+mH5xSik7dYTFGvF5yWljJojYtvFeBvh70K2fzc3EqJjymcfnY
         qKoxKrOSzeGP1vn9uYvHZjYozE1UIaNZucNYTruHOtAyWBAL2zv2kULTohGHU9oWb+bC
         0DSbQO4UTi/+P8RD5MXkL0sLace36g1y74jpR/sCa3EWJDsNWTGenvIFyMZwxyqzm2vM
         ReDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OdAMC/qHiSDGf+cTEo1qbBGAOCOiLKRFey6KRDhbWKc=;
        b=ck9qolOxhT0UE78AVFBEH4ZjN9B9ZxJil1+FQSJo78pucjtUJ78o/ktqyChF34zw4E
         VYaWgYs/PaljL169a0c7d13rw5aKJ3VIEmpm/2tw2aTzyg//GnCXl65CibaLBhOZ2eFS
         mhaGHDQyvjbXNE/OuK5JK1TrBzQOWISOxw4BMS1cqFbHVYYjTaD3h4RvgDphVY7UtMaM
         og20aGy+Nu3KE6l5/L6ktpPrpo2mYwuIK9ZcJR9PpwpoKnQXXOscKJkhDxB7lNJQiYot
         EbYn9qwwvuUI9NAfuf1Pu53imvounBqyIgs3T1N0oCeVERTf1yAolmKaXw6Cznd3769R
         0Yvg==
X-Gm-Message-State: AOAM533KitQEnmGA9AIpWzxmmC4TAEEau0RdGiAmkHdWBZAwcUR8YVFi
	kLt/1u4xaayRnNtxks2T0ddogURm7n+288vvIR0=
X-Google-Smtp-Source: ABdhPJzL2KrwtnDhS2T0m6PMnmK7qbT5vAx4TKgwikntnySQoC5uZvuJ5I4+Pl8eZzQ7rH47OoP0HY7X67N8z4HDTBA=
X-Received: by 2002:a05:622a:1192:: with SMTP id m18mr2071498qtk.369.1625526981631;
 Mon, 05 Jul 2021 16:16:21 -0700 (PDT)
MIME-Version: 1.0
References: <f3333619-005e-02f7-e26a-bd7d3e810e58@gmail.com>
In-Reply-To: <f3333619-005e-02f7-e26a-bd7d3e810e58@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 5 Jul 2021 16:15:55 -0700
Message-ID: <CAMKF1sqSkPjtfaOH=mF4Vzp4o+pQgaSy48_XDPRG+TKLVWVX=g@mail.gmail.com>
Subject: Re: [yocto] meta-parsec build failure
To: Armin Kuster <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Anton Antonov <Anton.Antonov@arm.com>
Content-Type: text/plain; charset="UTF-8"

yeah perhaps try using -DMBEDTLS_FATAL_WARNINGS=OFF

On Mon, Jul 5, 2021 at 1:57 PM Armin Kuster <akuster808@gmail.com> wrote:
>
> The parsec-service in meta-parsec has been failing ever since gcc 11 was
> merged into core.
>
> https://errors.yoctoproject.org/Errors/Build/123537/
>
> I have already opened an issue with upstream:
> https://github.com/parallaxsecond/rust-psa-crypto/issues/85
>
> If anyone is interested in this package, I could use an extra set of
> eye's on progress of this build failure.
>
> regards,
> Armin
>
> 
>
