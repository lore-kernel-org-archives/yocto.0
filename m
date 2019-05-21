Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC4E0E00D5D; Tue, 21 May 2019 12:30:56 -0700 (PDT)
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
	*      [64.147.123.20 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 333 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 May 2019 12:30:56 PDT
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
	[64.147.123.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34BD7E00D32
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 12:30:56 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 082D55CA
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 15:25:22 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Tue, 21 May 2019 15:25:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:date:from:to:subject:content-type; s=
	fm1; bh=860HOFehcE7AbyGC+O6Vy5VA4lqhtBQU0WgQN5vyfeU=; b=Ez1bcOeB
	UyC75B22gj1faM1K5tRTgLmNcO67AEeY05vjQfW+5NTyLV+frNdaPTZ/tThrDHbU
	In46fJKtO4Nm8q9dBpmZUXmUgIyWK+yCI6Xqzc8PCEXKLIbVH2Kk2bNK+GJRu8P6
	9uC5PtkLA450LXgQqq4wkRktA8dBc+rnbgskbonrqZLG9FAUb4kZ7uWhEpMNY7GF
	boJdnaYG+Bh1hYddU+NQyXhNHgBh0704//yWiG8N7wBERNnvV7A2zZInmuDksSED
	w3ILT48FS8rF+rOBCiaLBzm8R21NCkWfBQRq07eJSYDbPSFLPbpLvj2/1v/8zrR2
	oRmLs61Qbx2zjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; bh=860HOFehcE7AbyGC+O6Vy5VA4lqht
	BQU0WgQN5vyfeU=; b=4znztVtxcSZknWyJBucln6tqAksnP0r00k+YjfSfRMU3u
	/Jw54EhjQ1R+fj6gB/NXZ4CB2P1Z2nvya7wgQlUiRAaON1EHrVT4C7sfFkRaHjTM
	GAZY6ygunymDm8xw8xEA5bdESKn1iRoYCIsY66LhT+eJ6ovdgAu/8yierZf6B/y7
	tZbF89wxAR9qD0DGlyHClkNiotlRzY0k/6dqCmoxYcOniQkmcEubPEtHNY6fzrG8
	2JG+kjyH2KS8KxkNxpPn2gdRCfKEKw1c4sHD+xxA+FO8Ax0bb1x0moiQZ2SCbcT1
	E4Taa6rzFDSbGKHauslu8HBiDlPSCpv3okV4Y76dw==
X-ME-Sender: <xms:olDkXJae_iyJYA-_l_k3YKzluQzyI0UgbWiyMz_RpE33qMCjz8GvlA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddutddgudefkecutefuodetggdotefrod
	ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
	necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
	enucfjughrpefofgggkfffhffvufgtsehttdertderredtnecuhfhrohhmpedfrfgruhhl
	uceurghrkhgvrhdfuceophgruhhlsegsvghtrghfihhvvgdrtghordhukheqnecuffhomh
	grihhnpeihohgtthhophhrohhjvggtthdrohhrghenucfrrghrrghmpehmrghilhhfrhho
	mhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucevlhhushhtvghrufhiiigvpe
	dt
X-ME-Proxy: <xmx:olDkXE_dpxOq8vfLWtsM-Iq_p_l1jHxqXQJbwtj_GoVuKExmQYVsgg>
	<xmx:olDkXJG0AvdSeVuxjZ_HjEINn6DRlGdFWwdoumAiIR9a24xc9kC72Q>
	<xmx:olDkXOe4yBA0AyG1D4s0-DaTJn_hhLBzzTZ-0aeAUoyWIHjKz-hWPg>
	<xmx:olDkXDQ125bFGyozsIbLOMxCsuL92AY50vdQQh3aBZts6dvd9plx2g>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 19E067C8FA; Tue, 21 May 2019 15:25:22 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-550-g29afa21-fmstable-20190520v1
Mime-Version: 1.0
Message-Id: <605eba8c-7265-40e3-8619-81355ec46e7d@www.fastmail.com>
Date: Tue, 21 May 2019 20:23:44 +0100
From: "Paul Barker" <paul@betafive.co.uk>
To: "Yocto discussion list" <yocto@yoctoproject.org>
Subject: distrodata documentation in 2.7 Mega Manual
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
X-List-Received-Date: Tue, 21 May 2019 19:30:56 -0000
Content-Type: text/plain

Just reading the 2.7 Mega Manual at https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html and noticed a possible bug.

"24.15.9. Removed Classes" indicates that the `distrodata` class is now gone. However it's still referred to in several other places in the documentation. May need a bit of garbage collection.

Thanks,

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

