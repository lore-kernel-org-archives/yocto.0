Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web12.11184.1596291566441350981
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Aug 2020 07:19:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=aWWSjyfo;
 spf=pass (domain: linaro.org, ip: 209.85.208.170, mailfrom: sumit.garg@linaro.org)
Received: by mail-lj1-f170.google.com with SMTP id i10so469617ljn.2
        for <yocto@lists.yoctoproject.org>; Sat, 01 Aug 2020 07:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xHJxcM1kebhNvyk1m3Bi7eCLqDpBRiAR1s0mMrbs5CI=;
        b=aWWSjyfoeYUVFuIWr4iGZnWJxqcBmf6weUIdt49IZlyseiGThaBTe93SujNq/QcpM+
         D0XMJ/RC+kc65M50UASkVILm2R++1Iii28MjdShUGYklM5jX32gQ8Emy2DaKvhkOfIcY
         cquI4OToX3vINM3mAlGeVCKP/CX1auB3XujZJ3Q18nPwjrCwspGAQUEsqc+jD9QsHTQX
         ukkGNt27dcxisGGeeAjXrWJe0wNReDIWFWE+uf6J8fOMC2ypez09bRBaCsFuuacWfpDN
         CyW3rrKYxdvlESfjImyKZdvfljjMybzjdd7/lz+Qt5mBOJ7/ruZkEdycz15S8gWimbe4
         MP9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xHJxcM1kebhNvyk1m3Bi7eCLqDpBRiAR1s0mMrbs5CI=;
        b=hB/Xt6oDHjXU8co/XQNPOj3wYPT6WbLyj8F9h1TDRB/0WwacpIlqTDmpECZ8SNKcNK
         ClNGYjxisMa/hzThkn77ABD8kh/VLTswuXr/1cum8yXbE+nwKoKrrYEg13nLi7Mg8NsK
         nBFxEvwrQrsnKm11Z6s656XW9+MCX0k5OJ4R5vYWk4ZPBN8SwahO7OwuGzFor2ZNgYGL
         gYzZ6QmZWPsrdgTiCrljsdd/iz+rtVzszXpThRdgOeDgORgN24F+XlbLBthgGNmvP+xn
         uy5p/dIP/JJxtHFiEmXa7ZzKu8M1H4+X6jAkE+VqizE2Z2HQNgxd1NZsZTPXWoXyTD3M
         RFkg==
X-Gm-Message-State: AOAM530ve/R+UjZXwtvcDWj8YYXDzCXvdG9R4K6+A61zV4/o9oLUWTl1
	tKl1YNsB7Pl0B/W6SzQh6nK6ajBPMB98cbdH2uhvKg==
X-Google-Smtp-Source: ABdhPJyj470550lzBbBJzvkOEvK5eiCbwGDPWMX64dSYwftixf7N5bEcv83/iCAimWKO5T/nwKmPBoHwxAtgqapl/KM=
X-Received: by 2002:a05:651c:294:: with SMTP id b20mr3775101ljo.4.1596291564482;
 Sat, 01 Aug 2020 07:19:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
 <CAMKF1spvGdBqu_jUjByj333LSDg=u3P_LS98BzHh5Ecq3cCA8w@mail.gmail.com>
 <CAD0U-hKWOkCr0dAtfFY4k9+ZerV_ic-GpDc_0=5DQiwaYHuFWw@mail.gmail.com>
 <CAD0U-hJDL-sbbuQnVwcMYecvWOCi0=QuKK+FKGjazpC_ZeP9Tw@mail.gmail.com> <16272A3CFA65FC0B.22952@lists.yoctoproject.org>
In-Reply-To: <16272A3CFA65FC0B.22952@lists.yoctoproject.org>
From: "Sumit Garg" <sumit.garg@linaro.org>
Date: Sat, 1 Aug 2020 19:49:13 +0530
Message-ID: <CAFA6WYMkfqNRvd51Mmi=2wZNGwz0Xi7Y_Uhy4BhS4kDnvkoyRw@mail.gmail.com>
Subject: Re: [yocto] dunfell gcc-sanitizers-arm-8.3 fails to build
To: Sumit Garg <sumit.garg@linaro.org>
Cc: Ryan Harkin <ryan.harkin@linaro.org>, Khem Raj <raj.khem@gmail.com>, 
	yocto@lists.yoctoproject.org, Ralph Siemsen <ralph.siemsen@linaro.org>, 
	Jon Mason <Jon.Mason@arm.com>, Nicolas Dechesne <nicolas.dechesne@linaro.org>, 
	openembedded <openembedded@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, 1 Aug 2020 at 19:40, Sumit Garg via lists.yoctoproject.org
<sumit.garg=linaro.org@lists.yoctoproject.org> wrote:
>
> On Sat, 1 Aug 2020 at 14:57, Ryan Harkin <ryan.harkin@linaro.org> wrote:
> >
> >
> >
> > On Sat, 1 Aug 2020 at 10:09, Ryan Harkin <ryan.harkin@linaro.org> wrote:
> >>
> >> Hi Khem,
> >>
> >> On Fri, 31 Jul 2020, 21:58 Khem Raj, <raj.khem@gmail.com> wrote:
> >>>
> >>> On Fri, Jul 31, 2020 at 8:35 AM Ryan Harkin <ryan.harkin@linaro.org> wrote:
> >>> >
> >>> > Hello,
> >>> >
> >>> > I'm migrating from Warrior to Dunfell and I'm getting a curious build failure in gcc-sanitizers.
> >>> >
> >>> > Here's the full gory detail:
> >>> >     https://pastebin.ubuntu.com/p/nh4cDKMvgS/
> >>> >
> >>> > However, the main error is this:
> >>> >
> >>> > | In file included from ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_posix.cc:193:
> >>> > | ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_internal_defs.h:317:72: error: size of array 'assertion_failed__1152' is negative
> >>> > |      typedef char IMPL_PASTE(assertion_failed_##_, line)[2*(int)(pred)-1]
> >>> >
> >>> > I have no idea where to begin with this. I don't even know why gcc-sanitizers is included in the build, what it does, or why I need it. I'm building an image with dev packages and gcc, so I guess that's why.
> >>> >
> >>> > I've hacked meta-arm to patch sanitizer_platform_limits_posix.cc to null out the macros and that builds fine. I'm sure it won't work, should someone want to use it, mind you.
> >>> >
> >>> > Is there something obvious that I should be doing as part of a Warrior -> Dunfell migration to get this to work?
> >>> >
> >>> > note: Warrior used meta-linaro-toolchain and for Dunfell, it's moved to meta-arm-toolchain.
> >>> >
> >>>
> >>> is gcc 8.3 the latest for linaro
> >>
> >>
> >> I assume so. I haven't attempted to change the default.
> >
> >
> > I'm sorry, that's incorrect: local.conf has an over-ride to specify 8.3.
> > I've just removed it and now it's using 9.3. And it's building fine.
> >

It's using GCC 9.3 from OE core. If you wish to use Arm toolchain then
you need to override the default OE core GCC version with Arm
toolchain GCC version:

GCCVERSION = "arm-9.2"

-Sumit

> > Sumit, do you know if there's a reason for using 9.2 in RPB instead of 9.3?
> >
>
> Arm GCC 9.3 toolchain isn't released yet (see here [1]).
>
> [1] https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-a/downloads
>
> -Sumit
>
> >>
> >>>
> >>> > Regards,
> >>> > Ryan.
> >>> >
> 
