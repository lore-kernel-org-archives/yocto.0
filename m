Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.13358.1577981658862021276
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jan 2020 08:14:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=vNprZ5VE;
 spf=softfail (domain: betafive.co.uk, ip: 140.211.169.56, mailfrom: paul@betafive.co.uk)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 675FBE013DA; Thu,  2 Jan 2020 08:14:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [64.147.123.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 930A2E013D7
	for <yocto@yoctoproject.org>; Thu,  2 Jan 2020 08:14:17 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 24FDD5E7
	for <yocto@yoctoproject.org>; Thu,  2 Jan 2020 11:14:15 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Thu, 02 Jan 2020 11:14:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:date:from:to:subject:content-type; s=
	fm3; bh=U0ndl0ooaw7nfB7mtzryZzDWm6vWryJRJkYZjJS/tP4=; b=vNprZ5VE
	QHhNponhJVOJJdaN2DgZ8VNMbvl6/XdnQV4efmeCBaqzE3nlpqjAJAMqIH7/8+/C
	rYXC58HJdF/+qljNY2gEsq1Xu5HI1AwIZXg197s37J1sYi0tf4AlUkCaaPk5D1cu
	6EbsILyrKmrLuzqCEMwdr5BM9OrIh7N6EjfFErcMK0V5sG95WdTWL/1bWkC4hEiu
	l6K6A4j4vrNdYPCRrPOlQlZnhmBa43huZxKJO7HLERFbpsHRUYeLN+/mdJBFpJOJ
	h/i4OL+4Dp6wc4vrMp/kaPUW/22hcKj3ULndK/md+8pkZytCdMTwA6kjtyc2aSQf
	yu6GQZIHBWLqjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=U0ndl0ooaw7nfB7mtzryZzDWm6vWr
	yJRJkYZjJS/tP4=; b=S8C69Gzf97vqWtepCwvXg9xbWKra2z6aOwZU0DRRvP4CX
	z/pf7wjpzNMFiZuLqLUT3fX6W3Na7AyHjZAJhNYvbJF3Cmdg1+vN5UXbpeFRt3N8
	De6Va4nh3vszOj5boN21cXwBM7Tq66Qa5ak2SqkzbbcEEY3+gAsz6z10Kl74Dkue
	863ZfQjSb5fhWZZPlwXUOaf0gCTOhW9zV21OGtIEUiwHeKimOu+rCUjhqERJUQjx
	yJLpaPJ30rymWZtGJAm8eQc28agKChLpb/udPmGBLTHQ3yqsnXKM1JEVALJOwy4M
	OCmAaV79OkSwA+eJ02OSQ5MRbYLqz0dgATCyT+fvw==
X-ME-Sender: <xms:1hYOXkP8VwyedGtlhO1v4YuKRRYt2z-8RXH1jpTrwzzx66NF13fwgw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeguddgkeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkfffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghulhcu
    uegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucffohhmrg
    hinhepghhoohhglhgvrdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghenucfrrghr
    rghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucevlh
    hushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:1hYOXjUjPPt2jfQUB72CLGyBzGfGDFe6S-8EEckUIoWm5yWJ3A_38Q>
    <xmx:1hYOXljhTwya_WS-gd2kQdVvw75lNuwrKWsdhXV5cFjdq3Xv7KaI1w>
    <xmx:1hYOXhQMdyeQHD-fgPEbolEJC-WkN1vDE51ivcD2aaEKvw_tiBWg0A>
    <xmx:1hYOXj41LOAn_GcPHlKI1rsKtWjE0_9uuAnej378OkyyOqIIr30h2g>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 8B066E00A2; Thu,  2 Jan 2020 11:14:14 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-694-gd5bab98-fmstable-20191218v1
Mime-Version: 1.0
Message-Id: <4da12490-f369-4b10-aeee-5dd1e2f88b30@www.fastmail.com>
Date: Thu, 02 Jan 2020 16:13:33 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "Yocto discussion list" <yocto@yoctoproject.org>
Subject: Yocto technical call times
Content-Type: text/plain

Hey,

I'm just updating my calendar for the new year and spotted a bit of confusion.

The website page https://www.yoctoproject.org/public-virtual-meetings/ shows the meeting times an hour earlier than the Google Calendar at https://calendar.google.com/calendar/b/2?cid=dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ. I'm guessing the Google calendar is correct so the public virtual meetings page probably needs an update.

Thanks,

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd
