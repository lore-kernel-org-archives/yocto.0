Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E7A7E0140D
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 08:09:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Jul 2013 08:09:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,702,1367996400"; d="scan'208";a="348441519"
Received: from unknown (HELO helios.localnet) ([10.252.122.96])
	by orsmga001.jf.intel.com with ESMTP; 19 Jul 2013 08:09:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
Date: Fri, 19 Jul 2013 16:09:31 +0100
Message-ID: <2173803.768kMi5SBz@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <CAPhnLPBanJ=CHZdzAwGNriUOH5UeNn-CggWntNbML8gw+6_V_A@mail.gmail.com>
References: <CAE8H0+XntiXZNiZg4ZJhf+uLusWLu+ddQpXPuKru5epugR4W2Q@mail.gmail.com>
	<CAPhnLPBanJ=CHZdzAwGNriUOH5UeNn-CggWntNbML8gw+6_V_A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: 9.0.1 release tarball requires bitbake 1.19.1 but provides 1.18.0?
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
X-List-Received-Date: Fri, 19 Jul 2013 15:09:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 19 July 2013 07:52:03 Flanagan, Elizabeth wrote:
> On Fri, Jul 19, 2013 at 6:07 AM, r10kindsofpeople
> <r10kindsofpeople@gmail.com> wrote:
> > I've run into another issue when trying to upgrade my system from Denzil
> > to Dylan using the released packages.  I extracted the 9.0.1 released
> > tarball, added the crownbay BSP, then moved my layers over from Denzil. 
> > Sourced the build directory, then modified bblayers.conf and local.conf to
> > merge my specifics with the new formats.
> > 
> > 'bitbake core-image-minimal' results in an error... "OE-core's config
> > sanity checker detected a potential misconfiguration." and "Bitbake
> > version 1.19.1 is required and version 1.18.0 was found".
> > 
> > A contributing factor may be that I also have a git snapshot from 2 days
> > ago on the same system (that builds), but I've tried to keep them in
> > separate directories and be careful about running the source script in
> > it's own shell.
> > 
> > Is this a problem with the release tarball or a PICNIC problem?
> 
> It shouldn't be a problem with the tarball as the download tarball is
> 
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/poky-73f103bf9b
> 2cdf985464dc53bf4f1cfd71d4531f.tar.bz2
> 
> which corresponds with the tagged release at:
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=dylan&id=73f103bf9b
> 2cdf985464dc53bf4f1cfd71d4531f
> 
> I just validated the tarball and can't reproduce so my guess is that
> this is probably a dirty env issue.

It does sound that way. John, you haven't perhaps changed the path to the 
metadata but re-used the build directory, such that BBLAYERS in bblayers.conf 
still points to the development snapshot?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

