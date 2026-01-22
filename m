Return-Path: <rahuls.work97@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5729ED46952
	for <webhook@archiver.kernel.org>; Thu, 22 Jan 2026 17:32:31 +0000 (UTC)
Subject: Re: [yocto] [RFC] Moving OP-TEE support from meta-arm to oe-core
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "Rahul Singh" <rahuls.work97@gmail.com>
X-Originating-Location: Mumbai, Maharashtra, IN (45.119.30.182)
X-Originating-Platform: Android Phone Chrome 143
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 Jan 2026 09:32:26 -0800
References: <92b1fbe3da82c19ed2ca7a617077f6055a74f7e3.camel@bootlin.com> <6C7BC2F4-364D-41C1-87CB-755547FE281E@arm.com>
In-Reply-To: <6C7BC2F4-364D-41C1-87CB-755547FE281E@arm.com>
Message-ID: <267167.1769103146565811779@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="f6egybFEgKZLPFLeaBWG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jan 2026 17:32:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66181

--f6egybFEgKZLPFLeaBWG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I would like to add to this point that since the branches aren't gonna be s=
hared (vendor specific or vendor agnostic), I feel we should first choose t=
he suitable architecture implementation first where the base ISA is shared =
across many platforms (probably RV64* or RV32*)and then list out probable s=
teps how OPTEE should be ported to risc-v.

--f6egybFEgKZLPFLeaBWG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>I would like to add to this point that since the branches aren't gonna=
 be shared (vendor specific or vendor agnostic), I feel we should first cho=
ose the suitable architecture implementation first where the base ISA is sh=
ared across many platforms (probably RV64* or RV32*)and then list out proba=
ble steps how OPTEE should be ported to risc-v.</div>

--f6egybFEgKZLPFLeaBWG--

