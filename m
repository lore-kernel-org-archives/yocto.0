Return-Path: <samdietz2001@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 431DFC433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 23:11:08 +0000 (UTC)
Subject: opkg not picking up RPROVIDES alias. #yocto #vivado
To: yocto@lists.yoctoproject.org
From: "Sam" <samdietz2001@gmail.com>
X-Originating-Location: Canberra, Australian Capital Territory,
 AU (115.70.184.3)
X-Originating-Platform: Linux Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Feb 2022 15:11:07 -0800
Message-ID: <8lP5.1646089867931154452.Ohjg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7zMNaA4truM3bxxMrTx8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 23:11:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56325

--7zMNaA4truM3bxxMrTx8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a recipe aliased by RPROVIDES which I assume is working due to the p=
roject picking it up during the compile.

However, opkg does not seem to pick up the alias, returning this error:
Collected errors:
* opkg_prepare_url_for_install: Couldn't find anything to satisfy 'alias-na=
me'.

This issue seemed to arise after upgrading Vivado to a newer version.

Any ideas?

--7zMNaA4truM3bxxMrTx8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a recipe aliased by RPROVIDES which I assume is working due to the p=
roject picking it up during the compile.<br /><br />However, opkg does not =
seem to pick up the alias, returning this error:<br />
<div>Collected errors:</div>
<div>&nbsp;* opkg_prepare_url_for_install: Couldn't find anything to satisf=
y 'alias-name'.<br /><br />This issue seemed to arise after upgrading Vivad=
o to a newer version.<br /><br />Any ideas?</div>
<div>&nbsp;</div>

--7zMNaA4truM3bxxMrTx8--

