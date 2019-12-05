Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.8567.1575550567611341385
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 04:56:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=DZ3lOIre;
 spf=softfail (domain: betafive.co.uk, ip: 140.211.169.56, mailfrom: paul@betafive.co.uk)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A166E010C9; Thu,  5 Dec 2019 04:56:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [64.147.123.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 373AFE00F02
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2019 04:56:06 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 617B8A9D;
	Thu,  5 Dec 2019 07:56:02 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Thu, 05 Dec 2019 07:56:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:in-reply-to:references:date:from:to
	:cc:subject:content-type; s=fm3; bh=BNtT4ApVET13tbhQ3shUpeWsVGIF
	ngghhyZ8CBZBZSw=; b=DZ3lOIrePcBuVju7WXlmuzM7k2gNKsymVkYiJTAK8OGg
	wA04NMn2hCRT2S3950cwUY8WQiTj18qWzuA2LkOwRHRH0QvIXgf8Fca7voajGDJF
	lxsHLbs4HxIbAlmhW6PIWPfGpSS525KkcdnalBCfKxDMEwAH3CN4By+6rxX3ibJl
	oOWMzx0rv06s8JMAqiY7hlRz1AnZWcM9psgMFk4f+exl5Snifw5hxq2zuOo7b0M0
	jGP7NGoKrUUy3YMiBgmObDO5xP6NH/6kfARwo1xLsPqAlnZUYtbM5crA1JnotOo0
	yBLLxnUlLCnfotBVJxvn8SpW5PHLdK9LQn24UdlL6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=BNtT4A
	pVET13tbhQ3shUpeWsVGIFngghhyZ8CBZBZSw=; b=tfw3jPWdELxi5lE7t5taWC
	Ay2HKR6qdM2zdPM2eazsGHkTsiXju0wxRFk6d/n9qYimf8fDhw2fzzFZVo+swmvA
	KkxuMNz68WA1t5ghrL5YYfIsxx+aVIHadQ9YnqvxOtCizNqSkHNu1X33zEg8AdKG
	Mcp3MPqpS0WXMkq/WGhpOP+N2U8x7+km7G9dnTIsMVxhAaM2ZHd44sA79bOQI5MX
	kS9bjtm/M874nuZk47xbYI2y7bpOxF8W0C4zpELRAR5aQIdH1rxPwnDn+uZDz6wk
	i6QMRjjLKfI8AZCK24HlpEiDzAdWIkumg3gHmGiNiuOvNCMV3HexoeNOU8qcUhfw
	==
X-ME-Sender: <xms:Yf7oXTR2olu0DzVMYU1sp7n58PJ1dRd6t7iU2KyaRC7DfcsIqieWmg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudekuddggeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdfrrghu
    lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucfrrg
    hrrghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucev
    lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:Yf7oXZABdKtkmTOV6HsVdBlaGILv1xb9oEC8qzG143S5GIjkbph4UA>
    <xmx:Yf7oXT33NkwkrCO1Moai47HMiu3gUgSjyRGQCXE7d8w3xAya6vf-pg>
    <xmx:Yf7oXXUcw7YEjzDACZQlDtYHzEQ_k3F-guBQWGr9eWVLTc_AwBe0VA>
    <xmx:Yv7oXRRQOePWTflgj0JGxsUxEomEou5kNHcPc8iyShzNoncFpNdN4A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 374F4E00A1; Thu,  5 Dec 2019 07:56:01 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-612-g13027cc-fmstable-20191203v1
Mime-Version: 1.0
Message-Id: <2345c284-9cb3-487b-bb02-d6bf0dafc250@www.fastmail.com>
In-Reply-To: <15DBADFE51BB7B5E.20368@lists.yoctoproject.org>
References: <20191115130931.47159-1-paul@betafive.co.uk>
 <15DBADFE51BB7B5E.20368@lists.yoctoproject.org>
Date: Thu, 05 Dec 2019 12:55:42 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "Yocto discussion list" <yocto@yoctoproject.org>
Cc: "Leo Sandoval" <leonardo.sandoval.gonzalez@linux.intel.com>,
 "Paul Eggleton" <paul.eggleton@linux.intel.com>,
 "Daniela Plascencia" <daniela.plascencia@linux.intel.com>,
 "Changqing Li" <changqing.li@windriver.com>
Subject: Re: [yocto] [patchtest-oe][PATCH] test_patch_upstream_status: Be explicit about case sensitivity
Content-Type: text/plain

On Fri, 29 Nov 2019, at 16:09, Paul Barker wrote:
> On Fri, 15 Nov 2019, at 13:09, Paul Barker wrote:
> > The case sensitivity of the checks for the "Upstream-Status" label
> > should match so that failure messages make sense. The checks in the
> > parse_upstream_status module are case sensitive and so the initial regex
> > check should also be made case sensitive.
> > 
> > A quick note about case sensitivity is added to the advice given if
> > "Upstream-Status" is not found.
> > 
> > Signed-off-by: Paul Barker <paul@betafive.co.uk>
> > ---
> > tests/test_patch_upstream_status.py | 4 ++--
> > 1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/tests/test_patch_upstream_status.py 
> > b/tests/test_patch_upstream_status.py
> > index a477dfb..ecccc58 100644
> > --- a/tests/test_patch_upstream_status.py
> > +++ b/tests/test_patch_upstream_status.py
> > @@ -23,7 +23,7 @@ import os
> > 
> > class PatchUpstreamStatus(base.Base):
> > 
> > - upstream_status_regex = re.compile("(?<=\+)Upstream.Status", re.IGNORECASE)
> > + upstream_status_regex = re.compile("(?<=\+)Upstream.Status")
> > 
> > @classmethod
> > def setUpClassLocal(cls):
> > @@ -47,7 +47,7 @@ class PatchUpstreamStatus(base.Base):
> > payload = newpatch.__str__()
> > if not self.upstream_status_regex.search(payload):
> > self.fail('Added patch file is missing Upstream-Status 
> > in the header',
> > - 'Add Upstream-Status: <Valid status> to the 
> > header of %s' % newpatch.path,
> > + 'Add Upstream-Status: <Valid status> (case 
> > sensitive) to the header of %s' % newpatch.path,
> > data=[('Standard format', 
> > self.standard_format), ('Valid status', self.valid_status)])
> > for line in payload.splitlines():
> > if self.patchmetadata_regex.match(line):
> > -- 
> > 2.17.1
> > 
> >
> 
> Ping.

Cc'ing the maintainers listed in the readme along with Changqing Li as discussed during the Yocto Project call on Tuesday.

Could you confirm who's maintaining patchtest-oe these days and update the readme? I've got a few ideas for enhancements and I may be able to assist with maintaining these repositories after the new year but I'd like to get these initial changes in first.

-- 
Paul Barker
