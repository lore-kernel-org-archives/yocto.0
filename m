Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53B17E0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 17:25:42 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jul 2012 17:25:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="177147658"
Received: from unknown (HELO [10.255.12.136]) ([10.255.12.136])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jul 2012 17:25:41 -0700
Message-ID: <5000BC85.4090106@linux.intel.com>
Date: Fri, 13 Jul 2012 17:25:41 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Matthew McClintock <msm@freescale.com>
Subject: Yocto Project 1.1.2 release readiness
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
X-List-Received-Date: Sat, 14 Jul 2012 00:25:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

We are preparing 1.2.1 for release and we will discuss the release 
readiness in our technical team meeting next Tuesday.

This release consists of:


* Enhanced useradd class including fixes for the following issues:
   - Ensure -native recipes don't depend on target recipes
   - Fixes for useradd recipes when using shared state
   - Retry commands to avoid races around lock contention
* Improved download reliability by adding checksums to several recipes
* More robust image creation include:
   - Fixed creation of large (>1GB) live images [YOCTO #2138]
   - Account for FAT fs overhead in image size [YOCTO #1852]
   - Ensure rootfs generation dependencies are built for live images
[YOCTO #2246]
* Several fixes for running on newer distributions, inc:
   - Support building on 3.3 and newer kernel version [YOCTO #2236]
   - Handle new location of sys/time.h on Debian based systems
   - Support building apt-native with modern toolchains for deb based 
systems

Known issues for 1.1.2 are:

* Bug 2015 - [emenlow]X is black when resume from S3 standby mode
* Bug 2742 - ioatdma error happened on jasperforest platform with edison 
branch
* Bug 2748 - launch qemu failed due to can not find GLIBC_2.14 with 
edison branch
* Bug 2694 - [QEMU-X86_64]zypper refresh fail
* Bug 2746 - mklibs-native failed to compile fedora17-X86_64
** In general host OS's with GCC 4.7 won't be able to build Edison 
(sorry F17 users)
* Bug 2646 - Windows switching failure
* Bug 2743 Useradd command fails after 10 retries with 1.1.2 20120630 build

Please attend the technical team meeting on Tuesday morning to discuss 
readiness of this branch for release.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project
         Intel Open Source Technology Centre


