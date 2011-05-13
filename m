Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 238634C811B4
	for <yocto@yoctoproject.org>; Thu, 12 May 2011 19:20:54 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 17:20:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; 
   d="scan'208";a="1582816"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by fmsmga001.fm.intel.com with ESMTP; 12 May 2011 17:20:53 -0700
Message-ID: <4DCC7964.6010208@intel.com>
Date: Thu, 12 May 2011 17:20:52 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <9DA5872FEF993D41B7173F58FCF6BE94D8968844@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE94D8968844@orsmsx504.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dpatch files in Yocto tree
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
X-List-Received-Date: Fri, 13 May 2011 00:20:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2011 09:49 AM, Kamble, Nitin A wrote:
> I find following dpatch files in the Yocto tree. Dpatch files have a
> small shell script at the beginning of the patch.
>
> Out of all these, all gcc patches are for all gcc-4.3.3 only, which is
> kind of outdated stuff now. And will be going out of the tree soon.
>
> Binutils & tslib patches are in current use. Adding metadata vars likes
> upstream_status may break the dpatch format/script.
>
> Do we care for the shell script inside the dpatch file? Is it ok to
> break it inside Yocto tree?
>
I think you can add the Upstream-Status: after the exit on the script 
and before the patch proper starts.

Have you confirmed that all these patches are actually used?  I think 
that some are no longer used.

Also as Richard suggested, please put an RFC Patch that remove the 
oldest version of GCC 4.3.3, along with gcc-cross-kernel-3.4.4 as it's 
no longer needed either.

> meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-012_check_ldrunpath_length.patch
>
> meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-001_ld_makefile_patch.patch
>
> meta/recipes-devtools/binutils/binutils-2.21/binutils-x86_64_i386_biarch.patch
>
> meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-006_better_file_error.patch
>
> meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-pic.dpatch
>
> meta/recipes-devtools/gcc/gcc-4.5.1/arm-unbreak-eabi-armv4t.dpatch
>
> meta/recipes-devtools/gcc/gcc-4.5.1/gcc-ice-hack.dpatch
>
> meta/recipes-devtools/gcc/gcc-4.5.1/pr30961.dpatch
>
> meta/recipes-devtools/gcc/gcc-4.6.0/libstdc++-pic.dpatch
>
> meta/recipes-devtools/gcc/gcc-4.6.0/arm-unbreak-eabi-armv4t.dpatch
>
> meta/recipes-devtools/gcc/gcc-4.6.0/gcc-ice-hack.dpatch
>
> meta/recipes-devtools/gcc/gcc-4.6.0/pr30961.dpatch
>
> meta/recipes-devtools/gcc/gcc-4.3.3/300-libstdc++-pic.patch
>
> meta/recipes-devtools/gcc/gcc-4.3.3/debian/libstdc++-pic.dpatch
>
> meta/recipes-devtools/gcc/gcc-4.3.3/debian/arm-unbreak-eabi-armv4t.dpatch
>
> meta/recipes-devtools/gcc/gcc-4.3.3/debian/gcc-ice-hack.dpatch
>
> meta/recipes-devtools/gcc/gcc-4.3.3/debian/pr30961.dpatch
>
> meta/recipes-graphics/tslib/tslib/32bitBE-support.patch
>
> Thanks,
>
> Nitin
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


