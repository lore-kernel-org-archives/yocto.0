Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45DCAE0044A
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 09:30:02 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Jun 2012 09:30:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="156222005"
Received: from unknown (HELO helios.localnet) ([10.252.120.119])
	by orsmga002.jf.intel.com with ESMTP; 11 Jun 2012 09:30:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jun 2012 17:29:59 +0100
Message-ID: <26798960.m4OGCU6P52@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-24-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FD5F85C.3030203@gmail.com>
References: <1B44395A-0DD8-4136-83B3-FD82C9F5DDCA@keylevel.com>
	<4FD59E5D.4080008@r-finger.com> <4FD5F85C.3030203@gmail.com>
MIME-Version: 1.0
Subject: Re: RaspberryPi Kernel - sometimes it works, sometimes it doesn't
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
X-List-Received-Date: Mon, 11 Jun 2012 16:30:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 11 June 2012 06:53:32 Khem Raj wrote:
> On 6/11/2012 12:29 AM, Tomas Frydrych wrote:
> > I find that -c clean does not work very well, afterward the package
> > gets recompiled but instead of the actual package packages being
> > rebuilt, an earlier version of the packages gets pulled out of
> > sstate into the image. I definitely saw this behaviour with Yocto
> > kernels, but I think happens with other packages as well; I always
> > do -c cleansstate now to avoid this.
> 
> yes thats the intended behavior if nothing changed that ensues a
> recompile then it will use precompiled sstate for the package

To clarify, it's designed to be able to determine when the recipe has changed 
in such a way that it needs to be rebuilt (by building up dependencies between 
variables and computing a checksum of the value of each one, which ends up in 
a checksum for each task); if it sees no change then the previous task output 
will be used from the sstate cache. It's worth noting however that until 
recently (post-1.2) we did not handle when local files referred to in SRC_URI 
changed. There also still may be other circumstances under which changes to 
the recipe or variables which it refers to will not change the sstate 
checksums; if you come across a situation where you made a change and sstate 
was re-used when you expected it to be rebuilt, please raise it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

