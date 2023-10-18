Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A2DCDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 06:29:34 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web10.276212.1697610569778512640
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 23:29:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gORQXgNe;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-32dc9ff4a8fso721858f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 23:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697610568; x=1698215368; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CHKHpE8PEFJMPO3dgenTx557cARe4WBmS4LiTXtzhLE=;
        b=gORQXgNeA6NaXJW+i3vfSdsd3os7aBm2WaZ5nfXkSY9zXDszEC2ylI1W1wrlieu5fo
         Jg4Sym2J5DoyEKlt28sci+9PV+BiZTkULsLUEoMed2J8D+nI3aZ3+vEYMP1lASMoVzEV
         kphHS6fB1qd3a6NLB52OfkJkwAyqZbrU5oZg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697610568; x=1698215368;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CHKHpE8PEFJMPO3dgenTx557cARe4WBmS4LiTXtzhLE=;
        b=ZiHNWd9xI+Yeln1SXMp6J5WEDhAzQB/w49hXAMY6tRMaaSMwpA3Zf5anDbz3NXORe7
         FVTv2uC0iWVbXvYiA/8VJqC11WmykAe/H9ZEWOe3aSOpEgvKlku0SnUbsbENjChYGxJv
         5mjv6R8z2edIjP3PE7rsXZnPEAxor8Ra1o4yZDIey0KYA+0CSLHqy9fLzT7TA4DZ5BL7
         /5Nml+qZoc1PxMD+a3nsHXLc3s9e228BLD2AcvKXaZ6LKJzUwYvlRxRZy4PUhqS/7DRo
         iv7HabcQqTfy+MWEXxBTv4JcQ+RHg7snzuN0Jk82KMhuYZZhcpMnU6oa9QRouGvjD+q0
         NZYQ==
X-Gm-Message-State: AOJu0Yyb0WDstulJjvp6xr9v0Jzmca6p6LPTq9d875MQ8keNDpE9OlfG
	/7M0oV19LC+FfCv6kbzv6WbjXg==
X-Google-Smtp-Source: AGHT+IHOlIdTzPWLFOzQ+6h9d4IUH3d/bsRrwA9gpnf2WLSodc0x24H5IgHpH0s6IJ7aFfLw1GUMrw==
X-Received: by 2002:a5d:4049:0:b0:32d:a045:4c88 with SMTP id w9-20020a5d4049000000b0032da0454c88mr2823258wrp.12.1697610567544;
        Tue, 17 Oct 2023 23:29:27 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:fa42:b755:fc77:86e9? ([2001:8b0:aba:5f3c:fa42:b755:fc77:86e9])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600001d100b0032d8034724esm1306871wrx.94.2023.10.17.23.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 23:29:27 -0700 (PDT)
Message-ID: <40ab5c11d917f68dc6115d24f2fd427cb4a1fd38.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.3.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Cc: Yocto TSC <tsc@lists.yoctoproject.org>, Bruce Ashfield
	 <bruce.ashfield@gmail.com>, Paul Gortmaker <paul.gortmaker@windriver.com>
Date: Wed, 18 Oct 2023 07:29:26 +0100
In-Reply-To: <0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@us-west-2.amazonses.com>
References: 
	<0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 06:29:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61386

On Wed, 2023-10-18 at 06:16 +0000, Pokybuild User wrote:
>     A build flagged for QA (yocto-4.3.rc1) was completed on the autobuild=
er and is available at:
>=20
>=20
>         https://autobuilder.yocto.io/pub/releases/yocto-4.3.rc1
>=20
>=20
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/6062

There was one failure in the build, a serial login issue on ttyS1, so
an occurrence of our annoying 6.5 issue. This is the first time we've
seen it with the workaround applied.

The question is to proceed with rc1 in testing, or apply the upstream
fixes and try an rc2 with that? I'm torn...

Cheers,

Richard

