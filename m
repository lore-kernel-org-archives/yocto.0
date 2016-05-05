Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AC4DE00DFE; Thu,  5 May 2016 11:49:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48CDFE00DFE
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 11:49:50 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 05 May 2016 11:49:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,583,1455004800"; d="scan'208";a="799737880"
Received: from cwchuah-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.137.193])
	by orsmga003.jf.intel.com with ESMTP; 05 May 2016 11:49:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
Date: Fri, 06 May 2016 06:49:41 +1200
Message-ID: <2067823.enEVvGE1pE@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.8-300.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <20160505020837.GA20829@nyx.americas.hpqcorp.net>
References: <20160505020837.GA20829@nyx.americas.hpqcorp.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Multiple MACHINEs in a single build?
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
X-List-Received-Date: Thu, 05 May 2016 18:49:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Marcelo,

On Wed, 04 May 2016 20:08:42 Marcelo E. Magallon wrote:
> I suspect this is documented in a FAQ somewhere, but I'm failing to hit
> the correct keywords when googling...
> 
> Is there a way to support building images for multiple MACHINEs in a
> single workspace at the same time?
> 
> This works:
> 
> 	$ MACHINE=qemux86 bitbake core-image-minimal
> 	$ MACHINE=qemux86-64 bitbake core-image-minimal
> 
> and bitbake parallelizes the build across tasks. What I'm trying to
> figure out is if it's possible to run two bitbake instances with
> different MACHINE values on different hosts but writing to the same
> workspace (say, over NFS).

You can do builds for two different machines *sequentially*, reusing the same 
TMPDIR (or alternatively a different TMPDIR using the same sstate-cache or a 
mirror thereof) - tasks that were completed in the first build that don't need 
to be run differently for the second machine won't be re-run in the second 
build, so there is some level of efficiency to be had.

You cannot really run these builds concurrently though (you definitely can't 
sharing the same TMPDIR). However, as part of the plan for 2.2 we will be 
looking into how we can do this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

