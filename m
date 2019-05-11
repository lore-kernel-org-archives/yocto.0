Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8326DE00D67; Sat, 11 May 2019 12:53:25 -0700 (PDT)
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
	*      [66.111.4.26 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 389 seconds by postgrey-1.32 at yocto-www;
	Sat, 11 May 2019 12:53:24 PDT
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0410E00BE9
	for <yocto@yoctoproject.org>; Sat, 11 May 2019 12:53:24 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 516C426B41
	for <yocto@yoctoproject.org>; Sat, 11 May 2019 15:46:53 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Sat, 11 May 2019 15:46:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=zh1Raz6fyGPzXOwXEj9wlDg/i7amCzR
	rfmCHxcDFnhE=; b=Jzg+YKyd5/+3eobrNy0jk+Jwq206IozMIvtMicHkP2gxWfj
	glm3U5DgGXwat4PmwSHk7/3xWvVStOCrBU1bnUAARU01hX0rEnmgmEJt5G8qq09J
	TCVmVKefQ+wyOd8xwWhLMIxV2kScjKDud2jNJ512pdqzh51Bo33j7pf/MVfhKvZI
	HfqolT4JX2h8KOE+fONLTmlnZksZnQS6LljCAjd73gRw675m5+MgqVt4Nz7uTx/x
	Xva9+GzmGJ0JyQTWby46wfKdRyw5BiXmtRfqmHmU6ek7KiIURzk+7U92dZEslHPe
	Tg3XM8iKSgEDMj8EHCEJLE7JBCS05Ay1YBO0u5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=zh1Raz
	6fyGPzXOwXEj9wlDg/i7amCzRrfmCHxcDFnhE=; b=ZOLp3Vwa4RyhXyWeEbN2SO
	f+ZAhxswCqU0qjQ+C30WGPiZpbIDAM/gLvFaxGuj1UTRGP6XjojqAQc05mDh3yvr
	pLZlDm2VdSOwuN6rHiu9LIFxT8ctni8QVF4kcQRs606aXXzywOWL3SyU7XwS5qlz
	UY4bFRs0TUR7nP2L7z+GgvFdofm2MxMFWKolqvoFqycFLW9WQfW0J4G01xaBudG8
	LQg3vmb67kP9HbRRPD5hkA5pqWZrYLEHzwbiP4JpytZt51RBeaZDM0ePgyct4Tfm
	9s2ksb8v2uubsFnoCP/sEzqzplFatd7s+RMbiop3rWhX9EERnLN+PyFjO0Gmgydw
	==
X-ME-Sender: <xms:rCbXXGNGA03i0ArJFSNNcSCgf-HAd7AFufcyes5MfQtaQzCmQMHflg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrledtgddugeefucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghu
	lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucffoh
	hmrghinhepghhithhhuhgsrdgtohhmnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghu
	lhessggvthgrfhhivhgvrdgtohdruhhknecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:rCbXXFWe9ELloP_fVMd0U91ppGEKGRXFf1CQeheNTpdNL1-CSzQHSQ>
	<xmx:rCbXXObVfXNet0VA4lmJOzDMCTQEEUoJVX0VxvOsZA_t4L0YYE_EXg>
	<xmx:rCbXXCtomnzEDcslVnw3L8wAVaKk1ZSO0taqrMkk1LHvAm_sfhX4ww>
	<xmx:rSbXXARVecc-mpYJvRR5A8MAg4JNKCjglCYOyVBb5RbtFEiA5HwwOQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id B31647C3DB; Sat, 11 May 2019 15:46:52 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-449-gfb3fc5a-fmstable-20190430v1
Mime-Version: 1.0
Message-Id: <1b045887-43ce-44c6-a5c1-0fd85944cd93@www.fastmail.com>
In-Reply-To: <17b6446a-7ca5-5bb0-2c3d-0d482ac226d5@innodelec.ch>
References: <17b6446a-7ca5-5bb0-2c3d-0d482ac226d5@innodelec.ch>
Date: Sat, 11 May 2019 15:46:52 -0400
From: "Paul Barker" <paul@betafive.co.uk>
To: "Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: linux-raspberrypi_4.19.bb unknown commit
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
X-List-Received-Date: Sat, 11 May 2019 19:53:25 -0000
Content-Type: text/plain

On Sat, 11 May 2019, at 20:44, Jean-Christian de Rivaz wrote:
> Hi,
> 
> I try to use the Linux 4.19 for the RaspberryPi from the
> meta-raspberrypi recipe linux-raspberrypi_4.19.bb but the commit
> ab8652c03fa081b27de7e28a74c2536cb2aa3e5b from his SRCREV don't exists
> into the repository github.com/raspberrypi/linux branch rpi-4.19.y . I
> searched that commit on a few others branches but failed to find it.
> Have anyone tested that recipe ?

The upstream rpi-4.19.y branch is still unstable and they enjoy rebasing commits. The breaks the commit references used in our recipes.

For now I recommend sticking to the 4.14.y kernels for Raspberry Pi.

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

