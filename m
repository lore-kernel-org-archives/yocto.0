Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6BD7E00CDD; Wed,  3 Apr 2019 03:27:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF225E00994
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 03:27:49 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44Z2Mm1547z4b;
	Wed,  3 Apr 2019 12:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1554287268;
	bh=WJniEIqPk/GV3MBviJeE2ImEfmpF7qFkAJ/Gwg3kowg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HP3VYFf25JFhDos1cBv086eHhtH3foUlswvR23MF48DMxLWlf2ERWKPDhWCtUvnBA
	5yVnhIw23wzLJW/OG3meqenearjQrnmJ0w8fh/hNaqC6t/P2qJ77i95oft2dgYGker
	TXrEEgmeQm7sRWcsig/OwS0O00KN3yBtYkyDLX+Fpgn2m3rLPxSNGwpIWbeUn1Yb4q
	ijnxlE8hjFAyzxw17UctUXl+j3qItGWOZ+5XHQcQN9An28by2M6Sg2mzvXeXpS6v4V
	fWOWvDs2qgV81x2KPSNLx+fqIdWcH3z47G4XABQxGS44UBAreShbZfSkl+S+BUoXF5
	99MBTF7QLLohZ1arsOJPPTQ8a3axGLjGCRENx5X/pw7iCJ2tTA1d5XJAcZ7wc8Qq1K
	isfDrEqKHtxh0PUobsCASUBPA36UVh1zwbWH8jv644zPUH2SJ1120PNUX1vQ1LNrK6
	XShTZJNfB+1KVfqnXvDRBb8GwxnFKqc1PWwcjzCj6azvle/VF+Ek38KczRFqt2Ct3G
	3s2yzm5C0OxB0j6tCWzJ/iZ3yHzH/B9JUh/bCOMql0gecVOqETh8pSH8F16J8IZe+b
	0fbgHEGBVub9MalKNgodrAJ2cH21rADu+NkfuaJ3guOk02cPQkzSf9wHjj8SOXuquG
	BSiGhsFma5nMbtPuLMzcY2eI=
Date: Wed, 3 Apr 2019 13:27:45 +0300
From: Adrian Bunk <bunk@stusta.de>
To: mingli.yu@windriver.com
Message-ID: <20190403102745.GA16400@localhost>
References: <1554281714-333089-1-git-send-email-mingli.yu@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1554281714-333089-1-git-send-email-mingli.yu@windriver.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] samhain: hash fix for aarch64 and mips64
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
X-List-Received-Date: Wed, 03 Apr 2019 10:27:50 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed, Apr 03, 2019 at 04:55:14PM +0800, mingli.yu@windriver.com wrote:
> From: Mingli Yu <Mingli.Yu@windriver.com>
> 
> samhain fails on both aarch64 and mips64 targets with:
> | samhain[3013]: FATAL: x_dnmalloc.c: 2790: hashval < AMOUNTHASH
> 
> Though there is already a patch samhain-mips64-aarch64-dnmalloc-hash-fix.patch
> to fix this issue, the logic is incomplete and
> pass -DCONFIG_ARCH_MIPS64=1 and -DCONFIG_ARCH_AARCH64=1
> during do_configure phase respectively to fix the
> issue.
>...

In master this has already been workarounded with --disable-dnmalloc.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


