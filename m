Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 812EBE01371
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 02:15:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Sep 2012 02:15:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,372,1344236400"; d="scan'208";a="189086624"
Received: from unknown (HELO helios.localnet) ([10.252.121.155])
	by orsmga001.jf.intel.com with ESMTP; 05 Sep 2012 02:15:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Date: Wed, 05 Sep 2012 10:15:21 +0100
Message-ID: <2612934.gZ3vcrfUaE@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-29-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <50471207.8080104@r-finger.com>
References: <50450DC6.20303@r-finger.com> <504663C0.6050907@ti.com>
	<50471207.8080104@r-finger.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Wed, 05 Sep 2012 09:15:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 05 September 2012 09:49:11 Tomas Frydrych wrote:
> The simplest fix would be for meta-ti to preppend itself to the path the
> same way meta-yocto does, i.e., in the layer.conf
> 
>   BBPATH := "${LAYERDIR}:${BBPATH}"
> 
> In fact, this is the *only* way that a layer can override any conf files
> in oe-core, which is probably what you always want in a BSP layer?
> 
> Just quickly scanning yocto git, there are a number of BSP layers that
> are configured the same way as meta-ti, so potentially have the same
> problem, e.g., meta-intel, meta-fsl-ppc. (There are other generic type
> layers configured this way too, but I think it's only a big issue for
> BSP layers and distro layers.)
> 
> As long as we are mixing layers that do both prepend and append, the
> layering will continue to be broken in subtle and hard to identify ways.
> I can't think of a practical use case where a layer other than oe-core
> might need to append itself to the BBPATH? If there were no genuine need
> for layers to append to the path, the BBPATH extension could be done
> automatically when including the layer, instead doing manually in each
> layer.conf, giving us some consistency.

It has been considered witin OE to be best practice to append to BBPATH and 
not prepend, the thinking being that then the search path matches the order of 
the layers listed in bblayers.conf rather than the reverse. I'm not sure I 
agree with it (I tend to prefer to list OE-Core first), but that's the 
convention adopted there.

Quite a few people have asked for the items which BBPATH controls (classes, 
conf files) to instead be found in layer priority order. If bitbake took over 
managing BBPATH, that would be a possibility, and as you say it would improve 
consistency at the expense of a little flexibility.

> But you do need meta-yocto for the atom-pc machine, because meta-yocto is
> the BSP layer for that (and should Intel decide to add an atom-pc to 
> meta-intel, it will be broken exactly the same as the beagleboard machine is
> just now).

Some time ago we discussed the possibility of moving the atom-pc BSP to meta-
intel and then copying it back into meta-yocto, once the layer tooling allowed 
for that to be done dynamically. Since the layer tooling is now in place that 
is at least a practical possibility, but I'm not sure if it's still on the 
cards - it still makes sense to me at any rate.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

