Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46858E0030B
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 00:37:50 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 23 Dec 2011 00:37:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="50034716"
Received: from unknown (HELO helios.localnet) ([10.252.122.71])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Dec 2011 00:37:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>, yocto@yoctoproject.org
Date: Fri, 23 Dec 2011 08:37:47 +0000
Message-ID: <2143100.ORnxPSEQca@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.4 (Linux/3.0.0-14-generic-pae; KDE/4.7.4; i686; ; )
In-Reply-To: <5B0E0226-A68D-4AB1-91E3-B6F396816C52@dominion.thruhere.net>
References: <4EF34776.9030002@gmail.com>
	<5B0E0226-A68D-4AB1-91E3-B6F396816C52@dominion.thruhere.net>
MIME-Version: 1.0
Subject: Re: meta-ti?????
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
X-List-Received-Date: Fri, 23 Dec 2011 08:37:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 23 December 2011 09:28:31 Koen Kooi wrote:
> Op 22 dec. 2011, om 16:06 heeft Jim Abernathy het volgende geschreven:
> > I know the examples in the documentation of Yocto use meta-intel a lot
> > to get the board specific BSPs like meta-crownbay or meta-n450.
> > 
> > Is there a meta-ti or similar that gets you the meta-beagleboard and
> > meta-pandaboard?  If not how do you clone and checkout the pandaboard
> > BPS?
> http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstruments/
> 
> It has a README in there on how to set it up, read it and follow it
> precisely.

Just out of interest, why does meta-texasinstruments depend on meta-angstrom?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

