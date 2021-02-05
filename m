Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web10.6102.1612518591816328285
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 01:49:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=uzXAonTS;
 spf=softfail (domain: sidebranch.com, ip: 209.85.160.180, mailfrom: leon@sidebranch.com)
Received: by mail-qt1-f180.google.com with SMTP id e11so4525683qtg.6
        for <yocto@lists.yoctoproject.org>; Fri, 05 Feb 2021 01:49:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y2rQfAYMDJUdog/U2IPtUDhpoNbEvEzxk5vTldvW8y0=;
        b=uzXAonTSQzdhVUUn6nvv/RoSjIbNIR0FIMWeQjAkEeujwtyAozDuI62klfdWGVZmns
         Mhuy5pMxD9dv1hUP18zvBesd/xuhlk4abT/yxMcvADmHfw4iAxC3bLu06S4Rl/LJdwWH
         xZpOAbODsgIE5uPwg/8sPe6aLRGa0SiIV67NPmoe0mONQj2INts/+N8y+zbpzMbR3IaR
         HCTDkxX9Sy93mIYoYc8PF+lxn/JNevWS3gp/erOpsJuQX3B+dzWQ5ZAqB+8xrD6SbbCg
         aAsqibsAlt4J377JtTrwkZCHooVepjoUYSwjXElUNlG74ahkYlqaM+Yr03o/rsveyZX3
         y+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y2rQfAYMDJUdog/U2IPtUDhpoNbEvEzxk5vTldvW8y0=;
        b=ir2423/T4LectLhXX55VkmKUxv/h1ptMZfCTIdep6LRgdZ3ZTRq/eHDS9iQyyTQeMa
         +vhfbqs6XhFWDsq4PX2rrhbwrNpZE0kAyYAb1ZW5k/A8Gmi3IQpT4xywUqrVeV/THfXv
         Ydji0+41iOqNOpdXAKG7IPAeYc5GSVIHnMEBIBJvcIHOjvNO+Z5kZKanSjS4sATFoCu0
         k4yB3HFgzkGgUP2RDEyA0AVp5YBEy5sTRkxJ83oI1TYyrz8nG5QuF0AR4ZxI7LEHjhJg
         /tsCZ/6gGOtzQrWuJSMxJeGxlLLdX6lHiI/kHEN70p8bRxbXTkwBu/rKDHWsu135Eiws
         Vh2w==
X-Gm-Message-State: AOAM532r6VExOAezOUsjJgHB34Rtg+z1REZuSoBWxJEc8LEgnmC/Mr3H
	cVwzL0GYwc71ScW7hQTfNXWo3bAt+DlWDadLBRRylw==
X-Google-Smtp-Source: ABdhPJx0N9/x6zZ0PLYKf7A3FC2E3jNRx3r2RPOF73FoMzgLa8WEaafzKfgJXnj+Wk/cxk7PPvyFRA0R3xA4AnzU34w=
X-Received: by 2002:aed:2821:: with SMTP id r30mr3415992qtd.364.1612518590837;
 Fri, 05 Feb 2021 01:49:50 -0800 (PST)
MIME-Version: 1.0
References: <hvee.1612460622520345943.gVz7@lists.yoctoproject.org>
In-Reply-To: <hvee.1612460622520345943.gVz7@lists.yoctoproject.org>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Fri, 5 Feb 2021 10:49:39 +0100
Message-ID: <CAMjhiJjUfU1OvkFWu92_oKUcbWFktGsqOouiZhMC3XxaBJrgMA@mail.gmail.com>
Subject: Re: [yocto] Building eSDK fails #sdk
To: alexander.troff@deveritec.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello Alexander,

On Thu, Feb 4, 2021 at 6:43 PM <alexander.troff@deveritec.com> wrote:
>
> <...> trying to build the eSDK with bitbake core-image-base -c populate_sdk_ext results in this error:
> Collected errors:
>  * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'cppzmq-dev'.
>
> The listed Packeges are set in the TOOLCHAIN_TARGET_TASK variable. I tryed using IMAGE_INSTALL_append but this didn't help.
> Does someone have an idea?
>
I have two ideas that might get you closer.

1) First, I noticed that using TOOLCHAIN_HOST_TASK += "xxx" is broken
on Yocto dunfell for me (non-extensible SDK). The issue is that even
when using += in local.conf, only "xxx" would end up in
TOOLCHAIN_HOST_TASK, removing the existing tasks.

I can test/prove this by running:
bitbake core-image-base -c populate_sdk -e | grep -e '^TOOLCHAIN_'

My local.conf thus look like this to work around this:

# @TODO Broken
#TOOLCHAIN_HOST_TASK += "nativesdk-cmake"
TOOLCHAIN_HOST_TASK_append = " nativesdk-cmake nativesdk-make"

TOOLCHAIN_TARGET_TASK_append = " concurrencykit-staticdev musl-staticdev"

2) There is something special with ''cppzmq-dev'; it is a header-only
package without libraries. Not sure if that has any impact for the
dependency resolution.

Probably useless info for you, but might trigger someone to help you further.

I minimal test case would be nice, against plain Yocto, so that devs
can investigate easier.

Regards,

Leon.
