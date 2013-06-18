Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55528E01493
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 13:08:51 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Jun 2013 13:08:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,891,1363158000"; d="scan'208";a="355730961"
Received: from unknown (HELO [10.255.13.120]) ([10.255.13.120])
	by orsmga002.jf.intel.com with ESMTP; 18 Jun 2013 13:08:50 -0700
Message-ID: <1371586129.1569.34.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Tue, 18 Jun 2013 15:08:49 -0500
In-Reply-To: <8C2CFCE0-38EE-40E0-8AAF-490DC3B6837E@keylevel.com>
References: <394F6C8A37E5424BB91439BABFA30180@PAULD>
	<1371564241.1569.26.camel@empanada>
	<8C2CFCE0-38EE-40E0-8AAF-490DC3B6837E@keylevel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, "Paul D. DeRocco" <pderocco@ix.netcom.com>,
	foo.chien.haw@intel.com
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
X-List-Received-Date: Tue, 18 Jun 2013 20:08:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-06-18 at 20:50 +0100, Chris Tapp wrote:
> Hi Tom,
> 
> On 18 Jun 2013, at 15:04, Tom Zanussi wrote:
> 
> > On Mon, 2013-06-17 at 16:56 -0700, Paul D. DeRocco wrote:
> >> I've been using the Intel meta-cedartrail layer with Danny 8.0.1. Is this
> >> layer likely to be unusable with Dylan 9.0? Or unusable without lots of
> >> tinkering that's probably beyond my abilities?
> >> 
> >> And if I were to try Dylan, is it best to start from scratch, in a
> >> completely new directory?
> >> 
> > 
> > Hi,
> > 
> > I believe the main problem would be the graphics driver - it would need
> > porting to the 3.8 kernel - the rest would probably be straightforward.
> > 
> > The cedartrail BSP was discontinued following danny, but I'm cc:ing the
> > maintainers in case they might have any further input.
> > 
> > I was thinking of creating a meta-intel/staging area for things like
> > this i.e. discontinued BSPs that people are still using, which would
> > contain best-effort updates but completely without promise of any kind
> > of support.  If there's enough interest, and there seems to be judging
> > from the number of questions about cedartrail we continue to keep
> > getting, I'll try to find some free time to take a stab at moving it to
> > dylan...
> 
> I'm certainly interested and happy to help out if I can.
> 
> I also see that ASRock are now making a board (http://www.asrock.com/IPC/overview.asp?Model=DN2800MT) that looks exactly the same as the Intel one with the same name aimed at signage and thin-client applications, so hardware will be about for a good few years yet,
> 

OK, good to know.  The only Cedar Trail hardware I have access to is the
Acer Aspire One I have here - let me see if I can get something going on
that...

Tom

> > Thanks,
> > 
> > Tom
> > 
> > 
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 



