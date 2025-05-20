Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63FFC3DA6D
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 13:15:32 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.20657.1747746925536346007
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 06:15:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ROG9kNLz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so58643605e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 06:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1747746923; x=1748351723; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lu0QvXYGxm+ya1woCFRtKxjAWjdXbNtPWKffAcfmPiA=;
        b=ROG9kNLzV1eVfjWv3rle0vGvzQA8gs33HKUfwSFeOMSSdm8LWkiaqyv8787S4RJLyQ
         PVtL5t93cQLVRvpAyHHTc+HHS8U7GLWp632vSpqDP4vcaApohNINDyCsm2KZT+8R7FFS
         nd6mNGnGq8vVCJYWoEy3ucPJHAW0vHJzMFSII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747746923; x=1748351723;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Lu0QvXYGxm+ya1woCFRtKxjAWjdXbNtPWKffAcfmPiA=;
        b=LslDrAWDNzdnN1pPcUAwNaU5v4sCEZUvgv636rU6NARJCZ0CeAZD6fmpNkkvO3i9fi
         YEz1L4dyoteNY1Yk5h+EqSZsGMxOGLLCy22buBytwBlThBpo/DBypiGxIahkEtLK5lLw
         iGJMvbjm8LV78NzpyPQIxDE4iXKNseOLXKAFseCKJWqgwXCKNtVACfcEWdfsf57Sm4c/
         NF7GWO5BeL23v4uac9fGeyxE46fkd+Xy9SxAE7FhhpO3OnDGESv8Xf41zmGN5c4NTnB6
         U3AZHa9N2wq+NvsoU9RBDE2xs9oAz+ULPbqxSPjJ+XCqpNcDiM9Z/HtyqJuDgMXAprhi
         xJ1g==
X-Gm-Message-State: AOJu0Yy0VIcwQMPTXcBaJk4rzrF9a7ZeqIawPAlMIODzMsNTva+Zenv9
	D86ylITmA1ga+gPvLXIBVGviCnoA4o6h9iqFcb4uM8Ce64Hx8DryxGYiYkUTKsYdZUV+jLQ2It1
	yPHk6
X-Gm-Gg: ASbGncu/CIOIYe92U5js+Xi6Rs8hgljTP69tUUPX3o54TLYx7YfueEZNJIVe9+XqsY5
	4xnKUnLbAFjcdukcF7aFlpJuz11XSitqjdiCUTD0HQDACXAHGnvOQB7E2OntOWyijdQ+CH6MRO3
	yVyWLj2DVRjjnblYLCfCnNYgVe8xLcL40rBe/XxJ1N+i3fGYK2XPHmTa2R1w5uul0AMEFuEMWJQ
	2Dyey5qJms8ut4UQo9riT1mtaj/71bv7mwL/h7l0XZUdzg0otajeuZd8Vu3KMPQmlXZ/JPuh+j5
	eUE53pnb4AsTHXgrWAar82dPKrEW1fdHb3Fx6iqgQ2Ze67C3B50mr2vVykaMNsS/ubXMfAwRQkU
	3Qu3+lqi77MD6OQ/FDP1piJJehn+yq34l8UqFxw==
X-Google-Smtp-Source: AGHT+IGPtOGb02MhEDp1Hz2qHEz2Ooik+OGwrKkALcKFoBL1UVysv6rvK8Pso2OaX+5HSWLYVQU/gw==
X-Received: by 2002:a5d:5986:0:b0:3a3:76da:32b3 with SMTP id ffacd0b85a97d-3a376da331fmr4740024f8f.18.1747746923159;
        Tue, 20 May 2025 06:15:23 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:685:a6df:9777:90ca? ([2001:8b0:aba:5f3c:685:a6df:9777:90ca])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f73d3d6csm31148085e9.19.2025.05.20.06.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 06:15:22 -0700 (PDT)
Message-ID: <29495bd8cb8b41c9dee3df44e0bd52f0dee0ae02.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH v2 0/3] Add support for index files in
 SSTATE_MIRRORS
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, mike.looijmans@topic.nl, 
	denisova.olga.k@yandex.ru, "alex.kanavin@gmail.com" <alex.kanavin@gmail.com>
Date: Tue, 20 May 2025 14:15:21 +0100
In-Reply-To: <e5b84c06-1814-4755-a049-e36c47a99f90@topic.nl>
References: <20250425060119.5092-1-denisova.olga.k@yandex.ru>
	 <CANNYZj-f+LsCv=Ez-NPo4M-vh1V4nK2t3tFh3X38pZXYmJnuZQ@mail.gmail.com>
	 <12851747494093@mail.yandex.ru>
	 <e5b84c06-1814-4755-a049-e36c47a99f90@topic.nl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 13:15:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65371

On Tue, 2025-05-20 at 08:47 +0200, Mike Looijmans via lists.yoctoproject.or=
g wrote:
> Performance wise, what struck me more as odd recently (on scarthgap,
> but I suspect master will have the same issue) is that the sstate-
> cache mirror server gets queried for many items that the buid doesn't
> actually need.
>
> For example, I change one application recipe that nothing else than
> the rootfs depends upon, but still bitbake spends over a minute
> looking for stuff on the mirror server (which I access over SSH over
> VPN so roundtrips aren't exactly fast) saying "Checking sstate mirror
> object availability". Looking at the apache2 log, it receives HEAD
> requests for hundreds of objects that have absolutely no relation to
> the changed recipe.
>=20

It would be good to document exactly how to reproduce that scenario,
ideally as an oe-selftest. In theory it should be able to avoid a lot
of that but I can imagine how the build ends up having to make queries.
If we have that testcase, it gives us something to improve and also a
way to check for regressions in future.

If that isn't possible, you could open a bug just so the issue is
documented but I'd stress that there is a much higher chance of this
seeing improvements if we have a way to reproduce and a test case.

Quite often, the act of writing the test case lets you better
understand the issue too, sometimes it isn't what you think it is.

Cheers,

Richard

