Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C9DC433FE
	for <webhook@archiver.kernel.org>; Thu,  6 Oct 2022 21:32:10 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by mx.groups.io with SMTP id smtpd.web08.99.1665091928623068718
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Oct 2022 14:32:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@fastmail.fm header.s=fm3
 header.b=alLfndl4;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.25, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id DFAC85C00E6;
	Thu,  6 Oct 2022 17:32:07 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute3.internal (MEProxy); Thu, 06 Oct 2022 17:32:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1665091927; x=1665178327; bh=9ZLOhTjg2s
	08+25zfbLY03rn/tirdcd2UEVl8Ta2LLc=; b=alLfndl4ThmAGRr53wSBRKGZUq
	PqWSZMIglZCTmtm13636RhGIae4laYXx4BXSyI/qPA47xmgA5ULUN/9Auc2jenzG
	4gSBxYvmUpEkPDR/8SlkbydHtAy/+htRjbXKMuxnRpvuWgJcvMYVdyt7r8sB05BV
	9uMRISPXnlSKf8WnjWjh5lP0g/NTKI+03dZRg3zULAKq3adRZC/D+EThMvFtZ3ue
	V5JoSoHfxo2q1p28gii+1ysYeex00M2qB+Ot736g92unUx+j3W8yhc6Jj3q7a9ir
	C/QfTN14mgWqKXD4vsDI/++GYycca7aNqbrTo+Ba/7/gAvpRKiMLldblDw9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1665091927; x=1665178327; bh=9ZLOhTjg2s08+25zfbLY03rn/tir
	dcd2UEVl8Ta2LLc=; b=cUJxJgvE1kl/vNTQjwQlMcP4AjHGFG0EmOM+c/vHE1sD
	f/5FBtE4A4EfuOd1VeO7OXKPHsvZ+YDjdbqR2bWXw+Qp4GwUcZABbCokPi2uotea
	PlFPjj88tu0pq/LLWSrBD732XX9zdxUEW3MRyC4neHlg2biGptjpqB5WuR5amRO2
	mEDHgQMczgkv71bHPFaAxt0cBD4bXTFTVVxgNwmwe80t5oApr14bdvwZQsDyJa/X
	KvjBo/xhwB1coPoKpphmd5/7LYJKVQfZgkhjKG2RGAlLvLnEOaYx1PODmkWZcWhN
	zS6GDKNnufPaaZwYpKRyVoVQ4epZOlrZfhVwjD1bHQ==
X-ME-Sender: <xms:V0k_YwdxRIqFyJ5B9mfCjvNeNnE8uhemMgp-8Rj7i_U-0fNUSwOYsQ>
    <xme:V0k_YyOGGukSB4LX0bMXfMBlCeJImxp2KsHLDWchLw1l-9T8oIaRyUMbQ2YXT29KY
    dnio8XRJTCNy_Q9>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfeeihedgudeivdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesth
    dtredtreertdenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcu
    oeforghnhggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhepvdeiie
    dujeehteduvdeiuddugedvgeekiefhveehjeehgffhffekjedtleettdegnecuvehluhhs
    thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrg
    hsthforghilhdrhffo
X-ME-Proxy: <xmx:V0k_Yxjncg6KD1-9T4xu_ceT6Fo5sPg3kq80S6vda23FsStBuIEiWQ>
    <xmx:V0k_Y19hj4HZZkaLY1HbSF3dYKZBh-InHiVlhU8fmCWtSXR8-9irQQ>
    <xmx:V0k_Y8uTX10fhFtatUQGwgP1iwzXH1fjUil-mX5lO1Y_kJZvFCJJzg>
    <xmx:V0k_Y146jhWDTwGmUv8s0pm7qppZrSV2ZsEaXwa6ZtGDrJpF2xkhgw>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id ADDED2D4007D; Thu,  6 Oct 2022 17:32:07 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-1015-gaf7d526680-fm-20220929.001-gaf7d5266
Mime-Version: 1.0
Message-Id: <b8081bba-aca7-416e-a928-317182c4393f@app.fastmail.com>
In-Reply-To: <782bfe190eeb1fa1f49a1f0e011bbc4c38eb5734.camel@bootlin.com>
References: <6396a42f-477e-4f4d-a2cb-fa1e292a8b9b@app.fastmail.com>
 <782bfe190eeb1fa1f49a1f0e011bbc4c38eb5734.camel@bootlin.com>
Date: Thu, 06 Oct 2022 23:31:34 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: thomas.perrot@bootlin.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] core-image-minimal-xfce: Xorg screen remains black
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Oct 2022 21:32:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58279

I realized `core-image-minimal-xfce.bb` adds `packagegroup-core-x11` to IMAGE_INSTALL.
Yet, 
* It doesn't add `x11` to IMAGE_FEATURES which would do the same but perhaps a bit more.
* It doesn't add `x11-base` to IMAGE_FEATURES, which would add `packagegroup-core-x11-base` to IMAGE_INSTALL and perhaps a bit more.

Hence I added `x11` and `x11-base` to IMAGE_FEATURES and it changed things in so far as when the flickering occurs, the black screen changes into a gray screen.

Regards,
Manuel

