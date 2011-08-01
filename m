Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D5414C80059
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2011 22:31:09 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Jul 2011 20:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,298,1309762800"; d="scan'208";a="33628761"
Received: from unknown (HELO [10.255.14.152]) ([10.255.14.152])
	by azsmga001.ch.intel.com with ESMTP; 31 Jul 2011 20:31:08 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4E3612A6.7040602@windriver.com>
References: <CAHts6WS5OvR47W+o--ZpNJU-C8rVa_5GJh+YczRjaYkfN7pJjQ@mail.gmail.com>
	<4E3612A6.7040602@windriver.com>
Date: Sun, 31 Jul 2011 22:30:30 -0500
Message-ID: <1312169430.2357.34.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Francis Meyvis <francis.meyvis@gmail.com>
Subject: Re: kernel panic - not syncing: No init found
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
X-List-Received-Date: Mon, 01 Aug 2011 03:31:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-07-31 at 19:42 -0700, Bruce Ashfield wrote:
> On 11-07-31 3:44 PM, Francis Meyvis wrote:
> > Hello,
> >
> > I probably miss something trivial.
> > I cloned the git://git.yoctoproject.org/poky.git
> > I build on a 64 bit machine a qemux86-64
> > (. ./oe-init-build-env qemux86-64 and changing the conf/local.conf)
> > I build the core-image-sato&  core-image-minimal.
> > Then I try to run with
> > runqemu qemux86-64 core-image-sato ext3
> >
> > But both sato and minimal give me this message:
> > Kernel panic - not syncing: No init found.
> >
> > As runqemu showed me the full command line I tried to add the --append
> > command line option
> > init=/sbin/init and /sbin/init.sysvinit
> > But that did not help (there's a message saying Failed to execute
> > /sbin/init. Attempting defaults...)
> > I verified by mounting these ext3 images on a loop device that there's
> > really a /sbin/init present.
> >
> > Can somebody tell what I'm doing wrong?
> 
> Can you send a full bootlog, or paste it somewhere accessible ? It's hard
> to say what's with the information you've given.
> 
> Is this the latest yocto master ?
> 
> If you are seeing that message it typically means that the the
> device that is being used as the root isn't ready (fixed by
> rootwait/rootdelay) or isn't supported (i.e. NFS root without
> the right ethernet device). Changing what init is, won't change
> the result if either one of those is the case.
> 

I'm also seeing this on both sugarbay and jasperforest with the latest
master.  rootwait doesn't help.

rtc_cmos 00:07: setting system clock to 2010-01-02 05:35:34 UTC
(1262410534)
Freeing unused kernel memory: 720k freed
Failed to execute /init
Kernel panic - not syncing: No init found.  Try passing init= option to
kernel. 
See Linux Documentation/init.txt for guidance.
Pid: 1, comm: swapper Not tainted 3.0.0-rc7-yocto-standard+ #1
Call Trace:
 [<ffffffff81541b77>] panic+0x9b/0x191
 [<ffffffff81540862>] init_post+0xc0/0xc0
 [<ffffffff8188bcef>] kernel_init+0x17b/0x17b
 [<ffffffff8154b234>] kernel_thread_helper+0x4/0x10
 [<ffffffff8188bb74>] ? start_kernel+0x377/0x377
 [<ffffffff8154b230>] ? gs_change+0xb/0xb

I thought initially it had something to do with the -live image changes,
but reverting the two -live patches didn't help.

The problem seems to coincide with the tune file changes, but that may
be a red herring.

Tom


> Cheers,
> 
> Bruce
> 
> >
> > BTW is there any way to not have to run qemu with root permissions?
> > I ran the android emulator and it does not require me to be root.
> > Should I configure something on my Ubuntu machine to get qemu to function?
> >
> > Thanks,
> > francis
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



