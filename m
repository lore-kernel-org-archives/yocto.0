Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70224C433EF
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 14:51:13 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web12.8154.1648651871778395118
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 07:51:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=X5hfZcZQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id
 r204-20020a1c44d5000000b0038ccb70e239so72770wma.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 07:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=IxKk1woIGUoaim87WHKYFQPT/ormWali3U3yOzheSHI=;
        b=X5hfZcZQsEI1qtQU4a5RtGlHJ4HtZQLvnTemz9LrMf/E5exdDG/Upp16ataNZ5hD+g
         mfsBCVPUMiU9FnrUR6klQHEIE9wiH/VznGFr2eCRZwA6snwZdsPz55efavOGOrDd0Y2Z
         krd9siziKD2DtbV2NmaBglEWrgOiJpKUVciog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=IxKk1woIGUoaim87WHKYFQPT/ormWali3U3yOzheSHI=;
        b=FmRC2R2jPfuj2qv9SHw4SvKilcijEGeWoaOJsVscCw4Lg3woKQPHGjtQfTtZcYhENr
         nKQ5OR2o01Num4IF1o+GRr2yoVvOJShqdG6Zdv4SeVWe5JtRYXRuMna2/9JluFBrFuqY
         XGrzhrAVt4q1jNAjD0skqUgV8jDKQPhRzq1NP394C28KZlugzE/NRdQjglXJpoMO9+tP
         WwbUgzyIz5Ytf2opLcbR6oF97UwKUPMJTG9ziqj/N440iU4F5q3i2Gibi+FmtWfAoDT8
         eYrEDEV+DFNlClhcRR9rnV1ZoBief+n2UKiGDdmMV8sJW8aG8lxZf0UlY9fR7USAqpV5
         R8bw==
X-Gm-Message-State: AOAM533dggu90u5YKaq3SdaKMNt6dGLyC5eka3gXDIBUZAxrOI5qFXj5
	FHaYSyUcgzW4f9I2vg83/YVsGw==
X-Google-Smtp-Source: 
 ABdhPJzL/7A2rjv2KMwFWa9FnFFWA6IgOZz4mx+kqgCXg4CzPLizeenV8Tor9fIJ426EM2NjQVxsvg==
X-Received: by 2002:a7b:c205:0:b0:389:a4a6:b5e1 with SMTP id
 x5-20020a7bc205000000b00389a4a6b5e1mr4864253wmi.128.1648651870152;
        Wed, 30 Mar 2022 07:51:10 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:367f:29cd:9517:5c4?
 ([2001:8b0:aba:5f3c:367f:29cd:9517:5c4])
        by smtp.gmail.com with ESMTPSA id
 r4-20020a05600c35c400b0038cbd8c41e9sm4999527wmq.12.2022.03.30.07.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 07:51:09 -0700 (PDT)
Message-ID: 
 <d7bf994226db050f3c67bd5a05c1f3a2c4bd740c.camel@linuxfoundation.org>
Subject: Re: [yocto] SCM usage in source urls and bandwidth
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Claude Bing <cbing@cybernetics.com>, yocto@lists.yoctoproject.org
Date: Wed, 30 Mar 2022 15:51:06 +0100
In-Reply-To: <2201d640-812d-fdcb-e89a-11bcf6292698@cybernetics.com>
References: 
	<8afc5cc5da4718e87e0c11b3a6ee8df1cca6a404.camel@linuxfoundation.org>
	 <YkRg74lxBklzqIpn@piout.net>
	 <2201d640-812d-fdcb-e89a-11bcf6292698@cybernetics.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 14:51:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56601

On Wed, 2022-03-30 at 10:05 -0400, Claude Bing wrote:
> On 3/30/22 09:53, Alexandre Belloni via lists.yoctoproject.org wrote:
> > On 30/03/2022 11:42:46+0100, Richard Purdie wrote:
> > > [list address fixed, sorry]
> > > 
> > > We've been having bandwidth trouble with downloads.yoctoproject.org so we did
> > > some quick analysis to see what the issue is. Basically in speeding up the
> > > server which was the rate limit, we hit the limits of the hosting pipe. I'd note
> > > a few things:
> > > 
> > > a) it isn't the sstate mirroring, it is nearly all being used by downloads.
> > > 
> > > b) 25% of all our bandwidth is going on "git2_sourceware.org.git.binutils-
> > > gdb.git.tar.gz" - i.e. downloading the source mirror binutils tarball
> > > 
> > > c) 15% is on git2_sourceware.org.git.glibc.git.tar.gz i.e. glibc
> > > 
> > > d) OE-Core has downloads.yoctoproject.org as a MIRROR
> > > 
> > > e) poky has it as a PREMIRROR
> > > 
> > > What are our options? As far as I can see we could:
> > > 
> > > a) increase the pipe from downloads.yoctoproject.org but that does come at a
> > > non-trivial cost to the project.
> > > 
> > > b) Seek help with hosting some of the larger mirror tarballs from people better
> > > able to host them and have that as a first premirror?
> > > 
> > > c) Switch the binutils and glibc recipes to tarballs and patches. I know Khem
> > > finds this less convenient and they keep moving back and forward but we keep
> > > running into this issue and having to switch back from git.
> > > 
> > > d) To soften the blow of c) we could add devupstream support to the recipes? We
> > > could script updating the recipe to add the patches?
> > > 
> > > e) We could drop the PREMIRRORS from poky. This would stop the SCM targets from
> > > hitting our mirrors first. That does transfer load to the upstream project SCMs
> > > though and I'm not sure that will be appreciated. I did sent that patch, I'm not
> > > sure about it though.
> > 
> > I would simply drop PREMIRRORS, this is actually a privacy concern for
> > some of our customers that didn't realize they are leaking the names of
> > their internal git repositories to downloads.yoctoproject.org.
> 
> Indeed, that would be concerning for us as well. Would it be possible to
> ignore PREMIRRORS based on the recipe layer? Alternatively, we could
> create blocklists for heavy packages that need to fetch from upstream
> first rather than drop PREMIRRORS completely. Sometimes, having a
> secondary source could save valuable time when the upstream is not
> responsive.

We don't have any support for "per-layer" overrides at this time which would be
the way to do that. It is something I think we probably do want to consider
adding but I haven't had the bandwidth to look at it.

I'd note that these mirrors in PREMIRRORS are also in MIRRORS already in OE-Core
so there is a fallback, it just controls the order they're tried in.

Cheers,

Richard


