Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B2CDE00992; Tue, 14 Apr 2015 07:31:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76546E00965
	for <yocto@yoctoproject.org>; Tue, 14 Apr 2015 07:31:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 14 Apr 2015 07:31:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,576,1422950400"; d="scan'208";a="708805749"
Received: from mwalkowi-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.10.88])
	by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2015 07:31:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Chang, Rebecca Swee Fun" <rebecca.swee.fun.chang@intel.com>
Date: Tue, 14 Apr 2015 15:31:23 +0100
Message-ID: <18091078.9yCdaMLSJx@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <50B33AC5ED75F74F991980326F1C438D18FD6BE2@PGSMSX103.gar.corp.intel.com>
References: <50B33AC5ED75F74F991980326F1C438D18FD6BE2@PGSMSX103.gar.corp.intel.com>
MIME-Version: 1.0
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: [Dizzy] Multilib in Poky
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
X-List-Received-Date: Tue, 14 Apr 2015 14:31:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rebecca,

On Monday 13 April 2015 05:03:00 Chang, Rebecca Swee Fun wrote:
> I am building a MACHINE = "qemux86" image using Poky v1.7.1 with multilib
> feature. I would like the image generated to use glibc as the main libc and
> uclibc in lib32 multilib. Here are my settings in build/local.conf:
> 
> # Multilib Configurations
> require conf/multilib.conf
> MULTILIBS = "multilib:lib32"
> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
> baselib_virtclass-multilib-lib32 = "lib32"
> LIBCEXTENSION_virtclass-multilib-lib32 = "-uclibc"
> LIBCOVERRIDE_virtclass-multilib-lib32 = ":libc-uclibc"
> PREFERRED_PROVIDER_virtual/lib32-libc ?= "uclibc"
> PREFERRED_PROVIDER_virtual/lib32-libiconv ?= "libiconv"
> PREFERRED_PROVIDER_virtual/lib32-libintl ?= "gettext"
> USE_NLS_virtclass-multilib-lib32 ?= "no"
> CXXFLAGS_append_virtclass-multilib-lib32 = " -fvisibility-inlines-hidden"
> IMAGE_LINGUAS_virtclass-multilib-lib32 = ""
> LIBC_DEPENDENCIES_virtclass-multilib-lib32 = "uclibc uclibc-dbg uclibc-dev
> uclibc-thread-db" PTEST_ENABLED_virtclass-multilib-lib32 = ""
> 
> 
> When I run BitBake to build a Sato image, Bitbake prompt the following
> error.
> 
> Parsing of 893 .bb files complete (0 cached, 893 parsed). 2181 targets, 174
> skipped, 0 masked, 0 errors. NOTE: Resolving any missing task queue
> dependencies
> ERROR: Nothing PROVIDES 'lib32-glibc'
> ERROR: lib32-glibc was skipped: incompatible with target linux-uclibc
> ERROR: Required build target 'core-image-sato' has no buildable providers.
> Missing or unbuildable dependency chain was: ['core-image-sato',
> 'lib32-glibc'] Summary: There were 2 ERROR messages shown, returning a
> non-zero exit code.
> 
> While the same configurations for multilib was run on Poky Daisy branch,
> however we don't hit this problem. From the Reference Manual, I know that
> as we migrate to YP version 1.7, eglibc 3.19 has been replaced with glibc
> 2.20. Could this be the reason of the broken multilib features?
> 
> How should I resolve this? How should I exclude the "lib32-glibc" package
> from the build? Thanks in advance.

I have reproduced this; it appears uclibc isn't actually being selected 
properly for the multilib. I've filed a bug with some details:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=7607

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

