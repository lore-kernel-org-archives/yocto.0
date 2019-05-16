Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 239FEE00B3E; Thu, 16 May 2019 08:39:50 -0700 (PDT)
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
	*      [66.111.4.28 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E4F9E008E3
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 08:39:49 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id C1EEA25A86;
	Thu, 16 May 2019 11:39:48 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Thu, 16 May 2019 11:39:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=JL+MPonTeobqsuo8e7hnzxwm/NYFeBT
	FRSvG0WRNI+s=; b=FndlBVDJezhqsdtMUkPaoiWlEtPBF4tJbU+Uesb9+NDxHYT
	7MwH22XIJU8a/uZg0aQ0Iyfo3FuCItzzD8iMakpotkvXiHhYnEVcP2HlZab1JOJB
	k+qUD9yQ5yDyrdwPLtcnPDx4aMZB24CA0qoicfP9VUjnPURyZxZ4kocJYYgkL8rK
	TPmeVEWAWMfn47pkN+CRIcrpQNcbWqzb1LHUZLTGGhBYaD7vvVXraaVVNccO+Rj5
	aVKPBgrmfdyE+3+HMAupPMNL5WSZmkf/42mTRjcjwSIp5gacg8nMtuuqCDkIhzCS
	fsDHoD8XhvDuJBviIjcyRsMqmBakk/evwmTc2Mg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=JL+MPo
	nTeobqsuo8e7hnzxwm/NYFeBTFRSvG0WRNI+s=; b=NDsluKDLli/uZfcRzl39JB
	fI23iL+ipDjHvqehp+1XhK5s1AG7Ca75oTn5L22KDdWvz2ZFF+SMLwLi1yxo71eV
	yzABb3arxoq2nSYBbebxGcltuOH/rocznnkqxm93fFneTEPRNCZkf+mjVgrTabZA
	Mvmd5OZEqR4YJGCBtYL1wcJIhJP1/GlInuai3dKh10v4KB3b9e+0QmHbi5g4ictw
	8Qo3JGvjSjp6kDwycLKdrtFJsl/p7sYon/r2o4NJxCQIMW7s9fgGWh0jPpousqEy
	QQeJCmaoRWUVkLZ9WSSjtDSuSrCx3wKldozld9fZInGqTGYmrXyfALF0VKSNg+1g
	==
X-ME-Sender: <xms:RITdXMUs8cSGQ3Ntjmul9zNEkojay9qW32VqWLgrUpjlJtKulUrE-A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddttddgkeekucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghu
	lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucffoh
	hmrghinheprhgrshhpsggvrhhrhihpihdrohhrghdpghhithhhuhgsrdgtohhmnecurfgr
	rhgrmhepmhgrihhlfhhrohhmpehprghulhessggvthgrfhhivhgvrdgtohdruhhknecuve
	hluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:RITdXEbiOexxXOWcBS4SUpCrVsol7rEk76uQ9HTVsQW2Z6jWnXcf8Q>
	<xmx:RITdXJebxTQXz_4yvl_NrdPNYWzVdlh0N67ARNTMG4u2YPSDYUwuZg>
	<xmx:RITdXO1E-9aMRnqzGg7y8z17-M6zqnQ9tGA0LIDsGmjEhgspwQq82w>
	<xmx:RITdXBS9qiSoFgVXYyuscSlChwWxKTpjWQ3vovJ1lvD0sCv80osjPA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 197557C882; Thu, 16 May 2019 11:39:48 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-549-ge400f56-fmstable-20190516v3
Mime-Version: 1.0
Message-Id: <b5e1d2d9-15cd-4872-ac8a-b578f2a9ae70@www.fastmail.com>
In-Reply-To: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
Date: Thu, 16 May 2019 16:39:47 +0100
From: "Paul Barker" <paul@betafive.co.uk>
To: "Rudolf J Streif" <rudolf.streif@ibeeto.com>,
	"Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] RPi 7" Touch Display
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
X-List-Received-Date: Thu, 16 May 2019 15:39:50 -0000
Content-Type: text/plain

On Thu, 16 May 2019, at 16:33, Rudolf J Streif wrote:
> I am trying to use the "official" RPi 7" touch display 
> (https://www.raspberrypi.org/products/raspberry-pi-touch-display/) with 
> meta-raspberrypi (most recent from master). However, I cannot get it to 
> work. As a matter of fact the display does not even show the GPU rainbow 
> screen making me think that the GPU firmware packaged with 
> meta-raspberrypi does not support the DSI display. It works just fine 
> with the latest Raspbian release (screen and touch).
> 
> I searched the web up and down but could not find anything. Maybe 
> somebody has an idea? Wrong firmware (maybe cannot be distributed 
> because of licensing...)?

I'd recommend looking at https://github.com/agherzan/meta-raspberrypi/blob/master/docs/extra-build-config.md to see if there's some extra option you need to enable. If there's nothing documented there then raise an issue on the GitHub repository.

Cheers,

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

