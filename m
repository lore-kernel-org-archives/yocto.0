Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 028C1C433F5
	for <webhook@archiver.kernel.org>; Wed, 12 Jan 2022 21:52:56 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.151.1642024375104781952
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 13:52:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=aRNBu3cM;
 spf=pass (domain: burtonini.com, ip: 209.85.128.52,
 mailfrom: ross@burtonini.com)
Received: by mail-wm1-f52.google.com with SMTP id
 ay4-20020a05600c1e0400b0034a81a94607so1537582wmb.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 13:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RsA+VcB0cEimm14SmqQNkG2OXC9N78GKdggLjmteA2c=;
        b=aRNBu3cM9Ph8FSnkYKUluqc9VIm6VjmRmmwD4Wz/BGgl/2VP1jrT57hD3u2AopeXrg
         Z1+MtHGBT+L+6Ta1f9qID/Z0RhhnvonhmxPqnA9EI0bKGfLiP0UFpJi0ps+Ryiqdri6+
         0wsDX3C5380In4uUEt12qelTbnOt/gsAx4GCKqUdm6qG/5UyZjdKsDuG0TyyjzGMk3Ly
         +J9te1vMLTPWidpSDrIZ4+zIhSoH4Tx+8Z299BllE/q6DXhasDDj+eDNELGELGGSgyxt
         zalayrx3sWpqM9mdWkqKptcn5bOwZZ7p/nL2NoxrV/PHLsoDz780bRPxZMZlpjqa3/gN
         6b4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RsA+VcB0cEimm14SmqQNkG2OXC9N78GKdggLjmteA2c=;
        b=WtVpFbVqWIAtU8N3IuaRSJaP/6ftZZKa7YhqB18d5vaZqOGHhC/YubLenLZ5RUzTHD
         q6xJQ05ifpTRl9X+IRoMk5WzVzk9+KZeqWhnsR3WoIB/qhIa98/OqM+Gbiyabf8hqkbr
         9crIpIRcqjiW2a49kiTw+fF9kXZAVNIjZmxw6/lRpPb6UC5ug+0fDvGTQcwZcl0a4LoX
         thiUhO8W+HL0ZNilNPHlPCMxPeb2XeQdb7qyW1nwfsOcltMY1I2Enfc1jGLWuALlnF/c
         qbkXsRZ6nLHhmaBCcA8T0a2HK9Q1GJBcdLmUw8bOENAuQks5V7hXa5Ez6sKR0GJoy/aO
         CK+Q==
X-Gm-Message-State: AOAM530YGYgL2/SrQP9aDZcxvqJvfhO2gr+JL19gOU9TaE+m6SRDzrqD
	fB1TJJZQufHhDldcDLi0iynZ2QEAVyevXTN+VqV6Yw==
X-Google-Smtp-Source: 
 ABdhPJw1A7ybszXPn1hUkacpDxbzl3nSoqst2wnExFhi8EvxX8uZS60OzxAJGJxuZTlzyd1rvJNpW1BayNhtautRZik=
X-Received: by 2002:a05:600c:2f90:: with SMTP id
 t16mr8444125wmn.69.1642024373314;
 Wed, 12 Jan 2022 13:52:53 -0800 (PST)
MIME-Version: 1.0
References: <cakt.1642012455158813295.G6KK@lists.yoctoproject.org>
In-Reply-To: <cakt.1642012455158813295.G6KK@lists.yoctoproject.org>
From: Ross Burton <ross@burtonini.com>
Date: Wed, 12 Jan 2022 21:52:42 +0000
Message-ID: 
 <CAAnfSTuy5AXvwEQDjjo5_dtUJML8RT4xN7PVd0jc=scxGeLhDQ@mail.gmail.com>
Subject: Re: [yocto] problem with interpreter
To: swhite <r.spencer.white@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 21:52:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55821

On Wed, 12 Jan 2022 at 18:34, swhite <r.spencer.white@gmail.com> wrote:
> I need to include an old open source project named judy for a legacy
> utility dependency. The recipe I have so far is listed at the end of this email. The
> build host is 64bit linux, I'm using dunfell and the MACHINE I'm build for is "genericx86-64".
> The issue I'm seeing is when compiling judy, it builds and then executes a
> binary named "JudyLTablesGen" as part of the process. However the execution
> fails with:
>
>     /bin/sh: ./JudyLTablesGen: No such file or directory

This is a classic problem with software that doesn't consider
cross-compilation (and even when building for a similar architecture,
like genericx86-64 on an x86 host, you're cross-compiling in Yocto).

The makefiles generate a binary that it expects to be able to run.
This is a bad assumption as you're cross-compiling: that binary needs
to be built with the host compiler (BUILD_CC) instead.  However, the
Makefile.am does this:

JudyLTables.c: JudyLTablesGen.c
        $(CC) $(INCLUDES) $(AM_CFLAGS) @CFLAGS@ -o JudyLTablesGen
JudyLTablesGen.c; ./JudyLTablesGen

A non-upstreamable fix would be to simply change that line to
$(BUILD_CC) $(BUILD_CFLAGS) $(BUILD_LDFLAGS) -o JudyLTablesGen [...].
As the project is dead, an upstreamable fix isn't useful.

Whilst I'm here that FILESEXTRAPATHS_prepend is redundant, and the
source of Judy looks like fairly typical autoconf so you can remove
your do_configure and just 'inherit autotools', this will also pass
the correct host/build/target flags and so on.

Also note that a more recently maintained fork appears to be at
https://github.com/netdata/libjudy.

Ross

