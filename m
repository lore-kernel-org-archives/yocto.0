Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F4D2E006B7; Fri,  1 Aug 2014 02:19:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1DAEE0056A
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 02:19:09 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 01 Aug 2014 02:12:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,778,1400050800"; d="scan'208";a="570391381"
Received: from pwarusav-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.170])
	by fmsmga001.fm.intel.com with ESMTP; 01 Aug 2014 02:19:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Pushpa Teja <pushpa@jtechindia.in>
Date: Fri, 01 Aug 2014 10:19:01 +0100
Message-ID: <1624546.n1hBMRbNts@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <BLU185-W32A6A2A4836734A928F13BC7E70@phx.gbl>
References: <mailman.21236.1406788558.26702.yocto@yoctoproject.org>
	<3448592.XcGlM2j8ls@peggleto-mobl5.ger.corp.intel.com>
	<BLU185-W32A6A2A4836734A928F13BC7E70@phx.gbl>
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
X-List-Received-Date: Fri, 01 Aug 2014 09:19:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 01 August 2014 03:43:55 Pushpa Teja wrote:
>            Thanks for your reply . i have solved this problem but i got
> another problem i am trying to check out with mirrors but not getting the
> solution  i am getting the logs like below please give solution for this .
> 
> 
> WARNING: Failed to fetch URL
> http://www.freescale.com/lgfiles/NMG/MAD/YOCTO//libfslcodec-3.0.11.bin;fsl-> eula=true, attempting MIRRORS if available
> WARNING: Failed to fetch URL
> http://www.freescale.com/lgfiles/NMG/MAD/YOCTO//fsl-gpu-sdk-1.1.bin;fsl-eul
> a=true, attempting MIRRORS if available ERROR: Fetcher failure: Fetch
> command failed with exit code 4, output: Read error (Connection timed out)
> in headers.
> Read error (Connection timed out) in headers.
> 
> ERROR: Function failed: Fetcher failure for URL:
> 'http://www.freescale.com/lgfiles/NMG/MAD/YOCTO//libfslcodec-3.0.11.bin;fsl
> -eula=true'. Unable to fetch URL from any source.
> ERROR: Logfile of failure
> stored in:
> /home/teju/fsl-arm-yocto-bsp/build/tmp/work/riotboard-poky-linux-gnueabi/li
> bfslcodec/3.0.11-r0/temp/log.do_fetch.9090 ERROR: Task 1615
> (/home/teju/fsl-arm-yocto-bsp/sources/meta-fsl-bsp-release/imx/meta-fsl-arm
> /recipes-multimedia/libfslcodec/libfslcodec_3.0.11.bb, do_fetch) failed with
> exit code '1' ERROR: Fetcher failure: Fetch command failed with exit code
> 4, output: Read error (Connection timed out) in headers.
> Read error (Connection timed out) in headers.
> 
> ERROR: Function failed: Fetcher failure for URL:
> 'http://www.freescale.com/lgfiles/NMG/MAD/YOCTO//fsl-gpu-sdk-1.1.bin;fsl-eu
> la=true'. Unable to fetch URL from any source.
> ERROR: Logfile of failure
> stored in:
> /home/teju/fsl-arm-yocto-bsp/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-li
> nux-gnueabi/fsl-gpu-sdk/1.1-r0/temp/log.do_fetch.9093 ERROR: Task 391
> (/home/teju/fsl-arm-yocto-bsp/sources/meta-fsl-bsp-release/imx/meta-fsl-dem
> os/recipes-graphics/fsl-gpu-sdk/fsl-gpu-sdk_1.1.bb, do_fetch) failed with
> exit code '1' 

This looks like the same error, just for different recipes - I think maybe you 
have not solved the underlying problem.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

