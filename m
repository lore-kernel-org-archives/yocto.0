Return-Path: <Carles.SoleMendi@de.bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 808C9C61DA4
	for <webhook@archiver.kernel.org>; Mon,  6 Mar 2023 18:53:33 +0000 (UTC)
Subject: Re: [meta-raspberrypi] Is Preempt-rt still supported in master / latest releases?
To: yocto@lists.yoctoproject.org
From: "Carles Sole" <Carles.SoleMendi@de.bosch.com>
X-Originating-Location: Krefeld, North Rhine-Westphalia, DE (82.207.252.58)
X-Originating-Platform: Linux Firefox 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 06 Mar 2023 10:53:31 -0800
References: <32073.1675669085179357281@lists.yoctoproject.org>
In-Reply-To: <32073.1675669085179357281@lists.yoctoproject.org>
Message-ID: <2391.1678128811697826145@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="N82REp6qXSCwep7KayMb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 18:53:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59351

--N82REp6qXSCwep7KayMb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

in case it helps someone else I found the dependency that was avoiding the =
RT patch to be applied to raspberrypi4-64 build.

In bcm2711_defconfig for arm64 KVM is enabled. If KVM is disabled then the =
patch is applied.

So in .cfg file you can add:
CONFIG_KVM=3Dn

--N82REp6qXSCwep7KayMb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br /><br />in case it helps someone else I found the dependency =
that was avoiding the RT patch to be applied to raspberrypi4-64 build.<br /=
><br />In bcm2711_defconfig for arm64 KVM is enabled. If KVM is disabled th=
en the patch is applied.<br /><br />So in .cfg file you can add:<br />CONFI=
G_KVM=3Dn

--N82REp6qXSCwep7KayMb--

