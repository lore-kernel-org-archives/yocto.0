Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A2EEE00294
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 15:18:51 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:50663 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TivZi-00045j-Aw; Wed, 12 Dec 2012 18:18:50 -0500
Date: Wed, 12 Dec 2012 18:18:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Trevor Woerner <twoerner@gmail.com>
In-Reply-To: <CAHUNapQxy-pJ=URDQQa8tY=6oLquuBhveLyKEcBEx5Rjjk7+Aw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212121817220.30911@oneiric>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
	<CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
	<alpine.DEB.2.02.1212121541120.14335@oneiric>
	<CAHUNapTPuUUUyVbhoGQAX9jSCGwEop9nyjevXGo0FbQ1PXWXqA@mail.gmail.com>
	<alpine.DEB.2.02.1212121702380.16245@oneiric>
	<CAHUNapQxy-pJ=URDQQa8tY=6oLquuBhveLyKEcBEx5Rjjk7+Aw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: per-image ROOTFS sizes
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
X-List-Received-Date: Wed, 12 Dec 2012 23:18:51 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 12 Dec 2012, Trevor Woerner wrote:

> Hi Robert,
>
> (we met at OLS last summer, I came and chatted with you briefly after
> your presentation)
>
> On Wed, Dec 12, 2012 at 5:03 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >   now i'm interested, so ... what are your config steps?  i wouldn't
> > mind trying to reproduce this on my system.
>
>
> My doodle layer can be found here:
>     https://github.com/twoerner/meta-trevor
>
> My conf/bblayers.conf adds this and meta-openembedded/meta-oe.
> My conf/local.conf currently looks like:
>
>     BB_NUMBER_THREADS = "4"
>     PARALLEL_MAKE = "-j 4"
>     MACHINE = "qemux86"
>     DL_DIR = "/home/trevor/devel/Downloads"
>     DISTRO = "poky"
>     PACKAGE_CLASSES = "package_ipk"
>     EXTRA_IMAGE_FEATURES = "debug-tweaks ssh-server-openssh"
>     USER_CLASSES = "buildstats image-mklibs image-prelink"
>     PATCHRESOLVE = "noop"
>
>     #
>     # Disk Space Monitoring during the build
>     #
>     # Monitor the disk space during the build. If there is less that
> 1GB of space or less
>     # than 100K inodes in any key build location (TMPDIR, DL_DIR,
> SSTATE_DIR), gracefully
>     # shutdown the build. If there is less that 100MB or 1K inodes,
> perform a hard abort
>     # of the build. The reason for this is that running completely out
> of space can corrupt
>     # files and damages the build in ways which may not be easily recoverable.
>     BB_DISKMON_DIRS = "\
>         STOPTASKS,${TMPDIR},1G,100K \
>         STOPTASKS,${DL_DIR},1G,100K \
>         STOPTASKS,${SSTATE_DIR},1G,100K \
>         ABORT,${TMPDIR},100M,1K \
>         ABORT,${DL_DIR},100M,1K \
>         ABORT,${SSTATE_DIR},100M,1K"
>
>     CONF_VERSION = "1"
>     BB_DANGLINGAPPENDS_WARNONLY = "yes"
>     IMAGE_FSTYPES = "vmdk"
>     IMAGE_ROOTFS_SIZE = "500000"
>
> You can then either "bitbake bboverride" or "bitbake core-image-minimal".
>
> To easily boot the resulting VMDK with qemu, you'll have to patch your
> poky/scripts/runqemu and poky/scripts/runqemu-internal with my patch
> here (unless by the time you read this, it has already been included):
>     https://lists.yoctoproject.org/pipermail/yocto/2012-December/013279.html
>
> and then run:
>     $ runqemu tmp/deploy/images/<image>.vmdk
>
> Currently I can't think of any nice/easy way to _flexibly_ specify the
> eth0 IP address of the vmdk image, but the runqemu script does setup
> your local tap interface for 192.168.7.1/24 as expected. You can then
> manually configure eth0 once the VM boots and/or setup
> '/etc/network/interfaces'.

  i'll check all this out, either this eve or tomorrow.  probably
tomorrow since i'm well into a bottle of 10-YO single malt ardbeg at
the moment.  you're jealous.  i know you are.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

