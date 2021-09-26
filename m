Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC15C433F5
	for <webhook@archiver.kernel.org>; Sun, 26 Sep 2021 16:46:39 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by mx.groups.io with SMTP id smtpd.web10.20411.1632674798431409299
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Sep 2021 09:46:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=LA9YKqtR;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.24,
 mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id CC3AD3200973;
	Sun, 26 Sep 2021 12:46:35 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Sun, 26 Sep 2021 12:46:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=Lpipj1YncpwO5rbRDVtfRzVV+PgKxKd
	e47AN6ruIUUg=; b=LA9YKqtR39C8FaHiBRVJKopBICEn1E7nADSgbmgXTRgTdYv
	3lBhfkSV0/S2zC2rvORexGneH8d7eFo5i+vS1ejnRA+nE/PKDJG9mB4RzKXKsdzz
	uRuy+p1mefxGQRUy9Ii7ZLtbrX8I5f9eNkhb1pQhaXCe2SbfGc3Y6zs3YTimgZsy
	YAARld5I2EQFZNxy0EA+IBB+eagcPaTi813QIxMq4kuxbtyInsjT39UUV5KBj15y
	3LF1inzFZfGnKX6WLkYcYmQaDhsMug/x99/a6oKIG90LZyQFk8zoVd10cTGEC/pi
	4tkm18bx1bw21NZe5NeO9dFzVPVAzz6w+cthP+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Lpipj1
	YncpwO5rbRDVtfRzVV+PgKxKde47AN6ruIUUg=; b=VYYOUid3VeqJ9OmuUEw5nj
	QFPT6iy+etXpJbsefYAL6RDbD6oMRwAOKuqF9jStEBSC42me6ZZL0UbcAdDCzOPo
	i3KoH7oAPvPAkEA/aZk/BDO3qb3/zYHXtagZ0YXFuEVv49QYJVelDyC+3oswi4Ua
	iyl+aTlJWVsCebCqCVWhNuFPP4vf0b+EFDrMLvzAPCiqS5WuYCQTpa+J23FWIyvx
	n8XZYLiePBSrWmh/8F83bsmpnptFYofQdPQLHPgYBtnY61tpwnS65yTO13kJ0VjZ
	CSRWJplvA7BMw8VA6xKO1zTPUuvZNBHSQqyir542EX1mQ8imL96nUMs30HXBqLhQ
	==
X-ME-Sender: <xms:66NQYSKTSHivxdTc4jbFAbyqYCv5DNTfqtJGvLvIrvYuwaTpO34Kfw>
    <xme:66NQYaJNZdIFR7Lak3UanU49b_s1hPYPvAsEdhlGC_mbCCsbAHCFZqMWJmebS6Wrk
    Sorg2JIpi1-KcOS>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvtddrudejiedguddtfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enogfuuhhsphgvtghtffhomhgrihhnucdlgeelmdenucfjughrpefofgggkfgjfhffhffv
    ufgtsehttdertderredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthh
    gvrhdfuceoofgrnhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhn
    peevheejfffhuefhveekhfevffffudfgiefhjefgjedvieekjedugfehjeevveegvdenuc
    ffohhmrghinhepihhmghhurhdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgr
    rhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:66NQYSvymZ3XkGxIyX0R3rCo66h9gsTHYXhUCzu4fcn81zilGSxaVA>
    <xmx:66NQYXYqpjjXGRPTBffsvX1LuaO32aGCDjGtdF4gPKWBw3N7N82uhg>
    <xmx:66NQYZbc8R0g0SU1SxrVqjEOzopl9Evr34up3CxbiX5PfspA5FJBrQ>
    <xmx:66NQYb3SdFAWNWdIbfDslRbcsR4loh7stsLcjdOppYM4VnbngKNqeg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 529753C03FF; Sun, 26 Sep 2021 12:46:35 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1303-gb2406efd75-fm-20210922.002-gb2406efd
Mime-Version: 1.0
Message-Id: <97a41034-581d-4498-9470-9d38e41a4c5a@www.fastmail.com>
In-Reply-To: 
 <CANNYZj_-WnP6jBMM5V3PLZ4Xy30rCi40PPsnYqW0pYbEnWoHGg@mail.gmail.com>
References: <7263729e-c1d9-4020-93f5-292dc4d4a8b6@www.fastmail.com>
 <CANNYZj_-WnP6jBMM5V3PLZ4Xy30rCi40PPsnYqW0pYbEnWoHGg@mail.gmail.com>
Date: Sun, 26 Sep 2021 18:46:14 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Alexander Kanavin" <alex.kanavin@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Gtk+3 applications are missing icons.
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 26 Sep 2021 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54868

Hello Alex!

Am So, 26. Sep 2021, um 12:11, schrieb Alexander Kanavin:
> The icons are typically provided by adwaita-icon-theme, so you need to check whether that package is installed, and then whether it's missing something. strace may help so you see what files are the demos trying to open.
> 
> Alex
> 
> On Sun, 26 Sept 2021 at 00:58, Manuel Wagesreither <ManWag@fastmail.fm> wrote:
>> Hello all,
>> 
>> I built an image based on core-image and added the package gtk+3-demos. I'm using wayland with weston compositor. Unfortunately icons seem to be missing. Can anyone give me a hint on what went wrong? I'm on Dunfell.
>> 
>> Here's a screenshot: https://imgur.com/syLzQ1l
>> 
>> Thanks a lot!
>> Manuel

I had the same idea right around the time you replied. It worked!

Strace is good advice, am using strace now to track down that one missing icon. (See my subthread.)

Thanks for helping! Manuel

