Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E98CAE01416
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 17:40:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 17 Apr 2012 17:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="90264678"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Apr 2012 17:40:57 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4F8D8DB7.6030301@windriver.com>
References: <1334624465.26744.4.camel@dongxiao-osel>
	<4F8D8DB7.6030301@windriver.com>
Date: Wed, 18 Apr 2012 08:38:00 +0800
Message-ID: <1334709480.26744.10.camel@dongxiao-osel>
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
X-List-Received-Date: Wed, 18 Apr 2012 00:40:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-17 at 10:35 -0500, Mark Hatle wrote:
> On 4/16/12 8:01 PM, Xu, Dongxiao wrote:
> > Hi,
> >
> > I am testing beagleboard with RPM, and there is a question I am confused
> > with that PACKAGE_ARCH is renamed for certain packages. For example the
> > "acl" package, whose expected PACKAGE_ARCH is "armv7a-vfp-neon", however
> > in RPM file, the arch is renamed to "armv7a", see
> > "acl-2.2.51-r2.armv7a.rpm". However IPK package still shows
> > "acl_2.2.51-r2_armv7a-vfp-neon.ipk".
> >
> > Could anybody give hint on this?
> >
> > Thanks,
> > Dongxiao
> >
> 
> I've not seen that happen before.  Can you checked if an 
> acl-...armv7a-vfp-neon.rpm was generated and RPM is simply not using it, or was 
> it never generated?

No, there is no acl-xxx.armv7a-vfp-neon.rpm, only acl-xxx.armv7a.rpm
created.

Actually I think this issue does exist since our 1.1 release, you can
have a look at the package repo:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/rpm/armv7a-vfp-neon/

The directory is named as "armv7a-vfp-neon", however all the packages
under the directory are of "armv7a" architecture.

While see the ipk part:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/ipk/armv7a-vfp-neon/
The directory name and rpm architecture name are the same.

Thanks,
Dongxiao

> 
> As another user mentioned, it is possible for a package to say it wants a 
> specific arch type, but if it did -- it should be consistent between packaging 
> systems.
> 
> --Mark



