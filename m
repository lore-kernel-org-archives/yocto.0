Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D057C433F5
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 11:29:30 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.6076.1648639769740539638
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 04:29:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CQJiB3+D;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id u16so28826357wru.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 04:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=mFF+Q5QK60o/cCOIsmnlGMfpSV9MjDnG+xHTcN9gkl8=;
        b=CQJiB3+DWOWiqRKIY12l71Y05XRNRCRPLx4x4ek5yeVQPA1sn+8S8d52x9bOaGi5qc
         /3rp3cOosEPnOpg9XJrjJdk2hQkCfArXG5MvFxsvXJZs4dt95kQcC6TTFMECiExtjvGR
         4K6RA9UJAbFVfYk/RBY3dvNl/MLZMLK+b9cUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=mFF+Q5QK60o/cCOIsmnlGMfpSV9MjDnG+xHTcN9gkl8=;
        b=Mpow0BCdS+Zg554faETS2tgddtt+Hft270462VNWOHb9up2vA3EwyU/bBH6iqvCAKE
         ZrNLayEgPCU6zd2SlLQAi0LkSht+4YoigP3JlaXjFMFHr19lSc633uhkXI1Y2hxNK2dd
         zjYZGnwjok2vutyrrHb6D5/S+ZDHk+Pyd53jxz1dgIfj36+VtsfkZtIPpIW7gqJVdgGs
         cCSvIZVmaYBpljUH+mFHE+GoifHrwIcuzjzumLBlleBEEiFi5HWxRxeli504MWxLe2ml
         O/qbcFY3gnu/OFF+vpb7FTTDmltUrWd8plMOtvkmXD0lNgYYqKb4nW/XGjWjuVxLJsre
         VZAA==
X-Gm-Message-State: AOAM530jLW5kBeAnkL09+gG39b64REc6fIL1sAOkSyjjtmvufsM7TmQB
	3d0YGu/K4jpz7uMm36HYux3LGQ==
X-Google-Smtp-Source: 
 ABdhPJx0OThWvNLtsXUQtLjWdqRbzsxHuyMo5GDqcUK3BZ6vgHcSxnRvrvfXh+/uB+bBjX3et4oveg==
X-Received: by 2002:a5d:47c4:0:b0:205:8d14:403b with SMTP id
 o4-20020a5d47c4000000b002058d14403bmr36214699wrc.504.1648639768044;
        Wed, 30 Mar 2022 04:29:28 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:367f:29cd:9517:5c4?
 ([2001:8b0:aba:5f3c:367f:29cd:9517:5c4])
        by smtp.gmail.com with ESMTPSA id
 c11-20020a05600c0a4b00b0037c91e085ddsm5531504wmq.40.2022.03.30.04.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 04:29:27 -0700 (PDT)
Message-ID: 
 <688f29903f6c8321a3a235f3bf9b1bd66c20e823.camel@linuxfoundation.org>
Subject: Re: [yocto] SCM usage in source urls and bandwidth
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ross Burton <ross@burtonini.com>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>, Khem
 Raj <raj.khem@gmail.com>, Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 30 Mar 2022 12:29:25 +0100
In-Reply-To: 
 <CAAnfSTvsKf6DBeWcYLXkdEfRmN9Aa23QD-qqC3zaj6==q24SmA@mail.gmail.com>
References: <16E122970083F378.12707@lists.yoctoproject.org>
	 <9bfd8e454ae64b4eab8baf1a35f144d2721ba187.camel@linuxfoundation.org>
	 <CAAnfSTvsKf6DBeWcYLXkdEfRmN9Aa23QD-qqC3zaj6==q24SmA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 11:29:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56596

On Wed, 2022-03-30 at 12:18 +0100, Ross Burton wrote:
> On Wed, 30 Mar 2022 at 12:10, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > f) Switch the problematic recipes to use shallow clones with something like:
> > 
> > BB_GIT_SHALLOW:pn-binutils = "1"
> > BB_GIT_SHALLOW:pn-binutils-cross-${TARGET_ARCH} = "1"
> > BB_GIT_SHALLOW:pn-binutils-cross-canadian-${TRANSLATED_TARGET_ARCH} = "1"
> > BB_GIT_SHALLOW:pn-binutils-cross-testsuite = "1"
> > BB_GIT_SHALLOW:pn-binutils-crosssdk-${SDK_SYS} = "1"
> > BB_GIT_SHALLOW:pn-glibc = "1"
> > 
> > The challenge here is that in order to be effective, there needs to be a
> > PREMIRROR setup with the shallow tarballs on it. This means we couldn't do e)
> > above and have this have much effect unless we craft some very specific
> > PREMIRROR entries too.
> 
> Even without premirrors this is a lot faster for glibc:
> 
> $ time git clone git://sourceware.org/git/glibc.git
> Cloning into 'glibc'...
> remote: Enumerating objects: 6956, done.
> remote: Counting objects: 100% (6956/6956), done.
> remote: Compressing objects: 100% (2938/2938), done.
> remote: Total 670093 (delta 5328), reused 4750 (delta 3932), pack-reused 663137
> Receiving objects: 100% (670093/670093), 205.19 MiB | 16.39 MiB/s, done.
> Resolving deltas: 100% (573265/573265), done.
> Updating files: 100% (19011/19011), done.
> 
> real 1m56.255s
> 
> $ time git clone git://sourceware.org/git/glibc.git --depth 1
> Cloning into 'glibc'...
> remote: Enumerating objects: 18809, done.
> remote: Counting objects: 100% (18809/18809), done.
> remote: Compressing objects: 100% (9704/9704), done.
> remote: Total 18809 (delta 8812), reused 12185 (delta 7968), pack-reused 0
> Receiving objects: 100% (18809/18809), 41.79 MiB | 11.96 MiB/s, done.
> Resolving deltas: 100% (8812/8812), done.
> Updating files: 100% (19011/19011), done.
> 
> real 0m8.701s
> 
> A full clone fetches 200MB and takes 2 minutes (a lot of that is
> actually resolving the deltas, not the fetch).  A shallow clone of the
> current HEAD fetches 40MB and is done in 8 seconds.
> 
> Why would we need a premirror?

The code doesn't do "--depth=1".

https://git.yoctoproject.org/poky/commit/?id=27d56982c7ba05e86a100b0cca2411ee5ac7a85e

"""
This implements support for shallow mirror tarballs, not shallow clones.
Supporting shallow clones directly is not really doable for us, as we'd need
to hardcode the depth between branch HEAD and the SRCREV, and that depth would
change as the branch is updated.
"""

Put another way, you didn't specify a revision in your clone above and if you
try, it becomes rather tricky.

To make this work we therefore need a mirror with the shallow tarballs on it.

Just for info, the binutils mirror tarball is ~1.3GB, the shallow tarball is
65MB.

Cheers,

Richard



