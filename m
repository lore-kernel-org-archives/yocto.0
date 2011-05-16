Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id ACF564C800E0
	for <yocto@yoctoproject.org>; Mon, 16 May 2011 10:08:34 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 May 2011 08:08:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,374,1301900400"; 
   d="scan'208";a="2836442"
Received: from unknown (HELO [10.255.12.109]) ([10.255.12.109])
	by fmsmga001.fm.intel.com with ESMTP; 16 May 2011 08:08:33 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Pedro Sanchez <psanchez@fosstel.com>
In-Reply-To: <4DD13269.7080606@fosstel.com>
References: <000b01cc1379$bcc63a60$6f93c20a@psdcd.local>
	<4DD0CDCE.4000108@intel.com>  <4DD13269.7080606@fosstel.com>
Date: Mon, 16 May 2011 10:07:43 -0500
Message-ID: <1305558463.21191.314.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: about how to port YOCTO
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
X-List-Received-Date: Mon, 16 May 2011 15:08:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-05-16 at 07:19 -0700, Pedro Sanchez wrote:
> On 05/16/2011 03:10 AM, Yu Ke wrote:
> > on 2011-5-16 11:31, wangyang wrote:
> >> Hello!
> >>
> >> Because YOCTO supports x86, arm and so on MCU. I just want to know
> >> about how to
> >> port YOCTO to other MCU. Is it difficult, what's kind of knowledge
> >> needed?
> >> Thanks
> >>
> >
> > Add another machine is not that difficult, as Yocto is designed to be
> > highly customizable for different H/W. What you need is a BSP layer for
> > your H/W, it is basically the H/W specific configuration, e.g. the
> > kernel config, graphics config.
> >
> > the BSP Guide
> > (http://www.yoctoproject.org/docs/bsp-guide/bsp-guide.html) has good
> > info on how to write BSP. Also you can find some example from existing
> > BSP, like meta-intel BSP
> > (http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/)
> >
> > Regards
> > Ke
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> When I clone the yocto git repo (git://git.pokylinux.org/poky.git) I 
> don't get any of these meta-xxx directories that the BSP guide talks 
> about. They seem to be kept in a separate git repository.
> 

Hi,

The BSP guide uses some meta-intel layers as examples, but just as
examples - we don't really want to put pointers to specific layers in
there.  (Are those the meta-xxx directories you're talking about?) There
is a list of all the repos including meta-intel here:

http://git.yoctoproject.org/

But I guess you have to know to look to find them - we should probably
add something explicit somewhere listing the specific BSP repos.  Maybe
on the Downloads page in the BSP section?

http://www.yoctoproject.org/download

> My question is then, once I create my meta-xxx directory structure, how 
> is it hooked up to the overall poky build infrastructure? I've failed to 
> find an answer in the BSP guide so far.
> 

The BSP guide is actually a section out of the Reference Manual here.
That contains instructions on how to use layers:

http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#usingpoky-changes-layers

but maybe there should be something about that in the BSP Guide too.

For the meta-intel layer, once you have it, there are instructions in
the README about adding the layer to bblayers.conf, which is what you
want to do to get it hooked into the overall build structure:

"Having done that, and assuming you cloned the 'meta-intel' repository
at the top-level of your yocto build tree, you can build a crownbay
image by adding the location of the meta-crownbay layer to
bblayers.conf e.g.:

  yocto/meta-intel/meta-crownbay \
"

But I agree, we should probably have some more explicit instructions on
this in the BSP developer's Guide - I'll submit a patch to do that...

Thanks,

Tom


> Thanks,
> 



