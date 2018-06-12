Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90D4EE026A9; Tue, 12 Jun 2018 06:27:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAAF7E011A9
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 06:27:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jun 2018 06:27:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,214,1526367600"; d="scan'208";a="236489271"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga005.fm.intel.com with ESMTP; 12 Jun 2018 06:27:11 -0700
To: Ricardo Ramirez <o_o@ieee.org>
References: <CAMXie8EtM6FOs4Qf3XHW-5EGTy_+xc7Cen-U_UB3ZpO8b4PcjA@mail.gmail.com>
	<5E53D14CE4667A45B9A06760DE5D13D0F38E9788@ALA-MBC.corp.ad.wrs.com>
	<CAMXie8EYUhONeuve=oF3hs9fe9Jz_rTP2QWFh0AKZdyyGj=J8Q@mail.gmail.com>
	<611dfb80-87b3-33f7-7bdc-3a3f36a6be7f@gmail.com>
	<CAMXie8GXRqKFwCOOPApHUcxpEo1K9NeCVazsqSvWtzZ-Bxsqzw@mail.gmail.com>
	<CANNYZj-U69qvSQKcVwEgY3+8qcn7fKtpCS3BYjk9QrRVoPx_1w@mail.gmail.com>
	<CAMXie8EUe=r79rN5rJ9_TnoC8kYjUaHF9W0g-QZd_JtPmHgaKg@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <5d9b1ecd-7aab-585b-1a15-6232a20e59b3@linux.intel.com>
Date: Tue, 12 Jun 2018 16:27:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAMXie8EUe=r79rN5rJ9_TnoC8kYjUaHF9W0g-QZd_JtPmHgaKg@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Target CPU architectures that Yocto Project Support
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
X-List-Received-Date: Tue, 12 Jun 2018 13:27:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 06/12/2018 04:07 PM, Ricardo Ramirez wrote:

> You are right. I didn't define a clear scope for what I wanted to 
> validate. Apologies about that imprecision.
> 
> If possible, I'd like to divide the validation process into three stages
> 
> 1. The system has a clean boot up process
> 2. The system is tested using a C-based benchmark (e.g. SPEC CPU2006)
> 3. The system is validated using a more complex set of 
> testbench frameworks (e.g. http://www.phoronix-test-suite.com/ 
> <http://www.phoronix-test-suite.com/>))
> 
> My immediate goal is to accomplish stages 1 and 2.
> 
> Considering the stages listed above, what steps would I need to follow?

1. You need to create and boot an image for the target system, and run 
basic smoke tests (e.g. that you can log in, and the network is up and 
runing etc). We do this in a fully automated fashion when the target 
hardware is QEMU emulation of various machines:

bitbake -c testimage <image_name>

2. You need to place the benchmark software into the target image, by 
building and packaging it via yocto recipes that you need to write. I 
don't know if the recipes for benchmarks you mentioned are already 
available somewhere; in that case you can simply re-use that, and 
configure your image to include that. Then you boot the image on the 
target hardware and run the benchmarks.

Alex

