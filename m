Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43927E014B2
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 15:13:04 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=NT+LC93o2OxoAnErlnCON/VnBWUspCOEZNZoP4Qd8cacxoyjCQZmcvrw7BDNTb/W;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UKyab-0002MF-6A; Wed, 27 Mar 2013 18:13:01 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Anders Darander'" <anders@chargestorm.se>,
	<yocto@yoctoproject.org>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD><20130307104051.GH32228@jama.dyndns-home.com><96E98E10F7094D32B371FD84AFF0FFFC@PAULD><20130307182933.GS32228@jama.dyndns-home.com><50BB56BA2C44400C9B6A31B0C2641BD2@PAULD><20130307224223.GU32228@jama.dyndns-home.com><D5340F46DF5F458D9096EA823C3A9EAE@PAULD>
	<20130327090320.GA13837@ad.chargestorm.se>
In-Reply-To: <20130327090320.GA13837@ad.chargestorm.se>
Date: Wed, 27 Mar 2013 15:12:55 -0700
Message-ID: <2AE00AC2A89C48A38A01262D58FA692A@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4qydRdIhAgzUfSSxyd73hgreaLoQAa+sQg
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606882e6e811ff36c1e0eb84c736ea4ac79c7350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: Samba server?
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
X-List-Received-Date: Wed, 27 Mar 2013 22:13:04 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Anders Darander
> 
> Maybe a dumb question...
> 
> Have you added samba to the image that you're building?
> Just adding a layer won't cause the added recipes to be built and
> deployed.

It's not a dumb question. No, I haven't added samba to the image that I'm
building. I've read the Yocto Project Reference Manual (except certain
sections that are obviously irrelevant to a user), and the wretched Bitbake
manual, and I don't see any mention of doing anything other than adding
layers to bblayers.conf and tweaking local.conf.

I'm under the impression that, unless one is making metadata changes that
will ultimately be contributed back to the community, one treats the
poky-danny-8.0 tree as essentially readonly, and limits ones adjustments to
perhaps adding more metadata (as I've done by downloading
meta-openembedded), and editing bblayers.conf (as I've done by adding the
meta-openembedded/meta-oe layer) and a few settings in local.conf.

I don't see anything in those files that causes anything to be "added to the
image" other than the mentioning of various layers in bblayers.conf. Yet it
still manages to build a substantial system containing lots of stuff from
poky-danny-8.0, but only a few things from meta-openembedded/meta-oe, and
that doesn't include samba.

So where in the documentation does it explain this? If, as I suspect, the
answer is "nowhere", then somebody's going to have to hold my hand and tell
me how to "add samba to the image that I'm building", because I have no idea
how to do that.

Pardon my exasperation. I really do appreciate the help people have given me
here. I just wish it was possible to deduce this stuff by reading a decent
manual.

And if anyone who is part of the Yocto development team is looking for bugs
to fix, they should consider regarding the state of the documentation as a
great big fat "bug", and maybe devote 10% of the time to fixing that.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


