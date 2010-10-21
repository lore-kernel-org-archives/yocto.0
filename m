Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C42104C80054
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 17:44:28 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Oct 2010 15:44:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,219,1286175600"; d="scan'208";a="849750711"
Received: from doubt.jf.intel.com (HELO [10.24.148.210]) ([10.24.148.210])
	by fmsmga001.fm.intel.com with ESMTP; 21 Oct 2010 15:44:28 -0700
Message-ID: <4CC0C252.1020501@linux.intel.com>
Date: Thu, 21 Oct 2010 15:44:34 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.9) Gecko/20100922 Thunderbird/3.1.4
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Cc: Josh Lock <joshua.lock@intel.com>
Subject: Media Network Demo: Black Sand and Netbook
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
X-List-Received-Date: Thu, 21 Oct 2010 22:44:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I build mediatomb and rygel live atom-pc images from today's poky/master 
+ meta-demo/master. I booted mediatomb on the BlackSand and rygel on the 
netbook. I had to manually start the rygel renderer on the netbook. I 
didn't see gupnp-av-cp on the rygel image as I expected and the 
gupnp-universal-cp command failed to start on the netbook (via a sato 
terminal) complaining about missing icons. If I tried to stabrt this 
over an ssh - connection, the gupnp-universal-cp started fine (strange).

I could run gupnp-av-cp from my laptop (Ubuntu 10.10) and play music
from mediatomb on the rygel renderer. (YAY)

What I'd like to see is for gupnp-av-cp to start automatically after the
sato desktop loads on each renderer. This would make each renderer a
standalone player.

So, it's functional (awesome!) and I see these ARs as pending for the 
demo images:

[ ] add gupnp-av-cp to the rygel image
[ ] start rygel on boot (after networking)
[ ] start gupnp-av-cp after the sato desktop loads on the rygel image
[ ] setup networking on each of the non-nas images to dhcp on eth0

With the above, each image should boot to a functional state with no
manual interference required.

How much of the above is already planned and how much do we need to get
an owner for?

-- 
Darren Hart
Embedded Linux Kernel

