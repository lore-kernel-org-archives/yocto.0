Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C9F8E00AD8; Mon,  6 Mar 2017 05:28:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75C2EE00935
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 05:28:26 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 680EF68A01C; Mon,  6 Mar 2017 13:28:25 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id B254768A019;
	Mon,  6 Mar 2017 13:28:22 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 489B767400D4;
	Mon,  6 Mar 2017 14:28:22 +0100 (CET)
To: yocto@yoctoproject.org
References: <f0b0b440-ecd9-50df-9af7-8990b1a04c11@mlbassoc.com>
	<CAJTo0LaCsa=5UVKLYe+Y6OUsjJpHZ9vA_wrcnFT2saoo+92dmA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <0156f20f-65fc-9b3e-bc12-a9cca34980f7@mlbassoc.com>
Date: Mon, 6 Mar 2017 14:28:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaCsa=5UVKLYe+Y6OUsjJpHZ9vA_wrcnFT2saoo+92dmA@mail.gmail.com>
Subject: Re: Files missing from SDK
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
X-List-Received-Date: Mon, 06 Mar 2017 13:28:28 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-06 13:22, Burton, Ross wrote:
>
> On 3 March 2017 at 06:39, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I'm trying to build SDKs for my board, both the native style
>     using populate_sdk_ext as well as including the SDK packages
>     in my image.  My image includes some extended libraries of
>     my own packaging (am335x-pru-support) that I need to get into
>     these SDKs.  This package (via debian renaming) turns into
>       libprussdrv-dbg - 2016-08-30-r0.23 - am335x-pru-support version 2016-08-30-r0 - Debugging files
>       libprussdrv-dev - 2016-08-30-r0.23 - am335x-pru-support version 2016-08-30-r0 - Development files
>       libprussdrv-staticdev - 2016-08-30-r0.23 - am335x-pru-support version 2016-08-30-r0 - Development files (St)
>       libprussdrv1 - 2016-08-30-r0.23 - am335x-pru-support version 2016-08-30-r0
>
>     On my board/image, I can get the files I need but only if I manually include libprussdrv-dev
>       # opkg files libprussdrv-dev | sort
>       /usr/bin/pasm
>       /usr/include/pruss/
>       /usr/include/pruss/pruss_intc_mapping.h
>       /usr/include/pruss/prussdrv.h
>       /usr/lib/libprussdrv.so
>
>     How can I get these automatically added to my SDK images?  To build the
>     board SDK, I'm adding these packages to my image:
>       CORE_IMAGE_EXTRA_INSTALL = "packagegroup-core-sdk packagegroup-core-standalone-sdk-target"
>     I suppose I could add libprussdrv-dev to that list, but I'd like it a bit more automated.
>
>     For the native SDK, I tried adding this to local.conf:
>       TOOLCHAIN_HOST_TASK_append = " nativesdk-am335x-pru-support"
>     which only got me the 'pasm' tool in my sysroot, but nothing else.
>
>
> If libprussdrv1 is in your image then the -dev package should be pulled into your SDK images, assuming that you have
> IMAGE_FEATURES+=dev-pkgs already.

Thanks, that did it for the embedded SDK

>
> The same should mean that standalone SDKs (populate_sdk-style) contain the headers too.  Worse case,
> TOOLCHAIN_TARGET_TASK_append = " libprussdrvi-dev".

Sadly, this still doesn't work.  With the TOOLCHAIN* line above, I get:
   ERROR: Nothing RPROVIDES 'libprussdrv1-dev'
Without it, no changes - the bits are still missing.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

