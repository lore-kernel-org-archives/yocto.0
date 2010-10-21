Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6ABBB4C811A2
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 18:29:10 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Oct 2010 16:29:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,220,1286175600"; d="scan'208";a="619128654"
Received: from unknown (HELO [10.255.12.149]) ([10.255.12.149])
	by fmsmga002.fm.intel.com with ESMTP; 21 Oct 2010 16:29:09 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4CC0C252.1020501@linux.intel.com>
References: <4CC0C252.1020501@linux.intel.com>
Date: Thu, 21 Oct 2010 18:29:18 -0500
Message-ID: <1287703758.10206.8.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>, "Lock,
	Joshua" <joshua.lock@intel.com>
Subject: Re: Media Network Demo: Black Sand and Netbook
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Oct 2010 23:29:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-10-21 at 15:44 -0700, Darren Hart wrote:
> I build mediatomb and rygel live atom-pc images from today's poky/master 
> + meta-demo/master. I booted mediatomb on the BlackSand and rygel on the 
> netbook. I had to manually start the rygel renderer on the netbook. I 
> didn't see gupnp-av-cp on the rygel image as I expected and the 
> gupnp-universal-cp command failed to start on the netbook (via a sato 
> terminal) complaining about missing icons. If I tried to stabrt this 
> over an ssh - connection, the gupnp-universal-cp started fine (strange).
> 
> I could run gupnp-av-cp from my laptop (Ubuntu 10.10) and play music
> from mediatomb on the rygel renderer. (YAY)
> 
> What I'd like to see is for gupnp-av-cp to start automatically after the
> sato desktop loads on each renderer. This would make each renderer a
> standalone player.
> 
> So, it's functional (awesome!) and I see these ARs as pending for the 
> demo images:
> 
> [ ] add gupnp-av-cp to the rygel image

I think this is already done - I have it on my image and it works for
me.

> [ ] start rygel on boot (after networking)
> [ ] start gupnp-av-cp after the sato desktop loads on the rygel image
> [ ] setup networking on each of the non-nas images to dhcp on eth0
> 

eth0 on the rygel image seems to come up ok, it's just the mediatomb
image that doesn't afaics.  I'll probably look into this tonight.

I also added a small change in tom/demo that allows the mediatomb image
to do nfs.  After doing that, I was able to mount an nfs share from my
laptop on the Black Sand, and have mediatomb add all the media there.

Tom

> With the above, each image should boot to a functional state with no
> manual interference required.
> 
> How much of the above is already planned and how much do we need to get
> an owner for?
> 



