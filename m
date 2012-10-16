Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB6BDE011AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 09:06:37 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Oct 2012 09:06:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,593,1344236400"; d="scan'208";a="206548221"
Received: from unknown (HELO helios.localnet) ([10.252.122.78])
	by orsmga001.jf.intel.com with ESMTP; 16 Oct 2012 09:06:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
Date: Tue, 16 Oct 2012 17:06:35 +0100
Message-ID: <1643755.JoZOaIgQYA@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D9618A1@Mercury.usurf.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D9618A1@Mercury.usurf.usu.edu>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: lm-sensors not available as a package?
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
X-List-Received-Date: Tue, 16 Oct 2012 16:06:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 16 October 2012 16:00:01 Jonathan Haws wrote:
> I would be surprised if a recipe for lm-sensors has not already been
> created, however I cannot find one.  Can someone point me in the right
> direction?
> 
> All I can find is a sysstat package that I can include via
> IMAGE_INSTALL_append, however I cannot see how I can get the same
> information out of it that lm-sensors gives me.
> 
> Has anyone got lm-sensors included in their image?  If so, can you share the
> recipe?

Unless anyone else pipes up, my local index suggests that this is something 
that hasn't yet been brought up-to-date from OE-Classic.

http://git.openembedded.org/openembedded/tree/recipes/lm_sensors

Assuming nothing else is available you should be able to use this as a base. 
There is a brief guide on the main things that need to be changed when 
updating a recipe from OE-Classic here:

http://www.openembedded.org/wiki/Migrating_metadata_to_OE-Core

If you do come up with an updated recipe we'd love to have it added to meta-oe 
or some other layer ;)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

