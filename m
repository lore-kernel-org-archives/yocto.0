Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42F44E00280
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 09:58:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jul 2012 09:58:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="190366258"
Received: from unknown (HELO helios.localnet) ([10.252.121.57])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2012 09:58:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Date: Mon, 30 Jul 2012 17:58:45 +0100
Message-ID: <1441563.jsPnjQvs5m@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <E9F44A50-97D0-4CBE-A9AF-36084B1E263C@gmail.com>
References: <2C433563-B7CA-458C-B27F-68E3D5D2408C@gmail.com>
	<20120730164845.GM3261@jama.jama.net>
	<E9F44A50-97D0-4CBE-A9AF-36084B1E263C@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: ERROR: Task 7 (/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, do_populate_sdk) failed with exit code '1'
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
X-List-Received-Date: Mon, 30 Jul 2012 16:58:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 30 July 2012 20:55:50 Elvis Dowson wrote:
> Hi Martin,
> 
> On Jul 30, 2012, at 8:48 PM, Martin Jansa wrote:
> > Attach log.do_populate_sdk.25279
> 
> Here is the log
> 
> DEBUG: Executing python function do_populate_sdk
> DEBUG: Executing shell function populate_sdk_image
> Generating solve db for /tool/yocto/poky/build/tmp/deploy/rpm/ppc440...
>    total:               1      0.000000 MB     15.378123 secs
>    fingerprint:      7383      0.071586 MB      0.795094 secs
>    install:          2461      0.000000 MB      3.924927 secs
>    digest:           4922     17.539986 MB      0.071979 secs
>    signature:        4922      0.000000 MB      5.635336 secs
>    dbadd:            2461      0.000000 MB      3.867947 secs
>    dbget:           24358      0.000000 MB      0.044111 secs
>    dbput:            2461     11.232764 MB      2.458966 secs
>    readhdr:         24611     22.422706 MB      2.833783 secs
>    hdrload:         15847     48.317258 MB      0.063320 secs
>    hdrget:         451910      0.000000 MB      0.314565 secs
> Generating solve db for
> /tool/yocto/poky/build/tmp/deploy/rpm/x86_64-nativesdk... total:           
>    1      0.000000 MB      4.420427 secs
>    fingerprint:      1698      0.056604 MB      0.353290 secs
>    install:           566      0.000000 MB      1.192211 secs
>    digest:           1132      9.261982 MB      0.035940 secs
>    signature:        1132      0.000000 MB      1.325190 secs
>    dbadd:             566      0.000000 MB      1.176382 secs
>    dbget:           21453      0.000000 MB      0.022157 secs
>    dbput:             566      5.223256 MB      0.825451 secs
>    readhdr:          5661     10.385022 MB      0.950751 secs
>    hdrload:          3049     16.903506 MB      0.013520 secs
>    hdrget:         107862      0.000000 MB      0.088460 secs
> Processing task-core-standalone-sdk-target-dbg...
> Processing task-core-standalone-sdk-target...
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/temp
> /run.populate_sdk_image.25279: line 675: rpmresolve: command not found
> DEBUG: Python function do_populate_sdk finished
> ERROR: Function failed: populate_sdk_image (see
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/tem
> p/log.do_populate_sdk.25279 for further information)

This is my fault - I'll put together a patch right now. As a workaround you 
can "bitbake rpmresolve-native" first and you won't get the error anymore.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

