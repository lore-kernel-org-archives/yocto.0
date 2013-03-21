Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F0B1E014A5
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 03:26:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Mar 2013 03:24:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,884,1355126400"; d="scan'208";a="282665332"
Received: from unknown (HELO helios.localnet) ([10.255.13.149])
	by orsmga001.jf.intel.com with ESMTP; 21 Mar 2013 03:25:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: David Mulder <dmulder@lasx.com>
Date: Thu, 21 Mar 2013 10:25:56 +0000
Message-ID: <8690667.yHAQgTMMW4@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <19F0379280417C4A8FE3BD23AA7298E5013484CF@EXMBX202A.mmeprod.cbeyond>
References: <19F0379280417C4A8FE3BD23AA7298E5013484CF@EXMBX202A.mmeprod.cbeyond>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Building uio-pci-generic into core-image-minimal
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
X-List-Received-Date: Thu, 21 Mar 2013 10:26:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 19 March 2013 23:35:57 David Mulder wrote:
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: Thursday, February 21, 2013 11:53 AM
> > I've now simply cherry-picked the two patches that came before this plus
> > my
> > patch from master on top of the 1.3 release tag, and tested the result;
> > patches are attached.
> 
> Hi, Paul.
> 
> Just a note that this problem ('menuconfig', 'bitbake core-image-minimal'
> (hddimg has correct kernel), 'bitbake core-image-minimal' (hddimage has
> oldest-built kernel)) seems to be in 1.4 M4, which I just tried today, even
> though you checked in patches to fix it a month ago.

I was puzzling over this for a bit until I checked - FYI, my patch (poky 
revision 406cb9920fad57a23d2139f657c41598eb5087bf) did not make it into 
1.4_M4. It is in master and will be in M5 and of course the final 1.4 release.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

