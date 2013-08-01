Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57CEFE014E4
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 08:49:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Aug 2013 08:49:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,795,1367996400"; d="scan'208";a="380164416"
Received: from unknown (HELO [10.255.14.135]) ([10.255.14.135])
	by orsmga002.jf.intel.com with ESMTP; 01 Aug 2013 08:49:56 -0700
Message-ID: <1375372195.24545.113.camel@dvhart-mobl1.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Thu, 01 Aug 2013 08:49:55 -0700
In-Reply-To: <CE0856ADE8A744CEAC1C4CBAFA219FFE@PAULD>
References: <CANyK_8fY=7P0MvFOJ1mSxwL0N7xDBQetfaoCiLZZTMU5khcKdg@mail.gmail.com>
	<CE0856ADE8A744CEAC1C4CBAFA219FFE@PAULD>
Organization: Intel
X-Mailer: Evolution 3.8.3 (3.8.3-2.fc19) 
Mime-Version: 1.0
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
X-List-Received-Date: Thu, 01 Aug 2013 15:49:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-07-31 at 12:05 -0700, Paul D. DeRocco wrote:
> > From: Paul Barker
> > 
> > So I've just read about the Minnowboard, an Atom E640T 
> > single-board computer.
> > 
> > http://uk.farnell.com/circuitco/minnowboard/atom-e640t-platfor
> > m-sbc/dp/2319581
> > 
> > The datasheet says "Yocto Project 1.3 compatible" so I think 
> > I'll be buying one!
> > 
> > Does anyone know what layer the support for this will be in? I'm
> > wondering whether it's in meta-yocto, meta-intel or something
> > Angstrom-specific.
> 
> It's a pretty wimpy Atom, but still useful. One interesting thing is that
> the EG20T support chip includes one USB device port. But the git server
> doesn't show any code for it, and Intel only provides a Windows driver for
> it (which supports high speed, but not isochronous). Writing a Linux driver
> for that looks like a major project.

The USB device port is fully supported in upstream Linux via the
CONFIG_USB_EG20T driver. I tested this myself with the g_mass_storage
driver and it is functional.

The BSP is in the meta-minnow layer on yoctoproject.org:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-minnow/

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



