Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8DABE00571; Wed,  7 Jan 2015 09:58:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95056E002F9
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 09:58:50 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2015 09:58:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,715,1413270000"; d="scan'208";a="647703820"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.3.155])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jan 2015 09:58:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
Date: Wed, 07 Jan 2015 17:58:47 +0000
Message-ID: <32292029.y9KGllpEqX@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.7-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <95CF81BBD42FB348A182716C4D4310A8054A02C5@G2W2533.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A8054A02C5@G2W2533.americas.hpqcorp.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: do_rootfs missing package (ipk) or not found in base feeds (rpm)
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
X-List-Received-Date: Wed, 07 Jan 2015 17:58:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Yannick,

On Wednesday 07 January 2015 17:20:08 Koehler, Yannick wrote:
>   I created my second recipe in Yocto, it is a shared library.
> 
> --
> SUMMARY = "libutil"
> 
> LICENSE = "LGPLv2.1+"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1"
> 
> SRC_URI = "file://libutil-${PV}-Source.tar.bz2"
> SRC_URI[md5sum] = "???"
> SRC_URI[sha256sum] = "???"
> 
> S = "${WORKDIR}/libutil-${PV}-Source"
> 
> DEPENDS = "libpcap"
> 
> inherit cmake
> --
> 
>   I added to conf/distro/poky.conf the following
> 
> --
> IMAGE_INSTALL_append = " libutil"
> --
> 
>    It build nicely and install some headers and a shared library.  Yet, when
> Yocto calls the do_rootfs, it fails and claim that the package is not
> found.
> 
>    I did a "find tmp -name libutil*" and see that  I have the following:
> 
> ../build/tmp/deploy/rpm/i586/libutil-staticdev-1.0.0-r0.i586.rpm
> ../build/tmp/deploy/rpm/i586/libutil-dev-1.0.0-r0.i586.rpm
> ../build/tmp/deploy/rpm/i586/libutil-dbg-1.0.0-r0.i586.rpm
> ../build/tmp/deploy/ipk/i586/libutil-dbg_1.0.0-r0_i586.ipk
> ../build/tmp/deploy/ipk/i586/libutil-staticdev_1.0.0-r0_i586.ipk
> ../build/tmp/deploy/ipk/i586/libutil-dev_1.0.0-r0_i586.ipk
> 
>   I am unclear what triggered the package to be named -dev or -staticdev and
> actually having no package named libutil-1.0.0-r0.i586.rpm as it seems that
> do_rootfs is looking for.
> 
>   I have tried with both ipk and rpm without success.  I searched google for
> some answer but could not get a solution to this problem.  My
> libutil-1.0.0-Source.tar.bz2 generate a libutil.so, libutil-static.a and
> headers, all of which is install properly when using cmake/make/make
> install. I am using a local copy of Yocto "Dizzy".

What's almost certainly happening is your main libutil package is ending up 
empty; by default packages are not actually written out if they are empty (the 
-dev, -dbg and -staticdev are always written out). You can verify this by 
looking under packages-split under the workdir for the recipe 
(tmp/work/<architecture>/libutil/1.0.0-r0/). Either this is because files you 
want in the main package aren't actually being built, or they are ending up in 
one of the other packages. During do_package, the build system looks through 
packages in the order they are mentioned in the PACKAGES variable, and the 
first package whose FILES value matches the file gets the file (you can see the 
default values of PACKAGES and FILES in meta/conf/bitbake.conf). So either you 
need to fix it so that the right files are being produced/installed, or adjust 
PACKAGES / FILES as appropriate.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

