Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 484C84C800A1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 12:04:42 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Jul 2011 10:04:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,529,1304319600"; d="scan'208";a="25897525"
Received: from vorpal.jf.intel.com (HELO [10.7.199.64]) ([10.7.199.64])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2011 10:04:41 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2011 10:09:04 -0700
In-Reply-To: <4C89CE44-6341-4FE7-A7AA-85F1FB6BD2F4@kernel.crashing.org>
References: <CAE727EC-4F3C-4FD2-BCEE-F14BC42E981F@technicolor.com>
	<1310460238.20015.1024.camel@rex>
	<9D94299C-4B6A-4550-80A8-7821FB26D81C@kernel.crashing.org>
	<1310651543.20015.1148.camel@rex>
	<4C89CE44-6341-4FE7-A7AA-85F1FB6BD2F4@kernel.crashing.org>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1310663344.2162.1.camel@vorpal.jf.intel.com>
Mime-Version: 1.0
Subject: Re: Menu configuration
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
X-List-Received-Date: Thu, 14 Jul 2011 17:04:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-14 at 11:34 -0500, Kumar Gala wrote:
> On Jul 14, 2011, at 8:52 AM, Richard Purdie wrote:
> 
> > On Thu, 2011-07-14 at 08:06 -0500, Kumar Gala wrote:
> >> On Jul 12, 2011, at 3:43 AM, Richard Purdie wrote:
> >> 
> >>> On Mon, 2011-07-11 at 10:00 -0700, Turner Randy wrote:
> >>>> Hello list,
> >>>> 
> >>>> Is there a interactive menu-based configuration for yocto/poky builds
> >>>> similar to that provided in Buildroot? Or is someone working on this?
> >>> 
> >>> At present there is not any interactive menu based configuration but
> >>> there is work ongoing on a UI called hob which allows you to select
> >>> packages and construct images of those packages so its a graphical front
> >>> end to the system.
> >>> 
> >>> We're also in the process of starting to better markup configuration
> >>> variables in the metadata so that writing some kind of menu based
> >>> configuration system would be easier in the future.
> >>> 
> >>> We're certainly open to any help in those areas too!
> >>> 
> >>> Cheers,
> >>> 
> >>> Richard
> >> 
> >> Are there any docs for hob at this point?
> > 
> > Not specifically. "bitbake -u hob" should let you see where things are
> > at. Please keep in mind that its under active development at the moment
> > and can be considered "alpha" quality but feedback is welcome.
> 
> Are they thread of email discussion or anything.  I tried playing with it, but a little confused on exactly what its trying to accomplish and what the 'cfg' that is saved off ends up being.

If you have questions please ask them. The saved file should be a recipe
for building a custom image. The purpose of the tool is to help you put
together a custom image and build it.

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes Factotum"
        Intel Open Source Technology Centre


