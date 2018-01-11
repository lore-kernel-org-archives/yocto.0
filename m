Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4423DE00DC6; Wed, 10 Jan 2018 21:39:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDBB9E00DA9
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 21:39:40 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w0B5dd0E026069
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 10 Jan 2018 21:39:39 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Wed, 10 Jan 2018 21:39:38 -0800
To: =?UTF-8?B?Tmd1eeG7hW4gVGhhbmggVsWp?= <ngthanh.vu94@gmail.com>,
	<yocto@yoctoproject.org>
References: <CAGJSYq=RcTxi900fO7hnV83jwOZnTDE1KnGwB7efTMtT_+Mxow@mail.gmail.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <7a8de3da-9749-699f-2467-44ec342d471a@windriver.com>
Date: Thu, 11 Jan 2018 13:39:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAGJSYq=RcTxi900fO7hnV83jwOZnTDE1KnGwB7efTMtT_+Mxow@mail.gmail.com>
Subject: Re: Where to further modify or remove some elements in the zImage and rootfs of the core-image-minimal build?
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
X-List-Received-Date: Thu, 11 Jan 2018 05:39:41 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Nguyễn,

I don't quite understand what did you mean, did you mean where are the recipes ?
(bb files) ? For kernel, you can get if by:

$ bitbake -e virtual/kernel | grep '^FILE='

And for image:

$ bitbake -e core-image-minimal | grep '^FILE='

Please check yocto's doc for more info:

https://www.yoctoproject.org/documentation

You can start from:
Yocto Project Quick Start

And for kernel/bsp:
Yocto Project Linux Kernel Development Manual
Yocto Project Board Support Package (BSP) Developer's Guide

// Robert

On 01/10/2018 11:49 PM, Nguyễn Thanh Vũ  wrote:
> I'm currently trying to build a very small image for my imx freescale board by 
> further reducing the size of core-image-minimal build to make it boot faster. 
> However, I do not know where the recipes for building the zImage (and rootfs) 
> locate inside the yocto directory (fsl-release-bsp) to start modifying. For 
> example, the networking/drivers/sound part in the kernel (net/built-in.o , 
> sound/built-in.o ....). Can anyone give me some hints?
> 
> 

