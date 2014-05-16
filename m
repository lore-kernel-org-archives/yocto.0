Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F5FAE00B68; Fri, 16 May 2014 06:29:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga02.intel.com (unknown [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9DC7E00975
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 06:29:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 May 2014 06:29:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1067,1389772800"; d="scan'208";a="512768504"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.87])
	by orsmga001.jf.intel.com with ESMTP; 16 May 2014 06:29:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 16 May 2014 14:29:54 +0100
Message-ID: <1785321.cmm0B5Wxzs@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.3-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <alpine.LFD.2.11.1405160735420.16596@localhost>
References: <alpine.LFD.2.11.1404291231440.3997@localhost>
	<1628239.GfKczbckvq@peggleto-mobl5.ger.corp.intel.com>
	<alpine.LFD.2.11.1405160735420.16596@localhost>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: can one lay hands on a galileo-based dev kit?
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
X-List-Received-Date: Fri, 16 May 2014 13:29:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 16 May 2014 07:37:01 Robert P. J. Day wrote:
> On Fri, 16 May 2014, Paul Eggleton wrote:
> 
> ... snip ...
> 
> > So apologies for not replying earlier - I've not been directly involved in
> > the BSP for Galileo, but I have been providing support for the team doing
> > the IoT DevKit work. You should be able to build images for Galileo using
> > what's in meta-intel-iot-devkit directly; you could also use the layers
> > within it separately using your own separate OE-Core / Poky tree, but
> > it's not really designed to be used in that way. If you really want to do
> > it separately you should take care to use all three layers
> > (meta-clanton-bsp, meta-galileo, and meta-iot-devkit) and set your DISTRO
> > = "iot-devkit".
> 
>   should any of these layers be added to:
> 
> http://layers.openembedded.org/layerindex/branch/master/layers/
> 
> for findability?

Whilst I would usually say yes, in this case I'm not sure that would be ideal. 
The layer index is designed to index individual layers, but the layers within 
this repository aren't meant to be used separately; people who do try to do 
that will have to know what they are doing. This isn't the canonical source of 
the BSP either - the official BSP is what gets published as a tarball and its 
usage is documented in the Quark BSP build guide.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

