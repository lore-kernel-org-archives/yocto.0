Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB48CE01416
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 06:12:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Apr 2012 06:12:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="131181052"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by orsmga001.jf.intel.com with ESMTP; 18 Apr 2012 06:12:57 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1334753748.24091.93.camel@ted>
References: <1334624465.26744.4.camel@dongxiao-osel>
	<4F8D8DB7.6030301@windriver.com>
	<1334709480.26744.10.camel@dongxiao-osel>
	,<1334726414.26744.21.camel@dongxiao-osel>
	<C3CEA23F-CADF-4127-AFBE-191B2CE602BC@windriver.com>
	<1334753748.24091.93.camel@ted>
Date: Wed, 18 Apr 2012 21:09:59 +0800
Message-ID: <1334754599.26744.22.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: A question about PACKAGE_ARCH renaming
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
X-List-Received-Date: Wed, 18 Apr 2012 13:12:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-04-18 at 13:55 +0100, Richard Purdie wrote:
> On Wed, 2012-04-18 at 12:45 +0000, Hatle, Mark wrote:
> > There is/was a conversion that changed - to _ in the package arch.  And yes this needs to be fixed ASAP.
> 
> Let put this really simply. We are not doing this just as the -rc4 is
> about to build. If we want to start considering a change like this we
> might as well abort the release, start again and slip four weeks.
> 
> Why? That dash syntax works fine in opkg and is in use in real world
> opkg feeds. This appears to be an rpm only issue. It also only appears
> to be directly affecting hob right at this point.
> 
> When we filtered MACHINE people complained a lot. When we filtered
> MACHINE_ARCH there were more complaints. If you just put the filtering
> straight onto PACKAGE_ARCH as well, there will be immense trouble as it
> will badly break Angstrom for a start :(.
> 
> I'd ask people think about what they're proposing and put it into
> perspective.
> 
> I believe Dongxiao has a patch which would allow us to work around the
> issue in hob for this release and then we can re-assess this issue in
> 1.3. I suspect the fix is going to be to drop the name mangling in the
> core and move it to be specific to rpm.

A bug 2328 is filed for this issue.

Thanks,
Dongxiao

> 
> Cheers,
> 
> Richard
> 
> 
> 
> 



