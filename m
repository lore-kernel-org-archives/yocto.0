Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72CC8D0E6E7
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 10:26:27 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.43279.1729506384692089616
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 03:26:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=mcT+JP/s;
 spf=pass (domain: linaro.org, ip: 209.85.167.54, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539e5c15fd3so3679106e87.3
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 03:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506383; x=1730111183; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y4r9qSF2sFCBI2eyDUYipyDzMKHWwtawGXiTEZ2iTBY=;
        b=mcT+JP/s3vg9gpw4HB7okWVZConbPd+8MEoI8EQyu89rRMV3GDdD66IAhNOB0qTrZ1
         5otMTiMOfJuUzTlMWUxd7hYz/LxVD7t6NVqY+sm/Jwcz6VbEcrHlxA/7eoJIvqoQyP+u
         Uc0clSv2qV336xueiANCQj+kKcopvx4nzokWOPuqeUVT6ryP861KxenCFeE592go6ZEU
         bQlfv9AUe6WWMDLSvgIWhQywfdlsbchUkpOtRVaHI1JbbY5RY25hWk/2j+oeDEtF6ah9
         7L+1fBKT+G60hV5+LNy307lEY6ry5K9P/xQxsfpyEy3F0AalFnduGbPJ3WyiuqwyoXT6
         wqGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506383; x=1730111183;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y4r9qSF2sFCBI2eyDUYipyDzMKHWwtawGXiTEZ2iTBY=;
        b=src8jGS4ZMXxQQXXn9pL/ZIFla3sQ6r99Trq4EwQQ0oGWWoUgiDwGWdIuQ8wWbort7
         cIf+dCN8idmSFm3J14KnaEPKnwdZU/xHLAp6LDf7+PhcbMF+xI+HygZjqFHTCPcDl972
         nMUlvsdhcV2b1ImYghgr4X1caT3DJvXXMxynm+r9+GL/JLL/HVDhLRWXvlhZ9g+u887g
         zrVln/Z62WnYfZeGrYimTcKvGFAqvAjntZGsQyGeMMC8g3WrTHWxkVr/j4J6LttOmPNY
         M7z6DMVswfCcFYGeVBwaKxQXDMbG7nziLsqzjB1nGhc6nSn2OgmeDHjcNYkb8+CHixVP
         KVTg==
X-Gm-Message-State: AOJu0YwiqM19LopNOn8BO2eMFHHKF822Bq65M3giMhBDJmuLQfG6KX0V
	cUKOsaa4wMu5XjDNcl5nCBNdI0AiRlLse2B49+vvLMiyo0Y9y+eqjgJW+PLy0tEx42mstLEHGZv
	CBpQ=
X-Google-Smtp-Source: AGHT+IGyCphJ/p/twYhWjGUl8Yh+Or1r4mhb1+91vkvd7tk4PPHFgKz8xJA7Cpo6eNCfxL/sVgDN6g==
X-Received: by 2002:a05:6512:e9b:b0:539:f807:ada1 with SMTP id 2adb3069b0e04-53a154a28eamr5562511e87.58.1729506382765;
        Mon, 21 Oct 2024 03:26:22 -0700 (PDT)
Received: from nuoska (85-76-96-117-nat.elisa-mobile.fi. [85.76.96.117])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a223e5509sm447400e87.54.2024.10.21.03.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:26:22 -0700 (PDT)
Date: Mon, 21 Oct 2024 13:26:18 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org, zoran.stojsavljevic@gmail.com
Subject: Re: [yocto] ERROR: Nothing PROVIDES 'virtual/kernel'
Message-ID: <ZxYsSi4HG2me3i1O@nuoska>
References: <CAGAf8Lya5tRX6CabEYHyMumvahpmd5AUBNERVz2sUyFaLcLUPg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGAf8Lya5tRX6CabEYHyMumvahpmd5AUBNERVz2sUyFaLcLUPg@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 10:26:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64064

Hi,

On Mon, Oct 21, 2024 at 09:25:39AM +0200, Zoran via lists.yoctoproject.org wrote:
> Hello Yocto Community Support Team,
> 
> I have an interesting problem to report.
> 
> Parsing recipes: 100%
> |########################################################################|
> Time: 0:02:30
> Parsing of 2829 .bb files complete (0 cached, 2829 parsed). 4811
> targets, 1885 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'quilt-native'
> quilt-native was skipped: incompatible with machine beaglebone-yocto
> (not in COMPATIBLE_MACHINE)
> ERROR: Nothing PROVIDES 'patch-replacement-native'
> patch-native PROVIDES patch-replacement-native but was skipped:
> incompatible with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> ERROR: Nothing PROVIDES 'virtual/fakeroot-native'
> pseudo-native PROVIDES virtual/fakeroot-native but was skipped:
> incompatible with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> ERROR: Nothing PROVIDES 'virtual/kernel'
> linux-mainline PROVIDES virtual/kernel but was skipped:
> PREFERRED_PROVIDER_virtual/kernel set to meta-bbb, not linux-mainline
> linux-stable PROVIDES virtual/kernel but was skipped:
> PREFERRED_PROVIDER_virtual/kernel set to meta-bbb, not linux-stable
> linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible
> with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
> 
> Then, many packages fail, since the relationships are incomplete!
> 
> Interestingly enough, this happens for the stable kernels'
> definitions. For mainline kernels the local config does work, no such
> issues!?
> 
> The local config is attached to the email or stable kernels.
> Namely:
> 
> ## Define kernel version
> PREFERRED_PROVIDER_virtual/kernel ?= "meta-bbb"

Is "meta-bbb" really a kernel recipe compatible with linux-yocto
recipe in poky?

The provider needs to be a recipe in a layer not layer name.

Maybe this is it.

Cheers,

-Mikko

