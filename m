Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA46C433F5
	for <webhook@archiver.kernel.org>; Tue, 28 Sep 2021 14:38:08 +0000 (UTC)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by mx.groups.io with SMTP id smtpd.web08.368.1632839887962856005
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 07:38:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=Wh5HcV/e;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.24,
 mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id ACA1D3201CF6;
	Tue, 28 Sep 2021 10:38:05 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Tue, 28 Sep 2021 10:38:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to:cc
	:subject:content-type; s=fm1; bh=ncfxA2tgSotPHrk2jZCkYaCQAcKm1BX
	ouxQQKtF7xAs=; b=Wh5HcV/eePtkTWFhCJ3MpA7OGeQ7r5W24T0yoFET+DDIArW
	ZmES+cX6CoFkURzFzOQOlaCQMrohWMyJMYVQEfaKWH4sevuoZRwIUMp1a/3aNwCx
	r6VYVeNUSCgDk3viJSEJSVWnfxM+ObrICwUfdE5LG1WDdtnSw5TXnR+K59M8Nf+L
	Zvri01OGM/r7eJD6vaS7sf2IjSlXhtziP+iI7ZD+li2LhHEOoS5ujOElHrB201I/
	k9+0Ftc6YLuIOm5sO1t0mzy7YWIjlFzWD9wwR0ty3G+l5PwB08aQtiPTiQWwT+QQ
	7e7zX9tnJqfZ7DpyiyBPW6CforY0lu21wfDRQjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ncfxA2
	tgSotPHrk2jZCkYaCQAcKm1BXouxQQKtF7xAs=; b=uTF7gpo3nrDhCoZRk6TuDf
	ZXecXCeCh7gvdI3FdZ12Yk/USk9X6shAdw0ldLNfk6RluUtvJnF+3eNm1AlFoUlN
	YHml/KJlcMGLV+1+27oK2jVD7eq0mY5wk6smqW8O1HFm3QGweOLTHmwOFRlrGJzb
	7Yd6aFbTjBH6Tq46KQTmChdvzvSiNqtRFl/Z8K7Uapl8bVyBD6edxVJwLmGTpKGj
	0ZOCN5uEBRTwl0uJXH3B5gZMioOkKlk2wjQI6vujGvPlcMfbXHfyRM7B+zH/bUBa
	hY9+jYiD+V2T0Lo8oq84lo74UFO+AFRBK3pYSqPghiojN1P6B5Eo0VCUUffAaCPQ
	==
X-ME-Sender: <xms:zShTYQ7WugW5gEPjtQ7Mal5Zh4NhP84hT9pT95OmwATxDr8RAVuDtg>
    <xme:zShTYR7Uuw0Kl-AaTezrKWXwaNkl7Y6_WD7MLSKVdn1kRQqJP3U3ZH1c11VO-JpGU
    bJ0jduVhijTD5QI>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvtddrudektddgjeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsehttd
    ertderredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceo
    ofgrnhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpedukeeugf
    eutefhueduhedvffejteefgfffvdeliefffeefgfelhfehkeffudetieenucffohhmrghi
    nhepfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:zShTYfeclCC3df_xTkDfMEXryZHTyRHVOCi_9gtLZVEd4sYaPUifiQ>
    <xmx:zShTYVIr5I6RaCvfvhM_iyR60ofCE1iwIO9J2lEG_K1NkwiXZ-VOIg>
    <xmx:zShTYULi7R2WgT8Q73Lt0gN0YV-VFsHPvvI68ogW3Xr_fn50nOn-bw>
    <xmx:zShTYezBpcE3MQfmj2Rwqb3Bj_N_i94zdvNkVNAHRgzciJxfVQBSyg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 157FA3C0821; Tue, 28 Sep 2021 10:38:05 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1303-gb2406efd75-fm-20210922.002-gb2406efd
Mime-Version: 1.0
Message-Id: <322f3059-e987-47e1-b34d-922e6b9d9337@www.fastmail.com>
In-Reply-To: 
 <CAA=hcWROFMPK-pgRH4jtSgcVFadrw+xKvEBujP-ZKRYM7_=qLQ@mail.gmail.com>
References: 
 <CAA=hcWTC3_+Fg9uRC7ZnAEKhNEcF5Z_PM1WEugxQD76oFJ33dg@mail.gmail.com>
 <1e3f20d2-e557-b8fb-3ab7-d473db4eb2ad@gmail.com>
 <CAA=hcWROFMPK-pgRH4jtSgcVFadrw+xKvEBujP-ZKRYM7_=qLQ@mail.gmail.com>
Date: Tue, 28 Sep 2021 16:37:43 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: JH <jupiter.hce@gmail.com>, yocto <yocto@lists.yoctoproject.org>
Cc: OE <openembedded-core@lists.openembedded.org>
Subject: Re: [yocto] [OE-core] Incorrect systemd timer
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Sep 2021 14:38:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54891

Am Di, 28. Sep 2021, um 03:43, schrieb JH:
>> perhaps use
>> OnCalendar=*-*-* *:*:00
>
> No, the same result, completely bewildered why the timer does not work
> in Yocto Linux

Is the timer unit shadowed by some other timer?

Mind that units can live in
* `/lib/systemd/system/`,
* `/etc/systemd/system/`,
* `/run/systemd/system/`
and there's a priority.

Check here: https://www.freedesktop.org/software/systemd/man/systemd.unit.html

Didn't check, but I guess when you `systemctl status your.timer`, it shows the unit in effect. At least with service unit it does.  `systemctl cat your.timer` should do this as well.

Regards, Manuel

