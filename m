Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF105C4708E
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:06 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web09.5060.1650439774087734102
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Apr 2022 00:29:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EOQoWOCr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id u3so987835wrg.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 20 Apr 2022 00:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=675PT5icwGY7jkayUtqC43tP/p9SAd6ceSC6Phl9Huo=;
        b=EOQoWOCrLVhF5YuJz55Bau/48Nql3qL7DbiILDDmC3A/mMui/HAYDbnrpYlciB7s3P
         WGzqQQhQSr94T1OPCcEmh3YEslNp79OVthgeMuSUz1cbEUp5yHWAmQrrG7saOA4qUM7W
         wR35OZIeFj18hxMht4MDy/KWxRMswIqCNlHZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=675PT5icwGY7jkayUtqC43tP/p9SAd6ceSC6Phl9Huo=;
        b=WTwqRGB0c9mLiesVGQ6tw9obsOHVeq31EVmymJw7n963+u6cp9wlatXJ3CDPXl2iNZ
         wpqp4vQignFQn7bMMIj1LPmFfCRR2jjBdatQaDXzNXEFIHe223YBBxGhhR9rPQzR/Jmd
         HVh1JW5n/xutMcHRr0uqeSQzRzcBU0As9eb1uk6/fOjW59g75bzwai9M+3hwwvYA6y1M
         +YcffZHWHocG0MOjV2Q6w3rkMnhg+BsSBp/q9l2XIFcACPLkQjOYbe4nh6mNK2SL7zFN
         6u8o86TK1pKRr/KCYI3x3ysN/M7lQWk1N5eJ/gV8QX64KR6H62GUWUFEPOnJk8+GDCcm
         MEcQ==
X-Gm-Message-State: AOAM5322Sw30qVAzniSpZr43AuZTkZ57mtuVBvwokXGXg30FNTT2gI3T
	W1Gebdg2jPVLWIYpR86WWU3/wg==
X-Google-Smtp-Source: 
 ABdhPJxVQY/oqdYMbGcbPdAm7xWOBf9siJsyei6hqSwyuYHoaTmNAnU5CicDjiHYKl7sHaA1Kpqm2w==
X-Received: by 2002:a5d:4b03:0:b0:207:ab62:dafd with SMTP id
 v3-20020a5d4b03000000b00207ab62dafdmr14455627wrq.69.1650439772491;
        Wed, 20 Apr 2022 00:29:32 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9745:8b8f:81da:af07?
 ([2001:8b0:aba:5f3c:9745:8b8f:81da:af07])
        by smtp.gmail.com with ESMTPSA id
 z7-20020a7bc7c7000000b0038eaf85b0absm17616958wmk.20.2022.04.20.00.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 00:29:32 -0700 (PDT)
Message-ID: 
 <36840f7431b8a53272a3f783d747807dde19967e.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.3.6.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Cc: Yocto TSC <tsc@lists.yoctoproject.org>, "Mittal, Anuj"
	 <anuj.mittal@intel.com>
Date: Wed, 20 Apr 2022 08:29:29 +0100
In-Reply-To: 
 <0101018045908f0d-aec445aa-251d-4dcd-a10d-8d0ead780069-000000@us-west-2.amazonses.com>
References: 
	<0101018045908f0d-aec445aa-251d-4dcd-a10d-8d0ead780069-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56816

On Wed, 2022-04-20 at 06:02 +0000, Pokybuild User wrote:
> A build flagged for QA (yocto-3.3.6.rc1) was completed on the autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-3.3.6.rc1
> 
> 
> Build hash information: 
> 
> bitbake: d01d8326331cfe59208674cfc53aa26c0028b313
> meta-agl: ca53308f8803fb50709b3f17bb1f9e476366bb62
> meta-arm: 878fabbfc720da7d634ed9a2c0e24d4b8845ea20
> meta-aws: 6801abf40bb255a31bce5061c5c6b72f5e2a8f58
> meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
> meta-intel: 16bfef2d1e0d0c8c596741d0bbb820541c432f6d
> meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
> meta-openembedded: a970ee45c2335c37041ad1658323481874bb4f0e
> oecore: fbbb689c8df7f82644b8a9bc5bb6884bc6516660
> poky: eee9fba7b4d5d7a268a495688039027390894e6d

3.3.6 built but there were two issues. One was a qemu boot test failure for
core-image-sato-sdk on qemuppc-alt. I did have a look for logs but there aren't
any, qemu never seemed to start but nothing to indicate why. Since the other
tests for ppc passed, I think this is one of our general intermittent problems
on ppc and we should ignore it.

The other was some valgrind ptest failures. Those are known intermittent issues
and I believe also not significant from a release perspective.

Cheers,

Richard





