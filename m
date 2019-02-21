Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4672CE00BB7; Thu, 21 Feb 2019 04:27:21 -0800 (PST)
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
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1E74E00B5C
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 04:27:20 -0800 (PST)
Received: by mail-wm1-f66.google.com with SMTP id y185so6921318wmd.1
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 04:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=zgmvjc1vmcwgMxjgZfDrmBdHAFnaMDjkZZAmJG5ZYaM=;
	b=hn1fRqSJhMzRx8TLtbPmK1N+07t+kAr5nluGPVlE6u1D7+YGOgwDqhtrepYCpUPWzM
	Z/ViWS67FsfChD0pLa7HiHd/Bl7RAJP8L59IGctbkRNQa5Yhd9CEWtkLgTv7d+qdb9oT
	LrPiufbo2b3VKAV33A3ilWIpsUjIwYL2NADfc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=zgmvjc1vmcwgMxjgZfDrmBdHAFnaMDjkZZAmJG5ZYaM=;
	b=qpoyfy4QR5qsZlJASoLVjTlXqA477OACVHVLjmYsGw01XznTY/1RnPGn9OtP0gXTy5
	q8J7OAK+6caRcfuHRFIhU6Oi9YN+UaI0SA8uZmM40I107E42X1WF7YnxxhmcrZoJNZJa
	UOzr6dhyARy1k9/sCgKADTD4n0hpuAAccoSJyG2WwovwuDZnTgr9Q9RsNmLpGnT0dDpP
	hwKp/SrtyTot4cAJcGySEHO5ns+Iw/pKKMheJzKxhy5UIltNPPyapNnLhxgPtEZav23D
	e0tpHKE7m9PjxGyjbk7GpILaCRkjwwHFY6oHYJNBPWJC5GgTzI9EKCtPnn6hm8gc3RAV
	dVNw==
X-Gm-Message-State: AHQUAuYjYqBSFXIXcieSBaQUEoAScM6xhHNIaUoQ/9gqstGic6pWDPdc
	SJseWSqI5dP36OO/NTRGQti57g==
X-Google-Smtp-Source: AHgI3IaszGl16oXlLsZEq2A0yM2Dn5ZxpyxO0ZKkLb9+T5aPIfxZZWnjVpbAGgF27yTMHwMAZAY1sA==
X-Received: by 2002:a1c:2283:: with SMTP id i125mr5073771wmi.24.1550752039549; 
	Thu, 21 Feb 2019 04:27:19 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	e75sm16524977wmg.32.2019.02.21.04.27.17
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 21 Feb 2019 04:27:18 -0800 (PST)
Message-ID: <cdb970168b7ec9240c4f2b83f2a2f45dd429d6aa.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Hongxu Jia <hongxu.jia@windriver.com>, mhalstead@linuxfoundation.org, 
	ross.burton@intel.com, raj.khem@gmail.com, paul.eggleton@linux.intel.com,
	yocto@yoctoproject.org
Date: Thu, 21 Feb 2019 12:27:16 +0000
In-Reply-To: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
User-Agent: Evolution 3.31.90-1 
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: Re: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Thu, 21 Feb 2019 12:27:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Hongxu,

On Thu, 2019-02-21 at 06:37 -0500, Hongxu Jia wrote:
> Currently AI on IoT edge becomes more and more popular, but there is
> no
> machine learning framework in Yocto/OE. With the support of Eric
> <Zhangle.Yang@windriver.com>, Robert <liezhi.yang@windriver.com>
> and Randy <randy.macleod@windriver.com>, after two months effort,
> I've
> integrated TensorFlow to Yocto.
> 
> Now, I contribute the patches to Yocto for review, and apply for
> creating
> a layer named `meta-tensorflow' on Yocto.
> 
> For test convenient, there is a fork on github:
> https://github.com/hongxu-jia/meta-tensorflow
> 
> BTW, I have contributed other 11 fundamental recipes to meta-
> openembedded
> and all of them have been merged to master branch.
> 
> Please no hesitate to share your suggestion.

I like this a lot, thanks for working on and sharing it!

I had a quick glance through the patches and I didn't see anything that
concerned me. I don't have much knowledge about tensor flow. I think
this would make a great addition to git.yoctoproject.org and would love
to see it there.

Thanks again, I'm pleased to see something like this!

Cheers,

Richard


