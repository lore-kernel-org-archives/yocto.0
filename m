Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C12DBE00D46; Tue, 12 Nov 2019 07:46:50 -0800 (PST)
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
	*      [64.147.123.25 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
	[64.147.123.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 331BCE007E1
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 07:46:50 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 9A85E30C;
	Tue, 12 Nov 2019 10:46:49 -0500 (EST)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Tue, 12 Nov 2019 10:46:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=PVo7zXYZ54/aasmTAMDvFr55ICeB0Kn
	/S6bz8LqaE/M=; b=BJqkXuKvbihADiQg+zg3u2Oz6wfGLIlkLY/wVVAQVI3XXRz
	glMIG4FMTEHi7qwoMg1vHV6Vg5pBUlnKw2PQKmo22hzC+tkJta7OtDTpqMxErCfb
	xqHhMaFWhqFqGDdt5Oi6H2uFb8spHYiUTaAF/jium6fWCMPQyFfLn0QYfsqg+oBw
	E3oqrSVMJ57Fe6mRQNxvYbvuc1hCRub79OxIAthJKx4Ry4MpbxDT66u5+dnN/u2V
	8reg5uDMUvzjYIYa14HY+KncTlD7NMlD/x1R/j651kiUsxW91eAna3ByEEZ17Y/k
	9KC4u3NAS0VVpFR2BBl6nMUEdLIm9ldyccGhmwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=PVo7zX
	YZ54/aasmTAMDvFr55ICeB0Kn/S6bz8LqaE/M=; b=IvXlvZTvFhdsd8o+lbV0jw
	EMn90ChSikNg8uDeqUK/XIzym7PUQL0AfhjkoBMa+8TgeCh5TZUV/9COYhCGtGLl
	ZmrfxmkKe3+uxK9DcwQAubwxF6k2hNzrPLDra9F/lfnPOTp6yO0vpabaxKytelwe
	+XcRUGrAkmTtqx46+RVM1hMHcwMoZSqFgoRfCmr4kGpBwi0tDkbCBZeo9en/gOnx
	t9/8tN+K5TC1PaY7MKgWIWYqIfEoGuyWTcI9tWmDlb2ls+PYoR7wLkRBKTZBdzhY
	/+HwQweVjOGHRIVqZnhDy5y1L8UPoiNbkezGun19UQxBRw/O1Dd+Qoc8E9amHbmA
	==
X-ME-Sender: <xms:6NPKXavZTdmtUc5hTXD9eJWfvyjVHimbkuLRkeiFHzXoU8NYgKZvlg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddvledgkeduucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghu
	lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucffoh
	hmrghinhepghhithhhuhgsrdgtohhmnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghu
	lhessggvthgrfhhivhgvrdgtohdruhhknecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:6NPKXXHSIw3YjKglcsrJuK1nif_92P9Z_GTVq4rDH2dduRcyWmwPPA>
	<xmx:6NPKXQ9sGgK0_Z4W89YGNe3XZ-9TZxxIIuEGPH4ezrmHecXJXiYzVA>
	<xmx:6NPKXfjhSeZEwgSYIyV1lmeCSY8C0yeHVI2fUtAI8zR63jux3WwrDg>
	<xmx:6dPKXXJmBbGzG9E-4mpt9DMkIqq1VBsNu-vapMl79_CpnyVw6p-n0w>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 5A794E00A3; Tue, 12 Nov 2019 10:46:48 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-509-ge3ec61c-fmstable-20191030v1
Mime-Version: 1.0
Message-Id: <509b816d-82e8-4ca6-ade7-f8f0370f3060@www.fastmail.com>
In-Reply-To: <37113658.2021239.1573572818816@mail.yahoo.com>
References: <37113658.2021239.1573572818816.ref@mail.yahoo.com>
	<37113658.2021239.1573572818816@mail.yahoo.com>
Date: Tue, 12 Nov 2019 15:46:28 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "gholhakiii@yahoo.com" <gholhakiii@yahoo.com>,
	"Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: Building only the app and not the Linux core
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
X-List-Received-Date: Tue, 12 Nov 2019 15:46:50 -0000
Content-Type: text/plain

On Tue, 12 Nov 2019, at 15:33, gholhakiii@yahoo.com wrote:
> Hi all,
> 
> I would like to build my yocto project, but only my applications. I 
> mean, I would like to separate my Linux build and the application build.
> I want to just have my meta-layer which contains my application being 
> build by calling the bitbake command.
> Can anyone give me a pointer? Using the multiconfig is the way to do it?
> 
> Best
> Em
> 
> P.S. If I want to be more specific, I just want to use Yocto as a 
> cross-compilation tool for baremetal applications.

You could start by looking at how meta-freertos (https://github.com/aehs29/meta-freertos) achieves this. It has support for running the resulting bare-metal app under qemu which you might not need, but the rest of freertos-image.bbclass is probably a good reference.

-- 
Paul Barker

