Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 778CCE00978; Wed,  8 Jul 2015 08:39:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AE22E0095D
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 08:39:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 08 Jul 2015 08:39:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,432,1432623600"; d="scan'208";a="725125691"
Received: from lsandov1-mobl-linux.zpn.intel.com (HELO [10.219.4.159])
	([10.219.4.159])
	by orsmga001.jf.intel.com with ESMTP; 08 Jul 2015 08:39:34 -0700
Message-ID: <559D445A.4010308@linux.intel.com>
Date: Wed, 08 Jul 2015 10:40:10 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Klaus Knopper <yocto@knopper.net>, 
	Yocto Mailinglist <yocto@yoctoproject.org>
References: <20150708145002.GO5636@knopper.net>
In-Reply-To: <20150708145002.GO5636@knopper.net>
Subject: Re: Selecting different kernel inside an image recipe
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
X-List-Received-Date: Wed, 08 Jul 2015 15:39:36 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 07/08/2015 09:50 AM, Klaus Knopper wrote:
> Hello list,
>
> I'm trying to build variantions/brands of an image that only differ in
> kernel configuration and kernel modules included, but everything else stays
> the same, for the exact same board, as in the main image.
>
> Setting PREFERRED_PROVIDER_virtual/kernel = "different_kernel"
> right inside in the new image recipe does not have any effect, as that
> variable seems to be evaluated exclusively in the local.conf machine
> file, which is read by all recipes.

This variable is commonly used inside configuration metadata (machine or 
distro conf files). You may try it there.

>
> I'm confident that it is somehow possible in yocto to create an
> additional image recipe that only differs in kernel, but I'm missing the
> HOWTO for this seemingly trivial task. :-(
>
> Any hints/links?
>
> With kind regards
> -Klaus
>

