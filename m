Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAC9EC433F5
	for <webhook@archiver.kernel.org>; Sat, 19 Mar 2022 08:31:00 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by mx.groups.io with SMTP id smtpd.web11.5167.1647678659400444817
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Mar 2022 01:30:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=dHCZDhi0;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.26, mailfrom: manwag@fastmail.fm)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id C0C115C0060;
	Sat, 19 Mar 2022 04:30:55 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute2.internal (MEProxy); Sat, 19 Mar 2022 04:30:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; bh=zg2FyOB075rmIs
	qAP8kt00dz3/pknQK8BttMX9MhvLw=; b=dHCZDhi0idpdOBes6xSQyH5WWq1w8K
	ko5Xaj3hfHW7AE4zT67GoCw4TiEDv8Wn0FUPqvs90Xa6RmGgWyolukDtIXAoEgFM
	m/PjPD4mXZpL9WRDzuyCM9BK37UPrIMJs5995xVTh62NUGAYpODAGkD9El5m2HYF
	vE8FYiR+aCVQ8ijjQJi5Qzh5CtZ/lz2WxXxQ3mMBXwtCsOHuHP7vv6geglxA9QhZ
	Vwk+0h3F6ALLJVMHXL41bpkAuuPwTjiZUG1WeFvZgHv7Cz1cEMI1tY7hFKW3pvrr
	/tEwbqaAc3wGNS51BrPW0NaWWKWJWS36SKNfblLJow5EF4GiG2tPU2UQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; bh=zg2FyOB075rmIsqAP8kt00dz3/pknQK8BttMX9MhvLw=; b=SF65rfje
	ox98ijA7239dkpk5aBYEwpL7u+1af2tF2DxetQRwhlTb23T4qx/X5nTik+aNCmfe
	33HmI2NX2QdOlAHt/+qGCx3w5SUZwf5QUKa+/qK4g5zZleovOkOwiOhdqlo1SpTm
	dVYLFc78Kxt5rZlCEqEo8TYhP77mng53PuvEflMQW9UO2gTBj5uIgndrUcOnNVr7
	dinEq+PGHy/l8O6n/tiWn2Q1P54KyXrQ97NByXqjtK1rKZl/it0qFuxv2nWB1AB7
	Wk1FLHZjZPbbhJBLX0UipmwoGlD4s2ea41txTcCBvn0md4cr2ObwummRYIftO6Bi
	hAB6FR0TYIYkXg==
X-ME-Sender: <xms:v5Q1Yi20qBupWYsFuutYAW6Fpi8qfxzcDGnD2XuNNmm2CK35KakrDA>
    <xme:v5Q1YlFBJ8Cqz2DL5OstZsS42uFYPQiJtOkU4MNJsbMdxZTnRMJ0w-q_HjUYuj_jW
    y7a72Y1Ef3ICSI2>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrudefjedguddvtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtgfesthhqredtreerjeenucfhrhhomhepfdfo
    rghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghnhggrgheshfgrshhtofgrih
    hlrdfhofeqnecuggftrfgrthhtvghrnhepuddvieeiuddtvdduieehvdeuheehveevleff
    kedvgffgvdfgheekvdeuhfeuleetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:v5Q1Yq7tcYEgrMkWIrmCMz6WP2nPOZvIo73fzS3ZtlQHiARzzSAKKA>
    <xmx:v5Q1Yj3zV74-sN1UrjMZY_OPY1HcQqDNc410tobbAv3h9Qzb5l9LXg>
    <xmx:v5Q1YlEje25opLlzVHzrj9t4Yt9bVnpWnO787r6GmdPcq3MJUAruxg>
    <xmx:v5Q1YkztGVbKd4AXjwMnYHsyPi2E3rLpgCvERKLpv5CKdsGMNeAsaA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 4C5323C00CF; Sat, 19 Mar 2022 04:30:55 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4907-g25ce6f34a9-fm-20220311.001-g25ce6f34
Mime-Version: 1.0
Message-Id: <2c4936ca-6ceb-4749-9afc-a5e2c1f4211b@www.fastmail.com>
In-Reply-To: 
 <AM0PR10MB3107E3DC28B5E7C518228C3C99149@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: <ecb915d5-3d42-40a7-bae9-268455e9fd5a@www.fastmail.com>
 <AM0PR10MB3107E3DC28B5E7C518228C3C99149@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Date: Sat, 19 Mar 2022 09:30:34 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Matthias Klein" <matthias.klein@optimeas.de>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] qemu: Enable guest access to the internet
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Mar 2022 08:31:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56503

Hi Matthias,

Am Sa, 19. M=C3=A4r 2022, um 08:43, schrieb Matthias Klein:
> Then everything worked through the tap device.

Please note I'd like to use SLIRP instead of TAP as TAP needs root on th=
e host.

But I guess I could just try it for once, just to see if it works...

Regards,
Manuel

