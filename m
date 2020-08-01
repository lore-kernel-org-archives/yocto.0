Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web12.11063.1596291033570236765
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Aug 2020 07:10:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=blTGQYhS;
 spf=pass (domain: linaro.org, ip: 209.85.208.173, mailfrom: sumit.garg@linaro.org)
Received: by mail-lj1-f173.google.com with SMTP id t6so22286547ljk.9
        for <yocto@lists.yoctoproject.org>; Sat, 01 Aug 2020 07:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IEF/OLmBPsvcUh/X20LSAf49hdQLw6rJXz77YJWr+Ik=;
        b=blTGQYhSraznW6PpBPLQggDTWOjLGk545QcFzO678SNdevnKZF9K9jU+SKiVrDdONF
         zbkVJdu4DgL0yu0OWEY87RcG0h/B4DtNIgwjEBl53G829T7u+iSKSNW1fnUH3m5YTKqD
         1yPQNu1XQ94oQtu9jaMRMzi5DJihb//qg8XvRb7jk0OUAtVITSHrXYBbushCle5pZNBk
         5jJhHo0e76f99nSnC7esnfdAWgDDpHbuY5orH91iujZ4bkQTLFiEqgZAm/zUa7yhAPP9
         sJk6FsG6J7uj5RDN6KYGujA+rOrKe+vNG2sI5WJkd1x0WpeUdhlY7iX+JCH93AVslKkL
         ving==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IEF/OLmBPsvcUh/X20LSAf49hdQLw6rJXz77YJWr+Ik=;
        b=WM5JDrj2vGkbLpbNLp6OmMKKnUiH8O9ra8fJg6QHCr1nqFUWC3Rd6ekmhGE8LfJ8V1
         cUkT8iMoLNBTS9F2nwQqy2lrLtqemmywM1hTGxAGaquyvUi3/FI+D1CBVeLTujiNv0Nx
         8QMhTjQICfhNYRJekDfTvhN7ZqrCP0EfbbsGo7vHD80flBTpM43w/NZ7w8byYri9gfpU
         5spUW1zoEWIPhBnB69DsuDIoD0raPXTJ1yq3TdCJ80mgiGbGL16N2QucsyLCfz74Zuan
         ahiJEXgh0IHdOqKAkd/ImVVkeRTewVUU9iMcHkOwTq/vcuQuwF2LprCAAka4c+WMWu05
         auQw==
X-Gm-Message-State: AOAM531sqGQl1RwsP6EbAlIp3xckSiGu40WpeIF+WtfURxuBHATn02Qi
	fYVbzUd4IMRvJ+x4yPs56UcrwVMBQsRWRwOALMiVcA==
X-Google-Smtp-Source: ABdhPJyFbHUQpXA5nBxbygoCUCxM/w0YuL+taH4HK9nSpx2o/Dg9LMiiI+KuzqRQG/fb+/5/Qg9ZC95B/fq1V/8oLpw=
X-Received: by 2002:a2e:7019:: with SMTP id l25mr3627129ljc.256.1596291031700;
 Sat, 01 Aug 2020 07:10:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
 <CAMKF1spvGdBqu_jUjByj333LSDg=u3P_LS98BzHh5Ecq3cCA8w@mail.gmail.com>
 <CAD0U-hKWOkCr0dAtfFY4k9+ZerV_ic-GpDc_0=5DQiwaYHuFWw@mail.gmail.com> <CAD0U-hJDL-sbbuQnVwcMYecvWOCi0=QuKK+FKGjazpC_ZeP9Tw@mail.gmail.com>
In-Reply-To: <CAD0U-hJDL-sbbuQnVwcMYecvWOCi0=QuKK+FKGjazpC_ZeP9Tw@mail.gmail.com>
From: "Sumit Garg" <sumit.garg@linaro.org>
Date: Sat, 1 Aug 2020 19:40:20 +0530
Message-ID: <CAFA6WYMYOiUfHpvFb+jF64f5r5UWpP7KmRuJDcfos0m_t9g3ig@mail.gmail.com>
Subject: Re: [yocto] dunfell gcc-sanitizers-arm-8.3 fails to build
To: Ryan Harkin <ryan.harkin@linaro.org>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org, 
	Ralph Siemsen <ralph.siemsen@linaro.org>, Jon Mason <Jon.Mason@arm.com>, 
	Nicolas Dechesne <nicolas.dechesne@linaro.org>, openembedded <openembedded@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, 1 Aug 2020 at 14:57, Ryan Harkin <ryan.harkin@linaro.org> wrote:
>
>
>
> On Sat, 1 Aug 2020 at 10:09, Ryan Harkin <ryan.harkin@linaro.org> wrote:
>>
>> Hi Khem,
>>
>> On Fri, 31 Jul 2020, 21:58 Khem Raj, <raj.khem@gmail.com> wrote:
>>>
>>> On Fri, Jul 31, 2020 at 8:35 AM Ryan Harkin <ryan.harkin@linaro.org> wrote:
>>> >
>>> > Hello,
>>> >
>>> > I'm migrating from Warrior to Dunfell and I'm getting a curious build failure in gcc-sanitizers.
>>> >
>>> > Here's the full gory detail:
>>> >     https://pastebin.ubuntu.com/p/nh4cDKMvgS/
>>> >
>>> > However, the main error is this:
>>> >
>>> > | In file included from ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_posix.cc:193:
>>> > | ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_internal_defs.h:317:72: error: size of array 'assertion_failed__1152' is negative
>>> > |      typedef char IMPL_PASTE(assertion_failed_##_, line)[2*(int)(pred)-1]
>>> >
>>> > I have no idea where to begin with this. I don't even know why gcc-sanitizers is included in the build, what it does, or why I need it. I'm building an image with dev packages and gcc, so I guess that's why.
>>> >
>>> > I've hacked meta-arm to patch sanitizer_platform_limits_posix.cc to null out the macros and that builds fine. I'm sure it won't work, should someone want to use it, mind you.
>>> >
>>> > Is there something obvious that I should be doing as part of a Warrior -> Dunfell migration to get this to work?
>>> >
>>> > note: Warrior used meta-linaro-toolchain and for Dunfell, it's moved to meta-arm-toolchain.
>>> >
>>>
>>> is gcc 8.3 the latest for linaro
>>
>>
>> I assume so. I haven't attempted to change the default.
>
>
> I'm sorry, that's incorrect: local.conf has an over-ride to specify 8.3.
> I've just removed it and now it's using 9.3. And it's building fine.
>
> Sumit, do you know if there's a reason for using 9.2 in RPB instead of 9.3?
>

Arm GCC 9.3 toolchain isn't released yet (see here [1]).

[1] https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-a/downloads

-Sumit

>>
>>>
>>> > Regards,
>>> > Ryan.
>>> > 
