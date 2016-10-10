Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15637E007D3; Sun,  9 Oct 2016 22:14:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5132E00777
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2016 22:14:19 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 714D568A019; Mon, 10 Oct 2016 06:14:16 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id C6D7D68A019;
	Mon, 10 Oct 2016 06:14:15 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 65BA86740419;
	Mon, 10 Oct 2016 07:14:15 +0200 (CEST)
To: yocto@yoctoproject.org
References: <20161007020906.32228-1-raj.khem@gmail.com>
	<20161007020906.32228-4-raj.khem@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <e8772bf3-84c0-ef11-8cc5-844a3f4ac148@mlbassoc.com>
Date: Mon, 10 Oct 2016 07:14:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20161007020906.32228-4-raj.khem@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 4/4] sdcard_image-rpi.bbclass: Remove redundant RPI_KERNEL_VERSION
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
X-List-Received-Date: Mon, 10 Oct 2016 05:14:23 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-10-07 04:09, Khem Raj wrote:
> From: Jonathan Liu <net147@gmail.com>
>
> The value of the RPI_KERNEL_VERSION can change between None and the
> kernel version which can result in taskhash mismatch errors while
> building images.
>
> The taskhash mismatch errors can be reproduced using:
> bitbake -c cleansstate virtual/kernel core-image-minimal && bitbake core-image-minimal
>
> The get_dts() and split_overlays() functions are modified so that the
> kernel version argument is optional. If the version is not supplied to
> these functions, they will fallback to the Python equivalent of the
> expression used for RPI_KERNEL_VERSION.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>

This fixes the problem I reported, thanks

Acked-by: Gary Thomas <gary@mlbassoc.com>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

