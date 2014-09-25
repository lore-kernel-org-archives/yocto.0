Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 812BBE0076C; Thu, 25 Sep 2014 08:20:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA0AE0074B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 08:19:51 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id q107so7528434qgd.37
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 08:19:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YBhdAcxM7MZKAp6zdFDW10N+IQpTiFEOWCtHjBJQJdU=;
	b=PXK5Pc5pEuPflJXikU3/Sj48gbSaQEsQ+3DfUMYD+GdizdgEQwjYnROwzoDIXeEJMV
	P+7P1JFxPEQWdSfXQhEfCJSIvRnFi3RcgM5tHyZoz1snz20zTf7H/yYb8SuRuph/vlVf
	Sq7GHsNKPS16ZZo3cNCpPwJIOoGwctEFuw5Vppm4mhf7e4Fj2++Wp1yC2aOTg/zjLctY
	NMGPiMhrqqq5hvYayZz98eQ2iO+UKem/1wG5r7bPUw3y6xYUHpSNa6/Tt5rD5z9u3zfK
	jDfGr35p2HFwRrobJLWIlrg0+EgODJBTAruOB2XnZbeyKVSNZ/rj/+JS0WjCBqiUuTNE
	s2cQ==
X-Gm-Message-State: ALoCoQnaeDTz6MzgcE1H/sMHetRW98uKHfWOPBdF8MJE9QPvVDr3HGhnthDSVr296kojuSEADE7X
X-Received: by 10.140.97.247 with SMTP id m110mr9199876qge.80.1411658390894;
	Thu, 25 Sep 2014 08:19:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Thu, 25 Sep 2014 08:19:30 -0700 (PDT)
In-Reply-To: <CACjDgAPJAqtkL6pP-_ncoE18KsDfM2k0pGpbN8VYkV9QM5X1uA@mail.gmail.com>
References: <CACjDgAPJAqtkL6pP-_ncoE18KsDfM2k0pGpbN8VYkV9QM5X1uA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 25 Sep 2014 16:19:30 +0100
Message-ID: <CAJTo0LavF4uPYu8wjmFpfwW3cLK5SrAu6KH-WO37ekJpZ_Rguw@mail.gmail.com>
To: Albert K <alberk@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe for HHVM?
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
X-List-Received-Date: Thu, 25 Sep 2014 15:20:03 -0000
Content-Type: text/plain; charset=UTF-8

On 25 September 2014 16:13, Albert K <alberk@gmail.com> wrote:
> Hi,
>
> Does anyone know if there exist an recipe for HHVM?    Thanks.
>
> https://github.com/facebook/hhvm

The layers index is the place to look:

http://layers.openembedded.org/layerindex/branch/master/recipes/?q=hhvm

But that's not a recipe for HHVM itself.

Ross

