Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9611.1575043801319992710
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2019 08:10:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=CwmpaV+m;
 spf=softfail (domain: betafive.co.uk, ip: 140.211.169.56, mailfrom: paul@betafive.co.uk)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A457E010C7; Fri, 29 Nov 2019 08:10:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [66.111.4.27 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11D7BE0097D
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2019 08:09:58 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 6A0D422803
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2019 11:09:56 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Fri, 29 Nov 2019 11:09:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=Jw/kCY3WzmmvUnZLvoSLu3701wuPaZL
	rUAcKboWSZ2U=; b=CwmpaV+m/zinoIhtN9sG0oS/ZYAbAjnC1ui23QCRecn/1yR
	kev45lycOGsu/YhKeqApC+ZTg8c+/VuJOy+zdSJWPnE9MCCrdULfbxN2YFCEGt9L
	nRxrQPlsMVTyMd7+5BwP1SM5eF8Ut4H9nEoaqPw4hi/7f8g58vASOnxj88t8om8w
	FlWawCrpcvfwOOX5aZ6d5QtAvDcvjcRti939WwJvRSwGDAtP9ugJfkl2lsg0Dk+U
	DYtKyFghA9vAsFj6xhys0I2BNlLTCjyHmrAwU8uF4ltmA+0YPHI5AYQs07QvwWr3
	w3UUyU+RqPM/Y1LyH+q8aZXoelmGRgoKKjDOLDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Jw/kCY
	3WzmmvUnZLvoSLu3701wuPaZLrUAcKboWSZ2U=; b=EkWmVd4S8kwVulEiUWHXnw
	vR9CUhiQvKBt/mDUs0JAo6RU/aBAbr+u9+pvqRiDnBdCD3OfqgPyboGIITZDabGD
	xcUewEg/9g664oxDr7ZACYjmUzVCJQCuEIQttgQogFdYhAC8UUqC4vla2wdGe0Yc
	R6bXZGE40EMqtTLG4y4NHYJWpausX5O4LDv2yoB7Z9zOqD9xvqY0IMdzBHo7TMih
	FGCW3y5NvgnT6NA7AxdzAGObBqR+lhTKUDcLmp8WIabPSqP9jUJxJsFbF1N+CeHa
	lLGvA1TH1kGffEMbJI1WYaXo6w2y3mPHIz/8UURSL0KSu1n2mxYf4JMlsbb+tmYQ
	==
X-ME-Sender: <xms:00LhXVmWXINHtR06VfkbvuO6fW8dkijOE5PzNdj1f3svcUF1PfH1wg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeiledgkedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdfrrghu
    lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucfrrg
    hrrghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucev
    lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:00LhXY6fFlUKFT4KuksjTBaz-prbn3jCnhYS-lpscWmvlSuTpIZPPg>
    <xmx:00LhXQw5Qg4V-rLqFPPlM8sLcccnXIzCf1x0rfGh2LGbOKV-c4vw-w>
    <xmx:00LhXRKkqTlGEbpL6EFN7p8XypzVKQJhkRgocLXcTq5GEW9O8ZTYXw>
    <xmx:1ELhXX9DOsGPc-2PdZZCDZ12KUhoB6Pg3v7lRkUdFrVrV-tTgAa21A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 948CBE00A2; Fri, 29 Nov 2019 11:09:55 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <f8cce366-e61c-46a0-b0e9-b23df55c5198@www.fastmail.com>
In-Reply-To: <20191115130931.47159-1-paul@betafive.co.uk>
References: <20191115130931.47159-1-paul@betafive.co.uk>
Date: Fri, 29 Nov 2019 16:09:35 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: [patchtest-oe][PATCH] test_patch_upstream_status: Be explicit about case sensitivity
Content-Type: text/plain

On Fri, 15 Nov 2019, at 13:09, Paul Barker wrote:
> The case sensitivity of the checks for the "Upstream-Status" label
> should match so that failure messages make sense. The checks in the
> parse_upstream_status module are case sensitive and so the initial regex
> check should also be made case sensitive.
> 
> A quick note about case sensitivity is added to the advice given if
> "Upstream-Status" is not found.
> 
> Signed-off-by: Paul Barker <paul@betafive.co.uk>
> ---
>  tests/test_patch_upstream_status.py | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/test_patch_upstream_status.py 
> b/tests/test_patch_upstream_status.py
> index a477dfb..ecccc58 100644
> --- a/tests/test_patch_upstream_status.py
> +++ b/tests/test_patch_upstream_status.py
> @@ -23,7 +23,7 @@ import os
>  
>  class PatchUpstreamStatus(base.Base):
>  
> -    upstream_status_regex = re.compile("(?<=\+)Upstream.Status", re.IGNORECASE)
> +    upstream_status_regex = re.compile("(?<=\+)Upstream.Status")
>  
>      @classmethod
>      def setUpClassLocal(cls):
> @@ -47,7 +47,7 @@ class PatchUpstreamStatus(base.Base):
>              payload = newpatch.__str__()
>              if not self.upstream_status_regex.search(payload):
>                  self.fail('Added patch file is missing Upstream-Status 
> in the header',
> -                          'Add Upstream-Status: <Valid status> to the 
> header of %s' % newpatch.path,
> +                          'Add Upstream-Status: <Valid status> (case 
> sensitive) to the header of %s' % newpatch.path,
>                            data=[('Standard format', 
> self.standard_format), ('Valid status', self.valid_status)])
>              for line in payload.splitlines():
>                  if self.patchmetadata_regex.match(line):
> -- 
> 2.17.1
> 
>

Ping.

-- 
Paul Barker
