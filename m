Return-Path: <joel@stegos.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60711C64EC4
	for <webhook@archiver.kernel.org>; Fri,  3 Mar 2023 09:42:35 +0000 (UTC)
Received: from mail-4323.proton.ch (mail-4323.proton.ch [185.70.43.23])
 by mx.groups.io with SMTP id smtpd.web11.19607.1677836552518391571
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Mar 2023 01:42:32 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@stegos.com header.s=protonmail header.b=Z+3N3Qz6;
 spf=pass (domain: stegos.com, ip: 185.70.43.23, mailfrom: joel@stegos.com)
Date: Fri, 03 Mar 2023 09:42:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stegos.com;
	s=protonmail; t=1677836550; x=1678095750;
	bh=oHHKfsK/WrShMSy9ondOjPet9FQpzwJ0PL2sMIWsz6Y=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=Z+3N3Qz6v5nDV/zEhi5xbBuOthS/BnTY0nHB+xE+Ah+hy5Lg0BxfjxtTq/k93J0BW
	 NfWuA/PkTqJyz1yVuXkP4h8170VytPqvwvNbBw2KsUNFUs2mGrWlaClMQpaBamz7MW
	 /ZsZFxRgyenEBifM+/DX0L56fO5t5WT+zelyhpVA=
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Joel Reymont <joel@stegos.com>
Subject: Adding another codec to the Python3 manifest
Message-ID: <oCql2z9k4X-g58EyXYXKvKlEoO_7qNexS1PqovDcVmyNSqWu3XHQRdVQvKg0MVwC4hxasiKQRyM4U3Zotw1LpndTopL6qOiJJzR4SrkAN8c=@stegos.com>
Feedback-ID: 9637223:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Mar 2023 09:42:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59340

Folks,

There's an extensive list of Python3 codecs on my Ubuntu laptop, e.g.

/usr/lib/python3.10/lib-dynload/_codecs_cn.cpython-310-x86_64-linux-gnu.so
/usr/lib/python3.10/lib-dynload/_codecs_hk.cpython-310-x86_64-linux-gnu.so
/usr/lib/python3.10/lib-dynload/_codecs_iso2022.cpython-310-x86_64-linux-gn=
u.so
/usr/lib/python3.10/lib-dynload/_codecs_jp.cpython-310-x86_64-linux-gnu.so
/usr/lib/python3.10/lib-dynload/_codecs_kr.cpython-310-x86_64-linux-gnu.so
/usr/lib/python3.10/lib-dynload/_codecs_tw.cpython-310-x86_64-linux-gnu.so

The standard Yocto Python3 manifest in meta/recipes-devtools/python/python3=
/python3-manifest.json only lists 1 codec.

How do I add more codecs in my own layer, without modifying the standard pa=
ckage manifest?

    Thank you, Joel

