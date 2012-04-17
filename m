Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C36A7E013A8
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 08:05:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Apr 2012 08:05:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="130706692"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by orsmga001.jf.intel.com with ESMTP; 17 Apr 2012 08:05:12 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: yocto <yocto@yoctoproject.org>
In-Reply-To: <1334624465.26744.4.camel@dongxiao-osel>
References: <1334624465.26744.4.camel@dongxiao-osel>
Date: Tue, 17 Apr 2012 23:02:16 +0800
Message-ID: <1334674936.26744.6.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
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
X-List-Received-Date: Tue, 17 Apr 2012 15:05:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Any hint on this question?

I need answers to address a Hob issue. Thanks in advance.

Thanks,
Dongxiao

On Tue, 2012-04-17 at 09:01 +0800, Xu, Dongxiao wrote:
> Hi,
> 
> I am testing beagleboard with RPM, and there is a question I am confused
> with that PACKAGE_ARCH is renamed for certain packages. For example the
> "acl" package, whose expected PACKAGE_ARCH is "armv7a-vfp-neon", however
> in RPM file, the arch is renamed to "armv7a", see
> "acl-2.2.51-r2.armv7a.rpm". However IPK package still shows
> "acl_2.2.51-r2_armv7a-vfp-neon.ipk".
> 
> Could anybody give hint on this? 
> 
> Thanks,
> Dongxiao
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



