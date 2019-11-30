Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.7934.1575116236184298950
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Nov 2019 04:17:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=CEtseIno;
 spf=softfail (domain: betafive.co.uk, ip: 140.211.169.56, mailfrom: paul@betafive.co.uk)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB01EE00E1F; Sat, 30 Nov 2019 04:17:15 -0800 (PST)
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
	*      [64.147.123.20 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31A71E00E0D
	for <yocto@yoctoproject.org>; Sat, 30 Nov 2019 04:17:14 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id B3017651;
	Sat, 30 Nov 2019 07:17:12 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Sat, 30 Nov 2019 07:17:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=yo5v/+a3mpD6DnYj6oACjnsg42vhK3a
	Av+YxstBV/IQ=; b=CEtseIno/NTxr+hMrsnxcYgzQ55bSgPEAMPpqTGg/Uchd2K
	dKMmLupwhts35Cyh0+X+UbwHZ0ax/YlcNcYEDcZoBXWoNcOsGRKvpsKJosAJ7h+U
	ZACAH1bv1XJHe3LbB1nnFgwvCqnPsyAIS4NiDxAXNEDPwQGk5LXuBWms+WRimKtc
	vjhd1r5lhruJMsjJQeTIgdQxRcNCbItQWw0c0e3no3mffehRisztQa8HH7+EZ78x
	XFiwGQA5REvu+ambdDnMIeX2TjpTqIsH4KHxkSoX2jN3zhnnq0dI8s/1AwGwqgdo
	hAqht0nsH73kHIg19ONE0UYasrtJS9lCgm1NxVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=yo5v/+
	a3mpD6DnYj6oACjnsg42vhK3aAv+YxstBV/IQ=; b=GIViF3Jq2x8OIY+PxcWzkn
	EucUuvBEyaEKF0/LM4g5jqVpvZAm5SD60g6GXiderdZzZKuKOhdWb5hBwBcnLkI8
	qAKROrjRj86j1e51+B7tXAnBWtdDpicne33W6Z23iKRaMYj+ogSdC8zWb0nN2Qks
	FEzas2vd0BiMrRH6j0Uan8XAmy6mZbNlK6zSRwBTBy9zT930DmzRhARu6ziU0y2s
	iIfop1NpWWJntr/b0kzWqCTfUMj/ZejIzJxvftvJfEt4/XfMbvSAXjJzFx7Ssx5m
	VhBUYrV00uwwrZq+fICsQ36cgoZax0mPz9b+wY+8vGQGQEjojDgJwiMe/YLHav/g
	==
X-ME-Sender: <xms:x13iXQc8JtyOmhK5Q9PA3BqFuyGH2TTrmg-55lH37vuQBXP-n-H5jg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejuddgfeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghu
    lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucfrrg
    hrrghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucev
    lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:x13iXfy07WlmrILS9CsZEWmjLqTdwMIDSJdhJdqhNHu1CYZYLeiHNQ>
    <xmx:x13iXX_lz5ntkW9lccdETToiHxB53iwhEuBH2SAhAf6K27AheuZvEA>
    <xmx:x13iXXilfUA0b0npV0_dtGZjZneYKidxc_Cv1sY_LQ4KJRWWoufKHQ>
    <xmx:yF3iXa8TUFEx7fFUaVnU0Rqgxr7TVk7p46Rma2Sy5Ru9-AEHGj2VXA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id C96C6E00A5; Sat, 30 Nov 2019 07:17:11 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <d9a95079-1039-443e-87ec-b2d9c27e7296@www.fastmail.com>
In-Reply-To: 
 <CAA=hcWQnC_W636fec-dk5HBqTZDkfa0cWCbBrkV6YwnJG+NMfA@mail.gmail.com>
References: 
 <CAA=hcWQnC_W636fec-dk5HBqTZDkfa0cWCbBrkV6YwnJG+NMfA@mail.gmail.com>
Date: Sat, 30 Nov 2019 12:16:52 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: JH <jupiter.hce@gmail.com>,
 "Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: [yocto] Mising init and systemd binary files
Content-Type: text/plain

On Sat, 30 Nov 2019, at 11:28, JH wrote:
> Hi,
> 
> I built a Yocto image, but could not find /init, usually it should be
> a symbolic link in /init->/sbin/init->/lib/systemd/systemd, In
> /lib/systemd directory, it only contains a subdirectory system, all
> other systemd binaries are missing, many system commands in /sbin are
> also missing. What could I get wrong here to miss out all systemd
> files?

Are you using an existing image recipe or writing your own? If it's your own, do you have packagegroup-core-boot included?

Thanks,

-- 
Paul Barker
