Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web09.2729.1606382040905810579
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Nov 2020 01:14:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=kw3zQILb;
 spf=pass (domain: konsulko.com, ip: 209.85.167.174, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f174.google.com with SMTP id d9so1599893oib.3
        for <yocto@lists.yoctoproject.org>; Thu, 26 Nov 2020 01:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gZ756p4Vli7KOgh4KydyzKAtCNZOvGQrQUnwHvkk65U=;
        b=kw3zQILb8+GLLs48sSbE6V18YY0qNZmS43ERrh9NfRSqxx3jUkX5E/nK6FCulVYUgN
         TVeH1Zwz8PKrvoKa7sVG0h8n6Mucz9vXg2dRZIAeWYRTHAKLHIGDcUM3WckTAaLYG3oS
         asw1c1cT8iPiT0BFX5synjMW4cl3Y9K+KwqP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gZ756p4Vli7KOgh4KydyzKAtCNZOvGQrQUnwHvkk65U=;
        b=GiVCuFekX+E6e1dF3LOsIiZc5GFfe5+fEtjRQK7pXWu1CH4VKBLtbsezgbQr7EYSRM
         cfmKx4bPicNckAv5W7RUc+mEm9J+wJzRmqdkpQNiCXTekrNDzh49h9AE5DNCOUIDcYst
         pHnlBTpQS7ibS780bpB1YzWP3vHPWJmq0YJRA/kJZz2sOQAELmYKKgKkgzJPV9g4g+RR
         f8GoUq3tj01D0ISPvhYUuCJNmimCTPyLzignT63f1qfTB5ElDslg18UK7y6CFYQVJfLC
         lvo6bWeKvs26Ak9cwz91hAik1NR6o3yIO7tduT7v4OhCJFuNAUicWPEyPFiVvdJwORti
         9Beg==
X-Gm-Message-State: AOAM532ZCX6qTVmSa4ApX0nFG9IrM7c/H9ohzziviAwZHARgcDpMf1AY
	FKW7BnF3d+JOJeHHlUsS5mMX4CTwKPs452x9bp6gFg==
X-Google-Smtp-Source: ABdhPJwhA0VZo4l/LIlYOTOvs2h1k5QqHVRMtsIuV5Ucarn8Lpqi2mOEq1gChJH0RdJ77m1Vw36+A0C86FUHL+tZoc8=
X-Received: by 2002:aca:4d51:: with SMTP id a78mr1410497oib.27.1606382040057;
 Thu, 26 Nov 2020 01:14:00 -0800 (PST)
MIME-Version: 1.0
References: <iKnI.1606360881941674696.AYmG@lists.yoctoproject.org>
In-Reply-To: <iKnI.1606360881941674696.AYmG@lists.yoctoproject.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 26 Nov 2020 09:13:51 +0000
Message-ID: <CAM9ZRVup1Z-6R8K2rmFkxD4+z=Zv1QEKT9k6rWORiTOZkW6=CQ@mail.gmail.com>
Subject: Re: [yocto] Use of USERADD_PACKAGES with out recipe package files
To: andrew.loader@nz.abb.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 26 Nov 2020 at 03:21, <andrew.loader@nz.abb.com> wrote:
>
> I have for an image append which I would like to add some users to but I do not want to add any files as part of the package
> so I  have a layer which contains a recipe called user-config-0.1.bb which has a useradd package USERADD_PACKAGES = " ${PN}-user-sys "  . then I have a USERADD_PARAM_${PN}-user-sys = " .."
> which adds some users not shown and I also have an add group param as well not shown
> I declare the package as  PACKAGES += "${PN}-user-sys" but do not set the package files because i do not want any
> and in my image bbappend file I install the package  IMAGE_INSTALL_append += "user-config-user-sys"
> The recipe builds but does not create a package and the do-rootfs cannot find the package  and fails with
>
> No match for argument: user-config-user-sys
> Error: Unable to find a match
>
> well that seems to be the meaningful part I guess
>
> How do i get yocto to generate a package which only contains user group creation part which can then be installed in my image
> I have added uses and groups before with files with out a problem, also this is greatly simplified but still shows the core problem

You probably need to set `ALLOW_EMPTY_${PN}-user-sys`. See
https://docs.yoctoproject.org/ref-manual/ref-variables.html?highlight=allow_empty#term-ALLOW_EMPTY.

Thanks,

-- 
Paul Barker
Konsulko Group
