Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com [209.85.208.195])
 by mx.groups.io with SMTP id smtpd.web12.42491.1602513157730169344
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Oct 2020 07:32:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=Mf4bdKNm;
 spf=pass (domain: burtonini.com, ip: 209.85.208.195, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f195.google.com with SMTP id p15so17143058ljj.8
        for <yocto@lists.yoctoproject.org>; Mon, 12 Oct 2020 07:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IbclDe5Ws4moHI9Xjwyrq6foJhaimOf5w1VE7b8+5Y4=;
        b=Mf4bdKNmoo74s1HKyKfawhsu0G18iZ6OPC+uhU/DzcnwXkLnYq6UL0I9Pkv8ON69O+
         0QlkxDkzqsAhbOrbspZ5cl2LM6Xubry0VWJWDbg5DK1fvDSNR//zA3sTASMuFWpp4UG1
         SRH3QJlWQ+51bG+lUt33zlH7woK35jjPq679+FXsJ7jSYMgBUI+tv6q3FvZwgju/kdvQ
         aGebkZ2yWduU4qy+ldZvPTWymYdiCaUKgg5+dSOmWfFvxHh34lvyNrZ9hdhFVvy1smeZ
         4EQY21+XDMPZad3zKdhvBFppyfB8VnLLgKGHkQAkpeJ2+hjBbC1naQFUaPTbQTtotQ2y
         ZB/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IbclDe5Ws4moHI9Xjwyrq6foJhaimOf5w1VE7b8+5Y4=;
        b=OYpE5OK6/bLFgZ5nlXrPPKqUXWq+rOZwvrde50sK9rYvTxtrPilABF2HPZsqqkFLLY
         AFi99hzUEsCRfbA6S2ljvoaFLig09TAtFLOrGoA67+CBx0L6k//REAJGjThOl/GxQIpi
         DrWA68oUzFj8hG+R+vXzWBSRHL7nc7hp/EJvsq5gdsaJSoAYdkq6jS146kPJ/1dPUR9g
         vgnuWblk4A+LIlI29d5U0wIYRDPH75JcmxElFPNrezlr6jB9UM5U4txTvQYxsHMH/3uD
         b4BFF6CjgDCr4xkBdd/go64U/E4sLWpimD/q1YglyBufRprCPbGWiVZLlol1Yy8AgZQM
         YRdA==
X-Gm-Message-State: AOAM530xijr2uCyBZnjKp8CgFi+v5i9L2Kc9QIHkMJ9slsdtP5oIZzO/
	vX2gLOrIYrWpvIzJiDY7+6Ii1LZXaB9mHZT3PxTEAQ==
X-Google-Smtp-Source: ABdhPJyEpViqY5NwU9IlVg5toe8RS/VGWs7YCAqK0C2+piRbmpkOsilHJ90/ldBWr5V0HzchLJknuDmzJ/dii9t+HJU=
X-Received: by 2002:a2e:9eca:: with SMTP id h10mr9097048ljk.352.1602513155444;
 Mon, 12 Oct 2020 07:32:35 -0700 (PDT)
MIME-Version: 1.0
References: <nOYG.1602293414135635237.jKAt@lists.yoctoproject.org>
In-Reply-To: <nOYG.1602293414135635237.jKAt@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 12 Oct 2020 15:32:24 +0100
Message-ID: <CAAnfSTvf8z28HsfCCM-nFSYjgbzoya259E-CZEr0TRryervy+w@mail.gmail.com>
Subject: Re: [yocto] Bug 13807 - add support for elfutils debuginfod #yocto #yocto
To: Dorinda <dorindabassey@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi Dorina,

On Sat, 10 Oct 2020 at 02:30, Dorinda <dorindabassey@gmail.com> wrote:
> I am an Outreachy internship applicant, and I would love to assist on this bug #13807 - add support for elfutils debug info server.
> I would like some more detailed information about this bug, and what's needed to get started on this task.

The first comment on the bug gives a brief overview:

1) Enable debuginfod in elfutils.  This should be a PACKAGECONFIG, and
the build needs some extra dependencies (libmicrohttpd curl sqlite3
libarchive).  Initially disabled by default.  This should be
relatively straightforward once you understand how a recipe is written
and how PACKAGECONFIG works.  All of those extra dependencies are in
oe-core already apart from libmicrohttpd which is part of meta-oe, so
you'll need to add that layer to your build configuration.

2) Add support for ipkg to the debuginfod scanner. 0.178 only supports
RPM but the next release (and git master) can also scan .debs, and as
ipkgs are binary-compatible with dpkg then this is a trivial addition
to the filename matching. This is literally a two line patch to
elfutils.

3) Verify that running debuginfod manually over $DEPLOY_DIR and
setting DEBUGINFOD_URLS correctly works. Test case: debuginfod-find
source hexcode /bin/bash.

4) Determine final integration. Straw man proposal: a class that turns
on debuginfod for elfutils and sets DEBUGINFOD_URLS in the image, and
a script that runs the elfutils-native debuginfod on DEPLOY_DIR.

The first step is critical so start with the Yocto Project
documentation and understand how a recipe is written.

Regards,
Ross
