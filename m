Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1121.1574466016873068020
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 15:40:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=OE4H+ju2;
 spf=softfail (domain: betafive.co.uk, ip: 140.211.169.56, mailfrom: paul@betafive.co.uk)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D8A4E00E85; Fri, 22 Nov 2019 15:40:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [66.111.4.25 listed in list.dnswl.org]
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E10DE00A39
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 15:40:15 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id B654C21947;
	Fri, 22 Nov 2019 18:40:14 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Fri, 22 Nov 2019 18:40:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=1wM+wadls2zZi6ztghlXnpRoRPNKEA9
	sjjyphzHf6+c=; b=OE4H+ju2j+EkVMvqc57Tr795dikr91LqQgPMDOYBhFZllnT
	kJJRuyOsmMRgyzxIqmQ5ry9rlfSq5veadAL9mutkFudmHwSz53r0DZUZYVNrhbA8
	vl+3w7fl4B4MHDDViCUR5fAlv77lpxr+VWLOfSZJRpAb5MOugsfh/PZhzmsANz4P
	TYB+Jnlwbck7Pk24PYH1GMQ3b90r99PVj35H58yOdxD5FR5c6dStnGCNzC/v1W/I
	eC/6fTQ6DGyzKvxRvqkj8uTkWgbnUyks0ga7Uu0fLM7B1S74neAvWWg9i+yWS5Ut
	JeZmdmzQVe/E2vspudBbFve354Tzpkb60OL0nsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=1wM+wa
	dls2zZi6ztghlXnpRoRPNKEA9sjjyphzHf6+c=; b=USxINTO6Ns158dJ6QNimVY
	xH0vNXA8JhDAXOmaz8TabT8szloc99wrPXUemmSJqNTTjysXKQmuS+R+HFHRPW+7
	z6MMByEm5hQfahIuJQrkH5nP710SKCA4zz23kxdrvCYUbtTQoONS+u+eil/4i9pq
	nCh0ehU/3BtfiZHItdVskqBfUJ2/PErpfeqIxfe8JVdIRKCUad9cl9XpjjkBuAS8
	VBdKLNjQL0DybXEJDN44Hh/18gYeWpPQu3IEiMQTtb4vavS9bdePAgFnqD8LrutG
	ad5EFWOtEggcyNB8yL+XFDhS6ng6lKjpccSEKrVdeWbjMEPhft/ToOfyksnvJdHQ
	==
X-ME-Sender: <xms:3XHYXUIdQA6r_AYD97lbNx0QoXCg_kxUO4yL1kQ6jgGlv5nLzTmQhg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudehhedguddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghu
    lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucfrrg
    hrrghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucev
    lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:3XHYXfQj2GcicNlly_JtUCuny0CbBnnll7uwrLlKi-Vkl-aqEfB7KQ>
    <xmx:3XHYXUHLHXnEnudrffsKyrXKv7TxPuzVhbGIKHbAQqxayGCFDVGpbQ>
    <xmx:3XHYXQrfyQp5e5gxmfnqHBMc6U6kXhF9Z8ISMnYUo8PdGdPFA1hAuw>
    <xmx:3nHYXW4D7k56LEo2SxOODjf1fDtdIQEEOKgexVJ4Kz2S7ekKGSOExg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id B126CE00A3; Fri, 22 Nov 2019 18:40:13 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <14b9f8c2-6343-4ff0-b85c-bbca61829b06@www.fastmail.com>
In-Reply-To: <26fca14f1bd94e8d285c466d4f98f731@iwavesystems.com>
References: <26fca14f1bd94e8d285c466d4f98f731@iwavesystems.com>
Date: Fri, 22 Nov 2019 23:39:50 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: devendra.devadiga@iwavesystems.com,
 "Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: [yocto] Memory Tests in U-Boot
Content-Type: text/plain

On Tue, 19 Nov 2019, at 12:28, devendra.devadiga@iwavesystems.com wrote:
> Hi,
> 
> In U-Boot I found some generic memory tests commands like mtest and post 
> tests. But I need complete DDR4 memory test with below algorithms:
> 
> * Checkerboard Test
> * March C- Test
> * Neighborhood Pattern Sensitive Fault
> 
> Can I get any reference code for these algorithms in U-Boot ?
> Implementation for these algorithms available in any of U-Boot version ?

You may be better asking this on the u-boot list <u-boot@lists.denx.de>.

-- 
Paul Barker
