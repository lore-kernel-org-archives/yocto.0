Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AC75C433EF
	for <webhook@archiver.kernel.org>; Sat, 23 Oct 2021 14:00:31 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web09.6789.1634997629518667797
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Oct 2021 07:00:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm2 header.b=R3SK9043;
 spf=pass (domain: pbarker.dev, ip: 64.147.123.21, mailfrom: paul@pbarker.dev)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 9C9D73201C40;
	Sat, 23 Oct 2021 10:00:28 -0400 (EDT)
Received: from imap42 ([10.202.2.92])
  by compute4.internal (MEProxy); Sat, 23 Oct 2021 10:00:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	mime-version:message-id:in-reply-to:references:date:from:to:cc
	:subject:content-type:content-transfer-encoding; s=fm2; bh=AvhiV
	0jYI+IrllRa2aIR1jO2vhZJ47iXGYf1H9GrweM=; b=R3SK9043gFLsmxDfLrdIT
	aXaF+gUxBvg0NsX0a93E28MxhQEftcipFnf/3+yfA831V0ZZS5CyOyEogeIxQM3T
	Mj6yWuNfEB/jqm2FS0Q3gYTX4cqvNVbK66iSJZYJzgmdyFvDh3GJwP43GqBwzCn0
	x/0SWt/NIv32ECGWhmJvZ9S6GLG5W53FiFDe+j5ynbHJaAltoeJi0iosdN6oAEjI
	HpPIoDUW4cwm+qsX0FJWkr/KEft7zN1deixS4BwpDSMHOc5JmbgYjHIa+n55rQen
	cYUf5c5Z/uHdJ6X/XCv6e4Z4gH3scvbhT6aqKyWHZvWt1N2Z+bJAKedj7o7/jHiI
	A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; bh=AvhiV0jYI+IrllRa2aIR1jO2vhZJ47iXGYf1H9Grw
	eM=; b=cQ/cs4rBvgcO3hPliV/SJT36BEqObG/CEeDo1iFuMb61ch1LYp6gx4eHY
	B7PjUPM1419xwQg77RNrvwdXJQcyrEHV36WI45ksr5XQKttfCLQlq+nkfRzei1Jm
	2p7ulP0vOB2JyCI8LIfebBuWSC2LAsDR01A4x8Qn33Eb/4RbCBfEXh/AoqNIzIEF
	mn1dCBQ/EY2y0yhZn8Xd+NoBEBjM8by+5DGPM0553sZYgnC8uM9lqp3KLxKRXfl/
	P0ejbRvlflXP0VHDJNGOh5XZPXKoKXcj5o96xrAbgqaO1E98PMo98cMTAMUTSn8x
	kswiQ1WhvHL4jA+NnKF6+3ZChrNzA==
X-ME-Sender: <xms:exV0YaJorCUq23cBhc6wkDtJPqnVZK6kinGHh8tra8F_T7wXeY4ycA>
    <xme:exV0YSI1uCn_-ikmzqn-ne2Ly4b5_ga_bv4gLjynWPQ0QqpLOw2xCUtaNkdmwUJRE
    _RcUrgmly5OTp6qCuw>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvtddrvdeftddgjedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgfgsehtqhertderreejnecuhfhrohhmpedfrfgr
    uhhluceurghrkhgvrhdfuceophgruhhlsehpsggrrhhkvghrrdguvghvqeenucggtffrrg
    htthgvrhhnpeehfeefueehgedukeefffevheejvdetheeuffeivdevhfevteffveeiudej
    vddugfenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgpdhpsggrrhhkvg
    hrrdguvghvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
    mhepphgruhhlsehpsggrrhhkvghrrdguvghv
X-ME-Proxy: <xmx:exV0YauD47EmMUghkzlTzAWn5iReh8OXUzYk8WVlE3Z7fHOsbhIl_w>
    <xmx:exV0YfYdshYlSdyp5TuVJkhauuOsscgFc6sqOHw2Jb_s21OqA39byg>
    <xmx:exV0YRaKzd8LV4PkotAnvr7U18pKsnbbElRM2G1j-nmpWE0Fv1jVcg>
    <xmx:fBV0YQyydsfPuqz7xegNA0fJyVeJECXJdK6B3EK-eLaO7Zq3AqJkRA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id C451E21803D8; Sat, 23 Oct 2021 10:00:27 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1369-gd055fb5e7c-fm-20211018.002-gd055fb5e
Mime-Version: 1.0
Message-Id: <6ea3645f-a4ac-47e1-bb03-969aaa5b6791@www.fastmail.com>
In-Reply-To: <ec823e5d-705c-0930-985b-993e9e3578da@gmail.com>
References: <CdGu.1634938809417556311.RCfj@lists.yoctoproject.org>
 <ec823e5d-705c-0930-985b-993e9e3578da@gmail.com>
Date: Sat, 23 Oct 2021 15:00:06 +0100
From: "Paul Barker" <paul@pbarker.dev>
To: "Khem Raj" <raj.khem@gmail.com>, jared_terry@dell.com,
 yocto@lists.yoctoproject.org
Cc: "Paul Eggleton" <paul.eggleton@linux.microsoft.com>
Subject: Re: [yocto] [meta-qt4]
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Oct 2021 14:00:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55127

On Sat, 23 Oct 2021, at 00:30, Khem Raj wrote:
> Hi Jared
>
> On 10/22/21 2:40 PM, jared_terry@dell.com wrote:
>> How do I get meta-qt4 patches applied?=C2=A0 I tried to contact the=20
>> maintainer listed and the email comes back undeliverable.=C2=A0 I hav=
e the=20
>> needed patch but now way to deliver it.
>>=20
>
>
> Please see [1] usually sending to the right mailing list and CCing the=20
> maintainers is the usual way to send patches
>
> [1] https://git.yoctoproject.org/cgit/cgit.cgi/meta-qt4/tree/README

Cc'd Paul Eggleton's current email. Perhaps the readme file in meta-qt4 =
needs updating.

Thanks,

--=20
Paul Barker
https://pbarker.dev/

