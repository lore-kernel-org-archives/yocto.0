Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9D7D4C80287
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 06:27:22 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA2BRKXR002996;
	Tue, 2 Nov 2010 11:27:20 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02702-05; Tue,  2 Nov 2010 11:27:16 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA2BRCYZ002990
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 2 Nov 2010 11:27:12 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Hector Oron <hector.oron@gmail.com>
In-Reply-To: <AANLkTikf5R=dnMKpEX+V4awP=3Dt5+ttcoCVD0TAP8Kb@mail.gmail.com>
References: <AANLkTinu_38Fo9yC1Hpkgf_JN5FqW-WFfFxfxztvOhJr@mail.gmail.com>
	<1288644499.28481.67.camel@rex>
	<AANLkTikf5R=dnMKpEX+V4awP=3Dt5+ttcoCVD0TAP8Kb@mail.gmail.com>
Date: Tue, 02 Nov 2010 11:27:04 +0000
Message-ID: <1288697224.28481.1124.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Build failures on yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 11:27:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-11-02 at 10:03 +0000, Hector Oron wrote:
> > At a guess this is a 64 bit kernel and a 32 bit userspace? What does
> > "uname -a" show?
> 
> Yes, it is 64 bit kernel host running a 32 bit userland.
> Linux enorme 2.6.32-5-amd64 #1 SMP Fri Sep 17 21:50:19 UTC 2010 x86_64 GNU/Linux
> 
> > I suspect if you add
> >
> > BUILD_ARCH = "i686"
> >
> > to your local.conf, the build might work better? If you can confirm that
> > we can probably detect this problem and avoid this failure.
> 
> Build attempted with
> BUILD_ARCH="i686" BB_NUMBER_THREADS="2" PARALLEL_MAKE="-j 2"
> MACHINE=$(BOARD) bitbake $(YOCTO_IMAGE)
> got same result as above.

Only certainly variables can be passed through the environment. Can you
put the line in local.conf please and retry as otherwise it won't have
any effect.

> > Same as the above failure (64 bit kernel and 32 bit userspace)?
> 
> Sure.
> 
> >>   others|*)
> >> cat <<EOF
> >>     - I need to setup "vm.mmap_min_addr = 0" under /etc/sysctl.conf
> >
> > Right, but it detected that?
> 
> If it was not set, scripts warn about it, once you set it up, it goes through.

Ok, good.

Cheers,

Richard


