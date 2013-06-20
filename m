Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42932E01400
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 19:16:32 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 19 Jun 2013 19:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,901,1363158000"; d="scan'208";a="257517040"
Received: from unknown (HELO [10.255.12.238]) ([10.255.12.238])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Jun 2013 19:16:30 -0700
Message-ID: <1371694589.32324.31.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Wed, 19 Jun 2013 21:16:29 -0500
In-Reply-To: <C3BF3ACA6A914084A2081A64B2BAF286@PAULD>
References: <394F6C8A37E5424BB91439BABFA30180@PAULD>
	<1371564241.1569.26.camel@empanada>
	<8C2CFCE0-38EE-40E0-8AAF-490DC3B6837E@keylevel.com>
	<1371586129.1569.34.camel@empanada>
	<C3BF3ACA6A914084A2081A64B2BAF286@PAULD>
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
X-List-Received-Date: Thu, 20 Jun 2013 02:16:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-06-19 at 16:09 -0700, Paul D. DeRocco wrote:
> > From: Tom Zanussi
> > 
> > On Tue, 2013-06-18 at 20:50 +0100, Chris Tapp wrote:
> > > Hi Tom,
> > > 
> > > On 18 Jun 2013, at 15:04, Tom Zanussi wrote:
> > > 
> > > > On Mon, 2013-06-17 at 16:56 -0700, Paul D. DeRocco wrote:
> > > >> I've been using the Intel meta-cedartrail layer with 
> > Danny 8.0.1. Is this
> > > >> layer likely to be unusable with Dylan 9.0? Or unusable 
> > without lots of
> > > >> tinkering that's probably beyond my abilities?
> > > >> 
> > > >> And if I were to try Dylan, is it best to start from 
> > scratch, in a
> > > >> completely new directory?
> > > >> 
> > > > 
> > > > Hi,
> > > > 
> > > > I believe the main problem would be the graphics driver - 
> > it would need
> > > > porting to the 3.8 kernel - the rest would probably be 
> > straightforward.
> > > > 
> > > > The cedartrail BSP was discontinued following danny, but 
> > I'm cc:ing the
> > > > maintainers in case they might have any further input.
> > > > 
> > > > I was thinking of creating a meta-intel/staging area for 
> > things like
> > > > this i.e. discontinued BSPs that people are still using, 
> > which would
> > > > contain best-effort updates but completely without 
> > promise of any kind
> > > > of support.  If there's enough interest, and there seems 
> > to be judging
> > > > from the number of questions about cedartrail we continue to keep
> > > > getting, I'll try to find some free time to take a stab 
> > at moving it to
> > > > dylan...
> > > 
> > > I'm certainly interested and happy to help out if I can.
> > > 
> > > I also see that ASRock are now making a board 
> > (http://www.asrock.com/IPC/overview.asp?Model=DN2800MT) that 
> > looks exactly the same as the Intel one with the same name 
> > aimed at signage and thin-client applications, so hardware 
> > will be about for a good few years yet,
> > > 
> > 
> > OK, good to know.  The only Cedar Trail hardware I have 
> > access to is the
> > Acer Aspire One I have here - let me see if I can get 
> > something going on
> > that...
> 
> My first attempt to build cedartrail-nopvr finds that meta-intel has an
> unmatched mesa_9.1.3.bbappend, but I suppose I can configure it to ignore
> that since I'm not building graphics. However, meta-cedartrail contains an
> unmatched linux-yocto_3.0.bbappend and linux-yocto-rt_3.0.bbappend. I don't
> know how to fix that.
> 

You should just be able to delete those 3.0 .bbappends - they're of no
use at this point.

I actually used yocto-bsp to create a brand new cedartrail BSP, called
meta-cdt, with just a vesa graphics machine called 'cdt-vesa':

http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi/meta-cdt-v0

It built fine here, but it wouldn't boot on my Aspire One, but I
couldn't boot either of the official 'danny' cedartrail (cedartrail and
cedartrail-nopvr) images I built either.

I'd be curious if the meta-cdt layer would work for you, though.

Tom




