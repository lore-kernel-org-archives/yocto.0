Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5A91E0044A
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 08:31:05 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 May 2012 08:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="142863105"
Received: from unknown (HELO helios.localnet) ([10.252.120.175])
	by orsmga001.jf.intel.com with ESMTP; 21 May 2012 08:31:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: John Willis <John.Willis@distant-earth.com>
Date: Mon, 21 May 2012 16:31:03 +0100
Message-ID: <2402037.qbM01MX6gb@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.2.0-24-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <00b101cd3764$be9cd960$3bd68c20$@Distant-earth.com>
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
	<14387597.ECeojYX8cL@helios>
	<00b101cd3764$be9cd960$3bd68c20$@Distant-earth.com>
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
X-List-Received-Date: Mon, 21 May 2012 15:31:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 21 May 2012 16:16:47 John Willis wrote:
> > > For example parsing libav and rpi-zram-service will fail. We don't
> > > have libav and we don't have systemd yet in poky.
> > 
> > OK, sure, that isn't ideal - however meta-ti suffers from this issue as
> > well, and they have instructions in the layer README which tell people
> > the BBMASK they can use to fix it. Can we not do the same here?
> 
> That had been my plan but I got the impression that was frowned up in the
> Yocto environment.

Well, IMHO it's suboptimal, but far less so than two separate competing layers 
that ultimately exist for the same purpose.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

