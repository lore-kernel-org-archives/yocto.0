Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0004AE00CC0; Mon, 28 Nov 2016 19:03:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABA67E00C80
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 19:03:30 -0800 (PST)
Received: by mail-io0-f195.google.com with SMTP id k19so26698777iod.3
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 19:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=OMgOT0uEm6rzZv2Rvb2U+bndLxdga6XUAdLNCTQd52k=;
	b=FVmFW2Pgl/AlCN+QvN6B7Xh4QDxA9pbJyijMUIvMKCZ3l6Y8WS/iYUn2hGY60KYhg7
	uSlhyc9ijRPkE2fDNRAu2eexR4sdjQYJnIHDsd+sJTHJuK4wLTWiXuZ0qcaJfn+CNVba
	pWXDf5RRP5eIpUOCSvbkenqmSi/zt3WJ3HXewhWJaghf57ZSBA7Qb8WamtHy9mBEjzba
	KCFotR7ifKAnZ3wGsL1886H2j+aJJ+fBsCA8xoHfKCnozNPPfiUlW9Z69avKn4vdu/aH
	s0HM6AUoM43CNtJCoPDi7Xb7KTXTwvtPo8JWuQpT18NR2VhOJJgxuJD8+rGqfxGFPjlL
	0Dhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=OMgOT0uEm6rzZv2Rvb2U+bndLxdga6XUAdLNCTQd52k=;
	b=lEd2F62YyW0LaKriyFdPnKAgg2nayqkjTqhWGfpKYeWHaPPBLyLpxwU4vislEwFMY7
	9c6bCgDw3Uil9AYxw/WN/LvmBABcoTut9TcSHBgexRkIvFqO3n56VYbr66aaM6eobEAB
	Mr7OGbw3T2gpHqkow3zc/dUzbSsUj8UiwUpgTWMUA78H3CKIhc+tPzl+iGNuDq+7Il2d
	L6Bs4i+0iTtxPymU03dEUYTsdOAMNp7DzqZ4QYEIIWl9/bs35z3lJdeC35dSnfBMxJGX
	vmJ7vosrlVDGccZw5IFKRYbTtThSm5fNPoL4jIl8hWPdzhcrIttFynsjm117kxHZDyhW
	wxNA==
X-Gm-Message-State: AKaTC01qqqEfmmUqBY5N5Aa89RiI4p+PnH6qGmKlmgrW/QKLiHegsMy2r8NuXEs/iJKyxA==
X-Received: by 10.36.148.84 with SMTP id j81mr21663421ite.35.1480388609702;
	Mon, 28 Nov 2016 19:03:29 -0800 (PST)
Received: from openSUSE-i7.site (65-110-221-106.cpe.pppoe.ca. [65.110.221.106])
	by smtp.gmail.com with ESMTPSA id e143sm195585itc.9.2016.11.28.19.03.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 28 Nov 2016 19:03:28 -0800 (PST)
Date: Mon, 28 Nov 2016 22:03:24 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161129030324.GA2836@openSUSE-i7.site>
References: <20161128151233.8861-1-twoerner@gmail.com>
	<9045CDB4-3095-4352-A4A3-04EAC676F466@gmail.com>
	<20161129014240.GB30326@openSUSE-i7.site>
	<5A8D2138-126E-468B-8637-D7A927386706@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5A8D2138-126E-468B-8637-D7A927386706@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.4.bb: upgrade to 4.4.32
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
X-List-Received-Date: Tue, 29 Nov 2016 03:03:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2016-11-28 @ 05:52:38 PM, Khem Raj wrote:
> 
> > On Nov 28, 2016, at 5:42 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> > 
> > On Mon 2016-11-28 @ 03:21:50 PM, Khem Raj wrote:
> >> its at 4.4.35 now see
> >> https://github.com/kraj/meta-raspberrypi/commits/kraj/master <https://github.com/kraj/meta-raspberrypi/commits/kraj/master>
> > 
> > True. But there's no -rt patch for 4.4.35:
> > https://www.kernel.org/pub/linux/kernel/projects/rt/4.4/
> > 
> > The latest 4.4.y -rt patch is 4.4.32.
> > 
> > Since I'm working on a separate recipe for 4.4.32-rt43 I guess I could just
> > base it on 4.4.32 and let the non-rt-mainline advance to 4.4.35 :-)
> 
> does it not apply cleanly on 4.4.35

As luck would have it, it does!
(minus one hunk from Makefile for something that had already been added)

Tomorrow I'll do a boot test and submit the patch (unless the boot test fails,
or someone else beats me to it)

> 
> > 
> >> 
> >>> On Nov 28, 2016, at 7:12 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> >>> 
> >>> This helps align the raspberry pi 4.4.y kernel with the latest 4.4.y
> >>> PREEMPT_RT patch.
> >>> 
> >>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> >>> ---
> >>> recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
> >>> 1 file changed, 2 insertions(+), 2 deletions(-)
> >>> 
> >>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> >>> index 19e8552..0724ac1 100644
> >>> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> >>> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> >>> @@ -1,8 +1,8 @@
> >>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> >>> 
> >>> -LINUX_VERSION ?= "4.4.28"
> >>> +LINUX_VERSION ?= "4.4.32"
> >>> 
> >>> -SRCREV = "5afda48c3408e15742d4569459a4ff668e2857f7"
> >>> +SRCREV = "f779cabf56bc88319d582db58969ba6f7184a775"
> >>> SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
> >>>           file://0001-fix-dtbo-rules.patch \
> >>> "
> >>> -- 
> >>> 2.10.2
> >>> 
> >>> -- 
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >> 
> 

