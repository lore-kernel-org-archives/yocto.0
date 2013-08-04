Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CAECE00747
	for <yocto@yoctoproject.org>; Sun,  4 Aug 2013 15:35:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Aug 2013 15:35:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,814,1367996400"; d="scan'208";a="357344690"
Received: from unknown (HELO helios.localnet) ([10.252.122.197])
	by orsmga001.jf.intel.com with ESMTP; 04 Aug 2013 15:35:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rich Bayliss <richbayliss@gmail.com>
Date: Sun, 04 Aug 2013 23:35:53 +0100
Message-ID: <1680213.YPjXP0RsTC@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAHLvMfZwQj6B9uzZC9wPbSqr+n8609FA90tAy7jPHp9mqDjPfw@mail.gmail.com>
References: <CAHLvMfbjrLfbxt-9oa+WRgobux+o5B8RM6uDeLh+wB4GKN_nfQ@mail.gmail.com>
	<11658953.R2RoUsbsuX@helios>
	<CAHLvMfZwQj6B9uzZC9wPbSqr+n8609FA90tAy7jPHp9mqDjPfw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Read-Only RootFS is not read only
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
X-List-Received-Date: Sun, 04 Aug 2013 22:35:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 04 August 2013 01:27:01 Rich Bayliss wrote:
> On 2 August 2013 13:47, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> > On Tuesday 30 July 2013 11:43:43 Rich Bayliss wrote:
> >> I am trying to build for Raspberry Pi including "read-only-rootfs" in
> >> my image features. My aim is to have my SD Card read-only and at some
> >> point add a read-write overlay to certain directories. This should
> >> enable my system to boot fresh each time, and have some persistent
> >> storage for user files etc.
> >> 
> >> However, after building my image I can SSH into the system and issue
> >> "touch test" to create a file in my home directory, then after a
> >> reboot it is still there. That isn't very read-only :)
> >> 
> >> Am I missing something, or is this working incorrectly?
> > 
> > It sounds like it's working incorrectly. Since meta-raspberrypi constructs
> > the SD card image using its own custom class I wonder if it has anything
> > to do with that. Andrei, do you know anything about this?
> > 
> > BTW, are you using sysvinit or systemd in this image?
>
> I am using the standard sysvinit/systemd - I haven't specified either,
> so whichever is default.

Except the default depends upon what DISTRO you are using. Which DISTRO are 
you using - "poky" or something else?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

