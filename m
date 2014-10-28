Return-Path: <scadlye@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C58DE0082F; Tue, 28 Oct 2014 16:50:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (scadlye[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61B4CE007BA
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 16:50:46 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id n8so1303863qaq.26
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 16:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=0FPw/PWXfp2iGxyYHHUxJnBeepb3CNpPCFNGQvqsVdI=;
	b=Ioxfs4kyk8C6zMHjLrzuY+DDATnB/WD5eyDPURg4VEisdw4REJdAGBWV6A5Wkh9k6D
	NRiZojWz5ZSWnBw47r090qbZHTY2il7hutB8L4/SD779IGwZ1qKxeZ9il5aCxoqEcH04
	1HccWin5nLfz8mUJ1brXPgNB+ukEBkVkzSc9YRGnZGfZc1tJsdaHOZD0obx8n82ZQWsP
	shv4V2h3sG+QchwMQ9qk1qYik3PUUlOpgZwJpSVx069Zls4sPlTRRpy+dxPluMfJF0gF
	q1vBaGaxVs7Uo4cj0+XjA1OtvRNuJbZumSRtJWG6bGwvx3svo+8DD2FI2Gb6pDLYuJpa
	xKPg==
MIME-Version: 1.0
X-Received: by 10.140.39.134 with SMTP id v6mr9693276qgv.19.1414540246174;
	Tue, 28 Oct 2014 16:50:46 -0700 (PDT)
Received: by 10.229.11.197 with HTTP; Tue, 28 Oct 2014 16:50:46 -0700 (PDT)
Date: Wed, 29 Oct 2014 00:50:46 +0100
Message-ID: <CAOHzp88W3XD0ub8K7yuB4Oq-rsOXvV-Hjoz5_dc9RFGp92=Hag@mail.gmail.com>
From: Sylvain Decastel <scadlye@gmail.com>
To: yocto@yoctoproject.org
Subject: Package not found in base feeds with custom BSP but default settings
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
X-List-Received-Date: Tue, 28 Oct 2014 23:50:58 -0000
Content-Type: text/plain; charset=UTF-8

I found the solution... it seems that bitbake does not like camelCase
(and maybe any upper case letters)

I was able to reproduce the issue by renaming the beaglebone.conf
machine of the meta-yocto-bsp layer to myBeagleBone.conf.
the "not found in the base feeds" error is happening again.

But if I rename it to any lower case name, mybeaglebone.conf or
my_beagle_bone.conf there is no issue.

So I will not complain if I have to forget camelcase when using
bitbake, but I think that bitbake should signal a clear error and not
start the build process.

I read the BSP developer's guide some days ago, but I did not remember
any remarks about naming restrictions...

~Slyde~

