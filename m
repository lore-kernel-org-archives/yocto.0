Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39423E01517
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 21:03:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Apr 2013 21:01:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,418,1363158000"; d="scan'208";a="290252586"
Received: from unknown (HELO [10.255.13.189]) ([10.255.13.189])
	by orsmga001.jf.intel.com with ESMTP; 05 Apr 2013 21:03:37 -0700
Message-ID: <1365221016.17697.13.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Fri, 05 Apr 2013 23:03:36 -0500
In-Reply-To: <1365204871.17697.6.camel@empanada>
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
X-List-Received-Date: Sat, 06 Apr 2013 04:03:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-04-05 at 18:34 -0500, Tom Zanussi wrote:
> On Fri, 2013-04-05 at 11:48 -0700, Paul D. DeRocco wrote:
> > > From: Bodke, Kishore K
> > > 
> > > Here are the config parameters for the clean build that I am 
> > > doing now.
> > > 
> > > kishore@kishore-desktop:/usr/local/src/cedartrail/build/tmp/wo
> > rk/cedartrail_nopvr-poky-linux/linux-yocto-3.0.32+git1>
> > +bf5ee4945ee6d748e6abe16356f2357f76b5e2f0_1+1e79e03d115ed17788
> > 2ab53909a4f3555e434833-r4.1/linux-cedartrail-nopvr-standard-build$ grep >
> > BLK_DEV_RAM .config
> > > CONFIG_BLK_DEV_RAM=y
> > > CONFIG_BLK_DEV_RAM_COUNT=16
> > > CONFIG_BLK_DEV_RAM_SIZE=4096
> > > 
> > > I don't understand how these are missing in your build?  
> > > BLK_DEV_RAM are enabled for Cedartrail-nopvr build.
> > > 
> > > What did you do different?
> > 
> > I don't know. I detailed the steps I took. I still have
> > 
> > 	# CONFIG_BLK_DEV_RAM is not set
> > 
> > Does the order of the layers in bblayers.conf matter? Is it possible that
> > something in the past fetched a different version of something, and it's
> > sitting in my downloads tree and screwing things up?
> > 
> > I'm sending you the two build log files separately, so that they don't go
> > out to the entire list.
> > 
> 
> Can you send those to me as well, along with your entire bblayers.conf
> and local.conf?
> 

I'm seeing the same thing here (# CONFIG_BLK_DEV_RAM is not set) with
your bblayers and local.conf.  For some reason the base and
standard .cfgs aren't being applied to the .config.  I'll have to dig
around further as time permits over the weekend...

Tom

> Thanks,
> 
> Tom
> 



