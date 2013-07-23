Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEE32E01528
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 10:36:23 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 23 Jul 2013 10:36:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,729,1367996400"; d="scan'208";a="272165204"
Received: from unknown (HELO helios.localnet) ([10.252.122.157])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Jul 2013 10:35:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Date: Tue, 23 Jul 2013 18:35:51 +0100
Message-ID: <1406887.iQETxedpIY@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAFZh4h_PG+MAFjgyq-RyTRs-NX9DqJ46hggBqbrN8m1K=J-bog@mail.gmail.com>
References: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
	<4860044.KltMD8WHhS@helios>
	<CAFZh4h_PG+MAFjgyq-RyTRs-NX9DqJ46hggBqbrN8m1K=J-bog@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Should I be worried about this nativesdk-packagegroup-sdk-host warning while building meta-toolchain
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
X-List-Received-Date: Tue, 23 Jul 2013 17:36:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 23 July 2013 13:23:46 Brian Hutchinson wrote:
> On Tue, Jul 23, 2013 at 1:19 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> > Hi Brian,
> > 
> > Did you perhaps build meta-toolchain and then change MACHINE and build it
> > again? What happened prior to this build?
> > 
> > 
> > I ran bitbake meta-toolchain and when that was complete I edited my
> 
> local.conf and uncommented the following line so I would get a 32 bit
> toolchain:
> SDKMACHINE ?= "i686"
> 
> ... and then I ran bitbake meta-toolchain again and that is when the
> messages appeared that I copied in the OP.

OK, so I can see what's happening here. The package name does not change 
depending on what SDKMACHINE is set to and thus it sees two "different" writes 
to the same file.

I'd need to verify in the case of where you switched back and rebuilt meta-
toolchain again for x86-64, but I think in this instance you'll find that it 
isn't a problem since it should build (or restore from shared state) the 
appropriate version of  nativesdk-packagegroup-sdk-host.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

