Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 669A7E00736; Thu, 31 Jul 2014 06:54:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BDF2E0056A
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 06:54:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 Jul 2014 06:54:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,772,1400050800"; d="scan'208";a="569963889"
Received: from sawijeko-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.98])
	by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2014 06:53:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Pushpa Teja <pushpa@jtechindia.in>
Date: Thu, 31 Jul 2014 14:53:25 +0100
Message-ID: <3448592.XcGlM2j8ls@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <BLU185-W314210210B56F38AFF8969C7E60@phx.gbl>
References: <mailman.21236.1406788558.26702.yocto@yoctoproject.org>
	<BLU185-W314210210B56F38AFF8969C7E60@phx.gbl>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, sadasivam <sadasivam.b@jtechindia.com>
Subject: Re: yocto Digest, Vol 46, Issue 109
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
X-List-Received-Date: Thu, 31 Jul 2014 13:54:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Pushpa,

On Thursday 31 July 2014 08:04:56 Pushpa Teja wrote:
>           iam trying to build yacto for riot board when ever i am giving
> bitbake getting the below error i strucked in this point please guide me .
> 
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: Failed to fetch URL
> http://downloads.sourceforge.net/e2fsprogs/e2fsprogs-1.42.8.tar.gz,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command
> failed with exit code 4, output: Read error (Connection timed out) in
> headers.
> Read error (Connection timed out) in headers.
> 
> ERROR: Function failed: Fetcher failure for URL:
> 'http://downloads.sourceforge.net/e2fsprogs/e2fsprogs-1.42.8.tar.gz'.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /home/teju/fsl-arm-yocto-bsp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
> gnueabi/e2fsprogs/1.42.8-r0/temp/log.do_fetch.9563 ERROR: Task 1746
> (/home/teju/fsl-arm-yocto-bsp/sources/poky/meta/recipes-devtools/e2fsprogs/
> e2fsprogs_1.42.8.bb, do_fetch) failed with exit code '1' WARNING: Failed to
> fetch URL
> http://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-0.10
> .31.tar.bz2, attempting MIRRORS if available 

This sounds like a problem with your connection. Are you behind some kind of 
proxy or firewall? If downloading from the original site failed it should have 
attempted to fetch it from our source mirror at 
http://downloads.yoctoproject.org/mirror/sources/ ; if that failed too it's 
almost certainly a connection issue. I've just checked and 
e2fsprogs-1.42.8.tar.gz definitely exists on our source mirror. You can double-
check exactly what happened by looking in log.do_fetch as indicated in the 
output you posted.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

