Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C85DE0141E
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 22:23:13 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Apr 2012 22:23:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132232112"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by azsmga001.ch.intel.com with ESMTP; 17 Apr 2012 22:23:11 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <1334709480.26744.10.camel@dongxiao-osel>
References: <1334624465.26744.4.camel@dongxiao-osel>
	<4F8D8DB7.6030301@windriver.com>
	<1334709480.26744.10.camel@dongxiao-osel>
Date: Wed, 18 Apr 2012 13:20:14 +0800
Message-ID: <1334726414.26744.21.camel@dongxiao-osel>
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
X-List-Received-Date: Wed, 18 Apr 2012 05:23:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-04-18 at 08:38 +0800, Xu, Dongxiao wrote:
> On Tue, 2012-04-17 at 10:35 -0500, Mark Hatle wrote:
> > On 4/16/12 8:01 PM, Xu, Dongxiao wrote:
> > > Hi,
> > >
> > > I am testing beagleboard with RPM, and there is a question I am confused
> > > with that PACKAGE_ARCH is renamed for certain packages. For example the
> > > "acl" package, whose expected PACKAGE_ARCH is "armv7a-vfp-neon", however
> > > in RPM file, the arch is renamed to "armv7a", see
> > > "acl-2.2.51-r2.armv7a.rpm". However IPK package still shows
> > > "acl_2.2.51-r2_armv7a-vfp-neon.ipk".
> > >
> > > Could anybody give hint on this?
> > >
> > > Thanks,
> > > Dongxiao
> > >
> > 
> > I've not seen that happen before.  Can you checked if an 
> > acl-...armv7a-vfp-neon.rpm was generated and RPM is simply not using it, or was 
> > it never generated?
> 
> No, there is no acl-xxx.armv7a-vfp-neon.rpm, only acl-xxx.armv7a.rpm
> created.

Just looked at this issue with Lianhao, and we got some clues.

It seems that we don't allow '-' exists in architecture label within
RPM. Here for the beagleboard case, we use the parameter as:

rpm ... --target "armv7a-vfp-neon-poky-linux"

I think the RPM internal strips all the contents after the first '-' and
use "armv7a" as the architecture label.

Similar is the multilib case, we can see from the code that, we use
'lib64_qemux86' instead of 'lib64-qemux86' as the architecture label.

If our thoughts are right, I think we need a fix for that before 1.2
release?

Thanks,
Dongxiao

> 
> Actually I think this issue does exist since our 1.1 release, you can
> have a look at the package repo:
> 
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/rpm/armv7a-vfp-neon/
> 
> The directory is named as "armv7a-vfp-neon", however all the packages
> under the directory are of "armv7a" architecture.
> 
> While see the ipk part:
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/ipk/armv7a-vfp-neon/
> The directory name and rpm architecture name are the same.
> 
> Thanks,
> Dongxiao
> 
> > 
> > As another user mentioned, it is possible for a package to say it wants a 
> > specific arch type, but if it did -- it should be consistent between packaging 
> > systems.
> > 
> > --Mark
> 



