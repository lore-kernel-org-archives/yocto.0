Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 248B4E00EC1; Sun, 11 Sep 2016 14:01:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A4A8E00EBB
	for <yocto@yoctoproject.org>; Sun, 11 Sep 2016 14:01:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 11 Sep 2016 14:01:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,319,1470726000"; d="scan'208";a="1054551755"
Received: from tbui5-mobl2.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.152.213])
	by fmsmga002.fm.intel.com with ESMTP; 11 Sep 2016 14:01:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Mon, 12 Sep 2016 09:01:17 +1200
Message-ID: <6731590.Lyu1HO4gdd@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.2-101.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAJ70iBSSMWYqZwH7+E0FLVC=xHLcw+0JBKHnDtGJFbCwdMT+eQ@mail.gmail.com>
References: <CAJ70iBSSMWYqZwH7+E0FLVC=xHLcw+0JBKHnDtGJFbCwdMT+eQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Kernel too old with core-image-minimal for Pine64
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
X-List-Received-Date: Sun, 11 Sep 2016 21:01:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Montez,

On Sun, 21 Aug 2016 11:27:12 Mont3z Claros wrote:
> I'm working on a bsp layer for SBC Pine64 and my image is successfully
> generated but I'm getting "FATAL: kernel too old" when booting the
> rootfs init.
> 
> My kernel is version 3.10 and I used Linaro 5.3 to compile all
> components of the image. I've tried adding: OLDEST_KERNEL = "3.10" and
> I also try using Linaro 4.9 but I still get the same error.

When you say you've tried adding OLDEST_KERNEL, where did you set that?

Another thing to note - conf/bitbake.conf sets OLDEST_KERNEL_aarch64 = "3.14", 
and since on Pine64 that override would presumably apply, unless you are also 
using an override when you set your value I would strongly suspect your value 
is being overridden. Run bitbake -e | less and then search for OLDEST_KERNEL 
with / to confirm - you'll be able to see not just the final value but the 
history of how the value got set.

To avoid this you'll likely need to set your OLDEST_KERNEL value with an 
override - the machine name should work i.e. assuming your MACHINE is "pine64" 
you would do:

OLDEST_KERNEL_pine64 = "3.10"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

