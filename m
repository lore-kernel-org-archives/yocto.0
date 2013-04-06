Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 097ACE005A3
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2013 07:00:36 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Apr 2013 07:00:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,420,1363158000"; d="scan'208";a="313433103"
Received: from unknown (HELO [10.255.13.189]) ([10.255.13.189])
	by orsmga002.jf.intel.com with ESMTP; 06 Apr 2013 07:00:35 -0700
Message-ID: <1365256835.17697.30.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Sat, 06 Apr 2013 09:00:35 -0500
In-Reply-To: <1365223693.17697.20.camel@empanada>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD>
	<515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com><7FEC659FC16A466C9B7671C5BADEDB81@PAULD>
	<515DB5F5.5010300@linux.intel.com>
	<D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com>
	<13F417252F8B4CB5BB755BB07928D20C@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258405AC4@ORSMSX105.amr.corp.intel.com>
	<2FD1BA69DE1E491C839CA26A7D2CA32A@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com>
	<547521F5BFD54F2D8E6783515988F589@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258406365@ORSMSX105.amr.corp.intel.com>
	<83730A512373431B95CA2E526DB84A99@PAULD>
	<1365204871.17697.6.camel@empanada>
	<1365221016.17697.13.camel@empanada>
	<0E036F4959FA47449AD8E358A8C85848@PAULD>
	<1365223693.17697.20.camel@empanada>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: This one can't be me...
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
X-List-Received-Date: Sat, 06 Apr 2013 14:00:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-04-05 at 23:48 -0500, Tom Zanussi wrote:
> On Fri, 2013-04-05 at 21:15 -0700, Paul D. DeRocco wrote:
> > > From: Tom Zanussi [mailto:tom.zanussi@intel.com] 
> > > 
> > > I'm seeing the same thing here (# CONFIG_BLK_DEV_RAM is not set) with
> > > your bblayers and local.conf.  For some reason the base and
> > > standard .cfgs aren't being applied to the .config.  I'll have to dig
> > > around further as time permits over the weekend...
> > 
> > Thanks, although this might be floobydust. I've nuked the _entire_ build
> > tree, included downloads, and am trying a rebuild from scratch, but that
> > will take until tomorrow morning to complete, since I'm doing the build on
> > an Atom. If it somehow solves the problem, I'll let you know, so you don't
> > waste your time chasing unicorns. But if it doesn't solve the problem, your
> > help would definitely be appreciated. I've been trying to get a build, any
> > build, to boot for a really long time now.
> > 
> 
> My guess is there's a real problem here, since I'm able to reproduce it
> with my own downloads dir and a rebuild from scratch.  Now that I have a
> reproducer, I'm pretty sure we'll be able to nail down the problem and
> at least get the kernel part right - if the kernel is missing config
> like this it just won't boot, plain and simple, so we need to get past
> that first and chances are it will be smoother sailing after that...
> 

It looks like the problem is a bad SRCREV for the meta branch in the
-nopvr machine in the cedartrail danny tarball.  Try changing the
following line in
meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend:

SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"

to

SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "bf5ee4945ee6d748e6abe16356f2357f76b5e2f0"

Changing that got me a .config with the correct CONFIG_BLK_DEV_RAM
setting.

Tom

> Tom
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



