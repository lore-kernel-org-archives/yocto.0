Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA116E00E4B; Thu, 14 Nov 2019 04:41:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [66.111.4.25 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A87B7E00E3B
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 04:41:01 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 64B9621E29
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 07:40:59 -0500 (EST)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Thu, 14 Nov 2019 07:40:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=V/7D6nlwQ//oHDDI+Q9jQKl2AG52hHI
	SqqZ6K4DRgZg=; b=q5UrT8xCVhTEfuLnmVwYL+M4XEb55+wpkD7sOjFwv2cDdX7
	aTWd+pvbe0rD0h363uTJB1To9upDaSazMvcQHPDy74m142OXJflIc4NdO7NO6L5M
	lISLQJN4Fb5mJD1ShoHc0vFWS+fW8tju6EWzMerLQBU3AB0BZlwmisGv6yysfMeF
	1+YC3KQuoNl09Hx8R0SN3SQ9diEeOotvZK8DPJu2QcBeikO/MQxj4wz5dVxnmlTA
	OeCNDIDIgAteKJcYJ4CJ7akUfRQcSfSbpkYvQyaj0sBGSft4xp+qk19xvke7sW6G
	lEql0AerlzNwDRN9uNyk6bamZqtBZ6N3SsbrYww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=V/7D6n
	lwQ//oHDDI+Q9jQKl2AG52hHISqqZ6K4DRgZg=; b=kqgbhVDNFHvSk//f3N8WnS
	d510B2nfjC+qazQi2YSyQoebEMR55xlSq5K8nrQlY0PdAKGJ3tNHWZud9MM/WdMc
	wbUbW5Je3Pfdmt/C41b1T9Yyw0lk3pfCUQEnPi7bpBUefrOCYI6FBOSFT84zvjt1
	tQOlsr2xongfhIV03yiafTTj9LVfgKU2wAzErPfX595pw35s+m1I2HVdeRcU4T0H
	0YLES/L4W+CsQ3G+UXC5RHaiVVbyhVfBjZ/dI6LtkD9lCbr9MrVsVucXXu7uv1jU
	GhW3zyUW5uyc9doaBtP5qogaRb8QZ7W2oqKG4MXFP7ezxi+AKcL6Qp51fbb9XQQA
	==
X-ME-Sender: <xms:W0vNXVXDVDhun5PM2rF0f0I9-EpmqWFXKVM21bD7xZjRv7YJxHzXng>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeffedggeefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdfrrghu
	lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucffoh
	hmrghinhepghhithhhuhgsrdgtohhmnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghu
	lhessggvthgrfhhivhgvrdgtohdruhhknecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:W0vNXYPI5n8rUoFZp_Ko_9E3SBpIDhKzAEY9iPQnwwUjpe6PpQH3Fw>
	<xmx:W0vNXQ7ARpo2tOUHJKUtl4qsy8woXLkK3APQc7HOU3MvCPyvtvRc_Q>
	<xmx:W0vNXZpNGiHsgwyPJILddi9nI1r-7hF1fEWv4jd4-iqSh8oTDuXOrw>
	<xmx:W0vNXbQB2pBirWfSHPwU83QtcVN5eGeXIcL8Qz9N85LLvnLnILERRg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 1E89CE00A3; Thu, 14 Nov 2019 07:40:59 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-562-gfd0633a-fmstable-20191114v1
Mime-Version: 1.0
Message-Id: <74db89fb-7e5f-4e88-b786-60a6f68f22bd@www.fastmail.com>
In-Reply-To: <20191114073323.250920-1-hongxu.jia@windriver.com>
References: <9b25d589f66bb9a4a7850e089a5828b62ddb0bde.camel@gmail.com>
	<20191114073323.250920-1-hongxu.jia@windriver.com>
Date: Thu, 14 Nov 2019 12:40:38 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V3] wic: support to set /root size	and add extra partition
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
X-List-Received-Date: Thu, 14 Nov 2019 12:41:02 -0000
Content-Type: text/plain

On Thu, 14 Nov 2019, at 07:33, Hongxu Jia wrote:
> - Support to add extra partition, such as add swap partition
>   to workaround memory limitation
> 
> - Support to set /root size
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

If you want to make changes like this in a distro or local configuration, I think it'd be easier to add a new .wks file and override WKS_FILE.

FYI, for meta-raspberrypi we usually take patches through GitHub pull requests at https://github.com/agherzan/meta-raspberrypi/pulls.

-- 
Paul Barker

