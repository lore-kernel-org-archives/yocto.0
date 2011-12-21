Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D1E8E005A3
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 09:31:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBLHV6KI012032;
	Wed, 21 Dec 2011 17:31:06 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11590-07; Wed, 21 Dec 2011 17:31:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBLHUxAa012026
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 21 Dec 2011 17:31:00 GMT
Message-ID: <1324488661.19860.8.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 21 Dec 2011 17:31:01 +0000
In-Reply-To: <4EF21124.2050501@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
	<64ce10cdc685f9f5c0288df4bd0ab276711148d6.1324456294.git.dvhart@linux.intel.com>
	<1324484918.18348.7.camel@ted> <4EF20DBB.6040200@linux.intel.com>
	<4EF21124.2050501@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 6/9] distro: Factor out poky-common.inc from poky.conf
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
X-List-Received-Date: Wed, 21 Dec 2011 17:31:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-12-21 at 09:02 -0800, Darren Hart wrote:
> 
> On 12/21/2011 08:47 AM, Darren Hart wrote:
> > 
> > 
> > On 12/21/2011 08:28 AM, Richard Purdie wrote:
> >> On Wed, 2011-12-21 at 01:02 -0800, Darren Hart wrote:
> >>> Prepare to add additional poky distro variants by factoring out
> >>> assignments common to all poky* distros into poky-common.inc. Things
> >>> like the naming schemes, mirrors, etc. are common, while dependencies
> >>> and other things impacting image generation should be distro specific.
> >>>
> >>> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> >>
> >> Why doesn't something like:
> >>
> >> """
> >> $meta-yocto/conf/distro$ cat poky-lsb.conf 
> >> require conf/distro/poky.conf
> >>
> >> DISTRO = "poky-lsb"
> >> DISTROOVERRIDES = "poky:linuxstdbase"
> >> """
> >>
> >> work?
> >>
> >> Effectively the above takes poky but then customises it...
> > 
> > I seem to recall something about this being harder with tiny as it
> > removes things rather than just extending. But I can't put recall
> > exactly what the issue was (or if there was one). I shall try it this
> > way if you prefer this approach. I felt the .inc approach provided a
> > more explicit building block mechanism which seemed more intuitive and
> > less prone to accidental inclusion. But, I don't feel strongly one way
> > or the other.
> 
> Aha, now I remember. Consider things like the following, defined in
> poky.conf:
> 
> DISTRO_FEATURES_append = " largefile opengl"
> 
> This one, not so bad, I can easily override it.

Right, I'd expect you are totally overriding DISTRO_FEATURES anyway.

> PREFERRED_VERSION_linux-yocto ?= "2.6.37+git%"
> PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.0%"
> PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.0%"
> PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.0%"
> PREFERRED_VERSION_linux-yocto_qemumips ?= "3.0%"
> PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.0%"
> 
> 
> All the above I could override.... but I'd rather be able to use the
> default without having to override them. This pollutes my distro config
> space unnecessarily in my opinion.

Right now you need to override these things, in future I suspect you're
going to want to share them when tiny becomes compatible with the
default kernel. This is why I feel the line you've drawn over what to
put into the .inc is a little arbitrary and why its a bad idea.

> DISTRO_EXTRA_RRECOMMENDS += "kernel-module-af-packet"
> 
> Things like this are the kicker. I don't know of a way to remove just
> what poky.conf appended to a variable, and not wipe out the rest of the
> variable.

So can we just change poky.conf to do:

POKYDEFAULTRECOMMENDS = "kernel-module-af-packet
DISTRO_EXTRA_RRECOMMENDS += "${POKYDEFAULTRECOMMENDS}"

and then you can change POKYDEFAULTRECOMMENDS to ""?

Cheers,

Richard


