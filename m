Return-Path: <chrisfriedt@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86885C4332F
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 17:54:18 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web11.21776.1670522055812797713
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 09:54:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=THn3quD4;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: chrisfriedt@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id ud5so5847163ejc.4
        for <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 09:54:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sAB4f+3GoE5+zMgfmi16ofXJS12mN+ov45dJURYuviE=;
        b=THn3quD4bte+Dy5O+V+ht82zjl/aDoAEGGcIQWBipEkoCs3iNlCuTbiUsY9znvMevk
         dxtVRx4Bkzpb7VnOTtC6WVToxlY399hSLO64gTVtZD+qZZKgdx6m6eC7jDzdIbKiekvz
         Xj9zxg1A0AC/GkJh1LtmqgthQo68kiCYSyvSYkaYGdz0CsZ0Q4+SjqotslBIi0xSHDix
         OAkHAWmmQ++Y1pqjHrMqh0s1N8rGQpzv+sMpSGY/OcDXrLC3L1qmmJaDGbSe/7F2Z4rG
         n/i1fisv99PQNF6CPy2UQ746xAZJafrsqUlQoTlo4UpYxxcH0WVjvHh6RBDBIDi9IaCq
         U4Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sAB4f+3GoE5+zMgfmi16ofXJS12mN+ov45dJURYuviE=;
        b=m11fi3c9B80IGlgxRrhuKU2qAtKKNiO4VcWHIrEZUnQYZmX3Eq0uUCjWiETF9zCWpt
         HCUHsa34ZDgLyOaJAmJArLh9q3zdHj/IkTGRarexteLwUVQkjksKCVVhS9pgZpKh8P7d
         8ByE/Eat8tykb84qjWLWDN/xO74GUQX7b+bSpRLGBVz1jUp6/7XTK+dojFZP+7GIzl5F
         ZfOeKHRLB0T4/Vu2ZZnujjXC9Z0C+i/6aPd068TxI8WT5GXQaB2V62iQ8zPUkGq9lcNY
         Sq9lEcAGwvAicjva/ZHgM5yrewylxfM5+YYQyzI4TiqEATh287XOxL212rVmyg6TvXvo
         /kWw==
X-Gm-Message-State: ANoB5pmXgBI0vjEOa2JBjWUM5I4rorktVHiuqsSK+8iINzD3MsmU9rsN
	PhoA+XPlF9hf8mMSQ//wFQEMQ9loIlJ8lTEosJQ=
X-Google-Smtp-Source: AA0mqf664JeR7jxeRgN4r1GbjetL9bJrMzKbFOYbJ8s18DjKWOd/6ttJimVpOS86Q5ldbwEm3pUyd7kBsGqpKy64eaU=
X-Received: by 2002:a17:906:d78d:b0:7c0:fa81:ac42 with SMTP id
 pj13-20020a170906d78d00b007c0fa81ac42mr12920954ejb.526.1670522053974; Thu, 08
 Dec 2022 09:54:13 -0800 (PST)
MIME-Version: 1.0
References: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
 <172E4A3E9370D7CD.20831@lists.yoctoproject.org> <CAF4BF-R5ingAhi=Xk9tuVCht72E1kGVHTOtdC5YUTVUp_tuGsg@mail.gmail.com>
 <CADkTA4O=B0nwpPHsTk=NrkZYOTo7ghpYHAuBt_52eztRTVwskw@mail.gmail.com>
In-Reply-To: <CADkTA4O=B0nwpPHsTk=NrkZYOTo7ghpYHAuBt_52eztRTVwskw@mail.gmail.com>
From: Christopher Friedt <chrisfriedt@gmail.com>
Date: Thu, 8 Dec 2022 12:54:01 -0500
Message-ID: <CAF4BF-SwmOdR8ot5TELjPbckei=XwnBf9wJPJNy6SGw+hWQ6-A@mail.gmail.com>
Subject: Re: [yocto] do_install hangs on native tasks
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 17:54:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58765

On Wed, Dec 7, 2022 at 8:37 AM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
> I don't have anything super helpful to add, but when that git command
> is hung, are you seeing any stalled network connections or processes
> in D state ?

The hung commands are in the S state (sleeping).

> It wasn't clear from your first message. Are all native processes hanging
> at do_install ? or is it a subset ?

The build gets hung on bitbake hosttools-tarball and it seems to be
all of the native targets

Currently  4 running tasks (1519 of 2078)  73%
0: nativesdk-kmod-27-r0 do_install - 5s (pid 3450165)
1: nativesdk-xilinx-qemu-git-r0 do_install - 5s (pid 3450167)
2: nativesdk-zephyr-qemu-git-r0 do_install - 5s (pid 3450169)
3: nativesdk-arc-qemu-git-r0 do_install - 5s (pid 3450172)

If I pass in -vvv -DDD to bitbake I get this output

+ make -j 32 DESTDIR=/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zephyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-kmod/27-r0/image
install
...
+ make -j 32 DESTDIR=/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zephyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-xilinx-qemu/git-r0/image
install
...
+ make -j 32 DESTDIR=/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zephyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-zephyr-qemu/git-r0/image
install
...
+ make -j 32 DESTDIR=/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zephyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-arc-qemu/git-r0/image
install

The exact commands that are hanging are
kmod: /bin/bash -c git describe  2>/dev/null
nativesdk-xilinx-qemu: /bin/bash -c git describe  2>/dev/null

In the kmod case, if I go to the build directory and do what the
Makefile does, it's obvious that git will fail since there is no .git
subdirectory.

$ git describe
fatal: No names found, cannot describe anything.

If I swap out the Makefile for something utterly trivial like this, it
still hangs

.PHONY: all install bar

foo-%:
        touch $@

bar: foo-$(shell git describe 2>/dev/null)

all: bar

install: bar

