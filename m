Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.8582.1575550646206844589
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 04:57:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=xKYfT2lV;
 spf=softfail (domain: betafive.co.uk, ip: 140.211.169.56, mailfrom: paul@betafive.co.uk)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17BB9E00F0D; Thu,  5 Dec 2019 04:57:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E665E00D16
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2019 04:57:22 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 9FDF9AA8;
	Thu,  5 Dec 2019 07:57:21 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Thu, 05 Dec 2019 07:57:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:in-reply-to:references:date:from:to
	:cc:subject:content-type; s=fm3; bh=S0wO7jg5xuxfCJEzALvj78Nl/kQM
	TAau+aR377qaWDs=; b=xKYfT2lVejyHeDsgjKBaVs9Bu8DnHABQFDycJuYA2/Pd
	c2Nq2VajRqMSiL66AC4OcmH4khlpkBbtp9tkFny+h9P6EHVN7vXxfD/e2nNvcvmU
	1oKEQm1eOW8a3C6FPMXSsWdY7TEBIeCTeoej4SDtHUJJWX+11TWXRDnhr8tItXsk
	8P67CKKWSM44E2QioxJw40bIujT+ZbDPTI537W7XPOuq6loajzQZDWdls9ykYQPb
	EhP5V4B3k0yogEVvwtrnDfAFQPCKIs57whjJoL3USy8wrR0IRhFhgW8yLC6juWeR
	AwOC8l7VAm9wruzYIP4gq4izc/Xjm2UbO8012krNug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=S0wO7j
	g5xuxfCJEzALvj78Nl/kQMTAau+aR377qaWDs=; b=CYSnqo2VuRfYEt5qU/FKJF
	D83RM7yuOwVMUxcl7cA5v3m8WWi7RiwhfuVPeSNZQ/AHNlFk4SHSwbjhrZCK3bse
	sYFO4KP1pUHo29n2wIWAxTN48XYDAJc4YYGqmI6RR2kAK2W+kvpRUuXR2obuGeFB
	aBxwc9amM/iPFJ30drBgLquDA0E4ZE28laqNB1ThSQFsUoFaobck/ZKZW2k82XVc
	zJJhxG9zQZ+mDomgF+dJGPfmU61WOWCxtiu/LIRadQGYoEECEHPOFGbJn+FHW25w
	OXIq4ii7SwnSWac9Qloh/GUvTUUm3dvKpztK5yEWQCZJlt/3jnCGLOouK+W/tGvw
	==
X-ME-Sender: <xms:sP7oXSBJgjELgprhHdRlaP8y3aN71ZJuWhA4Fcz0Lt7fzEnbxPmKsw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudekuddggeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdfrrghu
    lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucfrrg
    hrrghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucev
    lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:sP7oXeTKYwt7JQBVDHruiqwt5HPo33DP59Va-MQmrpJkEaSmiBz_3g>
    <xmx:sP7oXaEyjjWI8b8obm6So0kX4I0GJUh07skXJSv2Ri2UUSZAvtvN6w>
    <xmx:sP7oXZbv3-KB71Eu_K3JUcSHN_Vet1ut0lQhAtvvAB2KsJAbxPqgLA>
    <xmx:sf7oXUuv3117t1dA0llG9WULdFKf2D8one2EwU-JDlRKI86IsuDSYQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 7BC84E00A3; Thu,  5 Dec 2019 07:57:20 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-612-g13027cc-fmstable-20191203v1
Mime-Version: 1.0
Message-Id: <4a7ab633-f3e0-4a5b-8c7b-ee94272e1209@www.fastmail.com>
In-Reply-To: <15DBAE02AEF74F96.7552@lists.yoctoproject.org>
References: <20191115132324.47411-1-paul@betafive.co.uk>
 <15DBAE02AEF74F96.7552@lists.yoctoproject.org>
Date: Thu, 05 Dec 2019 12:56:51 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "Yocto discussion list" <yocto@yoctoproject.org>
Cc: "Leo Sandoval" <leonardo.sandoval.gonzalez@linux.intel.com>,
 "Paul Eggleton" <paul.eggleton@linux.intel.com>,
 "Changqing Li" <changqing.li@windriver.com>
Subject: Re: [yocto] [patchtest][PATCH 1/2] patchtest: Fix printing of exception tracebacks
Content-Type: text/plain

On Fri, 29 Nov 2019, at 16:09, Paul Barker wrote:
> On Fri, 15 Nov 2019, at 13:23, Paul Barker wrote:
> > The addError() handler is called outside of an actual exception handler
> > so sys.exc_info() doesn't actually return an exception. This means that
> > traceback.print_exc() doesn't know what to print. Instead we need to use
> > traceback.print_exception() with the err object we've been given.
> > 
> > Signed-off-by: Paul Barker <paul@betafive.co.uk>
> > ---
> > patchtest | 3 +--
> > 1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/patchtest b/patchtest
> > index 592f73e..59b19f5 100755
> > --- a/patchtest
> > +++ b/patchtest
> > @@ -101,8 +101,7 @@ def getResult(patch, mergepatch):
> > 
> > def addError(self, test, err):
> > self.test_error = True
> > - (ty, va, trace) = err
> > - logger.error(traceback.print_exc())
> > + logger.error(traceback.print_exception(*err))
> > 
> > def addFailure(self, test, err):
> > self.test_failure = True
> > -- 
> > 2.17.1
> > 
> >
> 
> Ping on this and the following patch.

Cc'ing the maintainers listed in the readme along with Changqing Li as discussed during the Yocto Project call on Tuesday.

Could you confirm who's maintaining patchtest these days and update the readme? I've got a few ideas for enhancements and I may be able to assist with maintaining these repositories after the new year but I'd like to get these initial changes in first.

-- 
Paul Barker
