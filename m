Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.10702.1586444516208886790
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Apr 2020 08:01:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=LfwyR3dk;
 spf=softfail (domain: amarulasolutions.com, ip: 140.211.169.56, mailfrom: michael@amarulasolutions.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD128E0199F; Thu,  9 Apr 2020 08:01:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C75B6E01998
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2020 08:01:53 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id x4so80551wmj.1
        for <yocto@yoctoproject.org>; Thu, 09 Apr 2020 08:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=pU+CwQEUSLmjjMLzRAJkdDo9x+n25M/5dwY57x1NtKY=;
        b=LfwyR3dkEuk3Tr+kb6gV0H3MrURpO5lWyvx3jgtGJZoaQiRDBdOgxeLzbA9ptxzu8F
         c5DZjWu/Zt65NL1B17SIDjqC+y5KYvs/LNj0/wsBMVmJcW7xFI8qfnNQefQIt36FIdvT
         UYsYeCeWZdZUozG8ALmlZJYePgdE6I5EAGPRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pU+CwQEUSLmjjMLzRAJkdDo9x+n25M/5dwY57x1NtKY=;
        b=prjrk/PP+eqgA/IJgaiugiXbKn45kMIlnX4QLiNqnSgqjbQ6mWdOxyrjBMJ+QffzTW
         emQ780fskd79/ypzBza/kljGf/lwWI0FnFDJlISeAapJOM5J/wp0dnyiGcOFrpKUoG0U
         axGtSIploeIYuggUVzaUB/CSWLqdT2sNNCx8UMz6Mk0xq1j9cTWS9LU/ONT6CK7sRNDB
         GOJ0G6F7QbNIlmt0t7j6zYxzbR+qnZJPLOF6nLvcOBevA1aDAu37IETfYuHhIm9uOhyo
         V72Qb3v/x7fg0ErQffgWfhDeRza4ObwpZStmxH4RQ9OMAtIx22veFq2hob9JTxmp5yDi
         ChPg==
X-Gm-Message-State: AGi0PubwJhU8/keGqC3+ES1e4Y/i92LRRe/naA1SmceFWO2w8kcOG+HA
	ISaSRxBR0uEXethq3R3Sw2420PBunDQdp5RBLaHtqg==
X-Google-Smtp-Source: APiQypJez5pKL3SdsUhz2vmbYke2DV3WKxBv6BIINd7nE7U83BtEwJypmr4vyAae9CrSKERj04z8WXjCjtZjqG88gMA=
X-Received: by 2002:a7b:cfc9:: with SMTP id f9mr294408wmm.137.1586444512823;
 Thu, 09 Apr 2020 08:01:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSfHfn3uZNVsYMCRj0wgGEhpO+TS0-mQgz3X8WtLaWV9g@mail.gmail.com>
 <8EAE0909-1E78-4184-9769-DB4D2152A587@iki.fi>
In-Reply-To: <8EAE0909-1E78-4184-9769-DB4D2152A587@iki.fi>
From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Date: Thu, 9 Apr 2020 17:01:41 +0200
Message-ID: <CAOf5uwmHact_a8yhUMSkBXFMpqd5XbA+JKd3r27G1Yr3WVmCdQ@mail.gmail.com>
Subject: Re: [yocto] Shorten booting time
To: Anders Montonen <Anders.Montonen@iki.fi>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

Please give some information about your plafform.
Kernel release
u-boot release
architecture
ubifs or not

Michael

On Thu, Apr 9, 2020 at 4:25 PM Anders Montonen <Anders.Montonen@iki.fi> wr=
ote:
>
> On 8 Apr 2020, at 14:59, JH <jupiter.hce@gmail.com> wrote:
> >
> > I am running Yocto built Linux on an ARM device, it takes about more
> > than 1 minutes to boot from NAND and kernel, any good strategy to
> > reduce the ARM device booting time? I can think of cutting down
> > unnecessary configures in kernel.
>
> If you=E2=80=99re using systemd, you can use systemd-analyze to get some=
 boot performance statistics. They can help identify slow-starting services=
, dependency chains, and other bottlenecks.
>
> -a



--=20
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |
