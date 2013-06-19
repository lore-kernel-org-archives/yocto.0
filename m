Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3CFEE013A7
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 16:09:26 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=OnuGROOs33nvhHu2O2o+AfQQWa29A39Z3TGJvKHk7fMt6ykM/Irb5YG8poYQbRCe;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UpRVE-0004U4-K3; Wed, 19 Jun 2013 19:09:24 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Tom Zanussi'" <tom.zanussi@intel.com>,
	"'Chris Tapp'" <opensource@keylevel.com>
References: <394F6C8A37E5424BB91439BABFA30180@PAULD><1371564241.1569.26.camel@empanada><8C2CFCE0-38EE-40E0-8AAF-490DC3B6837E@keylevel.com>
	<1371586129.1569.34.camel@empanada>
In-Reply-To: <1371586129.1569.34.camel@empanada>
Date: Wed, 19 Jun 2013 16:09:28 -0700
Message-ID: <C3BF3ACA6A914084A2081A64B2BAF286@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac5sX62R7B6BJJ8wRZuTY6r5vxQ3wgA38PcA
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688684ae19a9ba4cda7b09375b81895dc70350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
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
X-List-Received-Date: Wed, 19 Jun 2013 23:09:27 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Tom Zanussi
> 
> On Tue, 2013-06-18 at 20:50 +0100, Chris Tapp wrote:
> > Hi Tom,
> > 
> > On 18 Jun 2013, at 15:04, Tom Zanussi wrote:
> > 
> > > On Mon, 2013-06-17 at 16:56 -0700, Paul D. DeRocco wrote:
> > >> I've been using the Intel meta-cedartrail layer with 
> Danny 8.0.1. Is this
> > >> layer likely to be unusable with Dylan 9.0? Or unusable 
> without lots of
> > >> tinkering that's probably beyond my abilities?
> > >> 
> > >> And if I were to try Dylan, is it best to start from 
> scratch, in a
> > >> completely new directory?
> > >> 
> > > 
> > > Hi,
> > > 
> > > I believe the main problem would be the graphics driver - 
> it would need
> > > porting to the 3.8 kernel - the rest would probably be 
> straightforward.
> > > 
> > > The cedartrail BSP was discontinued following danny, but 
> I'm cc:ing the
> > > maintainers in case they might have any further input.
> > > 
> > > I was thinking of creating a meta-intel/staging area for 
> things like
> > > this i.e. discontinued BSPs that people are still using, 
> which would
> > > contain best-effort updates but completely without 
> promise of any kind
> > > of support.  If there's enough interest, and there seems 
> to be judging
> > > from the number of questions about cedartrail we continue to keep
> > > getting, I'll try to find some free time to take a stab 
> at moving it to
> > > dylan...
> > 
> > I'm certainly interested and happy to help out if I can.
> > 
> > I also see that ASRock are now making a board 
> (http://www.asrock.com/IPC/overview.asp?Model=DN2800MT) that 
> looks exactly the same as the Intel one with the same name 
> aimed at signage and thin-client applications, so hardware 
> will be about for a good few years yet,
> > 
> 
> OK, good to know.  The only Cedar Trail hardware I have 
> access to is the
> Acer Aspire One I have here - let me see if I can get 
> something going on
> that...

My first attempt to build cedartrail-nopvr finds that meta-intel has an
unmatched mesa_9.1.3.bbappend, but I suppose I can configure it to ignore
that since I'm not building graphics. However, meta-cedartrail contains an
unmatched linux-yocto_3.0.bbappend and linux-yocto-rt_3.0.bbappend. I don't
know how to fix that.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


