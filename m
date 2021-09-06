Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web12.26784.1630958627373291490
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Sep 2021 13:03:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LW9i7POE;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id r21so6207334qtw.11
        for <yocto@lists.yoctoproject.org>; Mon, 06 Sep 2021 13:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tYNxiQUeFdqi5Os1E1c2GtM/h/AOnRN6K9b/SQyY4Yw=;
        b=LW9i7POEdxz+BG6R+8kxzjDX60eco3BrWjfAu91v15r1rXb3kW2TWYqXgU+piZDPn3
         Wvf3Ch31Lystm2xb2sl2bZgJD+Wi9WqRfz6wjzEhwDu/PGQZ/PVs5xlNHl/qduhmbQWT
         lY0hxljT/VjnvM0q4/XEx6/MSUj0vurBod433w2wdEZapCv8umGfutk/VuPh8S0rjLRm
         bossjzOdK6ICJ5KwYy5lIJd349TcTe84VtFlvjWU3/VbA2dXopDvmhoIBgz8R/AS0Fp8
         VYLRkUWRtBlFpPRoijQXSoKw5R+MYhiKwPN9rx4kIAY3f5+B7shpExMDJMqOluaN+Uu+
         FsLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tYNxiQUeFdqi5Os1E1c2GtM/h/AOnRN6K9b/SQyY4Yw=;
        b=L17vpram8Y/ZAJUvKLtwxlpPd8fDHvYPCZjmbRdcSL5RPzsNgivPYAK0RUoTXso9Fq
         ODyaWu7+PCiCr9Jaqn2fpzBYcuPBa7xBl0R7bOYdCW3MtRGPxxB4V63XCR3Qd9O6FXqI
         YSvbhsRy2OFQh3qhi6G7WZq50AaoY4j+rgNSt4uys2bw/F6P3s9gGTz/Keq3THKNhyMK
         xXmwKpOHJOOgMQ3roEm61VDvpQH5pFZgUShhOomOsEBb+fNTnmONCvmuRtD64hbVa+tt
         ZIRt7H0pwougwKOKQfeuJP2BHwkfXGMPcMG0ZoooEByBE+XIVhAHSDD74sJPWiS8S9ez
         qJFA==
X-Gm-Message-State: AOAM531OHAOM2Bv/JmRdj01X6U8enh4PDW/6I+nFZpi8K1mUvtK6c6is
	0NpVj/PISlyZNftR+qHYAng/b748sFAjNzha1TXYaAcUOeo=
X-Google-Smtp-Source: ABdhPJxxE9UfD+6NiSd3XCM8eOOhDNmJnZuozE82hCI1XQzJfOikcE9LvOwZCvmcY+Pj1T00q7mm9GmwJeqTQzWYn1s=
X-Received: by 2002:ac8:7183:: with SMTP id w3mr12451053qto.116.1630958626397;
 Mon, 06 Sep 2021 13:03:46 -0700 (PDT)
MIME-Version: 1.0
References: <1004181630942804@mail.yandex.com> <14250171630944633@sas8-bb4816e87b9b.qloud-c.yandex.net>
In-Reply-To: <14250171630944633@sas8-bb4816e87b9b.qloud-c.yandex.net>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 6 Sep 2021 13:03:20 -0700
Message-ID: <CAMKF1soTdYqd10biiQ0iDa74kAkwJRW94ouKJ-xGxVAQFTXnng@mail.gmail.com>
Subject: Re: [yocto] Debating best tool to use
To: KL <deco33000@yandex.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 6, 2021 at 9:10 AM KL <deco33000@yandex.com> wrote:
>
>
> Hi,
>
> I plan to have a minimal embedded system with BT, wifi, no gui, to host my application with my own webserver.
>
> My webserver+app are responsible to manage the OS (so I don't want anything else to do it). They receive new programs and load them according to my rules (that is our manager at work).
>
> I would like to avoid the plague of multiple configuration files put everywhere in files (like now in different profile directories...), but instead have my custom manager handle ALL the different settings for the OS (centralized point).
>
> We, at the office, compile and maintain the different software needed and send them by wifi.
>
> I want that OS to be built on top of Linux.
>
> Would Yocto enable me to do that? Is it the best tool for that?

Yes, it lets you build custom Linux distribution and eases the way to
add needed customization that one might require.

>
> Thanks,
>
>
> --
> MKL
>
>
> 
>
