Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB3CCE00B18; Thu, 17 May 2018 03:58:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6028DE007DA
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 03:58:07 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 May 2018 03:58:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,410,1520924400"; d="scan'208";a="42000555"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga008.jf.intel.com with ESMTP; 17 May 2018 03:58:06 -0700
To: yocto@yoctoproject.org, stevep@korgrd.com
References: <87DBB3BF-2DF5-4A71-AF55-7BE109ABCA01@korgrd.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <c7f0780b-79f8-7124-4d2a-39e41e801bde@linux.intel.com>
Date: Thu, 17 May 2018 13:50:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <87DBB3BF-2DF5-4A71-AF55-7BE109ABCA01@korgrd.com>
Subject: Re: [meta-raspberrypi] troubling warning "postinstall intercept hook 'update_gio_module_cache-nativesdk' failed"
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
X-List-Received-Date: Thu, 17 May 2018 10:58:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/17/2018 12:17 PM, Steve Pavao wrote:
> I am trying to build for raspberrypi3 near head of sumo. I get the following troublesome warning fairly often since I started doing some builds in sumo and master the past week.:
> 
> WARNING: core-image-minimal-1.0-r0 do_populate_sdk: The postinstall intercept hook 'update_gio_module_cache-nativesdk' failed, details in /data/development/lfs/yocto/build/spark/raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_populate_sdk
> 
> Here is the detail of the warning is.  It basically reports "Invalid ELF image for this architecture":
> 
> NOTE: > Executing update_gio_module_cache-nativesdk intercept ...
> WARNING: The postinstall intercept hook 'update_gio_module_cache-nativesdk' failed, details in /data/development/lfs/yocto/build/spark/raspb
> errypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_populate_sdk
> NOTE: Exit code 255. Output:
> /data/development/lfs/yocto/build/spark/raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-minimal/1.0-r0/sdk/image/opt/poky/2
> .5/sysroots/x86_64-pokysdk-linux/usr/libexec/nativesdk-gio-querymodules: Invalid ELF image for this architecture
> 
> Question: How serious is this warning, and what should I do about it?

Thanks for reporting! This is mostly harmless, but I'll make a patch to 
address it.

Alex


