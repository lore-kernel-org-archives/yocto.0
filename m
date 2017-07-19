Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 746C0E00BC0; Wed, 19 Jul 2017 06:03:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8F31E00B76
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 06:03:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 19 Jul 2017 06:03:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,381,1496127600"; d="scan'208";a="1153059593"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by orsmga001.jf.intel.com with ESMTP; 19 Jul 2017 06:03:19 -0700
Message-ID: <1500469900.2230.1.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: JAYMIN DABHI <jaymin.dabhi@vivaldi.net>
Date: Wed, 19 Jul 2017 08:11:40 -0500
In-Reply-To: <3709be24aaf0557d2d66d1c93fb3c189@webmail.vivaldi.net>
References: <3709be24aaf0557d2d66d1c93fb3c189@webmail.vivaldi.net>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Error while integrating PyPy module in Yocto (Jethro branch) build.
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
X-List-Received-Date: Wed, 19 Jul 2017 13:03:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2017-07-19 at 12:39 +0000, JAYMIN DABHI wrote:
> Hi All,
> 
> I am trying to integrate PyPy in my current Yocto (Jethro branch)
> build for my i.MX6UL processor based development board. The board has
> "armv7a" (cortexa7) architecture. 
> 
> I am using "meta-pypy" layer from here and inherit the pypy package in
> my local.conf.
> But, it gives me error during bitbaking. I am bitbaking the
> "core-image-base".
> The error is as below :
> ERROR: Fetcher failure: Unable to find file file://pypy-4.0.1-cortexa7.tar.bz2 anywhere.
> I think, it can't find the package "pypy-4.0.1-cortexa7.tar.bz2" in
> pypy directory.


Make sure the is the proper ARCH tarball in the recipes/pypy/pypy
folder. If not there, then the layer does not support that architecture.

leo
> 
> What should be the other possible reason? and How it can be solved?
> 
> 
> Suggestions are welcome.
> 
> 
> Thanks,
> -
> JAYMIN
> 
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



