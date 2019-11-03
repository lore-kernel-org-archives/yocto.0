Return-Path: <tanuk@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 175F2E00D60; Sun,  3 Nov 2019 01:16:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [66.111.4.28 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D60B3E00A07
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2019 01:16:07 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id BA99D20B2D;
	Sun,  3 Nov 2019 03:16:06 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute5.internal (MEProxy); Sun, 03 Nov 2019 03:16:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; bh=Els+AvT5LssMCFeebGrFbUYmQdGOX6yToDxk6b6Ck
	40=; b=KxmU9ApSBASqyy7AI4S80NnwFd53Lz5Gdz212ntrJlWQ4bsz0YODDDG+Q
	gfljl2zahNwh/57vVmzXPYLlwvZJ6Due5BC4MVDEwJepv7vT5Q5gaN7fGUBcBtyO
	FVEhCy8Bqgw7ZfrCUDob6Xe3mr52DuO4MZZBAAWC/ZtGNRbZd8qrLFAFnDyo/M5y
	Pwcv2r2izf6fnOVu43+uoiQ2VX9X9C+V/HtQA4uTKTEqjrUkXsJIwHEjQr+61iX3
	G39tjMeNdNdUCMW4rKnwt3toeG0y/pWTcgRXRPSp24vZSrvBy5J2kLDEc9zwpKU2
	+it+EuyzrQbzqdsKO9km3TCApquDw==
X-ME-Sender: <xms:xoy-Xd7qOuUnozKCEjUlZ3HhJBArxoZVNeSYSm88WMSVknBA-NvXLg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddutddgkeegucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepkffuhffvffgjfhgtfggggfesthejredttderjeenucfhrhhomhepvfgrnhhu
	ucfmrghskhhinhgvnhcuoehtrghnuhhksehikhhirdhfiheqnecuffhomhgrihhnpehlih
	gsvghrrghprgihrdgtohhmpdhgihhthhhusgdrtghomhdpqhhtqdhprhhojhgvtghtrdho
	rhhgpdhprghtrhgvohhnrdgtohhmnecukfhppeduleeirddvgeegrdduledurddutdeine
	curfgrrhgrmhepmhgrihhlfhhrohhmpehtrghnuhhksehikhhirdhfihenucevlhhushht
	vghrufhiiigvpedt
X-ME-Proxy: <xmx:xoy-XVYcfTy_vo0aWaIbC3W3fhLQ3SJRwllycaWdMHtJAgy-lJEF5w>
	<xmx:xoy-XRbyJyLw6qrwszkLRdpMX2KGFH7wPT2gebecQ4BjMr6p5_700w>
	<xmx:xoy-XY2eNsrJdQzfjj9uiVPf7S6akzNQxgn6oJ1grDkXy562XR6Uzg>
	<xmx:xoy-XT38tNGc6-kerGvq93PpGOkbQjPJNpCS4Y0G3rfHbnYYRDjazg>
Received: from laptop (unknown [196.244.191.106])
	by mail.messagingengine.com (Postfix) with ESMTPA id BAAF63060060;
	Sun,  3 Nov 2019 03:16:05 -0500 (EST)
Message-ID: <229733c0a11026c952eb6493d0ae26b08a6cd39a.camel@iki.fi>
From: Tanu Kaskinen <tanuk@iki.fi>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 03 Nov 2019 10:16:01 +0200
In-Reply-To: <CA+chaQddw2aLFfh3GkATAjuj6Y5O26BMaoGduAKJnPikjCv2Ew@mail.gmail.com>
References: <02e3bc7898c8e67ff58c0a2c6816d7cb2b6fb0ef.camel@iki.fi>
	<CA+chaQddw2aLFfh3GkATAjuj6Y5O26BMaoGduAKJnPikjCv2Ew@mail.gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-qt5] How to contribute patches for qtwebengine in meta-qt5?
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
X-List-Received-Date: Sun, 03 Nov 2019 08:16:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-11-01 at 13:24 +0100, Martin Jansa wrote:
> This patch is already included in 5.13.2 upgrade (ready in zeus-next
> and master-next branches), so you don't need to do anything.

Okay, that's great!

> Otherwise like Khem says, submit the change for meta-qt5 repository
> like any other layer.
> 
> The meta-qt5/qt* repositories are used to maintain the patches, but
> usually only me is updating them to keep in sync with meta-qt5 and
> then syncing from them to meta-qt5 with git format-patch --no-
> numbered --no-signature when doing bigger rebase like when upgrading
> to newer Qt version.

Thanks for the information!

-- Tanu


> On Fri, Nov 1, 2019 at 11:02 AM Tanu Kaskinen <tanuk@iki.fi> wrote:
> > Hi all!
> > 
> > The meta-qt5 readme says that contributions should be made by forking
> > the meta-qt5 repository on GitHub, but when I look at the qtwebengine
> > recipe, it looks like patches are pulled from
> > https://github.com/meta-qt5/qtwebengine-chromium, and that repository
> > looks like the patches are kept in a particular order so adding a patch
> > at the top is perhaps not what I should do.
> > 
> > It's not clear to me how I should submit a patch in this case. The
> > patch in question would be a simple backport of this upstream commit:
> > https://codereview.qt-project.org/gitweb?p=qt/qtwebengine-chromium.git;a=commitdiff;h=b84e8682b312fb16b16ffb9591415067ceae69f8
> > 
> > It's needed for not breaking qtwebengine when upgrading PulseAudio to
> > 13.0.
> > 
> > -- 
> > Tanu
> > 
> > https://www.patreon.com/tanuk
> > https://liberapay.com/tanuk


