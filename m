Return-Path: <laurentiu.palcu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8554E013E8
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 05:21:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Jul 2013 05:18:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,676,1367996400"; d="scan'208";a="371114453"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.165])
	by orsmga002.jf.intel.com with ESMTP; 16 Jul 2013 05:21:05 -0700
Date: Tue, 16 Jul 2013 15:21:04 +0300
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20130716122104.GD2859@lpalcu-linux>
References: <alpine.DEB.2.02.1307160415290.4884@oneiric>
	<alpine.DEB.2.02.1307160440010.5415@oneiric>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1307160440010.5415@oneiric>
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
X-List-Received-Date: Tue, 16 Jul 2013 12:21:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

There a fix for this on oe-core ML:
http://patches.openembedded.org/patch/53761/

Thanks,
Laurentiu

On Tue, Jul 16, 2013 at 04:40:38AM -0700, Robert P. J. Day wrote:
> On Tue, 16 Jul 2013, Robert P. J. Day wrote:
> 
> >
> >   the current yocto arm toolchain here:
> >
> > http://downloads.yoctoproject.org/releases/yocto/yocto-1.0/toolchain/i686/
> >
> > doesn't install cleanly on fedora 19, a number of people who tried it
> > got a relocation error. i'll try it again later today and document it
> > more completely but i'm teaching all week so my testing time is
> > limited.
> 
>   whoops, sorry, link to wrong directory, the toolchain in question is
> here:
> 
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/toolchain/i686/
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

