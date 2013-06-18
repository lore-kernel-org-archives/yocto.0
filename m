Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD6C4E0155E
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 09:25:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 18 Jun 2013 09:25:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,890,1363158000"; d="scan'208";a="351825613"
Received: from unknown (HELO [10.255.13.120]) ([10.255.13.120])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2013 09:26:02 -0700
Message-ID: <1371572725.1569.30.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Tue, 18 Jun 2013 11:25:25 -0500
In-Reply-To: <1F376671550B4DE9B7B9CC081C2CAF53@PAULD>
References: <394F6C8A37E5424BB91439BABFA30180@PAULD>
	<1371564241.1569.26.camel@empanada>
	<1F376671550B4DE9B7B9CC081C2CAF53@PAULD>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, foo.chien.haw@intel.com
Subject: Re: Cedartrail and Dylan?
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
X-List-Received-Date: Tue, 18 Jun 2013 16:25:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-06-18 at 09:17 -0700, Paul D. DeRocco wrote:
> > From: Tom Zanussi
> > 
> > I believe the main problem would be the graphics driver - it 
> > would need
> > porting to the 3.8 kernel - the rest would probably be 
> > straightforward.
> > 
> > The cedartrail BSP was discontinued following danny, but I'm 
> > cc:ing the maintainers in case they might have any further input.
> 
> Is this graphics issue likely to be a problem if I'm making the non-graphics
> image? My app is headless.
> 

I wouldn't think so - my guess would be that the -nopvr wouldn't be a
problem.

Tom


