Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B72D1E01430
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 02:19:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 May 2012 02:19:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="142749903"
Received: from unknown (HELO helios.localnet) ([10.252.120.175])
	by orsmga001.jf.intel.com with ESMTP; 21 May 2012 02:19:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 21 May 2012 10:19:38 +0100
Message-ID: <4278335.i6izktZTML@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.2.0-24-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <CAK18fxHoxdznsSbeSybm3QAym-YQa=_fzsMgOr2QHqFUH5ygiw@mail.gmail.com>
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
	<4FB9F2FD.3060200@r-finger.com>
	<CAK18fxHoxdznsSbeSybm3QAym-YQa=_fzsMgOr2QHqFUH5ygiw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [poky] RaspberryPi Layer
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
X-List-Received-Date: Mon, 21 May 2012 09:19:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 21 May 2012 11:47:15 Andrei Gherzan wrote:
> On Mon, May 21, 2012 at 10:47 AM, Tomas Frydrych wrote:
> > On 19/05/12 22:51, Andrei Gherzan wrote:
> > > After an exchange of messages with Richard, Saul and John Willis (he
> > > already started a layer for oe and did a good job in it) i want to
> > > announce that i started start a fork from his layer and with Florin
> > > Sarbu will prepare a layer for RaspberryPi to work upon poky.
> > 
> > Why a fork? This is a bsp layer so it should be sufficiently generic to
> > work both with Poky and OE, it is really undesirable that there should
> > be more than one m-rpi layers in circulation.
> 
> There are issues that cannot be solved with just one layer. A distro is a
> workaround but still. More about this, rpi layer will be included in yocto
> project repos as  Richard plans so it makes sense to have a yocto specific
> layer. It could be a discussion here about using a core layer and above
> that some distro specific layers but in my opinion this would be a little
> too complicated for this. Right now i use a distro file which inherits poky
> distro in order to BBMASK some bbappends which we don't have in poky. Clear
> now?

Not really, no. I can't believe there is a good reason to have two layers for 
this. Can you please be more clear why we can't just have one?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

