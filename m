Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5696FE00781
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2013 02:57:58 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Nov 2013 02:54:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,781,1378882800"; d="scan'208";a="415857283"
Received: from unknown (HELO helios.localnet) ([10.252.121.191])
	by orsmga001.jf.intel.com with ESMTP; 27 Nov 2013 02:57:56 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>,
	Todd Stellanova <tstellanova@gmail.com>
Date: Wed, 27 Nov 2013 10:57:54 +0000
Message-ID: <1680200.HC4fhxabK3@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CACRzEucp69jwmpR1KzYcOMfy-RdNym_NAPsQtYNdiFNkbNMbtQ@mail.gmail.com>
References: <CACRzEudEBj6ZfdTyzCtBWCorDdPgPHHpWovbR5VJB5GuRVu8dA@mail.gmail.com>
	<FDC4F28A-69CB-406F-95EA-0A5D2AB800BC@gmail.com>
	<CACRzEucp69jwmpR1KzYcOMfy-RdNym_NAPsQtYNdiFNkbNMbtQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: unbootable image produced with PACKAGE_CLASSES ?= "package_ipk", /etc missing
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
X-List-Received-Date: Wed, 27 Nov 2013 10:58:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Robert, since I think you implemented this, any idea what might be going wrong 
here?

Cheers,
Paul

On Tuesday 26 November 2013 17:27:30 Todd Stellanova wrote:
> Tried creating a fresh build folder and giving the vm more ram but the
> results are basically the same:
> 
> Allocated inode: 15264
> copy_file: Could not allocate block in ext2 filesystem
> debugfs: sif "libgio-2.0.so.0.3800.1" mode 0x81ed
> 
> It appears that using package_rpm successfully allocates something like
> 15968 inodes. When calculating the ROOTFS_SIZE it looks like package_rpm
> and package_ipk are using very different values:
> 
> package_rpm:
> 
> ++ du -ks
> /fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-gnueabi/todd-new
> /1.0-r0/rootfs ++ awk '{base_size = $1 * 1.3; base_size = ((base_size > 8192
> ? base_size : 8192) + 0 + *51200*); if (base_size != int(base_size))
> base_size = int(base_size + 1); base_size = base_size + 4096 - 1; base_size
> -= base_size % 4096; print base_size }'
> 
> + ROOTFS_SIZE=*458752*
> 
> package_ipk:
> 
> ++ du -ks
> /fsl-community-bsp/build/tmp/work/wandboard_dual-poky-linux-gnueabi/todd-new
> /1.0-r0/rootfs ++ awk '{base_size = $1 * 1.3; base_size = ((base_size > 8192
> ? base_size : 8192) + 0); if (base_size != int(base_size)) base_size =
> int(base_size + 1); base_size = base_size + 4096 - 1; base_size -=
> base_size % 4096; print base_size }'
> 
> + ROOTFS_SIZE=*376832*
> 
> I'm just guessing here, but it seems like package_ipk is underestimating
> ROOTFS_SIZE and subsequently populate-extfs.sh fails trying to add files to
> the ext fs.  Any ideas what might cause this?
> 
> Thanks for any help!
> 
> On Mon, Nov 25, 2013 at 7:03 AM, Todd Stellanova 
<tstellanova@gmail.com>wrote:
> > Thanks for the ideas. I'll try creating a new build folder. If that still
> > shows the problem, I'm thinking this has something to do with the fact
> > that
> > I'm running the build inside a vm (inside an Ubuntu vm running on a Mac).
> > It looks like the build is using debugfs...maybe it's running out of ram
> > at
> > some point and not obtaining more in the vm properly?
> > 
> > On Nov 25, 2013, at 5:21 AM, Paul Eggleton <
> > paul.eggleton@linux.intel.com> wrote:
> > > On Monday 25 November 2013 11:31:42 Nicolas Dechesne wrote:
> > > > On Sun, Nov 24, 2013 at 3:51 AM, Todd Stellanova
> > > > <tstellanova@gmail.com>wrote:
> > > > > It appears that copying the files to the ext3 / sdcard image is
> > > > > failing in *populate-extfs.sh*I see a series of these errors:
> > > > > 
> > > > > *copy_file: Could not allocate block in ext2 filesystem*
> > > > > 
> > > > > Any idea what might cause this?  I've verified that the initial .tar
> > > > > archive and the bz2 contain the right files.
> > > > 
> > > > can you try to create a new <build> folder (do not remove the current
> > > > onefor now) and reuse the downloads and sstate folder? i am wondering
> > > > if there is a bug when trying to change PACKAGE_CLASSES in an existing
> > > > <build> folder.
> > > 
> > > I do this not infrequently and never hit a problem like this, so I doubt
> > > this is the case.
> > > 
> > > Either there is a problem in how the filesystem is being set up (block
> > > sizes, etc.) or there is some kind of corruption occurring.
> > > 
-- 

Paul Eggleton
Intel Open Source Technology Centre

