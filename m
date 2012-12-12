Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40D89E00294
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 14:55:15 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so1188639lah.35
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 14:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=d6MjBgoSvICXHD5DWs9Ym2qh7HwM6XAEQbF66WtIfvU=;
	b=tBr6Fbf8lJgrGZtex+UxnEo3mYKmKklkJQqnBQlblM6Vy1AzBrgy2r4TedphG0dn5h
	daDX0gcA15MijbFjc6e6BFQeUGULp85DawjhuTSCJtvUs6NNLxic+QS+3Trnqm2cRlNN
	c16vSZHdsShN/kXbaCh5Gm6qSLFIgXaKUlzytDxUddz13nROI7hEeNre9oz39r8DvSr0
	O/+F5P1paCTuGhhDdleDac+NWkkcgKM5tqNZFEH6AZewlfoVNLCN8a+Rsm6Ra5TG1b0A
	VlIjTPH7acfNFtrHtq7AdGIVWJ8srVGp5RmNJoNIaYe4rqlGIj6qzHubxDPmLLPx0h06
	OBdg==
MIME-Version: 1.0
Received: by 10.112.13.229 with SMTP id k5mr38997lbc.125.1355352913922; Wed,
	12 Dec 2012 14:55:13 -0800 (PST)
Received: by 10.112.101.135 with HTTP; Wed, 12 Dec 2012 14:55:13 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212121702380.16245@oneiric>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
	<CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
	<alpine.DEB.2.02.1212121541120.14335@oneiric>
	<CAHUNapTPuUUUyVbhoGQAX9jSCGwEop9nyjevXGo0FbQ1PXWXqA@mail.gmail.com>
	<alpine.DEB.2.02.1212121702380.16245@oneiric>
Date: Wed, 12 Dec 2012 17:55:13 -0500
Message-ID: <CAHUNapQxy-pJ=URDQQa8tY=6oLquuBhveLyKEcBEx5Rjjk7+Aw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
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
X-List-Received-Date: Wed, 12 Dec 2012 22:55:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Robert,

(we met at OLS last summer, I came and chatted with you briefly after
your presentation)

On Wed, Dec 12, 2012 at 5:03 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   now i'm interested, so ... what are your config steps?  i wouldn't
> mind trying to reproduce this on my system.


My doodle layer can be found here:
    https://github.com/twoerner/meta-trevor

My conf/bblayers.conf adds this and meta-openembedded/meta-oe.
My conf/local.conf currently looks like:

    BB_NUMBER_THREADS = "4"
    PARALLEL_MAKE = "-j 4"
    MACHINE = "qemux86"
    DL_DIR = "/home/trevor/devel/Downloads"
    DISTRO = "poky"
    PACKAGE_CLASSES = "package_ipk"
    EXTRA_IMAGE_FEATURES = "debug-tweaks ssh-server-openssh"
    USER_CLASSES = "buildstats image-mklibs image-prelink"
    PATCHRESOLVE = "noop"

    #
    # Disk Space Monitoring during the build
    #
    # Monitor the disk space during the build. If there is less that
1GB of space or less
    # than 100K inodes in any key build location (TMPDIR, DL_DIR,
SSTATE_DIR), gracefully
    # shutdown the build. If there is less that 100MB or 1K inodes,
perform a hard abort
    # of the build. The reason for this is that running completely out
of space can corrupt
    # files and damages the build in ways which may not be easily recoverable.
    BB_DISKMON_DIRS = "\
        STOPTASKS,${TMPDIR},1G,100K \
        STOPTASKS,${DL_DIR},1G,100K \
        STOPTASKS,${SSTATE_DIR},1G,100K \
        ABORT,${TMPDIR},100M,1K \
        ABORT,${DL_DIR},100M,1K \
        ABORT,${SSTATE_DIR},100M,1K"

    CONF_VERSION = "1"
    BB_DANGLINGAPPENDS_WARNONLY = "yes"
    IMAGE_FSTYPES = "vmdk"
    IMAGE_ROOTFS_SIZE = "500000"

You can then either "bitbake bboverride" or "bitbake core-image-minimal".

To easily boot the resulting VMDK with qemu, you'll have to patch your
poky/scripts/runqemu and poky/scripts/runqemu-internal with my patch
here (unless by the time you read this, it has already been included):
    https://lists.yoctoproject.org/pipermail/yocto/2012-December/013279.html

and then run:
    $ runqemu tmp/deploy/images/<image>.vmdk

Currently I can't think of any nice/easy way to _flexibly_ specify the
eth0 IP address of the vmdk image, but the runqemu script does setup
your local tap interface for 192.168.7.1/24 as expected. You can then
manually configure eth0 once the VM boots and/or setup
'/etc/network/interfaces'.

