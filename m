Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37259E006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 14:58:17 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=C954Df/dMszKV3pJ4UHHRPpqChKEE03KsNMT4vQn3dAA08Fg62Zf84Ebov8PCFWi;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1Umt3Y-0000zc-Tm; Wed, 12 Jun 2013 17:58:17 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Trevor Woerner'" <twoerner@gmail.com>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD><bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org><1875741.cStO1T6C1g@helios><58DC6CADE1A5492E9E712C310E6C9019@PAULD>
	<CAHUNapQwaFgZv58X-MEhMc_x1rDUL2jtGY+irZ=d6fDQDKxC-w@mail.gmail.com>
In-Reply-To: <CAHUNapQwaFgZv58X-MEhMc_x1rDUL2jtGY+irZ=d6fDQDKxC-w@mail.gmail.com>
Date: Wed, 12 Jun 2013 14:58:21 -0700
Message-ID: <DB661AC610E74F50A7066636B2F398E7@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-index: Ac5nsIhc7VfK9jF9QH+2iwHjnngkigABZF2w
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688c070a71fac58e1aa8329b46f51fac9de350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 21:58:18 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Trevor Woerner
> 
> Imagine a company which produces embedded devices running Linux. There
> are hardware engineers, and software people. Within the software group
> there will always be that person (or group) which is responsible for
> creating the Linux filesystem which runs on the device, i.e. the
> "base" system, and there is the person or group responsible for
> writing the "special sauce", the program which (or programs that) make
> the device do the special thing that sets this device apart (i.e. the
> application developer group).
> 
> Sometimes these people are the one and the same person, other times
> they are separate people/groups.
> 
> Only the person/group responsible for the base filesystem need to know
> about Yocto/OE. The "special sauce" people don't need to know anything
> about packages, kernels, udev, /etc, or any of that other stuff. But
> what they do need is a "compiler"[1] so they can build the software
> for their target device.
> 
> The "compiler" they need has to be tied to the base filesystem. They
> shouldn't be using a "compiler" that isn't aware of what libraries
> (and therefore also be using the correct header files) that are going
> to be available on the target, and they shouldn't be using a compiler
> that isn't aware of the version of the kernel that will be available
> on the target.
> 
> In order to help get the Yocto/OE group and the application group in
> sync, Yocto/OE has this neat target which allows the platform team to
> generate an "compiler" (i.e. the SDK) that the application group can
> use which is, through the magic of the Yocto system, perfectly tuned
> for the image the platform team is creating. In other words, the
> application team doesn't need to perform Yocto builds in order to
> write their software, they just need the Yocto people to generate an
> SDK for them and produce a new SDK anytime anything on the target
> image changes. The Yocto people can generate this SDK using a very
> simple one-liner.
> 
> For a little more information, please have a look at item 19 of
> https://github.com/twoerner/meta-trevor/blob/master/misc/notes

Okay, so I'm wrong about the SDK being a toolchain that runs on the target.
It does indeed run on the host, right? So why is the toolchain that builds
the target application on the host different from the toolchain that builds
the target OS image on the host?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


