Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
 by mx.groups.io with SMTP id smtpd.web09.6013.1622194012494087197
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 02:26:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=M91ofIiC;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.24, mailfrom: manwag@fastmail.fm)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id F370C1993
	for <yocto@lists.yoctoproject.org>; Fri, 28 May 2021 05:26:50 -0400 (EDT)
Received: from imap9 ([10.202.2.59])
  by compute2.internal (MEProxy); Fri, 28 May 2021 05:26:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:date:from:to:subject:content-type; s=
	fm3; bh=dJ19c/RERJ1htIcF6dnFPmwkSRuwonlPukJ1E7+n3Sg=; b=M91ofIiC
	7l75sNMH+r/ZU2r50W7ooJD/7Nh+/8MdCI/LmASXzodiKkCwB6fyEh5BjRrnQvJY
	Li1efZdVTxipdEQQ0zgoiZfpI4y/m3D+6P7Sn9n2fJcV6PY5ctojcURVyAmYpTnJ
	0AYJ6YXTU1SpJVwIwINEpKmRFf9TMVEP4jcHnIhVRvKOlNk14gJ7klgBHbaZZtjn
	K2Si7hcHJv8W0qCqgMYxSN8JLm/PxLlmTzOXcnb+SF2pajguwE+MqWvy8yzrNGD2
	l6wh7aakj9WsGHy920GzrBZ1MPrdiMl1yCtqlEskABa0xD9RQeaNWdHhnwgeym+c
	aArrhKsr2NIaGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; bh=dJ19c/RERJ1htIcF6dnFPmwkSRuwo
	nlPukJ1E7+n3Sg=; b=vWovFnl5kaGBz0R11gaIu1DPHqWYRDRNZdA6Miz0TVXrd
	E98OfNo7RPooJ8IrZwhiO0Or+zf+LeCs9YCVGtFjzyvL3xRDVz68VXMIzEudgAoK
	NATzsrFThazVGx4rf1mKIEG8hjcZLrD51xIwPmne9/oJnn8EZ+2Eppy1yaiajsQ3
	7E+Fo1e886ebunbIIRFJgEXiIY5kc6y8kg/sUGLHIzgQSsEnU94toOh9f3DCF5xB
	f0Q/x6frpvnHXY6qOdnOSC1KRC0mEWnP8qULmDg+lQHyS+T4PY70rYehNH4F+/vW
	FrRsLN2kFauGU+odgytCBg1tQcKI6OMwZ5hBS5GKA==
X-ME-Sender: <xms:WrewYJ5cg4HPwEyvk9EO05i2eLxRphmST5k_1YTYTDz7bBLbxZ791Q>
    <xme:WrewYG5_wtfKsZSmySQWROZgPUiGjNyjbqHBRkEIE3Js4VkB_7egxBUr5c4oXmYm0
    lZ9TWTcR4jCi5hu>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdekjedgudeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erreejnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeeuleekgeetje
    fguefhffeuveeuhefgjedvueelkeehheeuvddvlefgtdekhfefgfenucffohhmrghinhep
    hhhtthhpfihithhhsggrshhitggruhhthhgvnhhtihgtrghtihhonhdvrdhhohifpdhsoh
    hmvghsvghrvhgvrhdrthhlugdpohhpvghnvghmsggvugguvggurdhorhhgpdifihhkihhp
    vgguihgrrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:WrewYAduFXE6_k2WWWe_NZeS8qBmplY9HWAgzYTw0gkLqyhlGz9HjA>
    <xmx:WrewYCKPUSzfqGWvPy2-vSL2J706lwxO4c3-5n-nUydZMYhl1fk3xA>
    <xmx:WrewYNJB7tCSWgYF_QN9L2-D47J6yXh5A29jrK1V5PLda2Q5jmlkxg>
    <xmx:WrewYCV9m1nFCIfoBk8e3ZgYuKL3EF6XxotraSGOfeUhV4Z9chgTFQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 4B2912E003D; Fri, 28 May 2021 05:26:50 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-468-gdb53729b73-fm-20210517.001-gdb53729b
Mime-Version: 1.0
Message-Id: <5246693f-118f-4c05-93f9-f49cbb3ed5b4@www.fastmail.com>
Date: Fri, 28 May 2021 11:26:26 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Where to define username/password when fetching sstate via http with basic authentication?
Content-Type: text/plain

Hello all,

to speed up builds, we would like to make the CI generated sstate-cache available via internet. Due to IP concerns, we don't want to make it publically available but for authenticated hosts only.

[1] indicates it is possible to serve the sstate-cache over http with basic authentication [2].

How does one set the username & password? By putting it into the URL like in the following example, or are other ways available?
```
SSTATE_MIRRORS ?= "\
file://.* http://username:password@someserver.tld/share/sstate/PATH"
```

Thank you!

[1] https://patchwork.openembedded.org/patch/130333/
[2] https://en.wikipedia.org/wiki/Basic_access_authentication
