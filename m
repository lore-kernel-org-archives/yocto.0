Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB46EE004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 13:31:22 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2012 13:31:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113738978"
Received: from unknown (HELO envy.home) ([10.255.13.210])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2012 13:31:22 -0800
Message-ID: <4F173A14.4090205@linux.intel.com>
Date: Wed, 18 Jan 2012 13:31:00 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <CANFv2EmGr9fZOPbi1G+sWbWp0t6B-mijZ6z8iLLw7ZGN9OZy9Q@mail.gmail.com>
	<CANFv2E=WCVdtHMrf9VBC0JX+GjTRk+NZr+ZwA4F-x0SAnc3L1g@mail.gmail.com>
	<CANFv2EnCdxjffKM1W42vBU-TTPCG8kL2GTXr5VUP47zDof8VwA@mail.gmail.com>
	<4F16DC5D.9070903@mlbassoc.com> <4F16DDCD.2020701@ti.com>
	<CANFv2E=R2NwFm0CdHqmQC0HskVYZFFYCwu49r2vs5wxkmHS=rg@mail.gmail.com>
	<4F16E20C.9010909@ti.com>
	<CANFv2EnTYUmywJfVGw27QP4QHqgJnjF9-H9G0DEj-HrTAmpytg@mail.gmail.com>
