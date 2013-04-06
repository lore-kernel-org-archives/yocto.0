Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 052CCE01498
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2013 12:20:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Apr 2013 12:20:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,421,1363158000"; d="scan'208";a="281925619"
Received: from unknown (HELO [10.255.13.189]) ([10.255.13.189])
	by azsmga001.ch.intel.com with ESMTP; 06 Apr 2013 12:20:22 -0700
Message-ID: <1365276022.17697.35.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Sat, 06 Apr 2013 14:20:22 -0500
In-Reply-To: <FAC308421B044DE0AD65032D547ED420@PAULD>
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
	<83730A512373431B95CA2E526DB84A99@PAULD><1365204871.17697.6.camel@empanada>
	<1365221016.17697.13.camel@empanada><0E036F4959FA47449AD8E358A8C85848@PAULD>
	<1365223693.17697.20.camel@empanada>
	<1365256835.17697.30.camel@empanada>
	<FAC308421B044DE0AD65032D547ED420@PAULD>
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
X-List-Received-Date: Sat, 06 Apr 2013 19:20:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2013-04-06 at 11:20 -0700, Paul D. DeRocco wrote:
> > From: Tom Zanussi
> > 
> > It looks like the problem is a bad SRCREV for the meta branch in the
> > -nopvr machine in the cedartrail danny tarball.  Try changing the
> > following line in
> > meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend:
> > 
> > SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= 
> > "a4ac64fe873f08ef718e2849b88914725dc99c1c"
> > 
> > to
> > 
> > SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= 
> > "bf5ee4945ee6d748e6abe16356f2357f76b5e2f0"
> > 
> > Changing that got me a .config with the correct CONFIG_BLK_DEV_RAM
> > setting.
> 
> Ta-da! That fixed it.
> 
> I'm glad the subject of this thread didn't come back to bite me.
> 
> Thanks so much for your time in figuring this out.
> 

Sure, glad that worked out...

And of course the cedartrail tarball should be updated as soon as
possible with at least that change - this shouldn't have been a problem
in the first place (also should add the missing preferred provider and
avoid the other warning as well).  Cc:ing the maintainer for that...

Tom




