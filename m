Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7468C433F5
	for <webhook@archiver.kernel.org>; Sun, 20 Mar 2022 17:29:15 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web09.20658.1647797354479492735
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Mar 2022 10:29:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=bMw5B/+y;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.29, mailfrom: manwag@fastmail.fm)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id B0D5E5C00FF;
	Sun, 20 Mar 2022 13:29:12 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute2.internal (MEProxy); Sun, 20 Mar 2022 13:29:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; bh=yeSL0/cPFUrjLN
	GyHN4reRrQFYXXGnbYyWDf7MlJtSM=; b=bMw5B/+yx8CKM43YJ9dG4picn3opSl
	yf0hn9v3BRMcj9AxqtPmM/GSzl1xtedds4B/Sd01Gath8tVrYnAxZQfhf4lhezxE
	ZkMqGV7BXVBl1e9D7hieGC76/uwfY8Zh/iBDlSPDirQrbFlZs5bVuqsnOdVzsvQn
	Tk4pB5TUJ+v1cf0LvqUqPbsu40OfLekM7FzbfsYAB9HpaPmER7NEr4Q07IZpAAfp
	F3HFgrAvEinYdFL0BWQiF8e/GdKRrERl62VXr/MsuN0Vmp/gUNxmVXrhvzPTGboc
	2VI73JQAtDMR+jFdTG/0lwvwn7erwWFcRNrMaaWNeIYB+AOX6qE4zENg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; bh=yeSL0/cPFUrjLNGyHN4reRrQFYXXGnbYyWDf7MlJtSM=; b=mPcHTe0X
	7xB2S3vT5Wt4P1yChfmZ8Oswd+0MlA5moNQck5/YVSMzS3dS/l5SMH/KlL3e4Pk4
	byLtcTNQmZFU8HlQRwlBHtQ4CfheeVIjnZKtK5D3DDKHfbUtPCZGKTQMHzJMzkN8
	xGhEjq3Ua6KonN9KKeXKLJ9mKjLu57kNLZ0ZnZ5PYUzFjjNj8nEk3u/uf4y9FN7n
	IO1+/PZc3aY+zkvorU85QAxP990tdgyKd1ps2qD2NP5EzdBxpyb42VdrQuRLAF32
	uwker/Yv1I/DHnvWSKMOHoJsZRw3vHxoZ4cacjU4Jz5uuULi6PPACgJIQNBGF8BJ
	alV9UUPgKVh90g==
X-ME-Sender: <xms:aGQ3YpNn_MVtYrTfxZYnQDXgCgAcvrLNgkidJo526wWtXmj9M243ZQ>
    <xme:aGQ3Yr9HAE82Xk3Eayb9j_DlmuVPa-G8HNYeXD4BGVqAwYgzxLLcndK8SfpbK4k8U
    ZnsLsa0Bf5HX25v>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrudeguddguddtvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtgfesthhqredtreerjeenucfhrhhomhepfdfo
    rghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghnhggrgheshfgrshhtofgrih
    hlrdfhofeqnecuggftrfgrthhtvghrnhepudeiueekffejffeifefhieegfefgveduheei
    udduleeggeegkeevteejjeetgeeknecuffhomhgrihhnpehfrhgvvgguvghskhhtohhprd
    horhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
    ofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:aGQ3YoR-CKG1GuCJpTZjObYEYEUDKKzKpM9TUBEt_-cEP5w9lhPvLQ>
    <xmx:aGQ3Ylvi25DqMxQNG4WqfmQ-8AuuPmZNQABOHu04fRaVozrVCqFzHg>
    <xmx:aGQ3YhfnJA1wQg9Z3-ggoxv-qHIcqkwWk_WCWdoYfOY7XctzqCaepw>
    <xmx:aGQ3YnoT-MoF9mRoVDHIrd6z5E8nVwW5lCHBNbHTbh8SDXJn1HWsow>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 87CC23C00CF; Sun, 20 Mar 2022 13:29:12 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4907-g25ce6f34a9-fm-20220311.001-g25ce6f34
Mime-Version: 1.0
Message-Id: <122fe36c-3d9b-4d43-93f2-deda7723c005@www.fastmail.com>
In-Reply-To: 
 <e8a3861080c96ef49272fd35680654d7c79ab57b.camel@linuxfoundation.org>
References: <ecb915d5-3d42-40a7-bae9-268455e9fd5a@www.fastmail.com>
 <AM0PR10MB3107E3DC28B5E7C518228C3C99149@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <2c4936ca-6ceb-4749-9afc-a5e2c1f4211b@www.fastmail.com>
 <e8a3861080c96ef49272fd35680654d7c79ab57b.camel@linuxfoundation.org>
Date: Sun, 20 Mar 2022 18:28:50 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] qemu: Enable guest access to the internet
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 20 Mar 2022 17:29:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56507

Hi Richard,

Am Sa, 19. M=C3=A4r 2022, um 13:00, schrieb Richard Purdie:
> SLIRP only allows specific ports and will not work for general internet
> connectivity. It can be done without root but the downside is it isn't=
 as
> powerful. TAP would allow the guest internet access but needs to be se=
tup in
> advance (using the gen-tapdevs script) or for there to be sudo access =
to setup
> what is needed.

I hoped I could SLIRP for general internet connectivity to work by enabl=
ing NAT on the host. If I recall correctly, I could see the pings I sent=
 from inside the qemu guest to 10.0.2.2 show up on my host, hence I assu=
med there is a chance. (I checked with wireguard.) With systemd-networkd=
 NAT seems to be quite easy to set up: [1].

    [1] https://www.freedesktop.org/software/systemd/man/systemd.network=
.html#IPMasquerade=3D

Regards,
Manuel

