Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBA81E00C9F; Fri,  8 Feb 2019 01:33:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22F93E00C58
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2019 01:33:28 -0800 (PST)
Received: by mail-wm1-f47.google.com with SMTP id m1so2685688wml.2
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2019 01:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=1z+p9ISj/kBMqkaP9GF0BRfSAcLI6tHFLvO9a6UGM+A=;
	b=KCfw5FJiZ9CCEOcuCm7hvHOu3VFsxwSdUxOZaQGVpNhN000AQzoteIqd4qBLVEVADY
	qLUMQQAey0DvdXUav/od58RBetxgLY0KLMZC9k2WIdTU8l58JbCkDNJRfTOuEi/CQicw
	mpGPaNn1rnF0P2udp1VLdYR0bBkFPkxQ/S6mA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=1z+p9ISj/kBMqkaP9GF0BRfSAcLI6tHFLvO9a6UGM+A=;
	b=pzpdu4rSW8SSnF98lw1ISF5MMc5xWlybnGS9iWc6x66TvRa7b0rd/01SlOf+r82uGp
	xwg0Z6cbGdJ5eNhgN2d0EGgrkBjkFbIx0/IE1p7BCPr+4Rhqmezi1yfw3vornPnkNYKc
	6laxkl1VJVZ2YBKKyCToGTbhKrWlckHZoa5fwcqWV3572HyfCx3+F5/Bsrs81y5M4j8u
	4CjQkubM+Mm5hqtESSxOSdrmKpmMlEUWtSBhS0I7rDxT61iyTG5+kZSdaQxB8z3QzvxL
	2CLvRPod/W8/gBkwB0qkIfrfEP3J55VXBJKtHzPDdBXJc3hhht7EJ7+48fL2E9LO3Q1Z
	iZTQ==
X-Gm-Message-State: AHQUAubPQcSbpgkiQ9Xee/RcF5ufapPQ4xfSY+sEaFskUWCANAS7EkkP
	ROqSmj5mF5+O3jWuZZiigHjibw==
X-Google-Smtp-Source: AHgI3IaqqtrRxJgOLjpXKMh/tQ6cl9jMUW1fZPUiRiKRozlk5Z33VI1GhaNyhjmZWL71SgL9HuYvIQ==
X-Received: by 2002:a1c:a9d4:: with SMTP id
	s203mr10525903wme.132.1549618407885; 
	Fri, 08 Feb 2019 01:33:27 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	g14sm1145140wrw.78.2019.02.08.01.33.26
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 08 Feb 2019 01:33:27 -0800 (PST)
Message-ID: <c2385521ea1a50caee0c8a696103a66e4fc1d5f5.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Eggleton, Paul" <paul.eggleton@intel.com>, 
	'Michael Halstead' <mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>,  "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>
Date: Fri, 08 Feb 2019 09:33:25 +0000
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634D5748A@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634D5748A@PGSMSX110.gar.corp.intel.com>
User-Agent: Evolution 3.30.4-1 
Mime-Version: 1.0
Cc: OTC Embedded Malaysia <otc.embedded.malaysia@intel.com>, "Kirkiris,
	Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.7 M2 RC1
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
X-List-Received-Date: Fri, 08 Feb 2019 09:33:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-02-08 at 04:38 +0000, Jain, Sangeeta wrote:
> This is the full report for 2.7 M2 RC1:
>  
> https://wiki.yoctoproject.org/wiki/WW01_-_2019-01-28_-_Full_Test_Cycle_2.7_M2_RC1
>  
> ======= Summary ========
>  
> All planned tests were executed.
> Total Test Executed - 3629
> Passed Test - 3613
> Failed Test - 16
>  
>  
> There were zero high milestone defect.  Team had found 3 new defects
> in BSP[1], Compliance [2] and  OE-Core[3].
> 5 existing issues were observed in this release.
>  
> For ptest, there is a drop in percentage of pass rate for 3 modules:
> nettle, perl and valgrind. Bugs are reported for Nettle [4] and Perl
> [5]. For Valgrind, no bug is filed, since there is a decrease in
> percentage but no failures as compared to previous results.

Thanks!

The perl regressions are fairly serious, but understandable given the
large changes we made to perl in M2. I'm therefore torn on whether we
let rc1 release, or we respin an rc2 based on current master. Any
opinions?

Current master does fix perl (bugs 13160, 13161, 13154), it also has a
key toaster fix for thud.

Cheers,

Richard


