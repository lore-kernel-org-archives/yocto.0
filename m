Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B732DE0030C
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 06:10:35 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Dec 2011 06:10:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="84502810"
Received: from unknown (HELO helios.localnet) ([10.252.122.2])
	by orsmga002.jf.intel.com with ESMTP; 07 Dec 2011 06:10:33 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>, yocto@yoctoproject.org
Date: Wed, 07 Dec 2011 14:10:32 +0000
Message-ID: <2008188.zyrPGc484p@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-13-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<1605255.ltn5bNtJ0l@helios>
	<752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
MIME-Version: 1.0
Subject: Re: Variable locality too restricted.
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
X-List-Received-Date: Wed, 07 Dec 2011 14:10:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 07 December 2011 15:07:54 Koen Kooi wrote:
> > Changing MACHINE has other implications though; do we not have any other
> > way to switch out the kernel on a per-image basis?
> 
> And how would that work from a packaging perspective? AIUI changing
> DISTRO/MACHINE flags in an image is a recipe for failure.

I'm not suggesting changing the kernel configuration for the existing kernel; 
naturally you would need a different kernel recipe. Surely you should just be 
able to have a different kernel that is built and installed for a different 
image file? No invalidated packages necessary.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

