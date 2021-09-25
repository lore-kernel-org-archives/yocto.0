Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B254C433F5
	for <webhook@archiver.kernel.org>; Sat, 25 Sep 2021 22:58:43 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web10.12412.1632610721609202201
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 15:58:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=RAkOIFaa;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.19,
 mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id EF14B32009BC
	for <yocto@lists.yoctoproject.org>; Sat, 25 Sep 2021 18:58:40 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Sat, 25 Sep 2021 18:58:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:date:from:to:subject:content-type; s=
	fm1; bh=XInWt/31ufH6tyvjb1dGOvm5ubinZtj0UHkrhW8cwLU=; b=RAkOIFaa
	Y5fz8MNgivPczjQGvzu2tJ6l2RwpyHWYq/lCLg0VphDtRqWngoyKrKBKWMRg6sgv
	ooIdYQmYbdKP0HSccMGGbqUclEkqVDmv/fHxaICPL6mhAHcB47IHf7KrwBmn7v17
	nXb/QoMjBh+dQlPv41x374UJXis1JVhdPPwRsX7HP1ESondfs/awZF+bGqju2ExY
	QKSgQBnQeh3kFhOiyzmN1apberJTVLPjR2RD9Iyv+b1iEbJm+DVtp0PUxwv1FFBd
	+kPHJDWWk9cGL2IHQHSxjiBdqDXuwtMJKsk/R7rr+J8KIGEqOanEbTUpmKrOnNhM
	8h6PsyGBLATYNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=XInWt/31ufH6tyvjb1dGOvm5ubinZ
	tj0UHkrhW8cwLU=; b=py51rOZIi2P+Q4+UxqQ41uChrRWcaBjgdHoVO8pTIZmIU
	Xv2jE4Ddo2Fgjf61X+pu3FpJMBNQKWW8tyr+Dz7f9B9Qblkr+HJDm76MhK2OCEOV
	5pWtdjHuJjsVFzv9gO9SKmWORTGzgsn4ef/10QpCmFfPjO4gDnahbdkejLj14Tv0
	FciII9Glj4JPbNimbiQdsZPZjCabc5qsaPDyzRqDdTXkleWO6fGZGgiyoKiWpIGG
	ku9+KWetX6VFcI6teog+6cj0FhrnNOxUKGSHpA3fRsSHsGr8rS+7ajBc2Y21fUXW
	JX0ankd0bMY8PBzmm7U32G1mK8vzIb2RSSTGvuDLw==
X-ME-Sender: <xms:oKlPYaeGlFjQl47BdY7ExT3YZwV38Ru5LLz7g5tsFBRJp791vVk70A>
    <xme:oKlPYUN7IWRMFo0jF2kDxarRF1aY9zRTFDnGV3siZ5u_lM90Ava1RlNYQ2NAXDMTk
    wOQvBiPRiIA1wjU>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvtddrudejgedgudeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmne
    cujfgurhepofgfggfkfffhvffutgesthdtredtreertdenucfhrhhomhepfdforghnuhgv
    lhcuhggrghgvshhrvghithhhvghrfdcuoeforghnhggrgheshfgrshhtofgrihhlrdfhof
    eqnecuggftrfgrthhtvghrnhepudelgffggeeuteeljeekieefgfejieduleeftdfhkefh
    feduvdetffevueehkeetnecuffhomhgrihhnpehimhhguhhrrdgtohhmnecuvehluhhsth
    gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghs
    thforghilhdrhffo
X-ME-Proxy: <xmx:oKlPYbgFJGrG2zD4ZxbI4x_UpkylomsW_PeiRQuf8w7GtNcBF7XtGg>
    <xmx:oKlPYX8r_ahmgAmwmebCCxfvuvEsMOZ975PEob5wgfaLA5xI7iznmg>
    <xmx:oKlPYWtjN-D4cTnKyHqLZGaI7vQAK339Yu6u4bZmU1pY3hz5JZ55FQ>
    <xmx:oKlPYU5_OmZIbfW8hdfgJDktHxs7Nl5wGUhag9K6zlzR8JCgvokRvQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 58C653C03FF; Sat, 25 Sep 2021 18:58:40 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1303-gb2406efd75-fm-20210922.002-gb2406efd
Mime-Version: 1.0
Message-Id: <7263729e-c1d9-4020-93f5-292dc4d4a8b6@www.fastmail.com>
Date: Sun, 26 Sep 2021 00:58:19 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Gtk+3 applications are missing icons.
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Sep 2021 22:58:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54857

Hello all,

I built an image based on core-image and added the package gtk+3-demos. I'm using wayland with weston compositor. Unfortunately icons seem to be missing. Can anyone give me a hint on what went wrong? I'm on Dunfell.

Here's a screenshot: https://imgur.com/syLzQ1l

Thanks a lot!
Manuel

