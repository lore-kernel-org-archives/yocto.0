Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06B24E016C5
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 06:07:09 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Oct 2013 06:07:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1063,1371106800"; d="scan'208";a="305629509"
Received: from unknown (HELO helios.localnet) ([10.252.120.216])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Oct 2013 06:07:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jawad Hassan <jawad@emblemtechnologies.com>
Date: Wed, 09 Oct 2013 14:07:06 +0100
Message-ID: <4669304.qs1L1ukoEQ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAPhCmJpAO1NaDGwc=ao8sWm94_7C_Uw0afit1MRma4A2WOLOFQ@mail.gmail.com>
References: <CAPhCmJrN9fEaainDVW70A1NSZA3c+oTb-fsx4_CkDJQ0qqdS-Q@mail.gmail.com>
	<1801165.6ZCs8TucHi@helios>
	<CAPhCmJpAO1NaDGwc=ao8sWm94_7C_Uw0afit1MRma4A2WOLOFQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
	Muhammad Uzair Arshad <uzair@emblemtechnologies.com>
Subject: Re: TtyUsb Yocto Issue
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
X-List-Received-Date: Wed, 09 Oct 2013 13:07:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 09 October 2013 05:36:37 Jawad Hassan wrote:
> Thanks for your reply, but we're not seeing any ttyUSB* entries in the /dev
> folder, the board is this one here:
> http://boundarydevices.com/products/nitrogen6_lite/

I have no personal experience with this board I'm afraid.

> Which should have at least one port available for connection.
> 
> But unfortunately we aren't seeing this device node. What should be our way
> forward with this?

I would assume either the kernel is not configured to enable the driver for 
these devices, or udev is not configured to create the appropriate device 
nodes.

I think perhaps the best thing would be to talk to someone who has worked on 
the support for this specific hardware. You might try asking about this on the 
meta-fsl-arm list.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

