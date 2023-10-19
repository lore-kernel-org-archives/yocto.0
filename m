Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A334CDB483
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 11:52:30 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.25688.1697716342149066983
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 04:52:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=b9SkNwee;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40839807e82so4226275e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 04:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697716340; x=1698321140; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1Eogqix1TJVsNspvDhxXnU4Zzi+UK2WQVwqM3UeWsXI=;
        b=b9SkNweeVYbsY/KVF2DpaulDYP16A/HHK2VqaQxLPEuPXUSLeKRU3AbQZ/P7DZFzGN
         r2kM6leOFqmEvEG1xaguv9DQ1zVi96fkSRj8ywDlPZ4YcuCykxHhSiHtVmJ7jk2wpbWd
         7Wks28WY4AxU2wjRYWrvLpnRVpO4Zv0IJSD5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697716340; x=1698321140;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Eogqix1TJVsNspvDhxXnU4Zzi+UK2WQVwqM3UeWsXI=;
        b=KHeBXkfCpzk4A2457Mln3tXOKPaGk3T345eIhQUyBA/r73QfBVj2bYJYJCOg8MTCQv
         OfuAowC0/AZpZowWJbrttJHi3PdQ5ogdiCP6Na58tGtww/XyXSHswwCuPxFuud/9SuR3
         gIZcSUHqqAOI+cIqJifWuLoAXlw5st5ABqiKwti2MIW+dYual724hmVne/94npxsTajw
         dCgCkgNpvCjTh9ZMXZHwTB1bfmb8+jYFC+RrxdKQy253+P+6ZZWO4/PnVTDSymRzi1YV
         /OfW+hCBD7s6Wq8LYRvl3UKtLeXz+p66HHIR8PYbpcNO/RsFRgYUl76W49Bx2b3O+Jy3
         3aTA==
X-Gm-Message-State: AOJu0YwTQMod3mY3P94ch4lt2v4xRwh+WiPSTUyBpgIaRr1D6nT8iYEe
	4+0+ohe50qQagJ9KRHHqW5uqvA==
X-Google-Smtp-Source: AGHT+IEQGtA53EiB/jfyzoGUxzVpPOMtGBepqErlKG7o/riEDgWtvCCCo11RrAKjNHkBCkWXXSHznA==
X-Received: by 2002:a05:600c:350c:b0:406:51a0:17ea with SMTP id h12-20020a05600c350c00b0040651a017eamr1576711wmq.10.1697716339928;
        Thu, 19 Oct 2023 04:52:19 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb? ([2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb])
        by smtp.gmail.com with ESMTPSA id k6-20020a05600c1c8600b0040839fcb217sm4324155wms.8.2023.10.19.04.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 04:52:19 -0700 (PDT)
Message-ID: <e81d5034fe31b28004736c491d9c1978774bcce6.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] meta-oe-mirror:
 Use a 2 step job to fetch and verify meta-openembedded mirror.
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: David Pierret <david.pierret@smile.fr>, yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>, Steve Sakoman <steve@sakoman.com>
Date: Thu, 19 Oct 2023 12:52:18 +0100
In-Reply-To: <178F7D157564D399.11247@lists.yoctoproject.org>
References: <20231018134638.608387-1-david.pierret@smile.fr>
	 <178F7D157564D399.11247@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 11:52:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61412

On Thu, 2023-10-19 at 11:58 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> On Wed, 2023-10-18 at 15:46 +0200, David Pierret wrote:
> > Inspired from trigger-build and trigger-build-post-trigger
> > The branch must be selected on build configuration.
> >=20
> > Signed-off-by: David Pierret <david.pierret@smile.fr>
> > Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> > ---
> >  config.json | 30 ++++++++++++++++++++++++++++++
> >  1 file changed, 30 insertions(+)
>=20
> I fixed a json parsing issue and merged. I also added the autobuilder2
> config to support it. A test build is now running here:
>=20
> https://autobuilder.yoctoproject.org/typhoon/#/builders/156/builds/1

That failed with a single fetch failure which isn't related to this
patch.

I've therefore pulled the patch into the dunfell, kirkstone and
mickledore branches.

Autobuilder enabling is here:

https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3D93c034d436cbe6=
31db2354a945850c3e97dd46bd

with scheduling for the all branches here:

https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3D94f2878f64f119=
93e8de8295bb1b46202b741019

Cheers,

Richard

