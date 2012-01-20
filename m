Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD6CDE00307
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 09:15:54 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Jan 2012 09:15:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="98797229"
Received: from unknown (HELO helios.localnet) ([10.252.122.213])
	by orsmga001.jf.intel.com with ESMTP; 20 Jan 2012 09:15:53 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 20 Jan 2012 17:15:49 +0000
Message-ID: <1641254.ZQ0cu1g22E@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-14-generic-pae; KDE/4.7.4; i686; ; )
In-Reply-To: <CADzUK1Lh9sDeiyXxo-K73FrHEz==kBDO=N_mH9GeGMSKYhPEzw@mail.gmail.com>
References: <CANFv2En8WfmoBpzqRYU9hhOH9aCMGTBgML41Ee+uaXc1MJrNjg@mail.gmail.com>
	<4F199299.4000003@gmail.com>
	<CADzUK1Lh9sDeiyXxo-K73FrHEz==kBDO=N_mH9GeGMSKYhPEzw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: core-image-sato-directdisk
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
X-List-Received-Date: Fri, 20 Jan 2012 17:15:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 20 January 2012 11:54:44 autif khan wrote:
> > Did you file a bug on this?
> 
> I have not. I am not sure I should. I am not even sure whoose call it
> should be weather or not this goes in README.hardware. I hope someone
> chimes in

So I would say if any of our documentation is out-of-date or unclear, it 
should be fixed, no deliberation needed :)

However, in Poky master, README.hardware has now been updated to remove 
references to the old directdisk images. It could be that we need to 
explicitly add something like what you have written about writing the image to 
a hard disk, but for the moment it is at least no longer out-of-date.

At the very least a great start would be to put your instructions up as a page 
on the Yocto Project wiki.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

