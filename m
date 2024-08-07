Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D8BC3DA7F
	for <webhook@archiver.kernel.org>; Wed,  7 Aug 2024 13:19:59 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.33321.1723036789444327541
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Aug 2024 06:19:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=BWM8jchY;
 spf=pass (domain: linaro.org, ip: 209.85.208.169, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ef7fef3ccfso18928691fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 06:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723036787; x=1723641587; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FYb5nZu4JjDxQimjSIPxjtvJhqqt7DhX6fPqHOFuW2E=;
        b=BWM8jchYikQ9qMr0fVRiZDi1/SlmVqgprcRa70vsekaNdGCLiWfIFJ69tnAs6peT7+
         gflxh6y+SoOeuLgJiIIfuIrWl7JGP3mmlx7tldcDMbRLT6y0Qh5bhPTSbaRRBkfM+BoU
         q+1beQ/yJFfY7oRFBZRDllAzXvNs82b3zL64CM1q/c5RhG0aQTkCmfVzEh/Lxzi9hzVV
         HyploJz+RqkgYksVhPNhQuZWj0Vz6EGO4hIvMW4xSdmlmAYqYlyPuhAbMTyd8SA4WX43
         JMPqHlAXHR7pEwHIDsJX1RdgBw2SuYWuwljBhLuA6TZCY55u5guvkXVXdvkH3DPic3zI
         5U8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723036787; x=1723641587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FYb5nZu4JjDxQimjSIPxjtvJhqqt7DhX6fPqHOFuW2E=;
        b=C55iuug8eZkrITXrQMBmelVFBt5b9pWW8EmBuayjgS5JI8Of3CBaehGOMusS2EngxR
         uSqqgRwxEuInarRsq2Jpiei0BRos0RejKDPUD1yKQhLGra68IIMOYzQcFzZmIBJjOQAO
         NOz5Ky1dqbGw/eLSueE1R7HZ9C28drwGizFs99ZVpik47hos0sBp8lXvVz03X94F/zQe
         +vaLDhAbXRikUCb/ONXUx0bk96JRzMp9kxfWx8AQ6HixbrxgDC5zNHuTNzLTMN7l+X2o
         40EwFvTCyE2Q4K/0HhSUtxorWhFmIkujmVvM3upXY9DfW8U90SZ+IAjcLuKRVr0gNcxP
         LMRQ==
X-Gm-Message-State: AOJu0YzhVBlzLGlC6CpCDvgTSVf71YSnF101ph6PA//wo68hmLQpsFEg
	28bJie0zA0+yisGWh7oR8TOXQwpWvmXf5oJCCWhv0RUJMb+8nRjRSYj/5Q5FbsQ=
X-Google-Smtp-Source: AGHT+IFkEtI5nsOZGXcJZfcKii6SDvC/8IUMth6Sfr96NSEQwJQOe9qtrRZ8hLgqg2zYoB1xxAWmKQ==
X-Received: by 2002:a2e:804e:0:b0:2ef:22ad:77b5 with SMTP id 38308e7fff4ca-2f15aabce55mr126006951fa.29.1723036787387;
        Wed, 07 Aug 2024 06:19:47 -0700 (PDT)
Received: from nuoska (87-100-245-199.bb.dnainternet.fi. [87.100.245.199])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f15e18649dsm18590371fa.5.2024.08.07.06.19.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 06:19:46 -0700 (PDT)
Date: Wed, 7 Aug 2024 16:19:45 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto][meta-openembedded] How to properly build a lib package
Message-ID: <ZrN0cTChvgsn4skg@nuoska>
References: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
 <ZrM8ikxC3AwTgDHR@nuoska>
 <CAC3TgA+-s0BN3D3Bzwcg6_6vF2fipu_wGc4BWFwhZM8S97wjjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC3TgA+-s0BN3D3Bzwcg6_6vF2fipu_wGc4BWFwhZM8S97wjjQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 13:19:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63673

Hi,

On Wed, Aug 07, 2024 at 03:13:31PM +0200, Yann CARDAILLAC Pro wrote:
> Thanks for the fast reply!
> 
> - The library is *not* pre-compiled, here's the makefile rule that produce
> it :
> 
> CFLAGS ?= -std=gnu99 -Wall -Wextra -Wno-parentheses -Wno-switch
> 
> shared-lib:
>         $(CC) -fPIC -c $(LDFLAGS) $(CFLAGS) rj2d.c
>         $(CC) $(LDFLAGS) -shared -o librj2d.so.1 rj2d.o
>         ln -sf librj2d.so.1 librj2d.so
> 
> It seems ok to me, but there might be something missing?
> 
> - I don't think that the name "librj2d.so" is problematic however when I
> remove the line INSANE_SKIP:${PN} += "dev-so" I get the following error:
> 
> ERROR: librj2d-1.1-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk-
> package librj2d contains symlink .so '/usr/lib/librj2d.so' [dev-so]
> ERROR: librj2d-1.1-r0 do_package_qa: Fatal QA errors were found, failing
> task.
> 
> - Here's the recipe :
> 
> SUMMARY = "RJ2D lib"
> DEPENDS = ""
> LICENSE = "..."
> LIC_FILES_CHKSUM = "file:/..."
> 
> SRC_URI = "git://...rj2d-lib;protocol=ssh;branch=master;"
> SRCREV = "..."
> 
> S = "${WORKDIR}/git"
> 
> do_compile() {
>         oe_runmake all
> }
> 
> do_install() {
>         install -d ${D}${libdir}
>         install -m 0655 librj2d.so.1 ${D}${libdir}
>         ln --relative --symbolic ${D}${libdir}/librj2d.so.1
> ${D}${libdir}/librj2d.so
>         install -d ${D}${includedir}
>         install -m 0655 rj2d.h ${D}${includedir}/rj2d.h
> }
> 
> 
> FILES:${PN} += "${libdir}/*.so"

Don't install the .so symlink to main package but to ${PN}-dev.

FILES:${PN} += "${libdir}/*.so.1"
FILES:${PN}-dev += "${libdir}/*.so"

if those are not the default, which I suspect they are.

Cheers,

-Mikko

