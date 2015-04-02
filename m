Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01FB8E00932; Thu,  2 Apr 2015 04:37:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A723E008EC
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 04:37:11 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 02 Apr 2015 04:37:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,510,1422950400"; d="scan'208";a="475896018"
Received: from asela3-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.21.1])
	by FMSMGA003.fm.intel.com with ESMTP; 02 Apr 2015 04:37:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
Date: Thu, 02 Apr 2015 12:37:09 +0100
Message-ID: <11611765.NtzfTBFTpN@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2F@PGSMSX101.gar.corp.intel.com>
References: <0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2F@PGSMSX101.gar.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Kernel Panic: /sbin/init not found
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
X-List-Received-Date: Thu, 02 Apr 2015 11:37:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chan Kit,

On Thursday 02 April 2015 09:25:35 Yu, Chan KitX wrote:
> My Yocto build environment was working perfectly until last week when I got
> kernel panic caused by missing/sbin/init. When I examined the image, I
> found that /sbin/init is indeed absent from the root image. To troubleshoot
> the issue, I tried building a stock Yocto whose target platform is 64-bit
> machine using a  freshly installed Ubuntu 14.04 from another build machine.
>  Despite that, the kernel panic still occurs and that's the main reason I'm
> writing here; that is to see if anyone else has the same issue. I did not
> make any change or any customization to local.conf aside from setting
> MACHINE to 64 bit and adding the following lines which enable multilib:
> 
> IMAGE_INSTALL = "lib32-connman"
> require conf/multilib.conf
> MULTILIBS = "multilib:lib32"
> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
> 
> I would be more than happy to provide necessary diagnostic message shall you
> request so. Let me know if you guys are able to reproduce this issue.

What version of the build system are you using? What exact image are you 
building? What image output type are you trying this with (ext3 / live / 
etc.)? What is your MACHINE value? Can you attach the manifest file for the 
image that is broken?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

