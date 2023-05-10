Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B338C77B7C
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 13:15:09 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.16394.1683724505904295376
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 06:15:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linaro.org header.s=google header.b=OJK2bC0z;
 spf=pass (domain: linaro.org, ip: 209.85.167.51, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-4efe8b3f3f7so8149670e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 06:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683724504; x=1686316504;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JV0lZ28LM0M+S43Kpr1FM7sPWHlcllboKOjQt60bnnA=;
        b=OJK2bC0z7ImaaBhBlryK3qqlYhd/pVOiAj+g5+6/b1lK4aBWGMKoi7QWPRFnJJuVh6
         Zlok3AO8t2zInLaTYGW1Ocm57Jib8ScRIeulQxA6TNhy8CWSoR0ramqTwItOn8TTxl+A
         XjSW4lT9T01pWFOzB4V+jbloT4WYxJMQGnmt6KgfeurKJexjJOCry3Mus17Vop3XfiT4
         ZlqqZ6S/deRmkFb5JYCB0NiSsV4TXq1pXRJLow4vwvVfre0ftPSLEcQYoDkC1HhLse/l
         zlEbUAJugVQXBfGUWwEjakRkhLG/Mh3W/LyBP1CBk6i1iqAZaaOKanC3Si5yrPpRacZH
         sUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683724504; x=1686316504;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JV0lZ28LM0M+S43Kpr1FM7sPWHlcllboKOjQt60bnnA=;
        b=gg3pFTTCvfjHGyIEB4cyLFXgHg9NCru3HapalpA5VsMCuFKkFPQK6+cPJ9U3Nuf/vb
         Ue1/7EstUFYjejVBU4D+4njkuhyh3M0O4qujLakzCr6a0SNq8Auz4tsrVDsx/mq7LRQc
         uBLVed76y7ZNnwBvCxIsfyMZOi+RNXbkO00RqlQDzuJ5EClq2BcMR0qKFQXvSEBIFR0c
         jruBlghS0zXkeKRyflOz3KGQ/e/007/P3JiU9ikAktNfOOWbdzXBqYIsj9vv77MMQF3u
         yX8ClIoYbukybquJr0x8kaTT7rz8stCFIaG9AhZfyrm2TXA8fxBy9sOF9o/hClTwIGiD
         7hGw==
X-Gm-Message-State: AC+VfDyeJ2KQXOoHf+wRem0M1pqG0d3jB0xLlg01wz+zzf6I99UW0uK/
	9uUmN+5Yrr9q2fskHHrLBBT6lw==
X-Google-Smtp-Source: ACHHUZ4wHlbyLrB3mRBkm51EgANydIx0tmJJoNvs7X119W1HjNaSTMNsCKGuYaqo7e+4YugP+M6kYg==
X-Received: by 2002:ac2:43a9:0:b0:4e8:5392:492c with SMTP id t9-20020ac243a9000000b004e85392492cmr1596973lfl.43.1683724504064;
        Wed, 10 May 2023 06:15:04 -0700 (PDT)
Received: from nuoska (dsl-olubng11-54f814-94.dhcp.inet.fi. [84.248.20.94])
        by smtp.gmail.com with ESMTPSA id z5-20020ac24185000000b004eb0c18efc2sm730919lfh.221.2023.05.10.06.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 May 2023 06:15:03 -0700 (PDT)
Date: Wed, 10 May 2023 16:15:01 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Stefan Berger <stefanb@linux.ibm.com>
Cc: Armin Kuster <akuster808@gmail.com>,
	Jose Quaresma <quaresma.jose@gmail.com>,
	yocto@lists.yoctoproject.org,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: Re: [yocto] [meta-security][PATCH 1/8] Revert "ima-evm-utils: Update
 ima-evm-utils to v1.5 and add a patch"
Message-ID: <ZFuY1UtAFKNI4Oyt@nuoska>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
 <c636e528-ca65-dae0-e772-2c43afd16ff3@gmail.com>
 <3bf73334-5196-85e7-2a79-a47a7ae6da4d@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3bf73334-5196-85e7-2a79-a47a7ae6da4d@linux.ibm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 13:15:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59961

Hi,

On Wed, May 10, 2023 at 08:23:18AM -0400, Stefan Berger wrote:
> 
> 
> On 5/10/23 07:44, Armin Kuster wrote:
> > 
> > 
> > On 5/9/23 2:56 PM, Jose Quaresma wrote:
> > > This reverts commit 9de807705b27b05bbf84e9f16502fe6cdaa8928f.
> > > 
> > > The full patchset are overriding the do_configure task and also added a kernel patch
> > > on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is included
> > > in every recipe that follows the pattern pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
> > > So the patch fails in some recipes and also do_configure task doesn't make sense.
> > > This breaks many recipes like linux-firmware and maybe others.
> > 
> > I fail to see how� this package update is part of the issue above. I am still trying to sort out the store here to figure out how we move forward.
> 
> My suggestion would be that I post a v2 of my fix patches containing:
> 
> 1) removal of the Linux kernel patch
> 2) removal of the squashfs option (less important)
> 3) the suggestion outlined here: https://lists.yoctoproject.org/g/yocto/message/59955
>    but modified to look like this with '&& [ -f .config ]' appended:
> 
>  do_configure:append() {
>      if [ "${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'yes', '', d)}" = "yes" ] && [ -f .config ] ; then
>          sed -i "s|^CONFIG_SYSTEM_TRUSTED_KEYS=.*|CONFIG_SYSTEM_TRUSTED_KEYS=\"${IMA_EVM_ROOT_CA}\"|" .config
>      fi
>  }
> 
> I don't want to hold things up but maybe it's worth discussing the suggested changes.
> 
> From what I can see 'bitbake linux-firmware' builds under OpenBMC now with these suggested changes
> and it did NOT build before. My suggestion would be to discuss the proposal under that thread there.
> The problems seem to be that the file meta-security/meta-integrity/recipes-kernel/linux/linux-%.bbappend
> matches the pattern linux-firmware as well and therefore its contents get included when building
> linux-firmware. When building linux-firmware while having also DISTRO_FEATURES ima set in local.conf then the
> ima.scc is added to SRC_URI and the do_configure is also appended. The latter will not have side-effects but
> I don't know about the former nor how to create a better filter (other than DISTRO_FEATURES) for not having
> these included for linux-firmware.

Why is the bbappend applying changes to all recipes where name starts with
"linux-"?

It is aiming at Linux kernel recipes which by default in yocto are
called "linux-yocto", so the bbappend could simply be
"linux-yocto_%.bbappend" (or "linux-yocto%.bbappend to catch the rt
and other variants too).

I think it's a bad idea to try to apply this change automatically to all
possible BSP layer kernels which may or may not have names starting with
"linux-" and it's well known that there are a lot of recipe names which
start with "linux-" which are not Linux kernels (linux-firmware,
linux-libc-headers, linux-dummy etc).

Cheers,

-Mikko

