Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A471E01572
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 01:35:12 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Aug 2013 01:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,792,1367996400"; d="scan'208";a="339986294"
Received: from unknown (HELO helios.localnet) ([10.252.122.169])
	by azsmga001.ch.intel.com with ESMTP; 01 Aug 2013 01:35:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Thu, 01 Aug 2013 09:35:08 +0100
Message-ID: <3556481.TFZYk16CGl@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <FDB39166-46D6-451C-9681-89E214958BF3@keylevel.com>
References: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
	<FDB39166-46D6-451C-9681-89E214958BF3@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Network booting
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
X-List-Received-Date: Thu, 01 Aug 2013 08:35:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chris,

On Wednesday 31 July 2013 22:25:42 Chris Tapp wrote:
> On 31 Jul 2013, at 21:30, Chris Tapp wrote:
> > Is there an easy way to have a system boot and load the rootfs from a
> > network server?
> > 
> > I'm using an x86 system and can have the kernel and an initrd on it. I
> > would use bootp, but a lot of end users either don't have this or will
> > not allow it to be used. I think it needs to go something like:
> > 
> > 1) Kernel loads the initrd and bring the network up (static or DHCP);
> > 2) The rootfs image can then be download;
> > 3) Some magic then makes this run...
> > 
> > This would allow easy update of the rootfs and makes it non-volatile
> > (which is good for this project).
> > 
> > Does this make sense, or is there a better / easier way to do it?
> 
> Looks like http://ipxe.org/ could be what's needed.

FWIW, a couple of years ago I did write a recipe for ipxe which I successfully
used for over-the-network booting with atom-pc. I never found a proper home
for it though so it's still sitting in one of my poky-contrib branches:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/tree/meta/recipes-bsp/ipxe?h=paule/ipxe

Feel free to make use of it if it helps you. (I can't promise it hasn't
bitrotted in the time since I wrote it, so it may need tweaking; I notice
I didn't even specify a SRCREV which really should be specified, and
I'm not sure if it's cross-compiling properly either).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

