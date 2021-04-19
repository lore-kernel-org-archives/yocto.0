Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.709.1618848574485763016
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Apr 2021 09:09:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=UQdvDwEN;
 spf=softfail (domain: soccasys.com, ip: 198.145.29.25, mailfrom: laurent.gauthier@soccasys.com)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7F89738C11FD
	for <yocto@yoctoproject.org>; Mon, 19 Apr 2021 16:09:33 +0000 (UTC)
Received: by mail-vk1-f174.google.com with SMTP id h130so2372632vkh.11
        for <yocto@yoctoproject.org>; Mon, 19 Apr 2021 09:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zY0Q7295KCAUFgr8Uh97iZr6mLhC3hWTV2eZcVvQpK8=;
        b=UQdvDwENLzU8rW5AYYwufZ3tX2VPVfnF1Nu5nZrEm07YcSxq0autA1ocXuuVgupUsw
         K7FJjz4dMSCvVyzd9HNJ2XUzZwfVTgKFuEbth5aCQ0KsUJYR7MWTAYzUlic37C1cTdBi
         ZGWDEydFSXAezcRr9RiDnbYHj3VilIhS27jv1BPQBqtryEIJ8eu9S91wuy9LbldE2HPA
         rDBmcPLqKr2kDoUbfSMPehm2k7b5cOsoJl66R4bL6UHssAFdf6u1s1GF8O57Adi6brkH
         nDtUAwoNrycXcU9tqaJrlSI6Qn6m/Qkn76Eb8KftIFg3hdGQN2uzz/p0ylT8fVWUxQ9e
         hNMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zY0Q7295KCAUFgr8Uh97iZr6mLhC3hWTV2eZcVvQpK8=;
        b=Z6hmkhtgrk3GJ+Acw9tEGOvq/QcEf6v+RSsD5ULQ01ilyN292Yx+E2If4BefsjUJjJ
         EkQXQxotlNUAuXywGRB/mFRjXtUlBufWljPsj+RqLmkR+jUsrf5U2ZxZMok4D5xWbAxj
         w/RhoXIFr6BRl49GVe6LTXu3RYVagyeLsrzRz3YIZyqAfOgl5yN/veaviVRXWy5Dks8m
         SHQ5B5eRmRSGJ7X61YuzUp7PkWfcVW53pe9w5jfCSwt1m+q5TouiBHp2SCb/XDaTSRnY
         LmUSmwisyp3asE9MN3dm92TE0yI+FnFT1ibY7n+4aKWz4tJ3tRfQmskpZGsq+hAP9ddr
         dEmg==
X-Gm-Message-State: AOAM533hx8dW8sg+LnJMCc6ueVj3x305n62Aef05dJ4GfcWeSiEQ0TOf
	7oA7ZfMNMrlHljjdvQQlrfZGGb9tAPh+mQ0cIH7x5u8BfAHqag==
X-Google-Smtp-Source: ABdhPJxJbBdCE9EKidIk/d+zArO/aJtNKPKtsbmNqnpfuE/9KhefNR2v+mPQbeNK+S6lU9qAK+EQlxUDYZllmCNHrMQ=
X-Received: by 2002:a1f:4581:: with SMTP id s123mr6082829vka.10.1618848572309;
 Mon, 19 Apr 2021 09:09:32 -0700 (PDT)
MIME-Version: 1.0
References: <60a75986-68f2-94c7-592-99dbb3891e3@crashcourse.ca>
In-Reply-To: <60a75986-68f2-94c7-592-99dbb3891e3@crashcourse.ca>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Mon, 19 Apr 2021 18:08:55 +0200
Message-ID: <CAGbd71S5kxw3r5mBvBUFthXAXdnuu9D-PmD2d0RLFhW8-jvTsQ@mail.gmail.com>
Subject: Re: [yocto] what to include in a "hardware bringup image"?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Robert,

Having the device tree compiler on the target has been useful for me
in the past to check the actual content of the device tree using
commands such as:

* dtc -I fs -O dts /sys/firmware/devicetree/base

I have seen cases where the boot-loader updates the device-tree right
before the boot and it is good to be able to check what the
device-tree content is.

Also quite often the hardware is not the cause of the issue, instead
it is the software/driver configuration.

Kind regards, Laurent.


On Thu, Apr 15, 2021 at 10:25 AM Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>
>   for a current project (and subsequent projects), i want to define a
> hardware bringup image; that is, a really basic image chock-full of
> low-level utilities for debugging initial board bringup. this means
> precious little unnecessary userspace crud that has no value in that
> context. (at the moment, the target is aarch64 but, naturally, the
> ideal image would be maximally applicable no matter the target.)
>
>   i'm thinking of recipes that allow probing/configuration of memory
> and busses and that sort of thing. off the top of my head:
>
>   * pciutils
>   * usbutils
>   * libgpiod
>   * phytool (or other MDIO probe/debug tools)
>   * devmem2
>   * spidev-test/spitools
>   * i2c-tools
>
> the list can go on and on, and i just ran across this which i had
> never seen before:
>
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/c-periphery/c-periphery_2.3.1.bb?h=master
>
>   suggestions? i suspect numerous folks on this list have already done
> something like this.
>
> rday
>
> 
>


-- 
Laurent Gauthier
Embedded Linux Systems & Software
Phone: +33 630 483 429
https://soccasys.com
