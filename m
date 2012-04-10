Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23857E00596
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 02:18:38 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Apr 2012 02:18:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="139836833"
Received: from unknown (HELO helios.localnet) ([10.252.120.34])
	by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2012 02:18:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Apr 2012 10:18:32 +0100
Message-ID: <2083054.YjdMd9bIMH@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-17-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A46AF10FD@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A46AE31E3@ORSMSX101.amr.corp.intel.com>
	<F9AC6E797E022941A4CD80AAEDFAD67D43756F@PGSMSX103.gar.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AF10FD@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: "Khor, Boon Pin" <boon.pin.khor@intel.com>
Subject: Re: Yocto Project 1.2 Beta testing instructions
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
X-List-Received-Date: Tue, 10 Apr 2012 09:18:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 04 April 2012 18:08:58 Liu, Song wrote:
> Can someone help answer the following question? This happens during Boon
> Pin's beta testing using the build at:
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-8e9f6fc77ac476
> 3f4ed1f6e7b720420c220ba6e2.tar.bz2 .
> ...
> | Processing task-core-boot...
> | Manifest:
> | /home/nemo/yp-beta-build/tmp/work/qemux86-poky-linux/core-image-minimal-1
> | .0-r0/rootfs/install/install.manifest local: 1: -Uhv: bad variable name
> 
> NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Failed
> ERROR: Task 8
> (/home/nemo/yp-beta/meta/recipes-core/images/core-image-minimal.bb,
> do_rootfs) failed with exit code '1' NOTE: Tasks Summary: Attempted 1329
> tasks of which 287 didn't need to be rerun and 1 failed.

Sorry for the late reply, presumably this issue is still present?

> Maybe I am missing rpm packages in ubuntu ?

You don't need to install rpm on the host system, we build rpm-native for 
that.

Mark, any clues what could be going wrong here?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

