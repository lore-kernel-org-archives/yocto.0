Return-Path: <tanuk@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8DC0E00DAF; Fri,  1 Nov 2019 03:01:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [66.111.4.221 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 379 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Nov 2019 03:01:23 PDT
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
	[66.111.4.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8708E008D9
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 03:01:23 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.nyi.internal (Postfix) with ESMTP id 3E30665BB
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 05:55:01 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute5.internal (MEProxy); Fri, 01 Nov 2019 05:55:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=XahPcV
	PXGiRk8A2dS1lYhj6vFfL9ith4S4aHjnQGvEY=; b=WaHEiGzZffObeAN32oJI0E
	v7uj22MD86cfD7HQDhSszUQaRy+cCwDaGmjK0a7aINUm09j1nkoeAWYMAK/vHeqi
	7GH2cp7U/9FvpmiD6Zih9kel9aXAkSA4Iu6uFw5GV4fbPdVqmvGcouJMkdyk5qvS
	7PibqDyEiX6ujuU9dGla1UFsVW9KK3CjEmJulJM5mOoJqZZeU5k9w3ZbeW4O3YKw
	mTvECc6anJhNYgXJVVkLv2hrbga6Me0B2zAGK4SeIyt+I243hlNvYBbwt3bYODjA
	AEhXC8qzQzyi0srPdsiJpbI6UKAzY9DjrePu8WuliVL185FjhCOWYW6H1x4ShHkw
	==
X-ME-Sender: <xms:9AC8XSVyotM2rP8P5nLOrRck5Eobnor2IVzlk6x4qDfPoNrxBzMX9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddtjedgtdekucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucgorfhhihhshhhinhhgqdfkphfpvghtfihorhhkuc
	dlfedttddmnecujfgurhepkffuhffvffgtfggggfesthejredttderjeenucfhrhhomhep
	vfgrnhhuucfmrghskhhinhgvnhcuoehtrghnuhhksehikhhirdhfiheqnecuffhomhgrih
	hnpehlihgsvghrrghprgihrdgtohhmpdhgihhthhhusgdrtghomhdpqhhtqdhprhhojhgv
	tghtrdhorhhgpdhprghtrhgvohhnrdgtohhmnecukfhppeduleeirddvgeegrdduledurd
	dutdeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehtrghnuhhksehikhhirdhfihenucev
	lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:9AC8XS3N-P9G-4f9X8WiBE-Ek5RI-XpQE4NPpvWL84FOhHxbFHdGrw>
	<xmx:9AC8XRa3bHJdw9ddVaeToLE0W6oCWYkvFDc1NjTszWP7_WxoIFWwoA>
	<xmx:9AC8XdrBDlAKRg6ixIlDsBvSAt3gr2dBNprnABpSYbX_qWH0wfdiVQ>
	<xmx:9QC8XUBx36h-0wVyJuq7j1CtVfNq457f48GfqIhCGbHH3roLAEqwgg>
Received: from laptop (unknown [196.244.191.106])
	by mail.messagingengine.com (Postfix) with ESMTPA id 58F3180064
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 05:55:00 -0400 (EDT)
Message-ID: <02e3bc7898c8e67ff58c0a2c6816d7cb2b6fb0ef.camel@iki.fi>
From: Tanu Kaskinen <tanuk@iki.fi>
To: yocto@yoctoproject.org
Date: Fri, 01 Nov 2019 11:54:56 +0200
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Subject: [meta-qt5] How to contribute patches for qtwebengine in meta-qt5?
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
X-List-Received-Date: Fri, 01 Nov 2019 10:01:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi all!

The meta-qt5 readme says that contributions should be made by forking
the meta-qt5 repository on GitHub, but when I look at the qtwebengine
recipe, it looks like patches are pulled from
https://github.com/meta-qt5/qtwebengine-chromium, and that repository
looks like the patches are kept in a particular order so adding a patch
at the top is perhaps not what I should do.

It's not clear to me how I should submit a patch in this case. The
patch in question would be a simple backport of this upstream commit:
https://codereview.qt-project.org/gitweb?p=qt/qtwebengine-chromium.git;a=commitdiff;h=b84e8682b312fb16b16ffb9591415067ceae69f8

It's needed for not breaking qtwebengine when upgrading PulseAudio to
13.0.

-- 
Tanu

https://www.patreon.com/tanuk
https://liberapay.com/tanuk


