Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2B73E784B0
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 09:44:08 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.77886.1696239840088558895
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 02:44:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LbCN0AmU;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-405524e6769so17121665e9.1
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 02:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1696239838; x=1696844638; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G5xqaVDswEi3istVSLPfCwk+u/sX8tzBGG3NdwvWHSs=;
        b=LbCN0AmUbgfnPuC8HTWnrYVx+2+AUqgck5syCgOZlIDa0+sW6AV0mIm1SxVfKAfZSO
         0/2SoQMg2dAMJLgaOIktGw4jQPVuPSGUXxK6VT3F6VzaVwdjM5m0gN+V971RdLbKEge5
         xeCTzI11JuGxQHoTyrebd1QtCoXWfq1+5qQj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696239838; x=1696844638;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G5xqaVDswEi3istVSLPfCwk+u/sX8tzBGG3NdwvWHSs=;
        b=Dtg5rgPU6GllwSYiQYOy7ktWiEfTn6yFBC9jfZtoI67yJM2Xc/m6LwPKQ7z1BdHWaA
         mrI+OGaM3gOadyj/aYKjTNhGimj+3zDHD40cfQn3ejDEKNU7KJqYrZSdiq2T3OUJvYEu
         zP9DERv9HyC94lrRXjJtsjghPpV49QsLmrH5fFCqguITmvpSRWcuDYe8fFHjQMxvXZbt
         WLo3BL6nZ6xyD9gU2qSDdLdPo3BiDBoEXGbZ9lpO8kscqOcvxEDr6hajRY9UsX7eMUjf
         vU6Al5z+bnzRU0R9xqE8dqFSTMQltCaIHOTRbWXZuLYsf8XgRpv1kFKtOPrW/pjola1Z
         twrg==
X-Gm-Message-State: AOJu0YyZPk/+A9DsVdB5VqvIe4XZbpgVU1PqwCrXvtFJVHICwm89degM
	BTCWFrTYyLd1HSSy9zqXaAE+HA==
X-Google-Smtp-Source: AGHT+IHEfcWYfe8IhVRSKBsFWpQmaY0fxc7w3yUfzOVP+ZakrVth6GTPuxBqnOO9teUe5Ivxlv+MRg==
X-Received: by 2002:a7b:c7d4:0:b0:401:c8b9:4b86 with SMTP id z20-20020a7bc7d4000000b00401c8b94b86mr9557318wmk.9.1696239838402;
        Mon, 02 Oct 2023 02:43:58 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:56f3:dc47:6cbe:b39e? ([2001:8b0:aba:5f3c:56f3:dc47:6cbe:b39e])
        by smtp.gmail.com with ESMTPSA id s16-20020a05600c045000b0040536dcec17sm6842274wmb.27.2023.10.02.02.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 02:43:58 -0700 (PDT)
Message-ID: <0be1d4a273ab2c5f45e3b32100694dacb053fb13.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.3_M3.rc9)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>, "openembedded-core@lists.openembedded.org"
	 <openembedded-core@lists.openembedded.org>, Pokybuild User
	 <pokybuild@yoctoproject.org>
Date: Mon, 02 Oct 2023 10:43:55 +0100
In-Reply-To: <BY5PR11MB4152A33637E7DA2FC2C8E991A1C5A@BY5PR11MB4152.namprd11.prod.outlook.com>
References: 
	<0101018ad75ed749-5e2db305-e6df-4377-a252-c0a5c90026f3-000000@us-west-2.amazonses.com>
	 <BY5PR11MB4152A33637E7DA2FC2C8E991A1C5A@BY5PR11MB4152.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 09:44:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61187

On Mon, 2023-10-02 at 09:41 +0000, Jing Hui Tham wrote:
> Hi all,
> =20
> Intel and WR YP QA is planning for QA execution for YP build yocto-4.3_M3=
.rc9. We are planning to execute following tests for this cycle:
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
> ETA for completion Friday, October 9th. Please do expect some delay due t=
o holiday in China, will proceed to submit test report once completed.=20
> Sorry for any inconvenience caused.

Sorry, I thought I'd made it clear: M3 rc9 is a test build as we've
already tested and shipped M3. The rc9 is just to test the url
additions and QA reports fixes so we're ready for M4. There is
therefore no need to QA this.

Cheers,

Richard

