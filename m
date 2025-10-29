Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7DFCCF9F0
	for <webhook@archiver.kernel.org>; Wed, 29 Oct 2025 15:00:18 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web01.7920.1761750011719238118
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Oct 2025 08:00:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=V/ICRoZ+;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-475dab5a5acso28575725e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 29 Oct 2025 08:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1761750009; x=1762354809; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rwq85A2a2ulG35CA18OquvG1I/GM1pHMkc175jor0aA=;
        b=V/ICRoZ+EtF0FxD+wzVN6NYuAmvJ9K87sggsr63fkhemtZvf0tOs259P99XWZ7W8FN
         c9GLFE5P9WDAqYmpRfDgReQAbCZWAjVfjwdhsNotgbvWNC1UNvQsRv4WDpPNLsZ1z6sY
         kAR5GGGswiTvv/cufzozLuWFOGVM/nm80OIeY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761750009; x=1762354809;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rwq85A2a2ulG35CA18OquvG1I/GM1pHMkc175jor0aA=;
        b=ryJ9XpKFkgvLk1toDKGLoiXArbSJlXVjAkJoX8VTSFsOBMc0pMwQ8iUtMMxTQppmWw
         0EwvNcblV0xnwDvGv8QAum7zGIz65eYat4ChlPAx/nMjPD6H1hvjnfuSq+i7GHLlZ5fA
         pQ+gKD4w+bp1B3jhbn2wbhfn5lAEQHNar8lLAt4/o2VzO+NhY9BzoFK3nMriJ2UZVYM2
         TNtx/KtTBLQEJ1MZlkjOXr+alpZX6rAZDYQB1xSaMbCoFdAsaylhEF4eiqmoczCKps9a
         YaA9ESj0x8z68YKustYCuvbWr9YKOrNWChZWfmXxuOKPaNxdgZo7v9DflQHLOuDvBayZ
         jwhA==
X-Gm-Message-State: AOJu0YzKkhm2BhjAVvWp9H+ys+RCGfDw8+y/tyxJItbHU0t/iPwchIwv
	eVNLTyhcL7HnhPm3duJpipzg2XSaqqKYYLK3fzFv2unaxXS9cSe1UbgJxSnzYA8tAM9vb4nHNUC
	B4SRW
X-Gm-Gg: ASbGncuxPvDho8fwGJ9uikiJiJVDK1Pz9E9BwFAGAPpHlXzcMbbbqN6dbtyXf542x76
	rBe/5WXmZ7bsFld9AT6dOK/cqdX7yn5UB8QmVufIb7AKxliAlQ19utmokZ/IsmzobaQThgN98QG
	HZ3622nmR/57iarQBJYy+r5d4wwEGYA8Re5g6jkWaMBnpVvzqsOCMZ1pPmhDqDcsw28tTVzBRKX
	XBPXZIIbeWdSddR+ng+XdOuZ3R6j8ha9dVX21img+A+wfOOuIxi3NEYTZqpMe3Ghbb/ZS3wHeJx
	raBJ7kJg0NfSOtb+U7sltdeYsuc7WKKd0rBAyVwJP6hZvNecDk802rDN/pty8caS9rfjQlczZLV
	4aSUbxVnqCS1YR5sRUk/1ck0mcKx/5OrCbGBsQjUUmGCTfENcr2lpWdC/8wKz32Nk1tJJhWYp9q
	7n1aGV7fOUedSL6R5zd0xtb/4nqt+M9t3RCPkOgblUlPJQUdTKtwre9nra1f+WVSIO
X-Google-Smtp-Source: AGHT+IFZB+Gqre+Mjx9x+yaXnnVTNUgzgIwUCoRsU7E+ENqyHGiwya/gvbxCLIItEJBdxw1QhbzEtg==
X-Received: by 2002:a05:600c:4686:b0:476:6ef6:e28c with SMTP id 5b1f17b1804b1-4771e3ba62emr26668705e9.38.1761750009326;
        Wed, 29 Oct 2025 08:00:09 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:20a6:9403:5f14:a9f7? ([2001:8b0:aba:5f3c:20a6:9403:5f14:a9f7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e20205esm50825235e9.12.2025.10.29.08.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 08:00:07 -0700 (PDT)
Message-ID: <d1feed09d97a4de0413dc2af3452bb949c9deef4.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: add
 meta-beagle sublayer of meta-ti to check-layer
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com, denis@denix.org
Date: Wed, 29 Oct 2025 15:00:06 +0000
In-Reply-To: <498ad45f-6a80-4d1f-bf07-92babf68e225@gmail.com>
References: <18692C680F0ED8BC.31910@lists.yoctoproject.org>
	 <20251028155114.GD3125@denix.org>
	 <498ad45f-6a80-4d1f-bf07-92babf68e225@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Oct 2025 15:00:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65981

On Wed, 2025-10-29 at 14:05 +0100, Gyorgy Sarvari via lists.yoctoproject.or=
g wrote:
> On 10/28/25 16:51, Denys Dmytriyenko via lists.yoctoproject.org wrote:
> > Hi Richard,
> >=20
> > I know you are overloaded with the release and getting bitbake-setup wo=
rking=20
> > on the AB. While this change is not critical, I just wanted to make sur=
e it's=20
> > in for the YP Compat v3 launch. Thanks.
>=20
> Though I'm not Richard, I think for good measure maybe you want to send
> this patch to the yocto-patches ML too - that's where AB patches
> supposed to go according to the readme. I'd expect the chances to be
> seen are better there.
>=20
>=20

Which is why it fell through the cracks. I've merged it now though.

Cheers,

Richard

