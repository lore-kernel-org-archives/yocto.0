Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF183E013B0
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:54:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Jul 2013 10:54:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,788,1367996400"; d="scan'208";a="339672215"
Received: from unknown (HELO helios.localnet) ([10.252.122.226])
	by azsmga001.ch.intel.com with ESMTP; 31 Jul 2013 10:53:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Sean Liming <sean.liming@annabooks.com>,
	'Paul Barker' <paul@paulbarker.me.uk>
Date: Wed, 31 Jul 2013 18:53:58 +0100
Message-ID: <2325745.PYQZPiglr3@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <000c01ce8e14$762fb050$628f10f0$@annabooks.com>
References: <CANyK_8fY=7P0MvFOJ1mSxwL0N7xDBQetfaoCiLZZTMU5khcKdg@mail.gmail.com>
	<000c01ce8e14$762fb050$628f10f0$@annabooks.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Minnowboard
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
X-List-Received-Date: Wed, 31 Jul 2013 17:54:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 31 July 2013 10:36:12 Sean Liming wrote:
> Paul Barker wrote:
> > So I've just read about the Minnowboard, an Atom E640T single-board
> > computer.
> > 
> > http://uk.farnell.com/circuitco/minnowboard/atom-e640t-platform-> > sbc/dp/2319581
> > 
> > The datasheet says "Yocto Project 1.3 compatible" so I think I'll be
> > buying one!
> > 
> > Does anyone know what layer the support for this will be in? I'm wondering
> > whether it's in meta-yocto, meta-intel or something Angstrom-specific.
>
> There is a BSP layer that is part of the meta-intel layer:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/

The official MinnowBoard BSP is in meta-minnow:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-minnow

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

