Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com [209.85.208.193])
 by mx.groups.io with SMTP id smtpd.web10.11012.1596290845058290611
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Aug 2020 07:07:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=p5ouvuYP;
 spf=pass (domain: linaro.org, ip: 209.85.208.193, mailfrom: sumit.garg@linaro.org)
Received: by mail-lj1-f193.google.com with SMTP id s16so19977530ljc.8
        for <yocto@lists.yoctoproject.org>; Sat, 01 Aug 2020 07:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Oc1Pg9sBWMh+0povR1o0lbHv/UHwfXW8ruPzkPhiOKk=;
        b=p5ouvuYPfrUseFDw3c4nc2eoMJ0RqcxG/XhNL7YYgscHE2uqqktRCNjUCSkWkxqMfP
         dKJAIfGDhN2DbnGpxpJjzSizTtlIaGs00FMOeXqG0e9IDESP0OshvtAju23X2rv9Hfqw
         iVfSA8yzfCrPhMhur1Tsb2aCz4/ON71TtGcA7xC5xdKnMFXENbsB9tVaX3y4AXaNUawP
         RUIh6HbTirEvXkCG47Kn3KldGBPPTeLpo8vkObyHH2fV/z+1QEkNfSkvesvw1wuRfwTT
         qmgDrbNIDaeWGjqWT5GlCnyr9nqAPb4IGcAcu3ugIVxsiNNAAQAn7GcOrEeM7NFjAU50
         dQrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Oc1Pg9sBWMh+0povR1o0lbHv/UHwfXW8ruPzkPhiOKk=;
        b=JQ8W92+3jgSpPYLeS6RWh4ACKA3Yj9u7X+z8fjOQSsDEWqw3YY3PojlRInTD7rBcKK
         tEKs4Lw3nNKpaw9gblKcIgKVcRuqlxboyuBa2Bd9JaWn8Cb78l/xB7Wt2wIIm9y5z9WM
         9ditfp5qk0bkwDzZpJHE7U5oftavzUSGpTjBdy6ezSFR/TnCKqHmeZz5cLue/dMPJNzn
         hoi2ehaN8Qr6iu5Zx8q4KgPLkeG/Jvet07CNpNf06e3adeqYGv5C8jETBIMFa22tmQoD
         svrcT4v/hXobvJyEU46K2mt3qKgLWdHU4aER3zufORPv/TKSSTOqhQ6t68yFj95ujEd9
         SAIQ==
X-Gm-Message-State: AOAM533Crs0YvUNzb3dMjOCtQVrzcjomhQLJQBNKRWS4X2hulYST1o7+
	NRrmfB/mZJWOGPc6hbT4Gp8CfbN+m0aU95h7UPwITw==
X-Google-Smtp-Source: ABdhPJxBch7Lb8gbW5BCqBtawc/ob1HQUFGtAnmw9WuQV/I37eu4C8rmjcGFd8ruhYmF6P1oAcP7jb7ndyf/kx7/VFw=
X-Received: by 2002:a05:651c:294:: with SMTP id b20mr3760097ljo.4.1596290843205;
 Sat, 01 Aug 2020 07:07:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
 <CAFA6WYPFfFyygzBc3enjDkr6bLeqeDau75iJ=2e8dju8cf7rzQ@mail.gmail.com> <CAD0U-hL-WUH-Sah5RPnPuEbYHyYpTdyTPRD1XD=f-U7MmbNROQ@mail.gmail.com>
In-Reply-To: <CAD0U-hL-WUH-Sah5RPnPuEbYHyYpTdyTPRD1XD=f-U7MmbNROQ@mail.gmail.com>
From: "Sumit Garg" <sumit.garg@linaro.org>
Date: Sat, 1 Aug 2020 19:37:11 +0530
Message-ID: <CAFA6WYOBuUw5kz2mWCaoUZNeAs91yJsGjzLS-A1b+FC7HCpKyg@mail.gmail.com>
Subject: Re: dunfell gcc-sanitizers-arm-8.3 fails to build
To: Ryan Harkin <ryan.harkin@linaro.org>
Cc: yocto@lists.yoctoproject.org, Ralph Siemsen <ralph.siemsen@linaro.org>, 
	Jon Mason <Jon.Mason@arm.com>, Nicolas Dechesne <nicolas.dechesne@linaro.org>, 
	openembedded <openembedded@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, 1 Aug 2020 at 14:42, Ryan Harkin <ryan.harkin@linaro.org> wrote:
>
> Hi Sumit,
>
> On Sat, 1 Aug 2020, 07:51 Sumit Garg, <sumit.garg@linaro.org> wrote:
>>
>> Hi Ryan,
>>
>> On Fri, 31 Jul 2020 at 21:05, Ryan Harkin <ryan.harkin@linaro.org> wrote:
>> >
>> > Hello,
>> >
>> > I'm migrating from Warrior to Dunfell and I'm getting a curious build failure in gcc-sanitizers.
>> >
>> > Here's the full gory detail:
>> >     https://pastebin.ubuntu.com/p/nh4cDKMvgS/
>> >
>> > However, the main error is this:
>> >
>> > | In file included from ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_posix.cc:193:
>> > | ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_internal_defs.h:317:72: error: size of array 'assertion_failed__1152' is negative
>> > |      typedef char IMPL_PASTE(assertion_failed_##_, line)[2*(int)(pred)-1]
>> >
>> > I have no idea where to begin with this. I don't even know why gcc-sanitizers is included in the build, what it does, or why I need it. I'm building an image with dev packages and gcc, so I guess that's why.
>> >
>> > I've hacked meta-arm to patch sanitizer_platform_limits_posix.cc to null out the macros and that builds fine. I'm sure it won't work, should someone want to use it, mind you.
>> >
>> > Is there something obvious that I should be doing as part of a Warrior -> Dunfell migration to get this to work?
>>
>> I would suggest you to switch to GCC 9.2 Arm toolchain for Dunfell.
>> RPB does the same [1].
>
>
> I can do that, I have no reason to use 8.3 other than it's the default. Is my problem a known issue with 8.3, or is moving to 9.2 a general suggestion?
>

AFAIK, as upstream OE switches to a newer GCC version, it stops
supporting older GCC versions. And since we are building here Arm
toolchain from source and rely on OE core recipes, so it is possible
that build could fail while trying to build an old toolchain version
using latest OE core recipes.

So the general recommendation is to keep the Arm toolchain version as
close to the OE core to avoid any possible build failures.

-Sumit

>>
>> GCCVERSION = "arm-9.2"
>>
>> [1] https://github.com/96boards/meta-rpb/blob/dunfell/conf/distro/include/rpb.inc#L31
>
>
> Thanks for the pointer.
>
>>
>>
>> -Sumit
>>
>> >
>> > note: Warrior used meta-linaro-toolchain and for Dunfell, it's moved to meta-arm-toolchain.
>> >
>> > Regards,
>> > Ryan.
