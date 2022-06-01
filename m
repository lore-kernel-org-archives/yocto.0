Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11ECC433EF
	for <webhook@archiver.kernel.org>; Wed,  1 Jun 2022 19:26:55 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web10.2336.1654111606598749212
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jun 2022 12:26:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=h+RsNLwc;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id
 h62-20020a1c2141000000b0039aa4d054e2so3616848wmh.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jun 2022 12:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=yW1eF2QbI404jKGUxTAoBcElqz1EfrjEztDqWaExb7s=;
        b=h+RsNLwcPyB+ruTgcFUoWJ7Jo4JtlV/VQsSOAfKSFrbmk2oYU03N6z9Hi/rz54qjkN
         3dR+rnCahrMZF001j1OFFQ3bJuW4y9vwfepG+4/DrU72rxfHwYkHtP31V1bIEUgBs5UJ
         P+blfVUUzeaM9f+akXyx+RkggK9DipiRnL2E0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=yW1eF2QbI404jKGUxTAoBcElqz1EfrjEztDqWaExb7s=;
        b=lxedNMj85hgomBzixjAoSHoRlB+D6DhPgJ/3JNFn0aURey8Z/6QOsXkxBVba98/ho+
         sxL5gSDHaSzfMbogmQ50n4OJqn8FTE/8AayW3ThAXbRuUUO5ZUL706bN5Vuh4gSVSVWW
         lOQU/RWGSo/TuLfe18PzAb452xlnSaL36TyTB49Dzu0IXxSG60uD9CRQdNE5L9r24w0H
         qLOaZDQO7Z4mfAPmqH6q7Chv9ASDtLpPAzQ6RZ9O6m5bm0SB/89SJmLvMrJyxYGDX2Iz
         wJLXWYMESDM686+dMaQK6lW/W3ifAIgb0zo4+giCTBtmaC13egFolOj8mgzdzjTddmR4
         bNaw==
X-Gm-Message-State: AOAM530c8ZcXbMNWyG3nP4d/WjLNJqe7O7MVDAe+Qi1KLvCDVTIroc+i
	uGH359vCHyGtaqESxReMIrxJdQ==
X-Google-Smtp-Source: 
 ABdhPJzJ7ESWF1xpeLqLOQHYLTs3uXJWR/YWLg6zFtaArQokgRBMs14c7BW54LPm3ADCOpF+I9Mk8g==
X-Received: by 2002:a7b:c5c6:0:b0:397:8a39:37b with SMTP id
 n6-20020a7bc5c6000000b003978a39037bmr844636wmk.182.1654111604891;
        Wed, 01 Jun 2022 12:26:44 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:eab:cafb:b8d4:fe67?
 ([2001:8b0:aba:5f3c:eab:cafb:b8d4:fe67])
        by smtp.gmail.com with ESMTPSA id
 63-20020a1c1942000000b003974cb37a94sm6165778wmz.22.2022.06.01.12.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 12:26:44 -0700 (PDT)
Message-ID: 
 <d02c4b6c2c663eb1070dc240f51b2075d8e19cfc.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.1_M1.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org,
	"<yocto@lists.yoctoproject.org>"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 01 Jun 2022 20:26:43 +0100
In-Reply-To: <16F484E433501ADF.13026@lists.yoctoproject.org>
References: <16F484E433501ADF.13026@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Jun 2022 19:26:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57243

On Wed, 2022-06-01 at 15:17 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> A build flagged for QA (yocto-4.1_M1.rc1) was completed on the
> autobuilder and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-4.1_M1.rc1
>=20
>=20
> Build hash information:=20
>=20
> bitbake: 6a346df51b96a6c0e1ee516df36eb0b6c292b063
> meta-agl: 3a0b7a965ba370ca1fbe2ca0e2ac3babace5204d
> meta-arm: 0c4c33de09aa921cafcea2ad4b7bc0e19f844213
> meta-aws: b2f5ef7e724d3a2271ef99d748734578cf8fcb1a
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: ebb8c1c26e57e78563760431a57b6da388b82be2
> meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
> meta-openembedded: 90ff53b8df1e3259cbc201c658a4f3f4dddf3aa8
> meta-virtualization: 8e8f59d007ca8d60ec77565663cf6285b8acbbd4
> oecore: 18a0c31b3386aa5a04eb8ee8e804c2415a61eaaf
> poky: 95066dde6861ee08fdb505ab3e0422156cc24fae
>=20
>=20
> [there was one build failure on qemumip64 on the autobuilder in
> testsdkext:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/74/builds/5251
> we don't have any fix for that and investigation will take time, I
> don't think it should block M1 and we should proceed with the other QA]

I was able to work this one out. It was a zero length bb_unihashes.dat
file being placed in the eSDK, probably from a race on bitbake's cache
files. I have an idea of what is happening and some patches which
should fix it but they need testing. The bug has been there since at
least dunfell so I don't think it should block release, it is very
rare.

Cheers,

Richard




