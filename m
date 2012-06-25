Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61785E01452
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 02:26:05 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Jun 2012 02:25:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="157833263"
Received: from unknown (HELO helios.localnet) ([10.252.120.191])
	by orsmga001.jf.intel.com with ESMTP; 25 Jun 2012 02:25:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Mon, 25 Jun 2012 10:25:41 +0100
Message-ID: <1944502.CqnIyhTMp1@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <A3AB967E-1604-4206-B37F-7B2FA4FDFA77@keylevel.com>
References: <DCA17C0A-86FA-4EE3-8D86-83348F6DCF36@keylevel.com>
	<1743594.b4UxPuuKdH@helios>
	<A3AB967E-1604-4206-B37F-7B2FA4FDFA77@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: RaspberryPi Kernel - Fails to boot when sound driver is a built-in
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
X-List-Received-Date: Mon, 25 Jun 2012 09:26:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 24 June 2012 21:31:41 Chris Tapp wrote:
> On 24 Jun 2012, at 16:25, Paul Eggleton wrote:
> > Well, FWIW I can't even get a kernel with the default configuration built
> > from meta-raspberrypi to boot - I even tried copying it to a Debian
> > SD-card and it doesn't boot there either. All I get is a black screen or
> > with the newer firmware I get the four-colour display which apparently
> > indicates it couldn't load the kernel.
> 
> Firstly:
> 1) Are you using the SRCREVs as supplied, or have you updated them?
> 2) Which version of the bootfiles are you using?
> 
> Everything is in such a state of flux at the moment that it does seem to be
> difficult to be sure what works one day will work if you upgrade anything
> to use the latest versions. I can get some combinations to work, the most
> up-to-date being:
> 
> 1) Use the bootfiles with SRCREV =
> "9308c7ed387e5422883753f7fb71a75506abd1f8" 2) Build the kernel using SRCREV
> = "3fc65f9f291fb19cad434968a4a0f66ab749e637"

So far I've tried the following:

1) The current default in meta-raspberrypi - bootfiles at 
56cd7ffb3f7244017c8eb3b492ea37592c678506 and kernel 
0ec4154d64ebba48ca2446cde60a90546311defc

2) The above kernel with known-good bootfiles from a Debian SD card

3) The above kernel *on* the known-good Debian SD card

4) Known good kernel with the above bootfiles

5) The combination you suggested above

6) The latest available kernel + bootfiles

Of those, only option 4 sort-of worked.

> BTW - you need to update the .conf file for the machine to use ttyAMA0 if
> you want to use the serial port for kernel debug.

I did that, however it's not going to be much help as I don't yet have a 
serial cable (I have one on order).
 
I'm beginning to wonder if it's something about the way the kernel is being 
built. Are you using denzil or master of Poky?/OE-core?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

