Return-Path: <embedded@vivavis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F27BC61DA4
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 14:20:25 +0000 (UTC)
Received: from mx-relay81-hz1.antispameurope.com (mx-relay81-hz1.antispameurope.com [94.100.132.251])
 by mx.groups.io with SMTP id smtpd.web11.21171.1678717215245323339
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 07:20:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivavis.com header.s=hse1 header.b=RYrte+HD;
 spf=pass (domain: vivavis.com, ip: 94.100.132.251, mailfrom: prvs=04294f2ff7=embedded@vivavis.com)
Received: from unknown ([185.80.187.2]) by mx-relay81-hz1.antispameurope.com;
 Mon, 13 Mar 2023 15:20:11 +0100
From: "embedded (VIVAVIS AG)" <embedded@vivavis.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: State of Yocto styleguide and oe-stylize.py script
Thread-Topic: State of Yocto styleguide and oe-stylize.py script
Thread-Index: AdlVsWo6Z1L7b+TCRKO9fR4q6uwWdw==
Date: Mon, 13 Mar 2023 14:20:02 +0000
Message-ID: <c607b08fa41a4dfeb70aad68f70f961a@vivavis.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.7.38]
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 23
x-g-data-mailsecurity-for-exchange-server: 61419075-592b-4c8d-b7a0-bf1d145a8b8e
x-c2processedorg: 2f045ba3-9b34-4118-a5bd-6c10d5957477
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-cloud-security-sender: embedded@vivavis.com
X-cloud-security-recipient: yocto@lists.yoctoproject.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay81-hz1.antispameurope.com with 6E300826141
X-cloud-security-connect: unknown[185.80.187.2], TLS=1, IP=185.80.187.2
X-cloud-security-Digest: 6dd58437885071bf6d00e0937843e91b
X-cloud-security: scantime:2.665
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=vivavis.com; h=from:to
	:subject:date:message-id:content-type:content-transfer-encoding
	:mime-version; s=hse1; bh=xal/cddAi7MrQEY8F+Od0PA0IPJ2F4zplsa9GX
	bwhzw=; b=RYrte+HDAUDIdmYVpcvPdKBZUu+S+KtURaZkZrgRUEgH9ALiAMuxUr
	61n1IAGejF8800BwJYMa//QtsPM4AlIgG1M2+c6DrVLp6JJLRJRRdpB9Pzvp0HlE
	+dh2WXC/ddBzxfY7+D4ZnKVatXkm5J7kaH8fVUV+q7tMdhqKfQAZ7kqnmSfQfYCe
	mUwvRWmuv2iVAPhATBkO3HA9kW6JZzAXModczlLAf9nORyUF/OkTPdJLvs7KDSG4
	s5FPivsReLrJQ7e1f21xr/xgfPgUVJjsydsK1GIVItq5IZQ+joT3ckR9T2WVY207
	oYIKtcPfSPhVUNnpNbvmCmg75QUIB+XQ==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 14:20:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59408

Hi,

I'm wondering whether the styleguide www.openembedded.org/wiki/Styleguide,
meta-openembedded/contrib/oe-stylize.py or none of them is the source of
truth for writing a good recipe.

E.g., if you run oe-stylize.py, the SRCREV variable is placed above SRC_URI=
,
or RDEPENDS is placed above FILES, which is not what the Wiki documents.
And there are more discrepancies of this type.

Furthermore, the script doesn't know the FILESEXTRAPATHS variable in bbappe=
nd files
and moves it to the end of my recipe. Well, this is not decribed in the Wik=
i, but a look
into append files in meta-openembedded shows, that it is common pactice to =
put
FILESEXTRAPATHS in the first line of the recipe.

The Wiki has an interesting note and the end: "You can run contrib/oe-styli=
ze.py from
meta-oe on your recipes before submitting them; however it is not necessari=
ly up-to-date
with all current style conventions. This page should be considered the cano=
nical reference."

Furthermore, there's github.com/openembedded/meta-openembedded/pull/465
providing another ruleset for the new linter.

So, my question to the Yocto maintainers is, what is the current state of t=
he styleguide
and oe-stylize.py? Are there plans to synchronize them?

Thanks for clarification.

Carsten Stelling

