Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E5ACA5FBA
	for <webhook@archiver.kernel.org>; Wed, 30 Sep 2026 10:41:08 +0000 (UTC)
Received: from mail-ej2-f43.google.com (mail-ej2-f43.google.com [74.125.228.171])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10496.1790764857716106440
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2026 03:40:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=e+AVWoDA;
 spf=pass (domain: linuxfoundation.org, ip: 74.125.228.171, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-ej2-f43.google.com with SMTP id a640c23a62f3a-c2e1b09e0c7so72363066b.1
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2026 03:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1790764856; x=1791369656; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:to:from:subject:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=0W9e46g3YfeAjLP3SQCIp4ZbzGExWpXDV+xZ+xsaDnA=;
        b=e+AVWoDAdtOMOEQxWrsdgkVs5bGa6j14IsnIGV4KfSmFSaltrlgg7dsT1OsTb9O1Q9
         vpn3xgQCHU0lp8qXrSw0UobPG1DmCqsgiRsw4pAyarV8y0E+qoVb/0pzqr0WhXjTFTNa
         Wu7dKsQQJ42Y27RNxOsKA+GxAsDi5SABpt7N0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790764856; x=1791369656;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0W9e46g3YfeAjLP3SQCIp4ZbzGExWpXDV+xZ+xsaDnA=;
        b=zoes39u8fxk42HF3Aesf7B75nB+4vu6pN8AzPNLzvni2HEUUiF+hTpECPRSF4nXIGi
         E8Y6gHfIH9onVnHno2Z81kzkxT/qz5/k+hHU3kDXPv+fx73RvXvZjMCrzheIQKY7oEaC
         naxUjbJJo0sU2njuXcPymctaUg25pxeOs+VCijNZXaHfXE9x8x9Z6s7t0fR6GLnO6q76
         9ztUjMiAKX7wmgY1/GC0nj/dwlbau4oHql68teww1LwGSIrOgSoUv6RQjGF+2hNXHHL8
         aM2x4+U4fNnDztc9ZpJP4rizsMpTVasiAYP3uYDDxSPoyWXs+VNHDUDrjsRdV7KhgIMD
         j+uA==
X-Forwarded-Encrypted: i=1; AKwUvBzFckwLpGTWeuhsjHafob4Zs350BZ40ffY5/DB3CjMiWuRd4+UFeSAoobGZPd0SEz042e7IWA==@lists.yoctoproject.org
X-Gm-Message-State: AFuF++ks1Ek9qgu0825EyC4HeSMmhtqiz/5g//opr1qaHFShOqScZoPU
	qWefihZ7AlusbR6L6kF5xYijruOozMdBWmK6ITel3o8N6cJhKXECw/9b7G81lfFyuSA=
X-Gm-Gg: AYBFou2tw5GPMDNTu8LcfTHrASzR2wGkA+SQUkVDqEgqFl5CNkYUxN3ElQnL7K27q3z
	EwhLWDqb/6gUmKNu+NZo97+olAPLs6gEvRpTtpoy8HjiTTKYYahq5GJ3Q3QEJ3ThdM4wWWSxTwl
	qsk46QbvDd3gi/T1nanE+FaXRim8QXPXVwsBUFX738XPv+95+UvVCp2t5nt5IGa7t3RWKcKpG5O
	NRpsH0FdAJTUoDidsi9XPWg/TiCPHvd6kVUSMvla97AUMfy7dDDt+tmYQ+XJ2X2DvDDxTi7RU2u
	MhdsYcACnnalEIdYjKfkhn3/fV8FtYLRNWGG4eBrXPeEN0cD6Sh0tewhrQ1G3A+DM5K9JGRx4ru
	PG4EdvUp1XhCTEMYXX01DFba4cXoDuzF1XaiqUkn76Swg2UTLWoZZoCYulMbOcxY+POtJN5o3JZ
	e3Do77NOjYMB2UoCRh6J4KoMPuzPvdgtfQQXiXaDCb1777TcsM3ed9vXrNeccEWRT/I362I6lHh
	LSTOC0fKFlWuavDtq6mAiW+kJiaVUX0mD2KLEU6MHudcgAv2U1lr9hZXE79
X-Received: by 2002:a17:907:3e0c:b0:c2d:d9f4:2c85 with SMTP id a640c23a62f3a-c2e23e0a2b1mr76372866b.41.1790764854184;
        Wed, 30 Sep 2026 03:40:54 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:349:f135:e106:4c82? ([2001:8b0:aba:5f3c:349:f135:e106:4c82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e22f4368asm45128966b.16.2026.09.30.03.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 03:40:53 -0700 (PDT)
Message-ID: <88658da4bb8009e331dc850c7c708ae9a92d6dd9.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.1.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Wed, 30 Sep 2026 11:40:52 +0100
In-Reply-To: <010101a0f175ca54-53721ace-bf65-423f-80a1-d3571be35508-000000@us-west-2.amazonses.com>
References: 
	<010101a0f175ca54-53721ace-bf65-423f-80a1-d3571be35508-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2026 10:41:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66744

On Wed, 2026-09-30 at 08:37 +0000, Pokybuild User via lists.yoctoproject.or=
g wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-6.1.rc2) was completed o=
n the autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-6.1.rc2
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL: https://autobuilder.yoctoproject.org/valkyr=
ie/#/builders/29/builds/4836
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: 634f8dede6b9d71b5a6691499fd05a8678b46eae
> meta-agl: c36f0e0bbed6000f28cfd10417c280c9fdca37cd
> meta-arm: 02a2fa96623cf2559580d9695cdd57528503788d
> meta-aws: 815c340ce256d0935281e07f0c4162d92fe5a6d6
> meta-clang: a2c51ce7e4b582a358b707e5c144c05690d2cf71
> meta-intel: 8877caca6b1fe6efe33c756698ce6ecdcaea2238
> meta-mingw: 2697806adf824708e86d57ad68e0978a0af812fb
> meta-openembedded: 4ec8afbfcf4ce50d8a5273065214c9a8d5eca27a
> meta-qcom: d4cccd3c7729250d69cdb2318e2df26635d9c630
> meta-virtualization: 847867aa6be383eb2fe745aa3b74a432b81ecec4
> meta-yocto: 43946d08974e61361f6313ae348c5d87c12be934
> mixin-wrynose-linux-firmware: 71dfb81bd98f59ca2127d39b100ecbb8ce1e0ba3
> oecore: 419c1b0f1ed0e3ce22b1022061f763d007883121
> yocto-docs: f26faba8568a3c8fc81d81d3650cc419847a4e17

This build ran into two issues, one is that meta-intel still hasn't
updated to blacksail. The other was oe-selftest-armhost which ran into
a known issue with python threading deadlocking at exit due to a lock
being lost. I don't believe either should impact QA/release.

I'd also note that mixin-wrynose-linux-firmware should not be listed
above. I'd like to remove that reference from the final release. I'll
look into updating the scripts in the meantime.

Cheers,

Richard

