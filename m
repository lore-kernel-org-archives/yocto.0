Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 082D1E0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 12:18:46 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 May 2012 12:18:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="139024765"
Received: from unknown (HELO [10.255.12.135]) ([10.255.12.135])
	by azsmga001.ch.intel.com with ESMTP; 04 May 2012 12:18:46 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <4FA41CAC.2090208@intel.com>
References: <cover.1335812928.git.tom.zanussi@intel.com>
	<3cea3e5b38f503cb2ac22bedf88e1ba14391c2ab.1335812928.git.tom.zanussi@intel.com>
	<4FA41CAC.2090208@intel.com>
Date: Fri, 04 May 2012 14:18:34 -0500
Message-ID: <1336159114.21923.15.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2] yocto-kernel: use BUILDDIR to find bblayers.conf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 May 2012 19:18:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-05-04 at 11:15 -0700, Scott Garman wrote:
> On 04/30/2012 12:12 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi<tom.zanussi@intel.com>
> >
> > The current code assumes that builddir == srcdir/build, which it
> > obviously isn't sometimes.  Use BUILDDIR to get the actual builddir
> > being used.
> >
> > Fixes [YOCTO #2219].
> >
> > Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> 
> Merged to denzil-next, thanks!
> 

Thanks, Scott!

Could you also merge the other patch that was part of this patchset?
(yocto-bsp: clarify help with reference to meta-intel)

Thanks,

Tom

> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next
> 
> Scott
> 



