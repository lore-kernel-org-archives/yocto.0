Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8FE9D6007E
	for <webhook@archiver.kernel.org>; Tue, 19 Nov 2024 08:29:58 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.16375.1732004990394830739
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Nov 2024 00:29:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=GCG1w/WA;
 spf=pass (domain: linaro.org, ip: 209.85.167.53, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53d9ff92ee9so857953e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 19 Nov 2024 00:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732004988; x=1732609788; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AciMbyTqBgg7ZmP8XF/NSNafR0QU5bSi8w3iU6KB52c=;
        b=GCG1w/WAxOpk55Pth8JzlaeudHxqfguQRB6nSMWAGLC4QlMa1wmGgWkufVVDijwymx
         0hz46JT4yVf5rWXF9DS7D7DKAovOf0EPU9r610Ulqs4TvkGnU9ivIOz/iwobBQy2R+yD
         pkrz9PbXDBWCCsC+jgpXbFLH+q5+MDAhgfz0E1i51FzUKkBWKAvgjm53T87gtlRZSIJB
         W1djJeCVsIx1Nx1p8b3oG7MffoAb9bimnVNfHZhRxHKBzQhiSVi9r+5walnBEOFIySbq
         WGHIpPz6r1luU8tSFH5xIJQOTD+CCWIWaePtgdRP175Zj3D5d1SGAYZpIZ9Tsl090B0I
         /I9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732004988; x=1732609788;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AciMbyTqBgg7ZmP8XF/NSNafR0QU5bSi8w3iU6KB52c=;
        b=KTDhVf71ZARbNQ9jhiy/HOhJDyibvtc0lGJFnS7JFkWPiRhS3WIGPI2XjLXibZpnxZ
         LHnW8+RhLm15n+LJwROQ5dHRZCKFuIPkbke8FmSLnyLmNG3/1RxT+8ekGw7SjEZEbIj5
         2aSKSg7qaTzvIIAqOQ5t9d71ciRs7z/vWmPq13FGTJ/FUSEZqJxLTp37kQQO3dWM+TI6
         4AwhjyHyinL/3wpBVrfnLxdK5DcxgVAusJKFskOtqf+qVkJSMFGCppeKVououdygzIQM
         KqS7DbbSri89FM4XUZjLLIQKNxtELa3BD4OX9CVCizMCiSZnBCIDggLM/n6cSK61phAs
         BTRw==
X-Gm-Message-State: AOJu0Yz1APaI8KK27EHy7G7ujkHdBDZRwqukGaRmCHyt0ayyNixdq0EL
	cTAYQ1Y2WqPwWVdyWLmDgq2v2aQPBS6evALX17k8RgTxkGfWxgmz+62BUH4ME86v060oiSrijxC
	7CQ4=
X-Google-Smtp-Source: AGHT+IHKtL9B+uaJOD3dH2fUN8qYOs0MqUZvBNR3SrKJjAojxlbTd/VZvKtVmA1CuxHtQN6cmuT2Iw==
X-Received: by 2002:a2e:a987:0:b0:2fa:d25e:39e4 with SMTP id 38308e7fff4ca-2ff609a90e2mr68194681fa.36.1732004988083;
        Tue, 19 Nov 2024 00:29:48 -0800 (PST)
Received: from nuoska (2001-14ba-7452-eb00--193.rev.dnainternet.fi. [2001:14ba:7452:eb00::193])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff69b161cbsm11695061fa.109.2024.11.19.00.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 00:29:46 -0800 (PST)
Date: Tue, 19 Nov 2024 10:29:43 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
Subject: Re: [yocto] Suggested way to generate two version of same package in
 Yocto
Message-ID: <ZzxMd_T9FhQ77Tlv@nuoska>
References: <laOo.1732003618528028886.1LO6@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <laOo.1732003618528028886.1LO6@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Nov 2024 08:29:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64297

Hi,

On Tue, Nov 19, 2024 at 12:06:58AM -0800, emailaddress.ashish via lists.yoctoproject.org wrote:
> Hi Members ,
> 
> I want openssl-3.2.x build to use some file from openssl-3.0.8 build
> So this requires the same build to generate build for both version of openssl .

Don't do this.

> Is there any preferred way which senior member can suggest or� any sample implementation for this
> 
> As of now i am looking at an logic where same build had two different recipe in Yocto Rocko (openssl10_1.0.2r.bb
> openssl_1.1.1b.bb )
> https://git.yoctoproject.org/poky/tree/meta/recipes-connectivity/openssl?id=34fa190d957f19f69ede7af68f75e3beef3fc96a
> 
> We are working to get the openssl_3.2.2 with openssl_3.0.8 FIPS support.
> I have created an recipe and got all work done to have openssl-3.0.8 with Fips on Yocto scrathgap.
> 
> Can senior members suggest proper way of doing this

First suggestion:

 * don't do this, really don't. Build only single version of openssl and convert
   all users to this version. Really, do this only!

Second workaround:

 * if you really, really can't do this, then the two openssl recipes need to be completely
   separated: different recipes names, different install binary names and/or paths for all installed
   files, convert all openssl users to use the 'correct' version etc etc. And of course no openssl
   upstream recipe will do this by default so it's up to you to change the recipe for this usecase
   which is very, very hard.

Really, use only single openssl version. The correct things are sometimes the hard
things to do, but nothing makes the easier things more correct. Workarounds are often
easy only initially and later on will lead to much more work, more workarounds and maintenance
chaos.

Cheers,

-Mikko

