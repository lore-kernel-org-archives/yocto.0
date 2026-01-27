Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 117FDD2D8D5
	for <webhook@archiver.kernel.org>; Tue, 27 Jan 2026 09:44:58 +0000 (UTC)
Received: from fhigh-a6-smtp.messagingengine.com (fhigh-a6-smtp.messagingengine.com [103.168.172.157])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6895.1769507090537910345
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jan 2026 01:44:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=VYMXS4PF;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=oqGeUzMe;
 spf=pass (domain: fastmail.fm, ip: 103.168.172.157, mailfrom: manwag@fastmail.fm)
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfhigh.phl.internal (Postfix) with ESMTP id AF3051400035;
	Tue, 27 Jan 2026 04:44:49 -0500 (EST)
Received: from phl-imap-12 ([10.202.2.86])
  by phl-compute-03.internal (MEProxy); Tue, 27 Jan 2026 04:44:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1769507089;
	 x=1769593489; bh=REyTRQvZtXFQoV3Ju/4MsFgSmnRjQFEXZUCA/nCWzak=; b=
	VYMXS4PFMg0k2QVHRqUQx161OjQbdSsDJrDiKtwyYimQVCMDtQ09Y9+/WHTd0RGf
	ygLFH4jBzUniZPjznaWz8NfTCzc6SVQRb0F5cFGGdfwf6rh5QVPnCO6gTdxtzLH9
	PyH3sI6sUTqtpWZkjE0VD84pg8XbOQtSXvC8YEKQonAkwWorGTl7pB1sSKiOpKAs
	LcilJ2hJ5reQb+A6cESjE7bcPrDpTmwVi5pRlfoDBk1DMydE26/Lc8Du7AROJou+
	uVbc30586+rC1HQsbICjMXk6MaQui9co2oKCo5lHt8ZD6q4tyyBGYKrI1CCYKXLJ
	WjFpnIOug78nJ/SK80AbxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1769507089; x=1769593489; bh=R
	EyTRQvZtXFQoV3Ju/4MsFgSmnRjQFEXZUCA/nCWzak=; b=oqGeUzMe2h8Ft9fnK
	P7S4sUU3wSlhaD4h0ieUgps+nO3F+Vzd9euwYiM+anj8xcad0yB18XoOWU8uxBj2
	mfaKjAiwwbx2WEQ5oP3K9ocD9B15cVF6g39mojBMzgt4kOQp+i/zeKl0vZddkbDX
	rlW2jlpSxPANjmQFxt1NZ8Vlkl8GKmwJINYHz2os6B2TDn/Pl8xT6VGsOTALbWUv
	SfPfpCjQpwAxb5dtK6JOMfEUluD+RohZjnwqUdjDns2UFw0cPRO1nqtHYWk2Zlki
	pxYYXccAPQGWf3pXOPEXkrPJVs8opMGSI6q5lhk/CLgSESRerPdkYTQdQSflwq2G
	/a0DQ==
X-ME-Sender: <xms:EYl4aWPKeFzD1peBcs0etzWYn1zc2O1pjeksBhEG09dfeuTE_cYGbg>
    <xme:EYl4afzxFS544GYsgYDpopEA8Eukg01tQLTtjqnu02R-qdkB6Hx9brSq7W85CY6P8
    gdON7FUwxaIrxjMPcOr4diCVK3SPKN3tFGViGerhNiDHahXuGZbuA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduiedtvddtucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefoggffhffvkfgjfhfutgfgsehtqhertd
    ertdejnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeeugfehheekje
    evvddttdekjeegjeefhfduvdevveduvedviedvheektddvleetteenucffohhmrghinhep
    hihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffopdhnsggp
    rhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopeihohgtthhose
    hlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrghdprhgtphhtthhopehjvghsthgv
    rhesthhhvgihohgtthhojhgvshhtvghrrdhinhhfoh
X-ME-Proxy: <xmx:EYl4aU6QZjx8KvpuqIxplQhJNiL57IV9FGbPnY5KTOCO5iwYu1qjBg>
    <xmx:EYl4aT3OE7HpZ2fTgopFF9hQ_-7BTXR2stX-YKPdW6216Z69hw0dog>
    <xmx:EYl4abAbvCDB_pjo2Oh9SeouI4_tvR0FklsZM9XV48696Xu8zYbytg>
    <xmx:EYl4aV3Vz7Q4ysE5lUP_16tkZSK-YStU8ENuSiwOlcCJb9oQb4rDqg>
    <xmx:EYl4aRaLjdMxHtSwmDKGTIX85y21ZmNEXXXsNtoz4DLHeB9teDekzLDg>
Feedback-ID: icb4a41f2:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 6B1FF1060065; Tue, 27 Jan 2026 04:44:49 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: AJFTZxgdnNvw
Date: Tue, 27 Jan 2026 10:44:29 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org, jester@theyoctojester.info
Message-Id: <71c786a7-871b-4444-b1d8-a5cf627351e6@app.fastmail.com>
In-Reply-To: 
 <CAEt6Nwo=Feq4d_1USjT6E4Q0LNueuxM6hxWw73VY4DBNM9y3RQ@mail.gmail.com>
References: <7b5cf64b-cac2-4346-a038-2ac334162651@app.fastmail.com>
 <CAEt6Nwo=Feq4d_1USjT6E4Q0LNueuxM6hxWw73VY4DBNM9y3RQ@mail.gmail.com>
Subject: Re: [yocto] Want to select a SoC with good Yocto support, please advise
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Jan 2026 09:44:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66194

Howdy!

Since you were so fond of Texas Instruments and I received some other ad=
vice as well, I'll go with TI for now.

Thanks for you input, Josef!

Cheers, Manuel


Am Fr, 16. Jan 2026, um 11:29, schrieb Josef Holzmayr:
> Howdy!
>
> On Thu, Jan 15, 2026 at 3:54=E2=80=AFPM Manuel Wagesreither via
> lists.yoctoproject.org <ManWag=3DFastMail.FM@lists.yoctoproject.org>
> wrote:
>> * Texas Instruments AM62x
>
> meta-ti is one of the least painful BSP platforms that I have worked
> with so far. Your board vendor might (probably) not stay up to date,
> but it's a super solid starting point.
>
>> * NXP i.MX9
>
> iMX6, 7, 8 were solid workhorses under Yocto, but with iMX9 and the
> move to meta-imx I found the BSPs to be a lot more painful to use,
> sadly. Still it depends a lot on what your board vendor makes of it.
>
>> * MediaTek Genio
>
> No hands-on experience, cannot comment.

