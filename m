Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52461E00B56; Tue,  3 Nov 2015 00:29:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A08A5E00B4A
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 00:29:54 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 03 Nov 2015 00:29:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,238,1444719600"; d="scan'208";a="841321116"
Received: from bcrawfor-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.26.120])
	by orsmga002.jf.intel.com with ESMTP; 03 Nov 2015 00:29:53 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Roberto <ramatekd@gmail.com>
Date: Tue, 03 Nov 2015 08:29:51 +0000
Message-ID: <1466597.VzdpmWes4K@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.11; x86_64; ; )
In-Reply-To: <048a01d115c7$49d6e3b0$dd84ab10$@gmail.com>
References: <048a01d115c7$49d6e3b0$dd84ab10$@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to install only a subset of the packages listed in a packagegroup?
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
X-List-Received-Date: Tue, 03 Nov 2015 08:29:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Roberto,

On Tuesday 03 November 2015 10:36:20 Roberto wrote:
> I have written the following packagegroup called packagegroup-amatek.bb for
> testing purposes :
> 
> # Copyright (C) 2012-2013 Freescale Semiconductor
> 
> # Released under the MIT license (see COPYING.MIT for the terms)
> 
> DESCRIPTION = "Example package group"
> 
> LICENSE = "MIT"
> 
> LIC_FILES_CHKSUM =
> "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
> 
> 
> file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> 
> PR = "r5"
> 
> inherit packagegroup
> 
> PROVIDES = "${PACKAGES}"
> 
> PACKAGES += " \
> 
>    ${PN}-package1 \
> 
>     ${PN}-package2 \
> 
> "
> 
> RDEPENDS_${PN}-package1 = " \
> 
>    package1-depend1 \
> 
> "
> 
> RDEPENDS_${PN}-package2 = " \
> 
>    package2-depend2 \
> 
> "
> 
> PACKAGE_ARCH = "${MACHINE_ARCH}"
> 
> 
> If in my custom image file (amatek-image) I include only
> packagegroup-amatek-package1:
> 
> 
> 
> IMAGE_INSTALL = "packagegroup-amatek-package1"
> 
> 
> 
> I would expect that package2-depend2 is not installed because it is a
> dependency of the package packagegroup-amatek-package2 which is not
> installed.
> 
> 
> 
> However, bitbake amatek-image -g -u depexp shows that package2-depend2 is
> installed as well:
> 
> 
> 
>  <http://i.stack.imgur.com/xRj1E.png> enter image description here
> 
> 
> 
> Is this the expected behaviour?

When you say depexp shows that it's installed, how are you determining that?
For the most part, depexp shows build-time dependencies; in order to *build*
your packagegroup the dependencies for all of the packages that that
packagegroup recipe creates need to exist, which means all those dependencies
need to be built - so that explains why package2-depend2 is being built.

Image construction is under the control of the package manager, and whilst we
know most of the inputs to that process we can't account for all of the
package manager's behaviour, so the only reliable way of determining the final 
contents of the image is to actually build the image and then inspect what 
went into it. You can use buildhistory to get an analysis of the image contents:

 http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#maintaining-build-output-quality

When enabled, buildhistory will not only write a list of the packages that went
into the image (in several formats) but will also write a .dot graph file showing
the dependency relationships between packages in the image which you can
inspect to see why something was added.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

