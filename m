Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A48AC61CE8
	for <webhook@archiver.kernel.org>; Thu, 12 Jun 2025 15:39:56 +0000 (UTC)
Received: from posta.faresoftware.it (posta.faresoftware.it [93.51.112.187])
 by mx.groups.io with SMTP id smtpd.web11.16639.1749742794895715256
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Jun 2025 08:39:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@faresoftware.it header.s=20210817 header.b=Z7QhH+GG;
 spf=pass (domain: faresoftware.it, ip: 93.51.112.187, mailfrom: mauro@faresoftware.it)
Message-ID: <5f9b2079-b6a2-4f8c-aa26-1827ed4aa252@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1749742792;
	bh=xiGQQGDRSI01/VR/+wsho4YfTJZJKGIB/Yv+P8O2E0Q=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=Z7QhH+GGSxo7QSGt6KjVxHvUr1ax+xCz9M83MbAAEMn3GZyrRdMVvJtxwfMrjK4oo
	 RQMOdNaZzB+l6enGdVcnUDXV5KAVhtnnXQzQSbEQxT5iTKTMGTR+whk/9IgVJFAtil
	 87bqUXvNC6lbeS3ZhNADdKhBaghOIzxpRL18phrFyogmx+6ebADcDxE0LHz4ZJPrBl
	 RtH27dD/2wpAK1JF2yUwIXSWbqKZX5AjUC4+Ofk72StzvSXVDnXsyjtmndlCCPhd/F
	 4RNBBod5sPb2X3BGNH/NilnEGKcdehFc5hJP5V+n2l1f3lRC/XzxLyttVbgBy+DkMo
	 RYnFiUS5FpFrg==
Date: Thu, 12 Jun 2025 17:39:39 +0200
MIME-Version: 1.0
Subject: Re: [yocto] How to manage linux-firmware recipe
To: Marco Cavallini <koansoftware@gmail.com>, yocto@lists.yoctoproject.org
References: <e8b3ebf1-1636-4edb-af41-421464ff71b2@faresoftware.it>
 <19279.1749711955494286548@lists.yoctoproject.org>
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
In-Reply-To: <19279.1749711955494286548@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-MCP-Status: no
X-Synology-Spam-Status: score=-3.101, required 8, autolearn=ham, FREEMAIL_ENVRCPT 0, FROM_HAS_DN 0, FROM_EQ_ENVFROM 0, MIME_GOOD -0.1, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, RCVD_COUNT_ZERO 0, MISSING_XM_UA 0, __THREADED 0, BAYES_HAM -3, TO_MATCH_ENVRCPT_ALL 0, RCPT_COUNT_TWO 0, __BODY_URI_ONLY 0, FREEMAIL_TO 0, ARC_NA 0, TO_DN_SOME 0, MIME_TRACE 0, __NOT_SPOOFED 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Jun 2025 15:39:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65508

Hi Marco.


The "master" recipe comes from poky

./poky/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb


In my layer I have a linux-firmware_%.bbappend, where I tried to change=20
the content of ON_GENERIC_LICENSE, to remove some firmware.

./meta-mz/recipes-kernel/linux-firmware/linux-firmware_%.bbappend


No other layers push linux-firmwar recipe.


The bsp uses this layers

BBLAYERS ?=3D " \
 =C2=A0 ${BSPDIR}/sources/poky/meta \
 =C2=A0 ${BSPDIR}/sources/poky/meta-poky \
"

BBLAYERS +=3D " \
 =C2=A0 ${BSPDIR}/sources/meta-openembedded/meta-oe \
 =C2=A0 ${BSPDIR}/sources/meta-openembedded/meta-python \
 =C2=A0 ${BSPDIR}/sources/meta-openembedded/meta-multimedia \
 =C2=A0 ${BSPDIR}/sources/meta-openembedded/meta-networking \
 =C2=A0 ${BSPDIR}/sources/meta-openembedded/meta-initramfs \
 =C2=A0 ${BSPDIR}/sources/meta-openembedded/meta-filesystems \
"

BBLAYERS +=3D " \
 =C2=A0 ${BSPDIR}/sources/meta-dpdk \
 =C2=A0 ${BSPDIR}/sources/meta-amd/meta-amd-distro \
 =C2=A0 ${BSPDIR}/sources/meta-amd/meta-amd-bsp \
"

BBLAYERS +=3D " \
 =C2=A0 ${BSPDIR}/sources/meta-virtualization \
"


BBLAYERS +=3D " \
 =C2=A0 ${BSPDIR}/sources/meta-ibase/meta-ibase-bsp \
 =C2=A0 ${BSPDIR}/sources/meta-ibase/meta-ibase-distro \
"

BBLAYERS +=3D " \
 =C2=A0 ${BSPDIR}/sources/meta-qt5 \
 =C2=A0 ${BSPDIR}/sources/meta-flutter \
 =C2=A0 ${BSPDIR}/sources/meta-flutter/meta-flutter-apps \
"

BBLAYERS +=3D " \
 =C2=A0 ${BSPDIR}/sources/meta-mz \
"

Greetings

 =C2=A0 MZ


Il 12/06/25 09:05, Marco Cavallini via lists.yoctoproject.org ha scritto:
> Hi Mauro,
> are you using any particular layer providing those firmware?
> --
> Marco

