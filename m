Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 224E1E00E4B; Thu, 14 Nov 2019 03:11:47 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0DE7E00E42
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 03:11:45 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id BA8F520C46;
	Thu, 14 Nov 2019 06:11:43 -0500 (EST)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Thu, 14 Nov 2019 06:11:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=2gIdwj8j6OWFvkv3rKIvMVj5AnOC+uO
	k1YPABAnNG0k=; b=Cegorzat6kVNKhq0vfsIoo5U/a0f7f7+urp0L1Vs7qGUZlT
	yXL9lRsHleg3OQ8IKjmEE6AxRc7Ji/HheuBmBRIQA0z4HAf4oGCIT0dqN22ok900
	ZEXMUcfk2oqjtfaBXUv29hgCajyDoNiCTuNv03TxbESjo5b28HlrxBgr/BtzbLBX
	QOS2eOBeg4z4emZV+FHC88lZ7fmAtRitPzPbVwvVDUQF3lP+Bb6XL0Gsbsn87LlW
	QA/Y0UhOXKSXaYFhAUZ10mq/ryUiZBVWHCXDekAv+BMc29TMCTNvbfF6w20WgjGg
	dAy3ZMlSxMtmcI/0ig+Fwx3Kp+p7bv+Qk0hT+Zw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=2gIdwj
	8j6OWFvkv3rKIvMVj5AnOC+uOk1YPABAnNG0k=; b=UhVbRfNzeYlFI6MP5bGcrC
	4dw3mZFK9ZbAOgsd9TTYL2cDTBmuGUOrIYZuaPzZKE8O0W9CB8jWy+CNYn5GZVaz
	SJVD9O83L3EHgAFkIlAF1+oDpcPIsDqmiQkWAMsgBlwm55jxno8ido1r80APFQTB
	WPBbpT/ebfhKIEzZIq5ykMeCHZVSkpOMB89h+aM40oHmgg959b6D16j9yw73Xr10
	vK4Ssz4pZG/OXXHQ9i1AqSvXGcMP1fRi5B4y3SbYfitPGMMnZIkYghgpEuZANAwu
	qVWKZnchASMh2F0J8XdxMvMGHTR+AfSIoYnyHGzL2ZY9lDbVuEvYCdLatDelqXtQ
	==
X-ME-Sender: <xms:bjbNXazJaT6b5CJjZfJD9VzLgTsVzAUPETxpgWZ-qTbpxz7z-kC3UQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeffedgvdehucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdfrrghu
	lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucfrrg
	hrrghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucev
	lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:bjbNXYFRdLYzsUxKQjTlji7NcWF5R1ZAzk4WapEZJLRBmhIS2EQVeQ>
	<xmx:bjbNXeHDEdA13_RpxTLV7LJ1ulvA6XU7DPZMqDmCwpMUiwi0kzo_eQ>
	<xmx:bjbNXRtXGgejqw5t6FKKMzqiEKl7a0pDkwuyK0Sd82jFl_vO82sdgA>
	<xmx:bzbNXUwcwvAL_IDMyqUvW9C3tvfolyw6GM1oDvV0dJJYPxCXeF7PVg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id B4175E00A3; Thu, 14 Nov 2019 06:11:42 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-562-gfd0633a-fmstable-20191114v1
Mime-Version: 1.0
Message-Id: <b8da947b-b904-4f54-9b61-39a6ff395ad1@www.fastmail.com>
In-Reply-To: <20191114060410.37069-1-hongxu.jia@windriver.com>
References: <20191114060410.37069-1-hongxu.jia@windriver.com>
Date: Thu, 14 Nov 2019 11:11:22 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "Hongxu Jia" <hongxu.jia@windriver.com>,
	"Yocto discussion list" <yocto@yoctoproject.org>, pjtexier@koncepto.io
Subject: Re: [meta-raspberrypi][PATCH] wic: add swap partition and set	/root and /swap size
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
X-List-Received-Date: Thu, 14 Nov 2019 11:11:47 -0000
Content-Type: text/plain

On Thu, 14 Nov 2019, at 06:04, Hongxu Jia wrote:
> - Add swap partition to workaround memory limitation
> 
> - Support to set /root and /swap size, 4G /root and 1G /swap by default
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

These settings feel distro-specific to me. They're not required for how many of us use the Raspberry Pi so it's best not to force them on everyone.

Thanks,

-- 
Paul Barker

