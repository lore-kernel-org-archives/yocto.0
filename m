Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BA12E0052B; Thu,  5 Jan 2017 10:57:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B34FCE00510
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 10:57:54 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga101.fm.intel.com with ESMTP; 05 Jan 2017 10:57:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,322,1477983600"; d="scan'208";a="50525104"
Received: from schillax-mobl.gar.corp.intel.com ([10.252.197.177])
	by fmsmga006.fm.intel.com with ESMTP; 05 Jan 2017 10:57:54 -0800
Date: Thu, 5 Jan 2017 10:57:54 -0800
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: richard_allen@keysight.com
Message-ID: <20170105185754.GA13163@schillax-mobl.gar.corp.intel.com>
References: <BC774F321B0EF24DBF41FE7457B2B7862D17D5A2@wcosexch01k.cos.is.keysight.com>
	<20170105003127.GA87812@daswan-mobl5.amr.corp.intel.com>
	<BC774F321B0EF24DBF41FE7457B2B7862D17D8A9@wcosexch01k.cos.is.keysight.com>
MIME-Version: 1.0
In-Reply-To: <BC774F321B0EF24DBF41FE7457B2B7862D17D8A9@wcosexch01k.cos.is.keysight.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: morty populate_sdk_ext fails for recipes inherit bin_package
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
X-List-Received-Date: Thu, 05 Jan 2017 18:57:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 01/05, richard_allen@keysight.com wrote:
> Hi
> 1) I had just successfully built an image with all the recipes ( hals, hals-doc)  [and yes, there these are non-empty]
> 2) I had then successfully built image with -c populate_sdk
> 3) The bitbake image -c populate_sdk_ext is what is failing
> [ The above works with Krogoth, only on Morty am I getting the errors during populate_sdk_ext
> 
> May be the recipe is wrong for Morty? ( I have several other recipes, same thing, same structure)

Nothing jumps out about that recipe. If you do a `find` in
tmp/deploy/ipk for hals*, does anything show up? That's where opkg
will be looking for the packages, so I assume it is not there.

> 
> inherit bin_package
> 
> SUMMARY = "HALs "
> DESCRIPTION = "HALs"
> 
> LICENSE = "CLOSED"
> LIC_FILES_CHKSUM = ""
> 
> # this can be overridden in local.conf
> HALS_TARBALL_URI ?= "file:///opt/packages/${PN}-${PV}-arm.tar.gz"
> 
> SRC_URI = "${HALS_TARBALL_URI}"
> 
> # the tar has a root directory , which has the files under
> HALS_TAR_ROOT_DIR_NAME ?= "${PN}-${PV}-arm"
> 
> #make the source directory start in this directory
> S = "${WORKDIR}/${HALS_TAR_ROOT_DIR_NAME}"
> 
> #runtime depends
> RDEPENDS_${PN} = " libgcc \
>                          libstdc++ \
>                          dtc \
>                            "
> DEPENDS_${PN} = " gtest"
> 
> #bring in all to build toolchain
> DEPENDS_${PN}-dev += " ${PN}-doc ${PN}-tests ${PN}-samples"
> 
> PACKAGES =+ "${PN}-tests ${PN}-samples "
> 
> FILES_${PN}-staticdev += "  ${libdir}/*/*.a"
> FILES_${PN}-dev           += "${includedir} ""
> FILES_${PN}-samples   += "${bindir}/*"
> FILES_${PN}-tests     += "${bindir}/*[tT]est"
> FILES_${PN}-doc       += "${prefix}/src/doc"
> 
> 
> # this stops an QA issue
> 
> INSANE_SKIP_hals += "dev-so"
> BBCLASSEXTEND = "native nativesdk"
> 
> 

