Return-Path: <laurentiu.palcu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DE58E013E8
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 04:21:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Jul 2013 04:21:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,676,1367996400"; d="scan'208";a="332082051"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.165])
	by azsmga001.ch.intel.com with ESMTP; 16 Jul 2013 04:21:42 -0700
Date: Tue, 16 Jul 2013 14:21:41 +0300
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20130716112141.GC2859@lpalcu-linux>
References: <alpine.DEB.2.02.1307160415290.4884@oneiric>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1307160415290.4884@oneiric>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: pre-built yocto toolchains don't install cleanly on fedora 19
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
X-List-Received-Date: Tue, 16 Jul 2013 11:21:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I'm on it. The issue is tracked here:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=4853

Thanks,
Laurentiu

On Tue, Jul 16, 2013 at 04:18:24AM -0700, Robert P. J. Day wrote:
> 
>   the current yocto arm toolchain here:
> 
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.0/toolchain/i686/
> 
> doesn't install cleanly on fedora 19, a number of people who tried it
> got a relocation error. i'll try it again later today and document it
> more completely but i'm teaching all week so my testing time is
> limited.
> 
>   can someone else try it -- just try to install the arm toolchain on
> f19 by running script and see what happens. the same relocation error
> doesn't happen on ubuntu.
> 
> rday
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

