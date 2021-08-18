Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web12.62088.1629324394262369019
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 15:06:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=QR1uwekb;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.20, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id BB2A832003F4
	for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 18:06:33 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Wed, 18 Aug 2021 18:06:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:date:from:to:subject:content-type; s=
	fm1; bh=uSn+znryk625ewgZddwvqAK3S/564w4ILWvH0juaBGs=; b=QR1uwekb
	retDqLT8sM+aYZ5jGGP3cUoBgEm9PDs9RobGG45GScEfNGOJyIO6raE2ULoMeXrs
	ffa/XQYXdskB3inLoRZ8E0ljYKXaCv7vUNP6ZfDAzlSUbvBtJ4+Bkrn0akS2OPup
	UufzWn2o0s407PiIU0mX6cpwjS2hF+xs8EMFDhs9+YABb2qJpy5wRf6DPFRuue+r
	Wq4TTE3mqwRxIpoEiM1QV0U/9RaFiLQn+n/TPuaRb9knJW1vGL2JZqoVNX+vG/Ym
	CkaxuXh85gMIZNVUgvon8n+Z8OwphFf/xKrO/kI1N9zf17pyuzZFMCiEkbIOxhfE
	LfHpZB9igmIrKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=uSn+znryk625ewgZddwvqAK3S/564
	w4ILWvH0juaBGs=; b=Zn8cfkXC55FTdKQBHJU8R2QiPNLwk24qoJ1rrPaLnZofl
	usATExNGykZDHcPhVWS6xftYUrL8G+R4MeedCw+gZwBW422W3aPa7ne+WcjqWXdL
	UDqYkS+7YxhSfUaB5+1k46zffGrOANzwwLQn3Pa1W6Tnl9unrK217wrVjpecNWE/
	1cbXUdaZEejYDnsaq+eGh67/9Oqr18OHrh5imLGqDP1eKwgpBZGqgNttCBoBpDTe
	LQUIMX2y0NxHck0ig9RDtuWGnHgRgI95F9ZiyBZvHIKdPpQ0kTIxUso3gfpPUUK1
	kaNdF6NNnCUqpEYWhBUFAlpQIlLsXVqJScywEKimA==
X-ME-Sender: <xms:aIQdYf4h3v8w9Vx5VzNPPICw0_2u0sIkGXdT_uTIkgJnRIWUKG_3EQ>
    <xme:aIQdYU7JPGbhbv6CDJ_WpnppXrFA0VODfQZ2cwZeiTM9YldcGlhMrm_Z-ql3QP-gC
    2RuqGoNwzIVn8yD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrleeigddthecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtredtre
    ertdenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghn
    hggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhepueegtdeiteduue
    eludegffeggfetteekueetueekfedugfduueekffegleeivdeinecuvehluhhsthgvrhfu
    ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforg
    hilhdrhffo
X-ME-Proxy: <xmx:aIQdYWciBlQxtz8KhrKki22bq1BIsiC7nOXWFl2d9NjqSLLZAx1jIQ>
    <xmx:aIQdYQKcXJeM3oSVTf5I95zKS3cFbFkCwg7Bwcw-yPHp4wbNB2CdqQ>
    <xmx:aIQdYTL9s3Ar0zqsJSXSIh7Ywlm4IoZiMvQyPs9ycQSSzN4nQbxeYw>
    <xmx:aYQdYYWOxSrwp0gHu0WRvoQn_H1AOD_7xjJWCmCkkKsUN7Xm1zbhKg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id CF0BF3C0F7B; Wed, 18 Aug 2021 18:06:32 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1118-g75eff666e5-fm-20210816.002-g75eff666
Mime-Version: 1.0
Message-Id: <36684fbc-136b-4802-a1f4-d82af4e6348c@www.fastmail.com>
Date: Thu, 19 Aug 2021 00:06:12 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Wayland and X11 on Yocto
Content-Type: text/plain

Hello all,

I'm building an image to run on various SBCs and would like to equip it with a graphical interface.

There are quite a few things very unclear to me. Can someone help me with that?

* Why is X11 enabled by setting an IMAGE_FEATURE (namely  x11, x11-base or x11-sato), while Wayland is enabled by IMAGE_INSTALL only (weston-init and weston)? 
* Theory: Is IMAGE_FEATURE +=x11 manipulating IMAGE_INSTALL under the hood so you don't have to do it manually? And as there is no IMAGE_FEATURE "wayland", you have do it manually. Correct?
* Why is Wayland different in that it doesn't need an IMAGE_FEATURE to enable it?
* Why does core-image-weston.bb need to enable IMAGE_FEATURE hwcodec, while core-image-x11.bb does not? (Dunfell branch.)

Thank you.
Regards, Manuel
