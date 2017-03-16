Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B580E0052B; Thu, 16 Mar 2017 14:01:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CB52E003C1
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 14:01:44 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id CE57E20B6A;
	Thu, 16 Mar 2017 21:01:43 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo03-pco.easydns.vpn [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Moo6PKCk_hvA; Thu, 16 Mar 2017 21:01:43 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-85-143.washdc.fios.verizon.net
	[100.15.85.143])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id ADC1C20174;
	Thu, 16 Mar 2017 21:01:42 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 3F6EF1623E8; Thu, 16 Mar 2017 17:01:42 -0400 (EDT)
Date: Thu, 16 Mar 2017 17:01:42 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20170316210142.GP15664@denix.org>
References: <alpine.LFD.2.20.1703160654050.25228@uk63952.mitel.com>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1703160654050.25228@uk63952.mitel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any YP machines or functionality that still require uImage creation?
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
X-List-Received-Date: Thu, 16 Mar 2017 21:01:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 16, 2017 at 06:58:17AM -0400, Robert P. J. Day wrote:
> 
>   i just noticed that the machine config file for mpc8315e-rdb still
> lists "uImage" as the default image type:
> 
> KERNEL_IMAGETYPE = "uImage"
> IMAGE_BOOT_FILES ?= "u-boot.bin uImage uImage-mpc8315erdb.dtb;dtb"
> 
> is there anything about that target that still *requires* uImage
> creation, as opposed to zImage?
> 
>   given that uImage is considered u-boot's "legacy" format, is there
> any drawback to making zImage the default image type, and letting
> folks drop back to uImage if they choose?
> 
>   put another way, is there anything that currently *ever* requires
> the creation/use of a uImage format?

There are some boot methods/use-cases that only work with uImage. Not sure if 
that's the case with mpc8315e-rdb though...

-- 
Denys

