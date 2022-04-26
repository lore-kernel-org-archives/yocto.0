Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AAD4C433EF
	for <webhook@archiver.kernel.org>; Tue, 26 Apr 2022 12:04:17 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web09.5440.1650974651215283850
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 05:04:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=G0N6OR2W;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id
 u9-20020a05600c00c900b00393e729e655so1409729wmm.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 05:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=x5kBo6LBgPM2ysiDWv7/Vcwynsw8VTDskitVqfJr9Uc=;
        b=G0N6OR2Wrr0BfuX0Y5WsslHeWkVhhnSuJ7sLK12sDnXYUgXWUYivJMgt4rRTHLAiyv
         jjmRTizf6LB7kZgkD8mMz48HNO4j+F+Ta1o+h5rOzQSoG10NbvW2CzzHmUe2WDSQEGiR
         xN1RbhVZXbRozKFyL0CwK+pqlrcVLJW4TNGFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=x5kBo6LBgPM2ysiDWv7/Vcwynsw8VTDskitVqfJr9Uc=;
        b=c9b9UKtf6ihVxuBm+GgdKkn5XtoQXLDmk1b2zlIS4c6Ns5biGSAtyzTy/6W5fZwpkW
         C/2cvXMuvGV2Tr58YnaqYeSH+RCrYpmlchNMiP/WVPx9Jr1Nfc8UJCXd6DohxnbnoXpw
         OwAUEx9uG66aDalqzybJaXEIaeu1t6EUaGiOoDnDfQZqWIRRYQGlRqmdUQSYWCSlOv3e
         3VR8IraLuI9380nqGAWH9Kbsg4UNVtUNWOI5vdHAYLO3O5MJ9aHgzFus4Hy65b/NukLx
         0T3qiwL+UeRcxU+/LZ8l2MTpC7ujL0f82ySdM5ZJ4qinKgodeQn6lo8iGrYVqm8206lY
         y3iA==
X-Gm-Message-State: AOAM531dou3z7TgDuchcLPw+RjorucmwlLlWbbY+it2MmEvXXrZAghTE
	bCU7tWvjtTqRSmGursf61A4wtA==
X-Google-Smtp-Source: 
 ABdhPJySgcaKHQfry+yv+KTgs41eUHtl0Hkbu076kaIR53PEX5QLO4oMNY9/o+MpswBxNHwCjugCzQ==
X-Received: by 2002:a1c:f30b:0:b0:380:e444:86b9 with SMTP id
 q11-20020a1cf30b000000b00380e44486b9mr20934945wmq.81.1650974649576;
        Tue, 26 Apr 2022 05:04:09 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:8d4:bce8:ef63:7bc2?
 ([2001:8b0:aba:5f3c:8d4:bce8:ef63:7bc2])
        by smtp.gmail.com with ESMTPSA id
 p26-20020adf959a000000b0020aca418f14sm13066798wrp.54.2022.04.26.05.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 05:04:08 -0700 (PDT)
Message-ID: 
 <3c965c4de0252fed6b817deec761713addc6fb5d.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.1.16.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Cc: Yocto TSC <tsc@lists.yoctoproject.org>, Steve Sakoman <steve@sakoman.com>
Date: Tue, 26 Apr 2022 13:04:06 +0100
In-Reply-To: 
 <0101018065844051-3f135aa2-6cb1-485c-aa27-2c921567884b-000000@us-west-2.amazonses.com>
References: 
	<0101018065844051-3f135aa2-6cb1-485c-aa27-2c921567884b-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Apr 2022 12:04:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56896

On Tue, 2022-04-26 at 10:56 +0000, Pokybuild User wrote:
> A build flagged for QA (yocto-3.1.16.rc1) was completed on the autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.16.rc1
> 
> 
> Build hash information: 
> 
> bitbake: 0784db7dd0fef6f0621ad8d74372f44e87fef950
> meta-agl: ca53308f8803fb50709b3f17bb1f9e476366bb62
> meta-arm: 5c09684863be8e803e3e987a5ce4940721c3f39a
> meta-aws: 9979cfa676105cb68cfadfdaeabf044d7c919319
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: affda10724e5e3c7948200e888a91ffdb5d32a11
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> meta-openembedded: fdd1dfe6b4b2412cc536c26450ce126c960d8107
> oecore: 8e81d38048c953d0823abf04d5b2506cd988f0bb
> poky: f14992950eb90dc168eb82823ab69538f668f8bc

There was one failure in this build on a new performance worker. We've just
switched over to the new performance workers so we can decommission the others
and apply the data centre power budget to other things. I don't think that
should block release.

I'll work with Steve to get the changes we need sorted so this doesn't happen in
future, the issues are to do with the html email report generation which we no
longer use.

Cheers,

Richard


