Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EE14C47E49
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 18:21:40 +0000 (UTC)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web10.30599.1706120499302394607
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 10:21:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V6O1fq0y;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: twoerner@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-46b0b5ae324so200629137.1
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 10:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706120498; x=1706725298; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MpNF5Bcd1UD4SByjZ554uNjihFRxViA1rXTeX1rzvkg=;
        b=V6O1fq0y5wyaNHBlFlIuPkEpohSceOAAli3hsTOpkfxPe9CQDHDEbBZ13DC0bPIiNJ
         UkT/HMxRrAKywGoGJ4BsYdPcjF/547zp8Nj9lXTF6IJO1XBbslMLVap0kGIWmfPV9wvy
         x36Xt1cxr8jhf/wPgr4CCTgsTM+AISsIWY30Lbh+GTzr8brfEkCMoiQ82MqdozLR/0cI
         iGDNDPa92/LmL++gjCHde6jbgZC88a/WTwaNKqj/JXYQu+samStUBoBRSoBMutW7EjOS
         TKde/4ISYVOp9zjoQtTZg61T02yZ7nvXE9/ImVYk70durlTCNDppT3Iw5TS72yP3cQHR
         iQgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706120498; x=1706725298;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MpNF5Bcd1UD4SByjZ554uNjihFRxViA1rXTeX1rzvkg=;
        b=qj1+J6Q79rbmZLi5n4uPa97xMBJcJaQKfbWAo1UqexJkX6vtXleZxaD/gk5twNGdyx
         FBiIQY/iJuoAdpbzel0Qnncpu0N69+4GEC6gBlNJLWUbo7J7Uf4Agci7FwfaSgr9NLeE
         wlZNHeCnDcc/UpMpgk/6jv/v/ARcvUEdRax+5kcHiZtFXqUuMPxl5Z8c7nhf0znrpqBz
         oYoaslYevlH0hjbOLrmgjSmOT3ssvSdUbYb2sQfnH/53hX63kxOXrf1Rl2ZTVOdu/tWN
         EupSDiqCtjLOD0jh4Dcugky+1R+0mBr3iDDrgN4usPldI2F43yEic2lUE4s9ccaGg55N
         61zA==
X-Gm-Message-State: AOJu0YzTyky9fpoTdIiSoQ1I9Q8FO+D74bilHcht0ODZ9nk5CyFI/RDn
	Fi7QC3ejJYD4UQ6xkvnxpPdjiiLd/WD6EbQNZtzYACO2nTRzIMB5+Z5DCSNI
X-Google-Smtp-Source: AGHT+IEHUs79uJXNIGbLlh4ilKm59wztdxDhwiJsyQyXXFz1I3mt7QdTowLXMTlVAPcuD/mkBdS0jA==
X-Received: by 2002:a67:eb09:0:b0:46a:fdb2:b0f9 with SMTP id a9-20020a67eb09000000b0046afdb2b0f9mr2236724vso.23.1706120498290;
        Wed, 24 Jan 2024 10:21:38 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id e3-20020ad44423000000b00680f8a7c026sm4658097qvt.65.2024.01.24.10.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 10:21:37 -0800 (PST)
Date: Wed, 24 Jan 2024 13:21:35 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] u-boot: make rock-pi-e patches
 only for rock-pi-e
Message-ID: <20240124182135.GA4040@localhost>
References: <20240124175113.559-1-twoerner@gmail.com>
 <c1918525-5ebc-4df6-9bf7-5ca09c553f91@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c1918525-5ebc-4df6-9bf7-5ca09c553f91@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 18:21:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62265

On Wed 2024-01-24 @ 06:56:01 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 1/24/24 18:51, Trevor Woerner via lists.yoctoproject.org wrote:
> > The U-Boot patches that were added recently are only for the rock-pi-e
> > MACHINE, therefore only apply them when building for rock-pi-e.
> > 
> > Fixes: b5bba3a01197 ("rock-pi-e: apply upstream PHY fix")
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> 
> Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
> 
> What a nice timing, got "bothered" by this a few hours ago but got
> sidetracked :)
> 
> I **think** this would make more sense in a u-boot_2024.01.bbappend though,
> since it'll likely only apply on top of that version :)

Hopefully these patches go upstream soon, when it does my nightly build will
fail, and I can remove it the next day. But if the patches don't get into the
next release then rock-pi-e's second ethernet will stop working again if we
make it version-specific.

> Cheers,
> Quentin

