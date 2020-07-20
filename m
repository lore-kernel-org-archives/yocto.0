Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.41384.1595261798420780789
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 09:16:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LWcd3vqk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id f18so95391wml.3
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 09:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=KECqknBQtnznoAAtjtQsmSWv+jB//jszNkw0WpBXMqI=;
        b=LWcd3vqkZ1J5v6cIQ5xbwrfYUygq4k9C9BBZa4s+97FxNaKTcDAyvzD/3DOvQV9iNZ
         GUuy/FTDpssx7H+s/4MtnLav4BEl+eD476USoNSUGPdttkkTSlmx4UEI4SjulL2yb+Z8
         DOXQgdIg5+JOBivLT7nm3e2PeRuRKGrY76L9o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=KECqknBQtnznoAAtjtQsmSWv+jB//jszNkw0WpBXMqI=;
        b=n/Kq3J6dQt4wGPTq/wMTD6B+Pg4y7kNfF1e0xHOOV7s1xuYYn1r9GXuqY0gOMa3z6h
         JvaPxjFTxKECh+rA9apyCt+1t1VLQCN3xul/CqtRhMkZR6v3cED0vJZJTBTZnc+iNZKe
         pWRZYSNkwRe88vd0JJHQCm6ADtMSTkuvQ6nL5HnbmfAN0E77WwWz+bWSBSitloTzk+QC
         toCxehVxOn8yhNIIxs+vjCRqgNfdfCUylipuYfEXDS3Jw9It8FiEmclAh/1HHVKaG2hv
         2Wu5c+Bo2Mgqr/ZeIH2R3ShxYxxD2ObvooiCQibq4nmI1L/Zg8Vnt8afYCUfjFAR6858
         l5aA==
X-Gm-Message-State: AOAM530lAt3WPRmWbJus7HQkVrI3Dp+ZtdbZeHc1swSQXBuvOFt9M9zq
	uqWmcxh9eSewNFiKRwp1pQcaoQ==
X-Google-Smtp-Source: ABdhPJwu+sQh5CqRrABRooFUwUuzvqMjY9EkN/2C2nFDaetchUc7N+zWkNq8JtEpx4TfKboBS3QTiQ==
X-Received: by 2002:a7b:c154:: with SMTP id z20mr132304wmi.118.1595261796828;
        Mon, 20 Jul 2020 09:16:36 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1cb0:3078:6c66:aaf5])
        by smtp.gmail.com with ESMTPSA id k14sm32901574wrn.76.2020.07.20.09.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 09:16:36 -0700 (PDT)
Message-ID: <bd561a5bfcde2e37f297d52ad3094831cd3d4229.camel@linuxfoundation.org>
Subject: Re: [yocto] Adjusting Extensible SDK for build setup
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Mon, 20 Jul 2020 17:16:33 +0100
In-Reply-To: <5f15beeb.1c69fb81.4c8f7.9ea5SMTPIN_ADDED_MISSING@mx.google.com>
References: <5f15beeb.1c69fb81.4c8f7.9ea5SMTPIN_ADDED_MISSING@mx.google.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-07-20 at 15:57 +0000, Monsees, Steven C (US) wrote:
> The BUILDDIR is defined as configurable under Yocto...
>
> I set this up as per the Yocto docs based on the "MACHINE' I am
> building, I do not believe this is the issue. 
> 
> There is no issue when building the standard SDK... 
> 
> I am looking for the proper variable settings for COREBASE,
> COREBASE_FILES, and OE_INIT_ENV_SCRIPT variables required by eSDK
> when working with
> a different environment setup script not located in the COREBASE
> (i.e. poky) directory...

Looking at the code in populate_sdk_ext.bbclass:copy_buildsystem(), 
it looks in each layer for the script specified in OE_INIT_ENV_SCRIPT.

From your description its impossible to know whether meta-limws or
meta-bae is seen as individual layers and whether they're copied
individually into layers/ in the eSDK or not.

I'd guess that " meta-limws/setup-build-env" or "meta-bae/meta-
limws/setup-build-env" should work as the value for OE_INIT_ENV_SCRIPT.

If poky is being used and is unaltered, COREBASE and COREBASE_FILES
should work unaltered.

Cheers,

Richard

