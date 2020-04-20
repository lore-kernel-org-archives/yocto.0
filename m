Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web11.2482.1587391221102589412
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Apr 2020 07:00:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=kocCnEzR;
 spf=pass (domain: burtonini.com, ip: 209.85.208.174, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f174.google.com with SMTP id j3so10008518ljg.8
        for <yocto@lists.yoctoproject.org>; Mon, 20 Apr 2020 07:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rQzC53B0tCxHeNLNGgpnqiGXfyby/4RRpPDCSU80fuY=;
        b=kocCnEzRuXr0TNKYy3TNUM8jWSp/mOr2ghpd7BoA3CUrpLSrE+kT2NTL8ObhvLzZo+
         ZAuaTqQc8SpmzjOJQGbalubGVXLClffyfCZ2ZWdtdJ/eRZbWWEZ43AgZoCZBTU0VayfC
         K6A3+SegMCHqxAzjiDcqFHLMUb8c61UtKF4efQ6MzK0JND+2EeU5RcZwxrUi6C5ENOpf
         E5WfXw2eJEmjCc/ZyUGB0Q1JCG6IJjWv6ljVz8rdbVdLDEsy83tdl3N63bKeSNQ35Tug
         CUQiQmefuRHQH3DZX/KCVRd24VsCDIxYQ03P2L7e2p8I+pjmYn2fQ9STPx3nsnwzJUk0
         Dqtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rQzC53B0tCxHeNLNGgpnqiGXfyby/4RRpPDCSU80fuY=;
        b=Gco47F7nCzGq0Tagwg1ZT7+hRTT5lzJk7jkHG3RJizTvh9S+HA60V+JIEVZYKUSgfD
         32aKd0zzks6Q5fIgARqz5pb1ABSvO2PHQO8fznV6PkteevqYa4Uur9VjtmRCOtJQrD4O
         Y0T7QWxNR2qOyvRqFIV+0xjmxq537t6e1ASYNQUxlcdnFmcVJdgS8Twh7MF8jHSv2doa
         AOktaJu9MF6ZJwFHIjnWKrOu2ru0OIQ/QtR1tlpmYbWjiGYHFs/7pyrYprxGbBn39MIB
         zlIrlmzCNqCqbFX7v8aAaDjbOwZzqRmN6Gf7wX+J0ajY0FAtV98fa1E0dwsfYnYiQZi2
         ogbg==
X-Gm-Message-State: AGi0PuY2cBjy63y6OlTym4rdgB0z5yOm92uIPt78iy6xewgd+yphtHQl
	8Rbmr1Ql/vsrWuLKTvBirygPKDuwX71CoyyjI9figA==
X-Google-Smtp-Source: APiQypIAlPPzidXH2ON2C+wnTPBIJiSrIfveeJjXD9FREqsbqinbSG5ih+ZqG+HmtuaiGonIw+q629QHMo7d1FuET3Q=
X-Received: by 2002:a2e:878a:: with SMTP id n10mr10155460lji.130.1587391219019;
 Mon, 20 Apr 2020 07:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <CALxgiWnh2Aw0o=dawV_MsnOPbfm1nzd1WkXPhrHgjYqDxoGzXw@mail.gmail.com>
In-Reply-To: <CALxgiWnh2Aw0o=dawV_MsnOPbfm1nzd1WkXPhrHgjYqDxoGzXw@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 20 Apr 2020 15:00:07 +0100
Message-ID: <CAAnfSTtTKvwaOSdDW8MX+_gkn5mV+fu8v_kL9VRXGvXfkGu-vg@mail.gmail.com>
Subject: Re: [yocto] Autotools bitbake recepie unexpected parameters
To: yocto@mjo.se
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 20 Apr 2020 at 14:43, Mikael Falkvidd via
lists.yoctoproject.org <yocto=mjo.se@lists.yoctoproject.org> wrote:
> EXTRA_OECONF = "--prefix=${D}/usr/local"

This patch should be relative to the target, so /usr/local.

The entire point of the autotools class is to call the autotools with
common arguments, which is why it is passing more options.  Note how
you're setting ***EXTRA***_OECONF.

> I think I need to find why these parameters are passed, and make sure they are not passed so ./configure can fall back to just using --prefix.
> Could anyone give me any hints on how to troubleshoot this?

Why would you want to remove the carefully constructed set of
arguments and replace them with just your one option?  Your build
would break, I don't see you passing --target or --host for example
would be fatal.

I'm not sure why you feel the need to install to /usr/local/ instead
of /usr.  Anyway, the real problem is that libfec isn't using
automake, just autoconf.  Thus, it's 'make install' is fundamentally
broken:

install: all
  mkdir -p @libdir@
  ...

At no point does it try to install into a 'destdir' for staging
without writing directly to your build machine's /usr.  You'll need to
patch the Makefile to respect a DESTDIR, something like this:

  mkdir -p $(DESTDIR)@libdir@

This sort of problem does suggest that the repository is dead.

Ross
