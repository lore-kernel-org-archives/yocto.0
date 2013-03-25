Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19E9BE014D0
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 03:47:57 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Mar 2013 03:47:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,904,1355126400"; d="scan'208";a="275544814"
Received: from unknown (HELO helios.localnet) ([10.255.13.190])
	by azsmga001.ch.intel.com with ESMTP; 25 Mar 2013 03:47:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Biao <huanmateme@163.com>
Date: Mon, 25 Mar 2013 10:47:54 +0000
Message-ID: <3679852.pVsUhJRn4g@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <22f4a24d.10498.13da1222f53.Coremail.huanmateme@163.com>
References: <22f4a24d.10498.13da1222f53.Coremail.huanmateme@163.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to install the in-tree modules into the rootfs.
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
X-List-Received-Date: Mon, 25 Mar 2013 10:47:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 25 March 2013 18:40:04 Biao wrote:
> step 1. Configure the kernel with some modules as "M".
> step 2. Build the kernel.
> step 3. After the building, there is a modules-*.tgz in the deploy/images
> directory. My question is how to install it to the target rootfs. I assume
> it is "bitbake -f -c populate_sysroot core-image-minimal-dev', but i was
> wrong.

Each module ends up as a separate package (kernel-module-modulename); there is
also a kernel-modules package which installs all of them. In either case you
need to add those packages to the image. For information on how to do that,
see:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

