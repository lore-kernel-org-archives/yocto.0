Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE94C43334
	for <webhook@archiver.kernel.org>; Tue, 12 Jul 2022 22:45:32 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web08.15642.1657665922960842924
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 15:45:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Lm60oBd5;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id r10so6959788wrv.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 15:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=Sj12HfCPQJg26MnrUVS0Y3Tq7SQVtQpWy+EEH2xLrbQ=;
        b=Lm60oBd5xtDQjibzOjMG+bRG7O4d1O9g2h0M/J16zb8XWe04Zwim8+a1JToSECmqjS
         ykOmL/nplIfyCwLs4/domNKlen1S8o1nP5LvDJrREth8+I08IY+IHzoC1tx98G9MRHXY
         uVCFkOMmQny9FQz/KfFJ+mmqHOf/GjvnrYfjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=Sj12HfCPQJg26MnrUVS0Y3Tq7SQVtQpWy+EEH2xLrbQ=;
        b=S439n7uDvTE158pft0lz3LL5ffW+h15ZXTM8bajs2b5EpbNpGyu1tXPxEU3s/uddfw
         yJBiLt1ZpIQLZnmxvQMvLLGLwtwo47VMFMWRnmwn4TPZ4mcOJWJaFmfnofyyo9SKk4A5
         kToAZ97d2Pz6K4defHsvdYw1BdpKZC6QESGDVe0v7uLNSRkmazr8a0lWpXSPMUdWD31A
         V2/8z6K/NknxUx8F67fdjgguBBJI2xV8461JK+ManB2vfmv9EesRV9/TttS03VhLNhPw
         tWgO2G1glzNIkesSTfH40w99wYEE5VDPDwBYU2jG7GPoleyV5I/ih1rupS3B7kRpNv2P
         VEDw==
X-Gm-Message-State: AJIora+QCiNaAW1lOVDRa3IFdNd0W7YIFG5dMhsCIaGvI5L/uPaMZ+QW
	Dn6DM9HDiBkG+Hqj7gd/mAwCSA==
X-Google-Smtp-Source: 
 AGRyM1tyOckt4jtdy9iGHzBI8fymJyWajxhZjk5ZP9Sb2IIs4xOwaCtQZV5groQOZX/vg3cegPpnoQ==
X-Received: by 2002:a5d:6d81:0:b0:21d:bb16:e6c8 with SMTP id
 l1-20020a5d6d81000000b0021dbb16e6c8mr258243wrs.88.1657665921346;
        Tue, 12 Jul 2022 15:45:21 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5d1c:2bb3:e975:b527?
 ([2001:8b0:aba:5f3c:5d1c:2bb3:e975:b527])
        by smtp.gmail.com with ESMTPSA id
 n39-20020a05600c3ba700b003a2ed2a40e4sm271621wms.17.2022.07.12.15.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 15:45:20 -0700 (PDT)
Message-ID: 
 <57dd4dcd5002a34b0593078452878626d942fcb6.camel@linuxfoundation.org>
Subject: Re: [PATCH] yocto-bsps: update to v5.15.52 and buildpaths fixes
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: bruce.ashfield@gmail.com
Cc: yocto@lists.yoctoproject.org
Date: Tue, 12 Jul 2022 23:45:20 +0100
In-Reply-To: <20220712144030.32305-2-bruce.ashfield@gmail.com>
References: <20220712144030.32305-1-bruce.ashfield@gmail.com>
	 <20220712144030.32305-2-bruce.ashfield@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Jul 2022 22:45:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57517

On Tue, 2022-07-12 at 10:40 -0400, bruce.ashfield@gmail.com wrote:
> From: Bruce Ashfield <bruce.ashfield@gmail.com>
>=20
> Updating linux-yocto/5.15 to the latest korg -stable release that compris=
es
> the following commits:

Thanks, this test build showed two warnings. I have no idea why this
only showed up now:

beaglebone:
WARNING: linux-yocto-5.15.52+gitAUTOINC+f122fe59e7_3ec00e9ee0-r0 do_package=
_qa: QA Issue: File /usr/src/debug/linux-yocto/5.15.52+gitAUTOINC+f122fe59e=
7_3ec00e9ee0-r0/linux-beaglebone_yocto-standard-build/arch/arm/include/gene=
rated/asm/mach-types.h in package linux-yocto-src contains reference to TMP=
DIR

beaglebond-alt:
WARNING: linux-yocto-5.10.128+gitAUTOINC+2f79722c50_aab4d34364-r0 do_packag=
e_qa: QA Issue: File /usr/src/debug/linux-yocto/5.10.128+gitAUTOINC+2f79722=
c50_aab4d34364-r0/linux-beaglebone_yocto-standard-build/arch/arm/include/ge=
nerated/asm/mach-types.h in package linux-yocto-src contains reference to T=
MPDIR

So at least it is down to one error in 5.10 and 5.15 for the same
platform!

I think we're mostly winning and nearly there :)

Cheers,

Richard

