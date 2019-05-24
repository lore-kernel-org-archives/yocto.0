Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FD5CE00CC9; Fri, 24 May 2019 03:06:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [66.111.4.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E93F1E00CAB
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 03:06:20 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id F169E20A0E;
	Fri, 24 May 2019 06:06:19 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Fri, 24 May 2019 06:06:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=NKO+tFA8Gp7LtOgfmlAQnALzBQCPAEX
	7J6QFy+BRGg8=; b=SzuTssjlSTuidPg8piN+C0dNDlVGMyb5qDVwFpD7qeSqENc
	wZo9PnjOXllVaJgZeORzBcBbt5GnQCuKz6cDBJja8Bpl0GxZH2iJ4e7p2W3/7c/G
	B4jM6MUvcu/bMvr0SqURkasUxuuPmJoORzVZ5kyIfqAowdkrNmYGFNM/vDWEntk3
	8XiRzIYErRO6qnP/bSd+2kdNmewHIb0RyCbPlG/xSRbE8P+XqdsxTIewfY53uUEw
	RRUKdvhzpRQOaY6ehz/OQHhKBbbFaKpl+pqdEYURpm4QIJiQqVPtx07uR/SgSzIS
	UR2WGKDhLKqs7L0jBuJWIR8EhLXeb7tw5QARefg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=NKO+tF
	A8Gp7LtOgfmlAQnALzBQCPAEX7J6QFy+BRGg8=; b=QKAXJcK8Jlmpdcyv7rqEmW
	xrBiK5KOELDzDkklqZczFkoBy2V+pRMzYDueHKNJXBFBYepnPXTNwMNnO4w6ozcA
	gP1xlyxFkA8yHmj5VPjpLfZ4XJV4M6jWLP8LEaYem0ywf501IER29rgnmrTMofd3
	u5H49vLtMEVBGo/8TN6NmerezgjXlr+GEXm0YC7yY+mh4WCHBZch2NwglR6fzWlw
	pMii5oRl0Ds0oZWgACJ5kuYmQUb/MuM0msldRbEEORmlxmrKZb5z9s+FgXUTNwF5
	oHg89yYWxt0nwcmmnD5m0kzetRX4wYLpzFb48tzwmmT5xbpaAdGa410YpYP1hnAw
	==
X-ME-Sender: <xms:G8LnXHQbaudkFg7zFS59fFjsNiw8_elbpViEZk9EZTBxtJwdvI5l9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudduiedgvdefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghu
	lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucfrrg
	hrrghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucev
	lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:G8LnXE4XahwCjBhu9Xuhoyx5aW9i_ucNiT0hPQStguak78ce7uGIxA>
	<xmx:G8LnXIpMTrLZ0RU1jxi-7SptmI6nURVLX1XbvWZC1gYMpqgoVmhARQ>
	<xmx:G8LnXAUurxLygJuIfxliFL2CmfuBDqfv2kozalQ97kYQIpYbBjsZMg>
	<xmx:G8LnXJL0Cl1hYNI0nAQFzQiAtdx5QnRrKNS4Y9BKaTNBz24-7lpN1Q>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 4C1F8E00A1; Fri, 24 May 2019 06:06:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-550-g29afa21-fmstable-20190520v1
Mime-Version: 1.0
Message-Id: <01373147-6208-49d7-a89f-f24805ec406f@www.fastmail.com>
In-Reply-To: <BN6P197MB0049968C75FA030D5575CE4DFB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
References: <mailman.14370.1558531613.2881.yocto@yoctoproject.org>
	<BN6P197MB004909BFF82584B53EF5DF24FB010@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<d10908a2-a6ac-5011-c629-0cf9de89cce6@gmail.com>
	<BN6P197MB00490F98551A58F58C80FAA7FB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<99738dcb-c223-6a19-0f5c-3d8fb0ee31c8@gmail.com>
	<BN6P197MB00494FED4E8CA66ED4885186FB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<BN6P197MB00491399D0212199DBD595BBFB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<7e022cfe-3db6-428f-97bc-2bd337bf3d3e@www.fastmail.com>
	<BN6P197MB0049968C75FA030D5575CE4DFB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
Date: Fri, 24 May 2019 11:06:18 +0100
From: "Paul Barker" <paul@betafive.co.uk>
To: "Tg, Harish" <harish.tg@aptiv.com>,
	"Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: EXT SENDER - yocto Digest, Vol 104, Issue 95
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 24 May 2019 10:06:21 -0000
Content-Type: text/plain

On Fri, 24 May 2019, at 11:02, Tg, Harish wrote:
> Hi Paul,
>                I understood what you are trying to say but from where 
> does the Yocto pick up the contents for a directory in final rootfs 
> image. Is there any recipe file in which I can find this. For example: 
> do_install() etc.
> I also came to know from you that I need a recipe for adding a file 
> into rootfs image. That's well understood. Please clarify about the 
> particular recipe file where the contents are copied from source to the 
> rootfs image.
> 
> Thank you for writing to me.

This is all covered in the documentation, online tutorials and several excellent books. I'd recommend you set aside some time for learning here as it sounds like you're not familiar with the basic concepts used in Yocto Project.

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

