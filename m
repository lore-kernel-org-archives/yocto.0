Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92CBAE00320
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 12:39:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Sep 2011 12:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="44591839"
Received: from unknown (HELO [10.255.14.13]) ([10.255.14.13])
	by orsmga002.jf.intel.com with ESMTP; 02 Sep 2011 12:39:31 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <B1028606-FA51-475C-A6D5-6EBC31929292@keylevel.com>
References: <B1028606-FA51-475C-A6D5-6EBC31929292@keylevel.com>
Date: Fri, 02 Sep 2011 14:39:13 -0500
Message-ID: <1314992353.31478.84.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Splitting processor and target in BSPs
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
X-List-Received-Date: Fri, 02 Sep 2011 19:39:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-09-02 at 00:26 -0700, Chris Tapp wrote:
> How should meta data be structured so that a layer can support a set  
> of systems using a set of processors?
> 
> For example, many of the 'eBox' systems use variants of the Vortex86  
> SoC. So, a set of machine files are needed for these (e.g. ebox-3300,  
> ebox-3500mx, etc.).
> 
> These have different peripherals available (e.g. some have serial,  
> some don't) and use different SoC variants with different cpu, sound,  
> etc. It would therefore make sense for the machine configuration to  
> inherit the SoC attributes (for the common features) and add (or  
> remove) machine specific attributes (e.g. serial) to these. This can  
> be done by putting the SoC bits in to an include.
> 
> However, kernel configuration becomes a little bit more complicated as  
> this is done by machine name. A kernel recipe will be needed for each  
> machine (e.g. for the different sound drivers), but I can't work out  
> how to do this using a base configuration for the SoCs that are shared  
> and then adding machine specific parts. I can do it using (for  
> example) a .defconfig for each machine, but that would require updates  
> to multiple files to change the SoC configuration.
> 
> I guess what I'm really asking is, is it possible to have a base CPU  
> configuration and add a machine configuration to this ?
> 
> I've recently seen discussion of .cfg kernel fragment files. Are these  
> what I should be looking at? Are these available in the releases or  
> only in the development branch?
> 

You might also be able to use 'KERNEL_FEATURES' to help manage the .cfg
fragments by machine.  For example, in the kernel recipes you can see:

meta/recipes-kernel/linux/linux-yocto_3.0.bb:

    # Functionality flags
    KERNEL_FEATURES="features/netfilter"
    KERNEL_FEATURES_append=" features/taskstats"
    KERNEL_FEATURES_append_qemux86=" cfg/sound"
    KERNEL_FEATURES_append_qemux86-64=" cfg/sound"

which map to features in the yocto kernel meta branch.

And in the kernel .bbappends in the kernel dev layer some more
explanation:

poky-extras/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.0.bbappend:

    # KERNEL_FEATURES are features to be added to the kernel, and must
    # point to configurations stored on the 'meta' branch of the kernel
    # that is being built.
    # KERNEL_FEATURES ?= <FOO>

Tom

> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



