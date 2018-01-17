Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E683E00CF1; Wed, 17 Jan 2018 08:19:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB3E6E008A4
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 08:18:59 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Jan 2018 08:18:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,372,1511856000"; d="scan'208";a="20522439"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 17 Jan 2018 08:18:58 -0800
To: philippe gislard <philippe.gislard@gmail.com>, yocto@yoctoproject.org
References: <CAM0bAiVtPQOif+srytHn4XGrd-=i+4ud9rvDsYUOE41HZpUBnA@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <3bb57de7-f27d-ac9a-200f-c4b4c01d973b@linux.intel.com>
Date: Wed, 17 Jan 2018 18:13:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAM0bAiVtPQOif+srytHn4XGrd-=i+4ud9rvDsYUOE41HZpUBnA@mail.gmail.com>
Subject: Re: [Pyro] Multiple toolchains
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
X-List-Received-Date: Wed, 17 Jan 2018 16:19:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/17/2018 05:59 PM, philippe gislard wrote:
> We are updating our BSP from Krogoth to Pyro.
> We are using a kernel designed and patched specifically for our
> hardware (3.10.40) that does not compile with GCC 5.x or GCC6.x.
> AFAIK, Pyro is qualified with GCC 5.x and GCC6.x (not with earlier versions).
> 
> What is the easiest way to use two toolchains?
> - GCC 4.9 for the kernel.
> - GCC 6.3 for the other packages.

YP releases do not support this scenario. You might just about get away 
with it, if you add the recipes for the old gcc, and set KERNEL_CC in 
kernel-arch.bbclass to point to them, but you're on your own here.

The easiest way - in the long run - is to find a way to forward port the 
kernel patches to a newer, supported kernel release (and maybe even 
upstream them); also explain the concept of 'technical debt' to your 
management:

https://en.wikipedia.org/wiki/Technical_debt

Alex

