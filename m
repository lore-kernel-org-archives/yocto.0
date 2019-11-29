Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9744.1575043820726049715
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2019 08:10:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=oFue4EvM;
 spf=softfail (domain: betafive.co.uk, ip: 140.211.169.56, mailfrom: paul@betafive.co.uk)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E002E010C7; Fri, 29 Nov 2019 08:10:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [66.111.4.27 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B21BE00BF7
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2019 08:10:18 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 0BDF4229AF
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2019 11:10:18 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Fri, 29 Nov 2019 11:10:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=FdUStfqCPy3i7ACHZkxKnwU/DtSz0ru
	TzHYmSvL9hkA=; b=oFue4EvMm3YpJjfyKF4NWMyFAmXrrQRqRTJFzeMee0YD2kp
	qAD0uX2IxHPs29ate9xjw5ELVTi8Curz24aRupWweMf/LRiVN4phZp8azYv3gEYl
	gN0ZiMoTkPyocQD5seFQExc39kNvDophSaeDmlBaPMwaLQucf/HU44D/6L6cPClb
	J4vBZQaJPZtAcuK81/3JPYGwoVVv5b+VrU4TqoVQX3Xb6NSqHVXgQKgdlkrW2SvA
	OHfhYGEHCIM2h+SpGT0VVRLvs2g5iFg/WJs93bavuSZkmYAV7VhIJNiVzqIuuXHZ
	y4Y5nttGC2JejVlZEOdvtlQ24NTcIN6NrpVclsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=FdUStf
	qCPy3i7ACHZkxKnwU/DtSz0ruTzHYmSvL9hkA=; b=oCvT/16IxCuDSjXTasCLaH
	IWS0T7FRV97cTXPnUPIHAkUtfRdDMshsgris2Hor/c/Es/QHH2UfTsxEN4W+vvvN
	4nf15bwbZFluWKBlblLdlcSld9+kQQXK4FSvqVMUba3xVWdYJ6ZOXD85NGxJrPZo
	1b/7OVwN8TIh85OZ94kXfzNgwICWgYBhTxFRjlNhRCztzBE3+XO+JpUkw9GIgDcd
	V4zXT7Bf07b0hTCmjeOje3D4u/14DI9Z4sqcFrQ8SpKKHTdOFpza/X47vrtq6tE7
	6Hm+VpR3DbJbdtyBk22Mz96PYrLR67rAcd5Y2zBHuhPVVRFsWPc5lrm/F1WDX+vw
	==
X-ME-Sender: <xms:6ULhXSV790LYPv8sZKs1qR8ko8y0lp_PDo-f4M21EXa459-xyuPglQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeiledgkedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdfrrghu
    lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucfrrg
    hrrghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucev
    lhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:6ULhXe9gLUIjB0Cm3I_6jo3xzJMyxJ_R1ttjPP7LipkI8-b1PRtf3A>
    <xmx:6ULhXXgNdw8Ai8sM9Dl23LuK7QFpbnoBs6KUU2YNQrc5YX0rdYZ1Mg>
    <xmx:6ULhXVU9PKQRIMVXErOGmxK4hnW3y1dq7xVd18XLCQ4mX6YLmGXGUQ>
    <xmx:6kLhXc4Si6C1ZQ8AT8jCj6N2Jfm3WqQhOFqshWOc9YURGv6kEbWq2w>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id D3FFAE00A2; Fri, 29 Nov 2019 11:10:17 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <c172b0d3-1be5-4b96-9123-47c9db2ed848@www.fastmail.com>
In-Reply-To: <20191115132324.47411-1-paul@betafive.co.uk>
References: <20191115132324.47411-1-paul@betafive.co.uk>
Date: Fri, 29 Nov 2019 16:09:57 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: [patchtest][PATCH 1/2] patchtest: Fix printing of exception tracebacks
Content-Type: text/plain

On Fri, 15 Nov 2019, at 13:23, Paul Barker wrote:
> The addError() handler is called outside of an actual exception handler
> so sys.exc_info() doesn't actually return an exception. This means that
> traceback.print_exc() doesn't know what to print. Instead we need to use
> traceback.print_exception() with the err object we've been given.
> 
> Signed-off-by: Paul Barker <paul@betafive.co.uk>
> ---
>  patchtest | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/patchtest b/patchtest
> index 592f73e..59b19f5 100755
> --- a/patchtest
> +++ b/patchtest
> @@ -101,8 +101,7 @@ def getResult(patch, mergepatch):
>  
>          def addError(self, test, err):
>              self.test_error = True
> -            (ty, va, trace) = err
> -            logger.error(traceback.print_exc())
> +            logger.error(traceback.print_exception(*err))
>  
>          def addFailure(self, test, err):
>              self.test_failure = True
> -- 
> 2.17.1
> 
>

Ping on this and the following patch.

-- 
Paul Barker
