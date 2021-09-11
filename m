Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web08.3614.1631365662142416667
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Sep 2021 06:07:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hbdRtQcb;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id v20-20020a1cf714000000b002e71f4d2026so2484898wmh.1
        for <yocto@lists.yoctoproject.org>; Sat, 11 Sep 2021 06:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=eRZDHA/lLzfLxcBolX294gEGgNs10fjLhB8yQM964lw=;
        b=hbdRtQcbc+TmlsZA7zXO+xBUSiH0CMyeMs4ZHWxj03uST3bI+D2cSF6yfgn1HbAWD9
         Jzxrkksgz54Oif1WyGwyWNl4TBa2dhnJ6UlX/DB6+yXv2IkhWFowB7O65MCiIqZ/+XLW
         TazLDlLbIrld3GrHBTYNbSZp9GM9r6DptAPZw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=eRZDHA/lLzfLxcBolX294gEGgNs10fjLhB8yQM964lw=;
        b=F2Bu10lEUNZxl1rh2IrAws44vBVIlnNHnmLwdcqcgqv4uAdv0V/zo2Ph1dWrJsnYNf
         R3pAPZ+eCIBGOSUuMI4i8Ci0xR5TJ+KrPF9krqR3o+JhF5JcZ2A9l85yKKAPLj8dyxLt
         iM/LgHKMHwKMmZzcf+JZ2EljyCPsFSkp8oK3mt9eGiAu7+2rcoaY42VyBWedyBqyOQsK
         1zb9KbA/txXC+13a6sfKdoiRDS1fGxi6zcBY26ltp2ah7Q5VhZFMqA2Jmx5NORuWffIG
         g2+kCkjSK7SyJ/eK3I2RADfwemeouq8HcXCqK76+F5RCx2sFzIKvqbNfehPFjia2Fblo
         Gu5A==
X-Gm-Message-State: AOAM53216x+lM1YdrQ1KhK16VHGlSLBLH4soJGEifhGCu1vI6ivESOrI
	aljzTyhcvemOlhSYO1Ija/1Urg==
X-Google-Smtp-Source: ABdhPJwBaYb4uFxcjbom/ZLNnY2prsNtz9gSkJvTflbHxsjBLqFqKBRijxZN+6+ue7H6fzsulCwLWA==
X-Received: by 2002:a7b:c3cc:: with SMTP id t12mr2671474wmj.68.1631365660619;
        Sat, 11 Sep 2021 06:07:40 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:a1a5:8b9e:48ea:5b97? ([2001:8b0:aba:5f3c:a1a5:8b9e:48ea:5b97])
        by smtp.gmail.com with ESMTPSA id z2sm1563967wma.45.2021.09.11.06.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 06:07:40 -0700 (PDT)
Message-ID: <9f19dcea3442390412b90afa80a6dbe0fe5b296b.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] add prioritizeBuilders
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Trevor Gamblin <trevor.gamblin@windriver.com>, 
	yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Sat, 11 Sep 2021 14:07:39 +0100
In-Reply-To: <20210909131012.1100416-1-trevor.gamblin@windriver.com>
References: <20210909131012.1100416-1-trevor.gamblin@windriver.com>
User-Agent: Evolution 3.40.2-1build1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2021-09-09 at 09:10 -0400, Trevor Gamblin wrote:
> This prioritizeBuilders function sorts builders by the length of their
> associated worker lists, so that builders that can only be assigned to a
> small number of workers are assigned to those workers before other
> builds that don't have specific needs when resources are limited. An
> example might be when a slot is available on an Ubuntu-based worker, and
> "oe-selftest-ubuntu" and "genericx86-64" build requests exist in the
> queue. Since oe-selftest-ubuntu requires an Ubuntu-based worker and
> genericx86-64 does not, genericx86-64 will be assigned a higher value
> (lower priority) so that oe-selftest-ubuntu is assigned to that worker
> first.
> 
> Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> ---
>  builders.py | 13 +++++++++++++
>  master.cfg  |  6 ++++++
>  2 files changed, 19 insertions(+)
> 

We did merge and start using this. Unfortunately whilst I thought it would work,
it has some unfortunate side effects and we'll probably have to disable it.

If you have two build requests for say "a-full" builds, it will allocate oe-
selftest-XXX and reproducible-XXX to the XXX workers, starving generic targets.
You therefore end up with two builds running, both with half their builder
targets and it will hurt completion.

I did talk with upstream buildbot a little on irc about this challenge.

The default prioritizeBuilders function (_defaultSorter in
buildrequestdistributor.py) sorts by build request time.

They were suggesting some things which are fairly invasive like adding a
estimated completion time to the defaultSorter so we could weight slow builds.
To be honest it's beyond my comfort level with twisted defereds trying to query
and obtain the right data.

I have started wondering if we can in fact cheat and tweak the order we trigger
the builds in the a-full and a-quick targets. I think we could influence the
order of builderNames in the Triggerable and that would then change the
buildrequest timestamps so the default sorting method would work better for us
again.

I think that translates to adding your sorting method in this patch to
builderNamesFromConfigQuick and builderNamesFromConfigFull. Probably worth a
try?

Cheers,

Richard






