Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40808EB64D7
	for <webhook@archiver.kernel.org>; Mon, 26 Jun 2023 17:31:40 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web10.2435.1687800698631255897
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jun 2023 10:31:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@fastmail.fm header.s=fm2 header.b=dtbPjb2z;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.20, mailfrom: manwag@fastmail.fm)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id EA0D63200920;
	Mon, 26 Jun 2023 13:31:37 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute5.internal (MEProxy); Mon, 26 Jun 2023 13:31:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1687800697; x=1687887097; bh=Zt
	Pr2VjoWumhM6hajNolZDPi8849+3h7UuiI1imhXTk=; b=dtbPjb2z2gduKVoP4r
	rTwwnuiFkR6cfiyOPKZna79m8aMs408AS8EIQxcom/22aLKGn/cKzQsS2V2s51Af
	Jn+Lp1DUoIJzwDXHh/mwaSWwdGW1JVnDvfzG9+elZWURH+IbarxB/dkjm2cemgUT
	l8/4sJP3Q8FDA+GqCoQjds46rjUPmnK7Ogt3/p0t9BaXl3kepT0soFIRLm4c4Oco
	Xo0jCz2un0n6k01WKuzTDpdFd/XKnIqW1Q7H+jS9gGQWU5+CpJYk/INmnaA4MSHw
	hFJN6bb3IIMHAJodwQcK8vllE8VkjdJBOifPV/Dk5vYle+Ibi2qR+II8+fAskU49
	LybQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1687800697; x=1687887097; bh=ZtPr2VjoWumhM
	6hajNolZDPi8849+3h7UuiI1imhXTk=; b=D5F3dtBtQ2YUAHG49GWGXQH8Px/Qs
	seA/6soUZ4s5Lsz13RYXk5/qsqQuCyHVDdsPvzvhqnz1RQVb5fc1wG66Z/7oU4Az
	8TaFynijs1TjGM6yyUiSpgTwe0FlLl99b9XBDMV/gyMNfBQxha7Vcdz6sxJIxxT4
	sYKRn2/KYGCUUjjL5qHMQ1CWCv6vfMeG26mVgniDU6X/q0IkDSG2Tn7DUS2zpqhv
	KM3w5NS5KjbR5+bSLxNsMLvWAJXaAQ3WqPUMgIIm4Fhe4cPmMgLShlMxdN7jw2Eb
	Y87z8bluU3Ysv54eWI8jEWaPj6is2tSYOd3AApEOUuKzQzVfU10dKjF5w==
X-ME-Sender: <xms:ecuZZNGTIgH_WghWrjsyl4-xZdL-Y4hUGmrEFdazRxx-Lg4jAisveQ>
    <xme:ecuZZCXSKFd4Rl-8beNGfitbn7nC35owj7uIAh03xgdj5FLVBCeLYNjyaGtLo7pH9
    3ODiy10YBxbiXWM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeehfedguddtlecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfofgr
    nhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilh
    drhffoqeenucggtffrrghtthgvrhhnpeffkeekffdtudevudfhueehuefhtddvieeujeev
    ieetleellefhteehhedtleduffenucffohhmrghinhephihotghtohhprhhojhgvtghtrd
    horhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
    ofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:ecuZZPIPq5CF2pTRgwTvX8VWuzwAqU74-pT5rhA6eb_h7PJG8iypLQ>
    <xmx:ecuZZDGiJB0m9WVKJZnZiEbDX2KMmsC91TpmOM3CmELMIfGKeBI6yw>
    <xmx:ecuZZDXZwJHWjfQUNp6eSTOQJ0ILzNhdNEbUJ5JO6z4uiGkzOmHXkA>
    <xmx:ecuZZKBE5WBRMNVfY3nKjNSge1kWLM_imn0Zj3OzbzGdQwgLO0o6wQ>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 57F0F2D40091; Mon, 26 Jun 2023 13:31:37 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-499-gf27bbf33e2-fm-20230619.001-gf27bbf33
Mime-Version: 1.0
Message-Id: <d069ae75-93ae-4f39-97c1-89199c5002c7@app.fastmail.com>
In-Reply-To: 
 <CAPoeDCbkxZi+Tf+N0tQESt=aGdim0j0U-uR7qKhKFZgYWdfVfA@mail.gmail.com>
References: 
 <CAPoeDCbkxZi+Tf+N0tQESt=aGdim0j0U-uR7qKhKFZgYWdfVfA@mail.gmail.com>
Date: Mon, 26 Jun 2023 19:31:17 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Natanan Tirasukvongsa" <tnatanan@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] user and password problem
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Jun 2023 17:31:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60448

Am Mo, 26. Jun 2023, um 14:32, schrieb Natanan Tirasukvongsa:
> I got a problem. I use raspberry pi 4 with yocto kirkstone version. 
> I cannot login right now. What are username and password?
> Thank you for helping me.
> These are my other files.

You might want to look into the IMAGE_FEATURE debug-tweaks. [1]

You should be able to activate it by putting IMAGE_FEATURES:append = " debug-tweaks" in your local.conf.

[1] https://docs.yoctoproject.org/dev/ref-manual/features.html#image-features

Regards,
Manuel

