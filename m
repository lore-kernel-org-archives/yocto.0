Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A231E0137D
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2012 03:04:49 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 27 Mar 2012 03:04:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="82036316"
Received: from unknown (HELO helios.localnet) ([10.252.123.228])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Mar 2012 03:04:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Tue, 27 Mar 2012 11:04:44 +0100
Message-ID: <4957795.ksloQYTPSH@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <CAGiJk9drrBpokvymehivFzx=q_VSUudzeq-oxLBr4FiwrqCTjA@mail.gmail.com>
References: <CAGiJk9fZ1-KCiDuT3n9n_WHqNN9Gyj_UyPJ0Ktx2N=4F7Rv1cw@mail.gmail.com>
	<9948106.Jx6FOq70hB@helios>
	<CAGiJk9drrBpokvymehivFzx=q_VSUudzeq-oxLBr4FiwrqCTjA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Support of meta-kde for Poky
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
X-List-Received-Date: Tue, 27 Mar 2012 10:04:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 27 March 2012 11:07:55 Samuel Stirtzel wrote:
> 2012/3/26 Paul Eggleton <paul.eggleton@linux.intel.com>:
> > On Monday 26 March 2012 14:55:40 Samuel Stirtzel wrote:
> >> meta-kde has no mailing list, so I'm looking for a list to host the
> >> discussion, any suggestions?
> > 
> > Probably just the oe-devel list - if the volume of commits gets too high
> > then we can look at splitting off a separate one.
> 
> Do I need an official statement, and from whom can I get it in case?

I don't think any is needed (at least I don't think anyone asked for any of 
the other layers).

> My assumption is that the initial request, that started this
> discussion, was made with the idea in mind not to include any
> "overhead" from meta-oe.
>
> Too bad it isn't possible to include only a subset of recipes from a layer..
> But it just looks like layers don't work like that.

That's right, the layer is supposed to be used as a unit; which means those 
units are supposed to be kept reasonably small and focused where possible. 
meta-oe is the exception here, but we should continue to try to improve it.

> > As an aside it would be interesting to know why KDE requires additional
> > gif support from giflib when gif loading is already built into Qt (and we
> > do enable it in our Qt recipes).
> 
> The KDE gifloader code is from 2004.
> It looks like this was a possible solution and it worked, so they kept it.

Fair enough.

> But since it is KHTML depending on giflib, KDE could replace it with
> Webkit in the "future" (this is really old news).

Right, I won't be holding my breath on that one ;)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

