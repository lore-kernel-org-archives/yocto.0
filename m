Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09F3EE00799; Tue, 12 Aug 2014 03:45:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.41 listed in list.dnswl.org]
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 580EAE00786
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 03:45:42 -0700 (PDT)
Received: by mail-oa0-f41.google.com with SMTP id j17so7109076oag.14
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 03:45:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=q6FmOU0El8YzzrPFHmbiV6Lf+k/VrN7HaHixpA7Z3pc=;
	b=JqNrhU4Ow4Vb8kVK3n+Oqtf86q7Yn+Hk6B7PfN3IXp/D2SBKkMCfd/X302KL8dx8I6
	wt4Gayhn25HqBCZ2Q2Xn36b1UGo8YWC5ViIo97kp8ZjhJmYLta1xhRn/9Ybd7nPjXTZm
	VjSMMRay/mIZzzSL02EHwps3DE2v/sldmjKDjR2xVBqTc93UL9yfFQh8ayK/5xYIA3aD
	YsQna6yFHqglU7E9nxBhngmkFnpIoHUbHp5AioG8j4iHjFRmMpH8wvI1x3EQf1oMBGMr
	LhLhqKcfrxn5f2hFT/0dlswG4oX1PjEJixCp6FYq+I2Qrp/2+x5aUMKpqNiAwC+YlJtT
	wFPA==
X-Gm-Message-State: ALoCoQnmIUKbBuk6CTqS1nGIK6B7rYuQZFkAr/nGVp1kPrcNgw4ngQbBOB+T3kAcSbIs+pwybzmr
X-Received: by 10.182.80.33 with SMTP id o1mr2447602obx.78.1407840342032; Tue,
	12 Aug 2014 03:45:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.194 with HTTP; Tue, 12 Aug 2014 03:45:21 -0700 (PDT)
In-Reply-To: <85BEC37D441A9046A1055938F61F94E10EADFBC6@chn-hclt-mbs04.HCLT.CORP.HCL.IN>
References: <85BEC37D441A9046A1055938F61F94E10EADFBC6@chn-hclt-mbs04.HCLT.CORP.HCL.IN>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 12 Aug 2014 12:45:21 +0200
Message-ID: <CAP71Wjyxw_uL11nhEJKxc1XpY+nY+6VpS+MVo_h5vHfp1x7J8Q@mail.gmail.com>
To: "Bremalatha Ramalingam - ERS, HCL Tech" <bremalathar@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Will yocto build support the linux kernel version 3.11
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
X-List-Received-Date: Tue, 12 Aug 2014 10:45:47 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 12, 2014 at 12:17 PM, Bremalatha Ramalingam - ERS, HCL
Tech <bremalathar@hcl.com> wrote:
> Can anyone tell will the Yocto build environment support the Linux kernel
> version 3.11.

yes, it should work. Yocto relies on the 'official' Yocto kernel for
its own builds and releases (for qemu targets), but you can generally
use any kernel your board/CPU requires, whether they are very old, or
very recent, granted that you have a recipe for your specific kernel
version.

