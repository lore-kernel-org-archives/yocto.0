Return-Path: <chuck@wolber.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 324C6CAC5A7
	for <webhook@archiver.kernel.org>; Sun, 21 Sep 2025 21:22:34 +0000 (UTC)
Received: from fhigh-a6-smtp.messagingengine.com (fhigh-a6-smtp.messagingengine.com [103.168.172.157])
 by mx.groups.io with SMTP id smtpd.web11.37509.1758489753666176631
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Sep 2025 14:22:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@wolber.net header.s=fm3 header.b=puH0pTEh;
 dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=c5e2cgAB;
 spf=pass (domain: wolber.net, ip: 103.168.172.157, mailfrom: chuck@wolber.net)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.phl.internal (Postfix) with ESMTP id F1960140009C;
	Sun, 21 Sep 2025 17:22:32 -0400 (EDT)
Received: from phl-imap-03 ([10.202.2.93])
  by phl-compute-02.internal (MEProxy); Sun, 21 Sep 2025 17:22:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolber.net; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1758489752;
	 x=1758576152; bh=A0UOakxzFtxlK1V9ROaJIf4T7CU5tNwANywgdZQycGs=; b=
	puH0pTEhKgJay9mXFDsdMknkIZ/NG7SAl1uk+2uSob2c9ly1jyjjrvpkRDRKrbNi
	xiVyfzy2G0ANttqU/Z4KEol64eoCJ21jlYp0xCGrzb3pTMGskpjQS2JFbEEy9BS/
	E4n1Ji2YO10u7Q2U8YHaEAkpO5DEKI6jSOfB8dguAhpt5aaFn/EZffpj9ecWT7jz
	O2YsvfIVyS8qYi8Qy1siyebrhr6hJ7rtXQh/O+UnsWCJ9pdMxypuBkEXMxW02+78
	1rzqR3hjvzF9GZCcOKS6SzfqfhsDE/yeByXWosH5g6gEP2/Xk8ZqwtoqLLo17/Ut
	i/6nVH5LOqAHkte88McvCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1758489752; x=1758576152; bh=A
	0UOakxzFtxlK1V9ROaJIf4T7CU5tNwANywgdZQycGs=; b=c5e2cgABmGodOUufO
	rZ334/UcXqNw/TNSfKDFyFjHq+Kib8cGsx8fNd0lyxQNBlaQtxQhmH7dmNoRPve0
	I4IzSlEeO+kZ6A8RUAyR8f2L13WERE7vseaf81oMdiWW6Or9OjZwx+bWs2E42mN7
	BttNvW7Xshm33UHswRXMbeCgSpSjQuWQSVb+ZCnJL/4OrVpVyGmfGPSArhjjLhRX
	VHGviwtsXXbgOqyYFuxRN/fHGSJ2HGsHMa4Ix4psTfR14dTN+6d5eTNpd4aAxXRK
	d/pAg9GWrhvetCUOyi+MmcTXsohqfGIHORWjRIVrGXJeBSotY0iEwn/650IO8tH+
	Nr+3A==
X-ME-Sender: <xms:mGzQaDxpxXATx1D3GJBfEasjhEBamEi_5r0RQ_cUpCYh8XIrzSix-w>
    <xme:mGzQaLTS37PaiNcwWCjtKlCJ0kn0oUjJcoBlExazZYkWJas_phkfoLJBJHp7IQl-e
    qvW3wZPPQd-pGKlSH4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdehiedtgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefoggfgtgffkffuhffvofhfjgesthhqredtredtjeenucfhrhhomhepfdevhhhutghk
    ucghohhlsggvrhdfuceotghhuhgtkhesfiholhgsvghrrdhnvghtqeenucggtffrrghtth
    gvrhhnpeehvedtvedutddtjeejgedukeeuueetkedutdehjefgleehgfdtffeijeffffeu
    veenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrh
    fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhuhgtkhesfiholhgsvghr
    rdhnvghtpdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopegrlhgvgidrkhgrnhgrvhhinhesghhmrghilhdrtghomhdprhgtphhtthhopeihohgt
    thhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrghdprhgtphhtthhopehsvg
    hthhdrrhgrhihmohhnugesmhgrthhrihigshhprggtvgdrtghomh
X-ME-Proxy: <xmx:mGzQaJ6nWos-vs5-ENxQibasmAv1IDpRZXUiy_6Z8RLNkeMUZg7a9A>
    <xmx:mGzQaNzNOryf5ZSMs2Wa_VV9qjleXL9ZFKKRtD_F6r_tkp7Ns4bMPg>
    <xmx:mGzQaNbPXpOmPOwm9XG-OhvYTBxhRcrBY7TIkXzi56zxrYYUGjCqQw>
    <xmx:mGzQaPTLM4m0ig5e73bjJJ3uQdZeUMw1TRuFhczE75mOS4c89KVEsw>
    <xmx:mGzQaL0a4iJp7XoWEtbSLiNIO_PmpbIdUUQqTXXS7AC5jAa8Bm0xedh_>
Feedback-ID: i5cf64821:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 8E8E518E0069; Sun, 21 Sep 2025 17:22:32 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 21 Sep 2025 21:22:31 +0000
Message-Id: <DCYSLBD104MG.18TCJAXRPR4ZS@wolber.net>
Subject: Re: [yocto] Documentation around adding custom fetchers to layer
From: "Chuck Wolber" <chuck@wolber.net>
To: <yocto@lists.yoctoproject.org>, <seth.raymond@matrixspace.com>,
 "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Mailer: aerc 0.21.0
References: <CANNYZj-Sk_VEMa8--q-s3G6KP1zih5KqZC4uv5WJzAd7sQrzzQ@mail.gmail.com> <27586.1758120354644994131@lists.yoctoproject.org>
In-Reply-To: <27586.1758120354644994131@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Sep 2025 21:22:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65863

On Wed Sep 17, 2025 at 2:53 PM UTC, seth.raymond via lists.yoctoproject.org=
 wrote:
>
> Sure, I can share the source. It grabs secrets from our password manager
> (1Password) and injects them into the build system. We currently have two=
 use
> cases for this:

It is probably worth noting that the 1Password v8 CLI and SDK both require =
a
round trip to the cloud even if you run the desktop 1P client locally (whic=
h
maintains a local copy of your vaults). The 1P CLI and SDK do _some_ cachin=
g,
but they still require a round trip for every call. My testing has shown th=
at
this round-trip adds about a second when taking full advantage of what they
cache locally.

For a tool meant to help with automation, this falls into the "egregious"
category of oversights as far as I am concerned. After 12 years of 1P use, =
I am
actively exploring other options.

..Ch:W..


