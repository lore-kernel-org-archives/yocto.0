Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53FB2E00D0F; Thu,  4 Apr 2019 03:50:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE5F4E00CE5
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 03:50:39 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id v10so1506071oib.1
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 03:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0P5kR6jhn4WNSQYVMDXuSXY3ENFBvxHRUqq3jwVaoVI=;
	b=e7IrthM9tWhHhCWswMrpOzTveLh7FlZvGEVa4b5qRQmQdDA+MpqErfuVYIHTTb57uC
	QTJ3Lgfsmj1qWwlA0QYf4gHSH/mZMRSB/gY3ta57u9odewT4M2dOE893Zbs90Qu1B1AR
	4pkDhPjp/BXt3VfrywsssIZObmmmsuVlpXWWIMErzFOu7spflnQe4C9DdLwAXqkP/zGY
	nqGbqKDmX5sda/gv5lZoXbrzCD+fRzEdRxHZ54QnqRlVPzwjz8s+Tbejr2Jj2S9kkCei
	We3m+63C6MB9ciHsDBbJ1y6QGloNiGch6Rt0VHC+teQXmv8KlBMwxiB0KR/XZh0ZAQWg
	LFIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0P5kR6jhn4WNSQYVMDXuSXY3ENFBvxHRUqq3jwVaoVI=;
	b=UM0GfcSnkXbaIKJS2IBLTHgLPGx+aOtA5hMgusL8GROGDxCdmhW7O3whgfwP+E83Nr
	F56MNrSRKNNZ452mI75+1sFLB1y2jnfDpZ3Hv0AE4dWoAI4rXOksItNXMpRyErU2xz5n
	mvnGcHjmJeD/i3zw8bfLK8wsNnDV3bF1BhUayu3WfPpH/beWcFThnxaqD0LmKlBi2P8D
	vn1jl+bdyyYkCRhKaXaXVN/weX39svwwRdTdmlvrCgw3hjRzGLwBWCiBhHahiGddyKbE
	xiojcG9am6EESb3hHTb2wCF7yvmWGx4z54wmtZkLM1KtUSGomgNO5vNASdhLpCAi+iMy
	9/SA==
X-Gm-Message-State: APjAAAW/p6b3y9ZjgSecHedTkaxURhlI2TH86OLTwiUMUhmLR4fMGx5W
	jbShPMDqLiUEAU8jAHO+C4S4poZHcG/aqHRHzK0=
X-Google-Smtp-Source: APXvYqzZroSKuUETEM3GqtqOd4Nw/sC3xzcstxgXKl/OMcAB62jgWnMobiGPUafXy5hz3VYyhVswK1rVcxp4G6p3VJc=
X-Received: by 2002:aca:e689:: with SMTP id d131mr3055538oih.132.1554375039211;
	Thu, 04 Apr 2019 03:50:39 -0700 (PDT)
MIME-Version: 1.0
References: <854544cb-aab1-1a9d-9e98-0f39663ca621@gmail.com>
	<20190403144110.GG4664@bill-the-cat>
	<CAMKF1srb2EgL7tYZDFoq2EqABp-+_eib2u2OZMwT6B3TVgNk=Q@mail.gmail.com>
	<2189093.Hm6Vq2XZhg@localhost.localdomain>
	<CAMKF1spJCg2HjGRzke_3yH_9hCZR=ZQZfJ1EQZCQi9gQF3x-4g@mail.gmail.com>
In-Reply-To: <CAMKF1spJCg2HjGRzke_3yH_9hCZR=ZQZfJ1EQZCQi9gQF3x-4g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 4 Apr 2019 12:50:27 +0200
Message-ID: <CANNYZj9iPw7yV1Csy1wBk53twHk3nWo9jFhmJ+ww4vtQ_sJ1yQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Tom Rini <trini@konsulko.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>, Adrian Bunk <bunk@stusta.de>
Subject: Re: [OE-core] [oe] Git commit process question.
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
X-List-Received-Date: Thu, 04 Apr 2019 10:50:40 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 4 Apr 2019 at 02:39, Khem Raj <raj.khem@gmail.com> wrote:
> Definitely, and I agree that we should put relevant information in
> commits, usually
> the information about side effects if any, links to changelog etc. are
> useful too
> however, we should not enforce a behavior which could result in
> redundancy as explained

To be honest, researching changelogs and summarizing them into commit
messages is feasible if you maintain maybe three recipes. When you
maintain thirty, it becomes a burden, and I am not going to take that
burden. There's already enough work in getting the upgrade into
working shape, work that largely goes unnoticed and unappreciated and
does not require finding and reading upstream changelogs.

HOWEVER. I think we could start putting links to changelogs into the
recipes themselves. If it's a webpage, we can use templating to
substitute version numbers, if it's a file in the source tree, we can
also come up with a format for that. Then it's a simple extension to
e.g. devtool to show that changelog via less or a browser.

Alex

