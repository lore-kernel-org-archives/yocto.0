Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFE69E00D19; Wed,  2 Mar 2016 00:57:42 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A034DE00D0E
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 00:57:41 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 02 Mar 2016 00:57:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,527,1449561600"; d="scan'208";a="925005446"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2016 00:57:17 -0800
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.51])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 91C1A6A4002;
	Wed,  2 Mar 2016 01:44:57 -0800 (PST)
Date: Wed, 2 Mar 2016 08:47:35 +0200
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Rudolf J Streif <rudolf.streif@gmail.com>
Message-ID: <20160302064735.GA21419@linux.intel.com>
References: <5285202.8PW0mz0glJ@rjs-zotac.streifs.net>
MIME-Version: 1.0
In-Reply-To: <5285202.8PW0mz0glJ@rjs-zotac.streifs.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [wic] Creating sdimage-bootpart
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Mar 2016 08:57:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rudolf,

Interesting. I thought that this commit shoud fix the issue:
http://cgit.openembedded.org/openembedded-core/commit/?id=264c03e854f77c3b62acb710384f66716ccbf469

Which branch do you use?

On Tue, Mar 01, 2016 at 08:42:02AM -0800, Rudolf J Streif wrote:
> I tried creating an image with wic using sdimage-bootpart which produces this 
> error message:
> 
> ---------
> wic create sdimage-bootpart -e core-image-base -D
> Checking basic build environment...
> Done.
> 
> Creating image(s)...
> 
> <removed for clarity>
>   File 
> "/run/media/rstreif/YoctoDevelop/yocto/poky/scripts/lib/wic/imager/direct.py", 
> line 67, in __init__
>     self.ptable_format = self.ks.bootloader.ptable
> AttributeError: 'NoneType' object has no attribute 'ptable'
> ---------
> 
> 
> The reason for this message is that sdimage-bootpart.wks does not have a 
> bootloader entry and consequently self.ks.bootloader = None.
> 
> As a workaround you can of course simply adding a bootloader entry to the wks 
> even if it's not needed/used when creating an image for Beaglebone etc.
> 
> The question is what the correct behavior should be:
> 
> 1. bootloader entry in wks is mandatory, then the wks parser should flag it as 
> an error if it's not present.
> 
> 2. bootloader entry in wks is optional, then the DirectImageCreator class 
> should be able to handle that correctly.
> 
> 
> I think the latter should be the correct behavior. However, the 
> DirectImageCreator class has some troublesome reliance on that entry, in 
> particular that the source plugin for the overall image creation seems to be, 
> for convenience reasons supposedly, associated with it.
> 
> Cheers,
> Rudi
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
--
Regards,
Ed

