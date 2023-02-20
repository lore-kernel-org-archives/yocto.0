Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BA6AC636D6
	for <webhook@archiver.kernel.org>; Mon, 20 Feb 2023 19:53:02 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web10.23773.1676922775701710827
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 11:52:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=t9tcSYCe;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.29, mailfrom: manwag@fastmail.fm)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 115CE5C005C
	for <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 14:52:55 -0500 (EST)
Received: from imap43 ([10.202.2.93])
  by compute5.internal (MEProxy); Mon, 20 Feb 2023 14:52:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1676922775; x=1677009175; bh=L8I6r3MGe2cYLlNTRkozrvk2Wadn2KkOGtn
	eEyA1awQ=; b=t9tcSYCeiIjpUN98sFY+55DpXmxiFM8GKuWMwM0v5eO+jJ13L8Q
	6xM0Qo5u25ug5jhvsNXZhClFeLUn5nenJoIw8PlhFpeY7yW+NR24ZPhbZG8qnRgo
	GZcYjok8aG7vuxakwfx5OYx+HA/LvYQhRFZb83kQ2nbWZmPLhH7vlLs76IKrL0B0
	/c0/a2yfYvCci4JQ10P1Xq870GpH4mwkjgujwqiqIH1Pde/+6RIIv+ifHO3n97EL
	PZkZbyFnjFEQo4f1hzjSwtWHoZ/l+9iGOhMlPMvDleuOhQmHBI3Hvgx5Q6u+nmol
	EYeoSEPjY+LvICZ0Koqr90AUQV0TyqZHITQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:message-id:mime-version
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1676922775; x=
	1677009175; bh=L8I6r3MGe2cYLlNTRkozrvk2Wadn2KkOGtneEyA1awQ=; b=p
	E4VEzQ0ALzsh9WdT55IRbBlWuawQva9i//sc5dPVi00+zgNZprZX8WXhIv99ZDXf
	DM59/dKnsDRX2eluIxg33NSHkp7AKR1DGhq9C34Xz7VsjhbsqiXIcl9i3y8zxcom
	BtW2vcWnq79gReR3EnQ6fXdXvvaZsQV90/4hrIPW+OkHsiwvAIaUM2Ggf/5D0bVc
	J32zCxBBmAcT/0gH05pqKbsFUGSryjumzGZNbX0QboU95ia5cSpRjf3CvhlLBn3h
	GL2qYhm5UWHlKaeVL+djvKiJWJPxGugCWysfYPiFZOmk0XpvmZpmEscJKugMS5CO
	Xb3wUvZIC8Tmu5pcC/YSw==
X-ME-Sender: <xms:ls_zY5klBcHPpn7u-JdfW1XFqMrhiiMkf4SvaDMhOcFiBR-TQ-Sr2A>
    <xme:ls_zY02U-m0AjVR2_3SNM9WGjFKv3GulNK_nziiNWdIJ9msD-ibguJFKtfD9No-Nf
    Gj9K7xQ7Y2Pl0sF>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudejhedguddvfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtre
    dtreertdenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoefo
    rghnhggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhephfethfelhe
    ejfeejfeduueegteeifeffffehheeiudfgheeljefhhfdttdelfedunecuffhomhgrihhn
    peihohgtthhophhrohhjvggtthdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:ls_zY_qqSmnF8xvCzzos7MYPiNV3lEqmGByqs4c9WQBGFAfoNCh7-A>
    <xmx:ls_zY5nUwpka8In7W6m6w99PoNe3yNunIoQSs4wR7HnCXM94yecxLg>
    <xmx:ls_zY32_RWrRB7r_OZsp89DclHSRDSuDQqANAjqqYlS7oJViAa7XQA>
    <xmx:l8_zY4BKcRZdEcICQUhTNblIbPOXNV03_j_oiyrsHzdxhjJnF6gQrQ>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id C8CC42D40074; Mon, 20 Feb 2023 14:52:54 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-172-g9a2dae1853-fm-20230213.001-g9a2dae18
Mime-Version: 1.0
Message-Id: <77fbae6e-8d40-49b4-b570-5f8d35b37036@app.fastmail.com>
Date: Mon, 20 Feb 2023 20:51:28 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Asking for advice on how to establish license compliance
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 19:53:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59261

Hi all,

I'd like to ensure license compliance for an embedded product I'm working on.

Disclaimer: I've read https://docs.yoctoproject.org/dev/dev-manual/licenses.html and know about yoctos abilites to provide the license text and/or the source code. Still I feel I'm missing the key info of finding out the recipes I've actually got to do one thing and/or the other for? (Providing license text and/or source code.)

And in case of licenses requiring the release of the source code if modified: How do I check wether yocto uses the original software or applies patches and is therreby modifying the source code?

I'd like to know how you people deal with this in practice. Or do you employ the sledge hammer method of just releasing the source code of every single package you're using + putting all the licenses on the actual device? But in some cases, that might not be the right thing to do either.

Are there some licenses I should try to never ever get on my device? A.k.a. blocklist. Heard GPLv3 is such a candidate.

I'd be interested in a very simple guide on what to do for every single license:
* License W: Keep source secret and put license text on image
* License X: You don't need to worry about anything
* License Y: Release source code and put license text on image
* Lizense Z: Release source code if modified and put license text on image

Last but not least I'm very open for recommendations of a legal counsil in Vienna, Austria who can help me with software license compliance.

Thank you all,
Manuel

