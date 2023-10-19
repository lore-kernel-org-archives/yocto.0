Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85427CDB482
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 16:04:01 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web10.32081.1697731438643361105
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 09:03:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RF1N1/6u;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40837ebba42so20466875e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 09:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697731437; x=1698336237; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqpnpB4fEJA+DswL3XL+jowbtg/DTucoTU2/lwpAr9I=;
        b=RF1N1/6uGrI2uUnI0T0YvlSDaiYaM5zSFlZDLbYzv6z4hXc04CaSWYw/7pcY/8mZ3+
         NYdjj7cSpUm2s+46KItZ43udNdV+Be4DqzDuI3AQIIqZ/MaPEVx/eD457S+KBoNtDt0c
         TzUBXnRp9eRIlVEdWsQmBkA+0WKI8ymMox2uo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697731437; x=1698336237;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZqpnpB4fEJA+DswL3XL+jowbtg/DTucoTU2/lwpAr9I=;
        b=JwnLsk/p6fCjdmvYVLV3PVC8W5olzHU1jBIDJ9TxgWyKrh3F/n3iyucEJyiB/Ce9Gu
         9ViaIQen1vNhYilu8CYAQgwdbjUmpYp35eh3hCmyXMYItzNytmvN9j1MJD5sEVmOKoHo
         aM9mPtlQMHTSv/mVi8i1tkJHkj8omp7nrtDgQ2DoFIgmUwuloHmu/x8+weJcCVRxgp+t
         ZMNEsS8lvPbQTTx8FnpXqwWESw+kqPxVovPYfnEu7JzTrlh2P2mMcsG+ywzffdcIq2Kd
         2jIKtD0MYQSLFcYrol2evZs+ggIKmB6mpmSi/4mVsvb977pg7yJpGVUJqpqh7K37ODGN
         8K5Q==
X-Gm-Message-State: AOJu0YyEjOXyANP/2YOFStxTQecoWOmqYdnZ9BcTDEuU/gLVc7siLOL/
	sjNchUluE5GDwvL0ymGiZR0O5Fak0/lwS2ksjt0=
X-Google-Smtp-Source: AGHT+IEDeZLlQHA2uZobSAVTQpIsj4ex1DW+oxKJwwkwhBUMNKgSV/9sXODu1aRxNaASTq4SfDEkbQ==
X-Received: by 2002:a05:600c:4ecf:b0:3f6:58ad:ed85 with SMTP id g15-20020a05600c4ecf00b003f658aded85mr2166859wmq.10.1697731437073;
        Thu, 19 Oct 2023 09:03:57 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d50b:9488:c681:57b6? ([2001:8b0:aba:5f3c:d50b:9488:c681:57b6])
        by smtp.gmail.com with ESMTPSA id t16-20020a05600c199000b004068e09a70bsm4818903wmq.31.2023.10.19.09.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 09:03:56 -0700 (PDT)
Message-ID: <9e8f88ede5087822740c2932fa7ed83270556f50.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.3.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Pokybuild
 User <pokybuild@yoctoproject.org>, 
 "openembedded-core@lists.openembedded.org"
 <openembedded-core@lists.openembedded.org>
Date: Thu, 19 Oct 2023 17:03:55 +0100
In-Reply-To: <BY5PR11MB41525A99B494424A5AD57DFBA1D4A@BY5PR11MB4152.namprd11.prod.outlook.com>
References: 
	<0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@us-west-2.amazonses.com>
	 <BY5PR11MB41525A99B494424A5AD57DFBA1D4A@BY5PR11MB4152.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 16:04:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61422

On Thu, 2023-10-19 at 14:06 +0000, Jing Hui Tham wrote:
> Hi all,
> =20
> Intel and WR YP QA is planning for QA execution for YP build yocto-4.3.rc=
1. We are planning to execute following tests for this cycle:
> =20
> OEQA-manual tests for following module:
> 1. OE-Core
> 2. BSP-hw
> =20
> Runtime auto test for following platforms:
> 	1. MinnowBoard Turbot - 32bit
> 	2. Kaby Lake (7th Generation Intel(r) Core(tm) Processors)
> 	3. Tiger Lake (11th Generation Intel(r) Core(tm) Processors)
> 	4. Alder Lake-S (12th Generation Intel(r) Core(tm) Processors)
> 	5. Raptor Lake-P (13th Generation Intel(r) Core(tm) Processors)
> 	6. Beaglebone
>=20
> =20
> ETA for completion next Tuesday, October 24.

We've realised there is a nasty bug in rc1 related to patchtest
deleting local changes. Given the build failure in the rc1 build and
other security issues we're thinking we should make an rc2 build and
abandon rc1.

Sorry for the churn. The new build should be ready soon with any luck.

Cheers,

Richard


