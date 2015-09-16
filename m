Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACAB4E00C12; Wed, 16 Sep 2015 13:23:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 988CCE00BF5
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 13:23:49 -0700 (PDT)
Received: by iofb144 with SMTP id b144so790907iof.1
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 13:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=XmJar3EkYqHSmAGcxH5L5O6sljgW8N6izPq6RGR282A=;
	b=mgqjxnqpjnLVWwK3wYJJPmZikrcYw/CqQBzRzcGjqLPsUjcoV5TLPsWhPDCVHor/nt
	6+WLQ8fqJc2505tjB0D9GJZ7yqZFgAp/n5t44EsLT7CIpy6uLRakc9thHAigtAfjyVJg
	IAfT77/beVTPbZz1vkUu/1mNQ88T3xGrcAmXDG3gCHnmevpUBOIfpsGIZmFgz7mRSLxc
	XCob708wW0UJeoD27PNflkLwFc/WiTdcO9FMBxTRjiHM91QbwP3OYxKffs1Pz8qD7Y4S
	zjw0eM+8iagm3HrsxIkgM4D1+q+rSjoWzEIK9WBoJdoC/P2tv0FXeVsm8fY1hsc2TqSA
	yCKw==
X-Received: by 10.107.162.139 with SMTP id l133mr162793ioe.49.1442435029315;
	Wed, 16 Sep 2015 13:23:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.130 with HTTP; Wed, 16 Sep 2015 13:23:19 -0700 (PDT)
In-Reply-To: <F45FA12158354FC0BEDC44D9390F3A23@PAULD>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD> <55F82F8A.0@gmail.com>
	<F7097EDE-4D17-48E1-9D35-E4A59F64BFD6@gmail.com>
	<55F913D0.2000109@topic.nl>
	<F45FA12158354FC0BEDC44D9390F3A23@PAULD>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 16 Sep 2015 13:23:19 -0700
Message-ID: <CAMKF1soA2ZwbaNme09KpwmsNt_6Aim-hO+sMvhZMWAKRxztJfQ@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: I hate busybox!
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
X-List-Received-Date: Wed, 16 Sep 2015 20:23:51 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 16, 2015 at 9:43 AM, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> If you've got a 1GB eSSD drive, because that's the smallest you can buy,
> having a 382MB image rather than a 346MB image isn't a waste of anything.
> How much boot time increase do you think you'll get from full-featured
> command line tools? I'd be surprised if it was noticeable to anyone.

Thats one usecase and there are so many other. Usually, you want to be
mindful about OS overhead especially in embedded systems
in todays time it may be sufficient you may want to recover that space
in 5 years down the line. It depends on usecases but generally
being mindful about resource usage is always beneficial in products
life cycle embedded systems sometimes live for a very long time in
field

Generally when you have systemd which copy images to RAM and then run
from RAM would not want that extra 50 odd Megs gone
for storing extra tools in some case.

As long as we keep supporting the most common ones along with fringe
cases but with less priority we are OK.

