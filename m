Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0039E00307
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 07:31:04 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Feb 2012 07:31:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="105696841"
Received: from unknown (HELO helios.localnet) ([10.252.123.13])
	by orsmga001.jf.intel.com with ESMTP; 09 Feb 2012 07:31:03 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Koen Kooi <koen@beagleboard.org>
Date: Thu, 09 Feb 2012 15:31:02 +0000
Message-ID: <2515705.YAd3HxSNCM@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-15-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <3FF9BD4A-F07C-4958-8758-9D4DC02171A0@beagleboard.org>
References: <4F323C52.8030304@intel.com> <1636213.TrTs1YKXOm@helios>
	<3FF9BD4A-F07C-4958-8758-9D4DC02171A0@beagleboard.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Upstream-Status finally @ 100%
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
X-List-Received-Date: Thu, 09 Feb 2012 15:31:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 09 February 2012 15:51:11 Koen Kooi wrote:
> > The status ought to be correct with regard to the patch author's
> > assessment of whether or not the patch can go upstream.
> 
> That's where I disagree, it's called 'Upstream-status', not
> 'Perceived-upstream-status'. The field should reflect the status from an
> upstream perspective, not from the OE perspective. So both 'Pending' and
> 'Inappropriate' boil down to 'Not submitted' currently. Maybe I'm
> overthinking all this :)

Well unless I'm mistaken, the purpose of the field for which it was originally 
introduced is as I stated it, to track where we (layer maintainers) are in 
sending things upstream since the expectation is that we will be the ones 
doing the work required to do that. Whether or not the label(s) that get used 
accurately communicate that is another matter.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

