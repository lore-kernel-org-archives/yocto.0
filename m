Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 344B7E00961; Thu, 26 Mar 2015 00:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9750E0095D
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 00:21:41 -0700 (PDT)
Received: by igcxg11 with SMTP id xg11so46671559igc.0
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 00:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=prWPNeEti9/aeTzwGwMLGE9ejNBChQOLJfRXnNhcNWI=;
	b=Z+5NL5DLQxwqe52+lY0klwTO2k1pW9HOb/UCFuxtldJI8/S7yvh6TJZrIUFjipnIYP
	JEPgnP3WP7n2rbmAROI8I6UD3k84zPcHL1HE45E6UuKgnMPtpR66R2iKMG1rUmiSPdrU
	bJzjrVgVGnRKHgFuunwe4CQZ0hIoaNeNNGS7EAN583bV3svpE3eLlIm6uEw1CfnIpNHA
	rKEu23yOGWkGdgCjD8/po7LbCci35uGI4mZC2QALYJK/zGAKIqguJW4/LYHm50km7NGe
	B/veo4fP7zjbqEXlD3tInPt3G7/HZaTc5DgcCYJTfhhrLjcEtmXyIFpc9twUHaE6RX4q
	LbSg==
MIME-Version: 1.0
X-Received: by 10.50.66.37 with SMTP id c5mr14461595igt.26.1427354501220; Thu,
	26 Mar 2015 00:21:41 -0700 (PDT)
Received: by 10.107.15.98 with HTTP; Thu, 26 Mar 2015 00:21:41 -0700 (PDT)
Date: Thu, 26 Mar 2015 12:51:41 +0530
Message-ID: <CAA2DH4utJacLNEUHnX-tPYibJsH0v0Y91Z5u5PtL=oOzJE01Rw@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: yocto@yoctoproject.org
Subject: RPM Packaging
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
X-List-Received-Date: Thu, 26 Mar 2015 07:21:44 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I want to create custom rpm packages for the iMX6Q device
(cortexa9hf-vfp-neon-mx6). I have to create two types of packages:
either pre-built arm binaries to be packed or packages containing only
bash scripts. There is no need of cross-compiling while packaging for
my cases.

I'm building the packages on my Ubuntu system. When I specify ->
BuildArch: cortexa9hf-vfp-neon-mx6, and try to create a package
(rpmbuild -ba SPECS/foo.spec), it complains  "error: No compatible
architectures found for build".

For my case: rpm does not need to cross-compile but just do the
packaging. How can I force rpm to believe the architecture that I'm
specifying?

Any inputs will be of help.


Regards, Pj

