Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 862D0E0150F
	for <yocto@yoctoproject.org>; Mon, 27 May 2013 11:33:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 27 May 2013 11:33:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,752,1363158000"; d="scan'208";a="340940077"
Received: from unknown (HELO helios.localnet) ([10.255.12.48])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2013 11:33:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jack <jackrubby2010@gmail.com>
Date: Mon, 27 May 2013 19:33:17 +0100
Message-ID: <2270262.ebMYOzLRXb@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-22-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <loom.20130527T160955-462@post.gmane.org>
References: <loom.20130525T145157-762@post.gmane.org>
	<5394411.Nd6qyTtVKA@helios>
	<loom.20130527T160955-462@post.gmane.org>
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
X-List-Received-Date: Mon, 27 May 2013 18:33:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 27 May 2013 14:56:18 Jack wrote:
> Thanks a lot Paul.
> 
> Paul Eggleton <paul.eggleton@...> writes:
> > On Saturday 25 May 2013 13:58:46 Jack wrote:
> > > I maked a fsl-image-minaml rootfs file and customized it with adding
> > > particular packages. For example, I added
> > > IMAGE_INSTALL_append_pn-fsl-image-minimal = " task-core-ssh-openssh
> > > task-core-nfs-server" in local.conf file. The problem is that, the
> > > rootfs
> > > file has 6-7 MB capacity but this capacity of file is very high and not
> > > acceptable to me. So how can I remove some packages from rootfs file
> > > that I
> > > do not want ?
> > 
> > There are several different aspects to answering this question.
> > 
> > The list of packages to be installed is composed of several things - the
> > list of packages specified in IMAGE_INSTALL, packages brought in by
> > IMAGE_FEATURES, and packages brought in to satisfy dependencies of either
> > of the first two.
> > 
> > One way to analyse the contents of your image is to enable buildhistory
> > [1]
> > which gives you the full list of installed packages, installed packages by
> > size, as well as graphs (.dot) that will show you the dependency
> > relationships between the packages. These dot graphs can be viewed by
> > converting them to images using the "dot" command (from graphviz) or
> > using a viewer such as xdot [2].
> 
> I enabled buildhistory by adding INHERIT += "buildhistory" and
> 
> BUILDHISTORY_COMMIT = "1" to local.conf file. But I got this error :
> | error: Failed dependencies:
> | libcrypt.so.1(GLIBC_2.0) is needed by inetutils-1.8-r0.ppce500v2

This has nothing to do with buildhistory. Not sure what would cause this but 
it looks like inetutils depends on libcrypt and for whatever reason that 
wasn't provided by any package by the time it came to construct the image. Did 
you change any other settings?

> I changed DISTRO_FEATURES in local.conf to DISTRO_FEATURE = "busybox" but it
> didn't compile.

I'm afraid you can't just set DISTRO_FEATURES to "busybox". In particular this 
will exclude a bunch of eglibc features, some of which are mandatory. You need 
to understand what you are removing.

> Finally, I found that one way to customize an image is hob. I remove some
> packages with hob and the size of my root filesystem decreased. The type of
> output file that generated is .rootfs.ext2.gz but I need
> .rootfs.ext2.gz.u-boot type. How can I have .rootfs.ext2.gz.u-boot type with
> hob? Is it possible convert .rootfs.ext2.gz to .rootfs.ext2.gz.u-boot?

Doesn't seem to be a way to do this from hob at the moment (likely due to bug 
4386). You could probably run u-boot-mkimage directly to generate the image.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

