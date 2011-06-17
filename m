Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D66004C800BA
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2011 09:34:00 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Jun 2011 07:34:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,381,1304319600"; d="scan'208";a="14504696"
Received: from unknown (HELO helios.localnet) ([10.255.16.248])
	by azsmga001.ch.intel.com with ESMTP; 17 Jun 2011 07:33:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Jun 2011 15:33:58 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <87C8C51E47F55D47ABF9BB39687792ED42177A@POCITMSEXMB01.LntUniverse.com>
	<4ED62A07621E9C41B8CB2F608655EF45011FA8@POCITMSEXMB01.LntUniverse.com>
In-Reply-To: <4ED62A07621E9C41B8CB2F608655EF45011FA8@POCITMSEXMB01.LntUniverse.com>
MIME-Version: 1.0
Message-Id: <201106171533.58569.paul.eggleton@linux.intel.com>
Subject: Re: Problem while compiling directfb
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
X-List-Received-Date: Fri, 17 Jun 2011 14:34:01 -0000
Content-Type: Text/Plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 7bit

On Friday 17 June 2011 15:04:26 Nikhil Kamath wrote:
> In poky when we run the command "bitbake -b directfb_1.4.1.bb", to compile
> direct framebuffer 1.4.1 found in /meta/recipes-graphics/directfb , the
> following error is thrown.

What happens when you run "bitbake directfb"? This is the correct way of 
building a recipe. The "-b" option does not handle any dependencies, and 
should only used for debugging a recipe.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

