Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D71EBE013A5
	for <yocto@yoctoproject.org>; Sun, 26 May 2013 04:41:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 May 2013 04:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,744,1363158000"; d="scan'208";a="343501420"
Received: from unknown (HELO helios.localnet) ([10.255.12.38])
	by fmsmga002.fm.intel.com with ESMTP; 26 May 2013 04:41:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jack <jackrubby2010@gmail.com>
Date: Sun, 26 May 2013 12:41:22 +0100
Message-ID: <5394411.Nd6qyTtVKA@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-22-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <loom.20130525T145157-762@post.gmane.org>
References: <loom.20130525T145157-762@post.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How can I remove packages from rootfs file ?
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
X-List-Received-Date: Sun, 26 May 2013 11:41:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 25 May 2013 13:58:46 Jack wrote:
> I maked a fsl-image-minaml rootfs file and customized it with adding
> particular packages. For example, I added
> IMAGE_INSTALL_append_pn-fsl-image-minimal = " task-core-ssh-openssh
> task-core-nfs-server" in local.conf file. The problem is that, the rootfs
> file has 6-7 MB capacity but this capacity of file is very high and not
> acceptable to me. So how can I remove some packages from rootfs file that I
> do not want ? 

There are several different aspects to answering this question.

The list of packages to be installed is composed of several things - the list
of packages specified in IMAGE_INSTALL, packages brought in by IMAGE_FEATURES,
and packages brought in to satisfy dependencies of either of the first two.

One way to analyse the contents of your image is to enable buildhistory [1]
which gives you the full list of installed packages, installed packages by
size, as well as graphs (.dot) that will show you the dependency relationships
between the packages. These dot graphs can be viewed by converting them to
images using the "dot" command (from graphviz) or using a viewer such as xdot
[2].

Once you've analysed things at this level, you may find there are dependency
relationships that can't easily be broken, or some packages that are overly 
large. At this point you will need to start looking at changing the build 
configuraton of the packages in question - disabling optional functionalty, 
removing optional dependencies etc. (usually this would be done by changing
DISTRO_FEATURES, modifying the kernel configuration, changing PACKAGECONFIG
options for individual recipes, or if those aren't available modifying
EXTRA_OECONF). How far you want to go with this depends on how much you want
to optimise the size of your image.

If you do find you need to go down the latter path, I'd recommend checking out
Darren Hart's presentation "Tuning Embedded Linux - When Less is More" [3].

> For example, remove packages like ar, arping,  basename, telnet, beep, .....

Note that whilst some of these may be from packages you can remove, many of
them may be functionality provided by busybox, i.e. where the command is just
a symlink to the busybox binary. You can modify the busybox build-time
configuration to disable these, but bear in mind that disabling them
usually only saves you a few kB. For some applications that may be a useful
saving, of course.

HTH.

Cheers,
Paul

[1] http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#maintaining-build-output-quality

[2] https://github.com/jrfonseca/xdot.py

[3] Slides: http://elinux.org/images/2/2b/Elce11_hart.pdf
Video: http://www.youtube.com/watch?v=WHLvI8j31vk

-- 

Paul Eggleton
Intel Open Source Technology Centre

