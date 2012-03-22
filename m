Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6996DE013A3
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 10:45:36 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Mar 2012 10:45:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="122071362"
Received: from unknown (HELO helios.localnet) ([10.252.123.227])
	by azsmga001.ch.intel.com with ESMTP; 22 Mar 2012 10:45:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Mar 2012 17:45:25 +0000
Message-ID: <26661316.CjVfTJnL8v@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F6B4B98.6050106@linux.intel.com>
References: <cover.1331666101.git.dvhart@linux.intel.com>
	<11107389.LZ9REiQeM5@helios> <4F6B4B98.6050106@linux.intel.com>
MIME-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 1/1] ddimage: Add script for writing images to boot media
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
X-List-Received-Date: Thu, 22 Mar 2012 17:45:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 22 March 2012 08:56:08 Darren Hart wrote:
> On 03/21/2012 05:26 PM, Paul Eggleton wrote:
> > On Wednesday 21 March 2012 16:06:14 Darren Hart wrote:
> >> Any objections to this going in?
> > 
> > No objections, looks like a really useful tool; a couple of suggestions
> > though (sorry for not looking at it earlier):
> > 
> > * Is it worth checking if the target device is mounted and erroring out if
> > so?
> That's a good suggestion. Alright with you if that is a follow-on patch?

Sure, sounds fine to me.
 
> > * Not sure but it may be worth waiting a few seconds after the sync before
> > exiting; I've seen some hardware that returns control to userspace before
> > the hardware has actually finished writing.
> 
> That may be, but anything we assume will be wrong for some hardware. The
> sticks I have flash an LED for a few seconds afterwards, indicating writing.

Many do, yes. I guess it was just a simple idea to avoid potential issues 
particularly for those that don't have an LED.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

