Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76FFAE00D34; Fri, 18 Aug 2017 06:54:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C642E00CB4
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 06:54:18 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Aug 2017 06:54:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,393,1498546800"; d="scan'208";a="891403543"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by FMSMGA003.fm.intel.com with ESMTP; 18 Aug 2017 06:54:17 -0700
Message-ID: <1503064990.28682.24.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Markus Volk <f_l_k@t-online.de>
Date: Fri, 18 Aug 2017 09:03:10 -0500
In-Reply-To: <20170818013458.da848df3fac10ac277be82bb@t-online.de>
References: <20170817100003.d378a00de6788f3d9e36724d@t-online.de>
	<20170818013458.da848df3fac10ac277be82bb@t-online.de>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: some issues with current poky master
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
X-List-Received-Date: Fri, 18 Aug 2017 13:54:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-08-18 at 01:34 +0200, Markus Volk wrote:
>  
> > After sucessful build of the Image, my .iso has 38MB in size and seems to be missing the entire rootfs
> > The created hddimg has the right size of 4,3GB, but when i write it onto an usb drive (tried dd and gnome-disk-utility) it ends up with a big /boot partiton containing only the boot files
> > 
> 
> I still do not know if this is a homemade one, but i saw inside the do_bootimg log that isolevel 3 was missing for mkisofs because the rootfs is too big without.
> 
> For me this here inside image-live.bbclass fails for some reason:
> 
> 	# Check the size of ${ISODIR}/rootfs.img, use mkisofs -iso-level 3
> 	# when it exceeds 3.8GB, the specification is 4G - 1 bytes, we need
> 	# leave a few space for other files.
> 	mkisofs_iso_level=""
> 
>         if [ -n "${ROOTFS}" ] && [ -s "${ROOTFS}" ]; then
> 		rootfs_img_size=`stat -c '%s' ${ISODIR}/rootfs.img`
> 		# 4080218931 = 3.8 * 1024 * 1024 * 1024
> 		if [ $rootfs_img_size -gt 4080218931 ]; then
> 			bbnote "${ISODIR}/rootfs.img execeeds 3.8GB, using '-iso-level 3' for mkisofs"
> 			mkisofs_iso_level="-iso-level 3"
> 		fi
> 	fi
> 

not really sure what you have changed in the code (better to send a diff
snippet), so proposed your change to the oe-core.

> 
> 
> hard coding mkisofs_iso_level to
> 
> 	mkisofs_iso_level="-iso-level 3"
> 
> fixes this up
> -- 
> Markus Volk <f_l_k@t-online.de>



