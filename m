Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60E6FE00D38; Tue, 28 May 2019 02:36:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [66.111.4.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC4ACE00C78
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 02:36:33 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 44AE922185;
	Tue, 28 May 2019 05:36:33 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Tue, 28 May 2019 05:36:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=subject:to:cc:references:from:message-id:date:mime-version
	:in-reply-to:content-type:content-transfer-encoding; s=fm1; bh=H
	OrQzHWA23jQsPKvW2uIx+BOrzf8B8VY+EzqJUsN284=; b=jtEHYmYDccAtGaBtz
	bM5B49IT10IK1g3uC1CfDEvNe89lGo7/ppTuw/AbjpqD01clIezpTJ6NlHWysjON
	GA90AtMLsQX24cbUZYE7q0lKHwEWqtSSG57DAEa1T5Q36p0aclKq3+jHjtmGiesO
	OcdM26Zk+dIJ6XIqkK7ptELKB8OSZXpiPMKjLldYVwduiADmRuIDEt/tUla+khds
	uRmp/zGSw9qUgymhl7xuGGAuFWybCn1VFqHzaBf3IFJTf3u2VMwNZTPc9ZPirbwg
	5hTyRxJUI+FGF6jOxUl2+haYlpEfkrnozJexcjYV0htmyp1ZC7TvPu3vwDttrTue
	KQpgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; bh=HOrQzHWA23jQsPKvW2uIx+BOrzf8B8VY+EzqJUsN2
	84=; b=V6pwDPQGnaXYKzYqzbI1VUoWvZcU0wGDS9taWxC+1rf/TbjgDAOQgT3zP
	M3mNSeJhSQbQ6NJGBBL538iw1bI3jtBxIXFXEkIb9IjQb2NHlah+6VXR4eYopc9b
	A7TVogKTCfLWv/SZ5hwwNEy8H6UXID1JeIRJW/QL1U0uyTXl7o1jiGqI1mS4CB3p
	uo5+MemVwPXgDikAnEvpFFAGa52F9PQKLJ0DnMlQOFkwsxulnsetxiQJakwBYJfx
	MlRGYjPFV8sms4iPCxxM8kyu4FVzZmJHpvwZWMnGceuy6btTUR+sQSE5CXC4uzgl
	aIncGdtmHTGjjYyFOPRGgjtfyC+FQ==
X-ME-Sender: <xms:IAHtXN4JkhOxoSAgGvZq2rP78xZl3jtWvEqMqNYDnz-pkRq2ozfcfg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddvhedgudekucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepuffvfhfhohfkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefrrghu
	lhcuuegrrhhkvghruceophgruhhlsegsvghtrghfihhvvgdrtghordhukheqnecukfhppe
	ekuddrudekjedrfedvrddufeeknecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghulhes
	sggvthgrfhhivhgvrdgtohdruhhknecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:IAHtXCL1Ku6f124-gdb1fEE1I7LrSPHJ6kRjM4GCDYdEhuLrox3dEg>
	<xmx:IAHtXPUyX6hDbfhwnnDOFRSHXT79L1sYNi1es_l_rqs86CCqazuXGQ>
	<xmx:IAHtXGFYl8eM5ZaCj8KO3Md74BpARDUPjIZ8FAPFcWQ0AWa2R-uUsA>
	<xmx:IQHtXNIq0Mw0zp3rEoI33pWUpsG1l5cBvZuGRvC13Htfw5wGSOCtVw>
Received: from [192.168.1.120] (138.32.187.81.in-addr.arpa [81.187.32.138])
	by mail.messagingengine.com (Postfix) with ESMTPA id 186208005B;
	Tue, 28 May 2019 05:36:32 -0400 (EDT)
To: Norman Stetter <Norman.Stetter@garz-fricke.com>,
	"Burton, Ross" <ross.burton@intel.com>
References: <A24DC035FE5F8F4BAE7F63FB1B07D7BC5327B1@SRV24.hamburg.garz-fricke.de>
	<CAJTo0LYPsgt_8=F7bFQmSNuDrAsC9EZg6WFKoc=B0kknLq6oPQ@mail.gmail.com>
	<A24DC035FE5F8F4BAE7F63FB1B07D7BC53299E@SRV24.hamburg.garz-fricke.de>
	<CAJTo0Lb7a63q_LezyqOovtBh9DdGj9ra16MHAehipsJcwCvK7g@mail.gmail.com>
	<A24DC035FE5F8F4BAE7F63FB1B07D7BC532AD7@SRV24.hamburg.garz-fricke.de>
	<CAJTo0La8otdHXLLjH-ef_eFKavv2O7UkRasEWSjVc=S9L+3VOA@mail.gmail.com>
	<A24DC035FE5F8F4BAE7F63FB1B07D7BC532BF8@SRV24.hamburg.garz-fricke.de>
From: Paul Barker <paul@betafive.co.uk>
Organization: Beta Five Ltd
Message-ID: <acf7205f-c3ed-59c1-8c4b-ad8d1cf40213@betafive.co.uk>
Date: Tue, 28 May 2019 10:36:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
In-Reply-To: <A24DC035FE5F8F4BAE7F63FB1B07D7BC532BF8@SRV24.hamburg.garz-fricke.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building single package as image, respecting dependencies
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
X-List-Received-Date: Tue, 28 May 2019 09:36:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 24/05/2019 15:28, Norman Stetter wrote:
> Is there no way to simply force bitbake to only build the packages I 
> want, ignoring dependencies? We used to build the image like this 
> before, using PTXDist.
> 
> Everything else seems to be a dirty hack.

Can you just collect the extra packages (ipk/deb/rpm as appropriate), 
put them in a package feed and install them on-target as required?

The package feed doesn't have to be on a webserver, you could put it in 
a directory in a separate partition on the target if that's what you need.

Thanks,

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