In-Reply-To: <CANFv2EnTYUmywJfVGw27QP4QHqgJnjF9-H9G0DEj-HrTAmpytg@mail.gmail.com>
X-Enigmail-Version: 1.3.4
Cc: yocto@yoctoproject.org
Subject: Re: build failure on ubuntu 64bits development system
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
X-List-Received-Date: Wed, 18 Jan 2012 21:31:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/18/2012 07:25 AM, James Abernathy wrote:
> 
> 
> On Wed, Jan 18, 2012 at 10:15 AM, William Mills <wmills@ti.com
> <mailto:wmills@ti.com>> wrote:
> 
> 
> 
>     On 01/18/2012 10:04 AM, James Abernathy wrote:
> 
> 
> 
>         ---------- Forwarded message ----------
>         From: *William Mills* <wmills@ti.com <mailto:wmills@ti.com>
>         <mailto:wmills@ti.com <mailto:wmills@ti.com>>>
>         Date: Wed, Jan 18, 2012 at 9:57 AM
>         Subject: Re: [yocto] build failure on ubuntu 64bits development
>         system
>         To: Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>
>         Cc: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
> 
> 
> 
> 
>         On 01/18/2012 09:51 AM, Gary Thomas wrote:
> 
>            On 2012-01-18 07 <tel:2012-01-18%2007>
>         <tel:2012-01-18%2007>:42, James Abernathy wrote:
> 
> 
> 
>                On Wed, Jan 18, 2012 at 9:30 AM, James Abernathy
>                <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>
>         <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>>
>                <mailto:jfabernathy@gmail.com
>         <mailto:jfabernathy@gmail.com> <mailto:jfabernathy@gmail.com
>         <mailto:jfabernathy@gmail.com>>__>__>
> 
>                wrote:
> 
> 
> 
>                On Wed, Jan 18, 2012 at 7:55 AM, James Abernathy
>                <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>
>         <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>>
>                <mailto:jfabernathy@gmail.com
>         <mailto:jfabernathy@gmail.com> <mailto:jfabernathy@gmail.com
>         <mailto:jfabernathy@gmail.com>>__>__>
> 
>                wrote:
> 
>                I just built a new development pc and installed Ubuntu 11.10
>                x64. I wonder if there are any new requirements to building
>                Yocto in that environment? I got an error right
>                off, but then it complete the first 63 task and stopped
>                successfully. error below:
> 
>                jim@ubuntu:~/poky/build-cdv$ bitbake core-image-sato
>                Pseudo is not present but is required, building this first
>                before the main build
>                Parsing recipes: 100%
>                |#############################____####################|
>         Time: 00:00:25
> 
>                Parsing of 797 .bb files complete (0 cached, 797 parsed).
>         1037
>                targets, 22 skipped, 0 masked, 0 errors.
>                ERROR: Execution of event handler 'run_buildstats' failed
>                Traceback (most recent call last):
>                File "run_buildstats(e)", line 18, in
>                run_buildstats(e=<bb.event.____BuildStarted object at
>         0x4c338d0>)
> 
>                File "buildstats.bbclass", line 21, in
>                set_device(e=<bb.event.____BuildStarted object at 0x4c338d0>)
> 
>                UnboundLocalError: local variable 'rdev' referenced before
>                assignment
> 
> 
>                Any ideas?
> 
>                JIm A
> 
> 
>                I went back and tried using the tarballs for poky edison and
>                cedartrail bsp and the errors don't occur. So I'm
>         guessing the
>                issue isn't related to Ubuntu 32 vs. 64 bit.
> 
> 
>                I spoke too soon. Same error in edison tarballs. I looked
>         at the
>                code and I can see an place were rdev could go un
>         assigned. If
>                you fell out of the for loop without passing any of
>                the if conditions, rdev would be unassigned. That must be
>         what
>                is happening in Ubuntu 11.10 x64
> 
>                Anybody building with Ubuntu 11.10 x64? This doesn't
>         happen on x32
> 
>                Jim A
> 
> 
>                def set_device(e):
>                tmpdir = bb.data.getVar('TMPDIR', e.data, True)
>                try:
>                os.remove(bb.data.getVar('____DEVFILE', e.data, True))
>                except:
>                pass
>              
>          ##############################____############################__##__################
> 
>                # We look for the volume TMPDIR lives on. To do all disks
>         would
>                make little
>                # sense and not give us any particularly useful data. In
>         theory
>                we could do
>                # something like stick DL_DIR on a different partition
>         and this
>                would
>                # throw stats gathering off. The same goes with SSTATE_DIR.
>                However, let's
>                # get the basics in here and work on the cornercases later.
>              
>          ##############################____############################__##__################
>                device=os.stat(tmpdir)
>                majordev=os.major(device.st_____dev)
>                minordev=os.minor(device.st_____dev)
> 
>                for line in open("/proc/diskstats", "r"):
>                if majordev == int(line.split()[0]) and minordev ==
>                int(line.split()[1]):
>                rdev=line.split()[2]
>                file = open(bb.data.getVar('DEVFILE', e.data, True), "w")
>                file.write(rdev)
>                file.close()
> 
> 
>            Can you show what the differences are between /proc/diskstats
>            on the two systems? That's obviously what's causing the error.
> 
> 
>         If your build dir is encyptfs or a fuse device or anything that
>         is not a
>         direct block device you will get this error. This is to be fixed in
>         1.1.1 but encyptfs will still have other problems.
> 
>         I build the Ubuntu 11.10 x64 system with 2 drives setup as Soft
>         RAID 0.
>         I picked btrfs as the file system for no particular reason.
>         Should I go
>         back to ext4 or is RAID 0 the problem?
> 
> 
>     No, I would not do that yet.  I would think software RAID would
>     present a block device so would not trigger this error.
> 
> I was hoping to use RAID 0 for speed. I have a I7 2700K on a DZ68DB with
> 2 6Gb/s ports matched to 2 6Gb/s 7200 hard drives.  Since the builds
> take so long, I was looking for an edge.
> 
> So are there any recommendations at this point?  I'm assuming that the
> default ext4 directly on the SATA drive is a fall back position.

I use software RAID0 with ext4 on Ubuntu 11.10 amd64 for my primary
build system. I have never tried btrfs.

--
Darren

> 
> Advice?
> 
> Jim A
> 
> 
>     >  9       0 md0 133691 0 2218832 0 67133 0 5629616 0 0 0 0
>     >   9       1 md1 235 0 1880 0 0 0 0 0 0 0 0
> 
>     Your build dir is in md0 or md1 (wrt your other post)
> 
> 
>         JIm A
> 
>         ___________________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>__>
>         https://lists.yoctoproject.____org/listinfo/yocto
>         <https://lists.yoctoproject.__org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>>
> 
> 
> 
> 
>         _________________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.__org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>
> 
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

