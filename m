Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 892B6E01304
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 14:41:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Sep 2012 14:41:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,455,1344236400"; d="scan'208";a="195210432"
Received: from unknown (HELO helios.localnet) ([10.252.121.245])
	by azsmga001.ch.intel.com with ESMTP; 20 Sep 2012 14:41:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Evade Flow <evadeflow@gmail.com>
Date: Thu, 20 Sep 2012 22:41:48 +0100
Message-ID: <13486486.LUSYcH1i4g@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <CAMAb8ZOAk-oF_gJmVvAVjAEN+JpS12=WpbxZjhqD0Tx6h=f4Zw@mail.gmail.com>
References: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>
	<CAMAb8ZPXYXNTgk_v_PG55C1FYERrT4s08FGLQO7frsE=J4pGDA@mail.gmail.com>
	<CAMAb8ZOAk-oF_gJmVvAVjAEN+JpS12=WpbxZjhqD0Tx6h=f4Zw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: BB_NO_NETWORK and own-mirrors not working with meta-systemd
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
X-List-Received-Date: Thu, 20 Sep 2012 21:41:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 20 September 2012 16:08:41 Evade Flow wrote:
> To bring this full circle... if you want to build behind a restrictive
> firewall using pre-mirrored sources and BB_NO_NETWORK, be aware that
> recipes which:
> 
>   1. Specify a git repo as the source, and,
> 
>   2. Specify the revision to be built using a tag name
> 
> 
> will cause your build to abort when bitbake tries to run 'git ls-remote'
> to resolve the tag name.  So don't specify SRC_URI like this:
> 
> 
>   SRC_URI =
> "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=v
> ${PV}"
> 
> Instead, use:
> 
>   SRC_URI =
> "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=8
> 885ced062131214448fae056ef453f094303805;branch=master"
> 
> 
> I added a note about this to the Wiki:
> 
>   -
> http://wiki.yoctoproject.org/wiki/How_do_I#Non-networked_Builds_and_Cached_
> Git_Respositories
> 
> I'm still new to Yocto, so someone please chime in if any of this
> information is incorrect...

You should not need to be specifying the revision within SRC_URI as you are 
doing, however, it is correct that you must specify the revision in SRCREV and 
that revision must be the full SHA1 hash and not just a tag or branch name. 
The reason for this is that tags are not fixed and could change, therefore if 
one is used we must query the server and resolve it to the current SHA1 hash 
every time the recipe is parsed.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

