Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDEECE00799; Wed, 15 Oct 2014 18:22:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C082E006EF
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 18:22:49 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id h3so2575403igd.5
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 18:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=jBsYvjck2Xr9BVYCs9yfuuUa1JstFQXffftI6cmqpBU=;
	b=p3TxPIxHE4wYExr90mt4j5myk42eZWmrD+MSkLzxSwlURJ9j6r9eMmS+xI7/3NS7ms
	NIAiGhd1Qedk+7WBgv6YI11eCb+WTbEhXVdhvOYs+8fMxeA9SPxpuDeUo1E01DecbwM7
	l8XF7P7QA0JJmYjukc7wjRF8nlhqaWLTBGoprPJWzELN/XueK0awbIq/3QN5RzDO47dg
	Vqg5LmS+/fOh4VsWXbmid0aYFM3LWqTYisNvm0rswzOod/0tRspMKSJ6Je7bEhOwhZp8
	k3bx/n4SPhO/x/4irA4SWC3tReRSO/FwLlmeobh5UANOGdZZL3GwHSCQ6nM79FI1O0sI
	FY7g==
X-Received: by 10.51.17.69 with SMTP id gc5mr18173783igd.24.1413422569005;
	Wed, 15 Oct 2014 18:22:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.113.134 with HTTP; Wed, 15 Oct 2014 18:22:28 -0700 (PDT)
From: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 15 Oct 2014 21:22:28 -0400
Message-ID: <CAAPegz0mkfnopK_s8PATfn5G6-ym365g3xwpR7szS98-4YR2_Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: gitsm recursive submodules
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
X-List-Received-Date: Thu, 16 Oct 2014 01:22:52 -0000
Content-Type: text/plain; charset=UTF-8

Hello all.

I posted some time ago about git with submodules and was pointed to
gitsm. I've been using gitsm for sometime but ran into another issue.

It looks like gitsm is not performing a recursive submodule update. I
have a repository that is comprised of submodules, one of those
submodules has a couple of other submodules. Should gitsm be handling
this today?

Starting from a clean build directory I can bitbake until the recipe
fails, then go into the working directory and do a 'git submodule
update --init' I can get the recipe to finish building.

Recommendations on how I should proceed?

Chris

