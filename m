Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0B0C433F5
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 11:10:19 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.5933.1648638618330401054
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 04:10:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AllI+aiQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id h4so28725593wrc.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 04:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=8HndvkxVtHhOsMyEKMebHTQU1N5ML6cYMgit3/vC/SA=;
        b=AllI+aiQG1cBIhRPKYr5krWYGqyuUiKwJ5cO9xvfWiBLv7DpPcZKgu1UhW4Ow7oTZk
         oDdx1S/ugTFB4R4eQaTW53ChNa1c20yv26YY887xCPmtJ13W0qH92bSJvPbug7c1UZhO
         liZyqORroIDf4hiT0ORiv5FRsny7mUfpcZR1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=8HndvkxVtHhOsMyEKMebHTQU1N5ML6cYMgit3/vC/SA=;
        b=mR9HG6F8/At7olhE3O8conqU9Mi3qjCyGejZt75XMGzPYMOlZWk1s0+gIsWeQxZA4R
         ACAAfvELsYBvHbvrbpBCWi2N/yAn4WJYzM+FOfIKZMIVVgzSn1zKF0DQSFsjuUKgCzwo
         kHjGZQ000FGfLznH5/5cyjzYE9iaXmi3fp7fURuM4FHfmY4BihIpnD0qVRP9CoB1sp9U
         9PGjptEkqL3vlo8z1TGvyIglNxLHaImbnd8n0Vic0HHk+RVvI18Ap74fgbm9O88W3fVd
         5yqtUelMPmd65UlksIPu7ErXqZwS83euFaadbNn725mNbwMVUsJg6rC8J4YsZ+lx2yU8
         nSyA==
X-Gm-Message-State: AOAM530Pg1M9Nt0EuIKmkV++3fAdXv1MgOvtsNyEoKnGbctPSYK+jMDq
	HFLQ1sfxXfwGvim8mpCdKF/Y17rJxGWDpJf6
X-Google-Smtp-Source: 
 ABdhPJz2jzVO85v/tJK1fG2OL0wfvO09F1nkxY0vZDq4n2l5Iy2dqlC7aFhHF6nFO4z1aS6ifR43SQ==
X-Received: by 2002:a5d:5849:0:b0:205:85cb:baaf with SMTP id
 i9-20020a5d5849000000b0020585cbbaafmr35891862wrf.442.1648638616310;
        Wed, 30 Mar 2022 04:10:16 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:367f:29cd:9517:5c4?
 ([2001:8b0:aba:5f3c:367f:29cd:9517:5c4])
        by smtp.gmail.com with ESMTPSA id
 g17-20020a05600c4ed100b0038ca32d0f26sm5038286wmq.17.2022.03.30.04.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 04:10:15 -0700 (PDT)
Message-ID: 
 <9bfd8e454ae64b4eab8baf1a35f144d2721ba187.camel@linuxfoundation.org>
Subject: Re: [yocto] SCM usage in source urls and bandwidth
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>, Khem
 Raj <raj.khem@gmail.com>, Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 30 Mar 2022 12:10:14 +0100
In-Reply-To: <16E122970083F378.12707@lists.yoctoproject.org>
References: <16E122970083F378.12707@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 11:10:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56594

On Wed, 2022-03-30 at 11:42 +0100, Richard Purdie via lists.yoctoproject.org
wrote:
> What are our options? As far as I can see we could:
> 
> a) increase the pipe from downloads.yoctoproject.org but that does come at a
> non-trivial cost to the project.
> 
> b) Seek help with hosting some of the larger mirror tarballs from people better
> able to host them and have that as a first premirror?
> 
> c) Switch the binutils and glibc recipes to tarballs and patches. I know Khem
> finds this less convenient and they keep moving back and forward but we keep
> running into this issue and having to switch back from git.
> 
> d) To soften the blow of c) we could add devupstream support to the recipes? We
> could script updating the recipe to add the patches?
> 
> e) We could drop the PREMIRRORS from poky. This would stop the SCM targets from
> hitting our mirrors first. That does transfer load to the upstream project SCMs
> though and I'm not sure that will be appreciated. I did sent that patch, I'm not
> sure about it though.

I meant to add:

f) Switch the problematic recipes to use shallow clones with something like:

BB_GIT_SHALLOW:pn-binutils = "1"
BB_GIT_SHALLOW:pn-binutils-cross-${TARGET_ARCH} = "1"
BB_GIT_SHALLOW:pn-binutils-cross-canadian-${TRANSLATED_TARGET_ARCH} = "1"
BB_GIT_SHALLOW:pn-binutils-cross-testsuite = "1"
BB_GIT_SHALLOW:pn-binutils-crosssdk-${SDK_SYS} = "1"
BB_GIT_SHALLOW:pn-glibc = "1"

The challenge here is that in order to be effective, there needs to be a
PREMIRROR setup with the shallow tarballs on it. This means we couldn't do e)
above and have this have much effect unless we craft some very specific
PREMIRROR entries too.

Cheers,

Richard




