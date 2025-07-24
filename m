Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F131C83F26
	for <webhook@archiver.kernel.org>; Thu, 24 Jul 2025 08:49:12 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.7959.1753346944092651866
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Jul 2025 01:49:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VUiJtY2E;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a54700a463so462116f8f.1
        for <yocto@lists.yoctoproject.org>; Thu, 24 Jul 2025 01:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1753346942; x=1753951742; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5sYG8VsHkclnJZZxJPM6QFhYHgIPjI7tE21PvD0ROBg=;
        b=VUiJtY2E75m8iyID9tPoGkJcyvW+6q3OAhKj3Wsj1ZlQq0gVuyFAv5Kk6MmiaY47o2
         XcOF2f208mHUNd66o01CqKdSgo265qpOZ4d5zejzOhRYgv251j5Qgp+Mck74pUq5Et/w
         gNgwvermylSzx4tP+epAeIyaitbcCo707FAzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753346942; x=1753951742;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5sYG8VsHkclnJZZxJPM6QFhYHgIPjI7tE21PvD0ROBg=;
        b=qyG5ep4+H+rKmWGkDmw/7j7YrXvXhfkTmyY5SOM3f5Ji2wFOa/lmIHTXizlEhG372b
         sqhI6q9qREJ/n5Qr2XNVsB1wW9btQCv2xE7HyQoJJkHaOYTarHb7zAD9EyO22FoHARLO
         LFHMOX0uZ+DbvtTl8cLxU4tCo8m8K+SlYexsc10VWiGAxglFYDpE046anuSE7xhAOMho
         HbFPyxT/lvkB6WZof3kdvY1qOhQ5876FsEVDICAkjox70HVwU4ofO1OTCPBvBUE6CjjC
         VhMce78FeDWwrW7qUMTq/F/K87QA22B0465e+pX/mH1EUMJYNGhJWNbK2URm8rIzcv/r
         0oMg==
X-Forwarded-Encrypted: i=1; AJvYcCW/LGqESGCYZQlQPDrddU114qbL9yo0mh3yw+4Od+dwsr85C7GJ4oGL9fElXGCyjKH139YjUQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyCoPVcVrsL7U8aaVjH2RmJKzM0nDoH3YR4Oc2bhE6t+E1LHWXi
	zfltLSEV1wuWsfObs8tvNQw62cZZQlx8gr9vhAvTgpH693ScoJHyD1+bxK03l/BnpoI=
X-Gm-Gg: ASbGncta0ZaPVOVk9t17ZcN5eKYh/3c5WcxCJreXILJD2ffPxJ+ZKPiufgyKcR4Rmqr
	dOPSsAD7cWhizvJrKtfr4pgNP4xvvd8d4fNvNCFf/AwH2cDY2cxGieLGCuiuTc50DO6ub8IJuNB
	jrLz8EtNSZ3YNpJLh/H8IY2iW6YU21UnwnVoR+jr5nrus2s/qiMoNMkexfYwPD7E6QqZWPkEZqJ
	sCrk6Sim8Si7euDUF+6wQSqE7pxZr2gY6gsyNbxHAo4AlST9HwvBmnIRmhXtbkKCAP3jv2NlANq
	j7HPDAQhNFUASbaRxIKtLAI4AgDWUBPiyxhBcNjiyGI4wqyyhwNWpL7BKHT3K13QgcXn0YOcRmu
	e2DQnwtLXxRd5PpjWjNYTsEooX8Jib1OhUfmBpFc61gqk+HLFgsE0zTB8OTkKJDxscAdd5A+MzM
	rOTZluKw+elo20s2xnKME=
X-Google-Smtp-Source: AGHT+IGGzLfWVQBBNqv0d/0RM8yeo/okkbUarFqx65+mRKhn19PsH91dAvjBfCsl2Emr2GkVH/VNng==
X-Received: by 2002:a05:6000:2002:b0:3b7:6e64:bed8 with SMTP id ffacd0b85a97d-3b77137d611mr1014667f8f.28.1753346942413;
        Thu, 24 Jul 2025 01:49:02 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:baad:fac0:4458:968? ([2001:8b0:aba:5f3c:baad:fac0:4458:968])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b76fc605afsm1459271f8f.9.2025.07.24.01.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 01:49:01 -0700 (PDT)
Message-ID: <87ebfac2c9a92437785cf7abf24fda9405a984d3.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.3_M2.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
 "yocto@lists.yoctoproject.org"	 <yocto@lists.yoctoproject.org>, Pokybuild
 User <pokybuild@yoctoproject.org>, 
 "openembedded-core@lists.openembedded.org"	
 <openembedded-core@lists.openembedded.org>
Date: Thu, 24 Jul 2025 09:49:00 +0100
In-Reply-To: <DM4PR11MB7760B9AA59C54498E0D234B1A15EA@DM4PR11MB7760.namprd11.prod.outlook.com>
References: 
	<010101983a5e30f8-4ea5cf3b-f053-45ed-add0-f139865ee87d-000000@us-west-2.amazonses.com>
	 <DM4PR11MB7760B9AA59C54498E0D234B1A15EA@DM4PR11MB7760.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Jul 2025 08:49:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65707

On Thu, 2025-07-24 at 08:40 +0000, Jing Hui Tham via
lists.yoctoproject.org wrote:
> Hi all,
> =C2=A0
> Intel and WR YP QA is planning for QA execution for YP build yocto-
> 5.3_M2.rc1. We are planning to execute following tests for this
> cycle:
> =C2=A0
> OEQA-manual tests for following module:
> 1. OE-Core
> 2. BSP-hw
> =C2=A0
> Runtime auto test for following platforms:
> 	1. MinnowBoard Turbot - 32bit
> 	2. Alder Lake-S=20
> 	3. Arrow Lake=20
> 	4. Meteor Lake-P=20
> 	5. Amston Lake
> 	6. Bartlett lake-S
> 	7. Twin Lake
> 	8. Beaglebone
> 	9. BeaglePlay
> =C2=A0
> =C2=A0
> ETA for completion: Tuesday, 29 July 2025.

Unfortunately this has a failure in build-appliance so I think we
should hold off on QA and aim for an rc2 with that issue fixed.

Cheers,

Richard

