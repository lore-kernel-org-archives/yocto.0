Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com [209.85.167.66])
 by mx.groups.io with SMTP id smtpd.web12.6058.1596264672929585145
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jul 2020 23:51:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=AXOUXNss;
 spf=pass (domain: linaro.org, ip: 209.85.167.66, mailfrom: sumit.garg@linaro.org)
Received: by mail-lf1-f66.google.com with SMTP id m15so17286880lfp.7
        for <yocto@lists.yoctoproject.org>; Fri, 31 Jul 2020 23:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6fZBAGDz2LbgcYhGsMsEU+77YET3/2NNHo5YqjVXbLs=;
        b=AXOUXNsswhLko4uNwXSl7UO0OkbSETy7R4EAegsEO715usXzcZ7TC1wJ9KW7z3Lnzc
         Acyvg5gpTIQmJzbf0anZ+p7ZrktC4dfUZm9cZb8idjSB862JsiOpJzl5cpR4vZpfMNJ8
         z+rZdvpBbZU8oM1et2K/C7SfPXv+DaHKbcNzLlvvSaJNQCKX+SRKJqwg0zn/HuycVrMd
         MI9MCh1KA1O8tZ/346e3OXLbkNXrMjpRXPrs+5Z7zHH/haQNelzHgJVsskfY2MpL4nO9
         jxa0vesAZVEVdKaqkMxWzX7qhGnwHq9RoIxVnhypiNAY8rjDEhK/BqZ0DNkg5SgUFg1F
         t56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6fZBAGDz2LbgcYhGsMsEU+77YET3/2NNHo5YqjVXbLs=;
        b=Wgeh1l9WWUdzhM9t4/5SaInbGqEOVECErD0dYkCcUXwxOYyRQ1OFQurqWaxBFG5fI7
         MXcA6w7pD5TUV4fiSoY/PAv8Ko2ZHog2nda0TJc83LeB5O3jJ9GUSKr3gjCKYS2ggkyr
         4+tlETcQGPrHZ2A4q/l1nRb53M4DQqWS1tf1ZjIKh/m+fEM7nj6hq864q1LUSjMiIYw6
         +VCTA6ob/ehH5nPGqJilt2L5RfvTa3VnZg72zWBJXWlfRNYrYy6oOskUPyaUo+tEkedM
         ETRZhB6KVO/qJc0Y0nfGQSOqb9s4I+wXvQkTMbLZm5msyZkbX0cC7eHLQMDeZK6H14cb
         D/lA==
X-Gm-Message-State: AOAM5305SGZuIjNIKjc0DcpsuZeGn3l4n9jaghwmFoVCuKomgypdAL/2
	MS2bSkuZHrGbxZjEU1Vd1Mo4jeqVMKFk5mf3gtieEA==
X-Google-Smtp-Source: ABdhPJxcYLLhCIaNq77hybP7VX+1rAApbknzD9iE1MHgP5GkiG9si/c6B6M1E8i/5CkaxTYUnJfElO/YS6IKeGtCst0=
X-Received: by 2002:a19:803:: with SMTP id 3mr3683022lfi.15.1596264670875;
 Fri, 31 Jul 2020 23:51:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
In-Reply-To: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
From: "Sumit Garg" <sumit.garg@linaro.org>
Date: Sat, 1 Aug 2020 12:20:59 +0530
Message-ID: <CAFA6WYPFfFyygzBc3enjDkr6bLeqeDau75iJ=2e8dju8cf7rzQ@mail.gmail.com>
Subject: Re: dunfell gcc-sanitizers-arm-8.3 fails to build
To: Ryan Harkin <ryan.harkin@linaro.org>
Cc: yocto@lists.yoctoproject.org, Ralph Siemsen <ralph.siemsen@linaro.org>, 
	Jon Mason <Jon.Mason@arm.com>, Nicolas Dechesne <nicolas.dechesne@linaro.org>, 
	openembedded <openembedded@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"

Hi Ryan,

On Fri, 31 Jul 2020 at 21:05, Ryan Harkin <ryan.harkin@linaro.org> wrote:
>
> Hello,
>
> I'm migrating from Warrior to Dunfell and I'm getting a curious build failure in gcc-sanitizers.
>
> Here's the full gory detail:
>     https://pastebin.ubuntu.com/p/nh4cDKMvgS/
>
> However, the main error is this:
>
> | In file included from ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_posix.cc:193:
> | ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_internal_defs.h:317:72: error: size of array 'assertion_failed__1152' is negative
> |      typedef char IMPL_PASTE(assertion_failed_##_, line)[2*(int)(pred)-1]
>
> I have no idea where to begin with this. I don't even know why gcc-sanitizers is included in the build, what it does, or why I need it. I'm building an image with dev packages and gcc, so I guess that's why.
>
> I've hacked meta-arm to patch sanitizer_platform_limits_posix.cc to null out the macros and that builds fine. I'm sure it won't work, should someone want to use it, mind you.
>
> Is there something obvious that I should be doing as part of a Warrior -> Dunfell migration to get this to work?

I would suggest you to switch to GCC 9.2 Arm toolchain for Dunfell.
RPB does the same [1].

GCCVERSION = "arm-9.2"

[1] https://github.com/96boards/meta-rpb/blob/dunfell/conf/distro/include/rpb.inc#L31

-Sumit

>
> note: Warrior used meta-linaro-toolchain and for Dunfell, it's moved to meta-arm-toolchain.
>
> Regards,
> Ryan.
