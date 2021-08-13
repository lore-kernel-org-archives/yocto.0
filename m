Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web12.42727.1628890140118811995
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Aug 2021 14:29:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=f4sMrdFq;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.21, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 7975D320092E
	for <yocto@lists.yoctoproject.org>; Fri, 13 Aug 2021 17:28:59 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Fri, 13 Aug 2021 17:28:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:date:from:to:subject:content-type; s=
	fm3; bh=X8cYi3nZraVjonlCLwEEm2SJWi6XoguENKeQPzXTwTE=; b=f4sMrdFq
	vjqPp+Xd0dOquOcNHQEfZuiRIOT+/Y2gNyA0nBfuiO6dfbc4CDvtSexsS7n2EbmQ
	d/yXhPaXtDKScriOeLpnEn1eUJBnWK2qfR5Vc16wq4+zf36WkkLf69wlW0B0Sf14
	VJ1hbP/zGEKQAbgMZUIXJpcwHp8Kt2OnXo/x2WXkixXvXdNZUDqUYarRT1MH8PMc
	+20h5LpnXabEtpxHdydmSvhg+DBfmTdl7CHbNVsJxzwgeHhDrbGqsgkvFPltKCAz
	7KGiwvXX1YZVdRKwWPn10ubiIEj281iSl1plAeLmTUf9Sxy2kP2GwoDKcZW2SyTw
	q+nP88/9sM0yCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=X8cYi3nZraVjonlCLwEEm2SJWi6Xo
	guENKeQPzXTwTE=; b=k7Ve2Pnl/0PL4XJM5r1vxZrN/+zi/IaH1V/KgabhpwTtO
	W9RNq94JktrDe7ebA6rJCiKOgAJBS/4lqSqWilLaLoSE85EDQpmBal2h/KC7KPLw
	tZDjOjMuxph5XNe3V0KMecivKWaGergWgGr08WrOFocXBLqLFQUOi6afTS8x1XIi
	zGwyFIMCzMXIoAivuvd35jJZIZFTSPleKiRBEqXvql08yFgdgf/+2zqCWd1/rEdZ
	WBV0fClZKt+KcjFU/4h5X8F9M0hpQcnqURAkSfpdJ3xHhOtgBCgEUl7bK1EemhUW
	sniUCdG5Y24it20qVhGkEx/MkW3EuTJP3vVk+wpKg==
X-ME-Sender: <xms:GuQWYXjOPmCa-0dlzUD_u-WMUdMd_rfksYrawmgi_6-E-5CW9FuRcQ>
    <xme:GuQWYUDV0xYW0GwXQAXtZpQdDVd_Zuo8nV_aHNPcnw00x3u7j5PILU3t2lzsmTsjh
    LcVrgegoFMX8Vdr>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrkeehgdduieefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erreejnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeeigffhhefhie
    duieefiefhgfejudefveehjeeiiefgfeehgefhtdegieegtefgjeenucffohhmrghinhep
    ghhithhlrggsrdgtohhmpdhgihhthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfh
    of
X-ME-Proxy: <xmx:G-QWYXGkKRihX5S4HrQ51gIHuJ7NnV9UiIYIyBQ_mjPryEtFgxq2JQ>
    <xmx:G-QWYUT2h47eAJw5BkzulXEC_z5dm4ZgZHCbhE2mEi7Yl3iYZX_ZgQ>
    <xmx:G-QWYUy3GBLAKzquZbanq3GrtE3Qi4Uloy71FPkA0L0x6AEOyzj_7g>
    <xmx:G-QWYT-Q_VWvqGPS_UEY4iFgLAuwEqS4YKxqn7_GV3X6udbxsx6h6A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id A06BD3C0642; Fri, 13 Aug 2021 17:28:58 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1082-gccb13bca62-fm-ubox-20210811.001-gccb13bca
Mime-Version: 1.0
Message-Id: <d99fc23e-41bc-46ef-a61b-4e6d45fab47d@www.fastmail.com>
Date: Fri, 13 Aug 2021 23:28:38 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Cannot build yocto anymore after updating all layers to current dunfell branch tips
Content-Type: text/plain

Hello all,

I updated the layers of my project to the current dunfell branch tips. See here: https://gitlab.com/manuel_wagesreither/bora-proj/-/commit/de631634d7556987d2551d0cedca8f67530bc78d

Since then, the build is failing with the following message:
```
ERROR: ParseError at /home/manuel/bora-proj/meta-openembedded/meta-oe/conf/layer.conf:104: unparsed line: 'DEFAULT_TEST_SUITES:pn-meta-oe-ptest-image = " ${PTESTTESTSUITE}"'
```

Indeed this line, and even more the one after look strange.
https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/conf/layer.conf#L104
```
DEFAULT_TEST_SUITES:pn-meta-oe-ptest-image = " ${PTESTTESTSUITE}"

NON_MULTILIB_RECIPES:append = " crash"
```

When I replace the : with _, things seem to work. I can't make sense of that. Did the syntax change? If so, why doesn't bitbake understand the new syntax? I thought bitbake is included in one of the layers.

Thanks, Regards,
Manuel
