Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4D59E00953; Wed, 26 Nov 2014 03:17:29 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16258E0086F
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 03:17:23 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2014 03:17:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,462,1413270000"; d="scan'208";a="614301764"
Received: from ambyrne1-mobl2.amr.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.19.108])
	by orsmga001.jf.intel.com with ESMTP; 26 Nov 2014 03:17:22 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: peterengcomau001@adam.com.au
Date: Wed, 26 Nov 2014 11:17:20 +0000
Message-ID: <1828950.cW1fQVpkCg@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.3-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <c6e9cc6d66af00ee55dc350d65e1525e8f5b0870@webmail.adam.com.au>
References: <c6e9cc6d66af00ee55dc350d65e1525e8f5b0870@webmail.adam.com.au>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: New error in 1.7
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
X-List-Received-Date: Wed, 26 Nov 2014 11:17:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 26 November 2014 07:42:02 peterengcomau001@adam.com.au wrote:
> Thanks for your patience. I was successful in building the patch as
> follows:
> __________________
> --- a/configure.ac    2014-08-28 03:20:36.000000000 +0300
> +++ b/configure.ac    2014-11-25 23:22:45.129711196 +0300
> @@ -13,7 +13,7 @@
>  AG_GST_INIT
>  
>  dnl initialize automake
> -AM_INIT_AUTOMAKE([-Wno-portability 1.11 no-dist-gzip dist-xz
> tar-ustar])
> +AM_INIT_AUTOMAKE([-Wno-portability 1.11 no-dist-gzip dist-xz
> tar-ustar foreign])
>  
>  dnl define PACKAGE_VERSION_* variables
>  AS_VERSION
>  ________________________________
> build proceeds past do_config but now fails at do_complie for the
> same module.
> 
> The last part of the error is as follows:
> ______________________________________________
> 
> | In file included from
> 
> /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/
> gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/gst-libs/ext/g1/dwl/gst
> dwlallocator.c:31:0:
> 
> /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/
> gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/gst-libs/ext/g1/dwl/gst
> dwlallocator.h:36:28: fatal error: gstg1allocator.h: No such file or
> directory
> 
> |  #include "gstg1allocator.h"
> |                             ^
> |
> | compilation terminated.
> | make[5]: *** [libgstdwlallocator_1.0_la-gstdwlallocator.lo] Error 1
> | make[5]: Leaving directory
> 
> `/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi
> /gstreamer1.0-plugins-hantro/1.0-r1/build/gst-libs/ext/g1/dwl'
> | make[4]: *** [all-recursive] Error 1
> | make[4]: Leaving directory
> 
> `/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi
> /gstreamer1.0-plugins-hantro/1.0-r1/build/gst-libs/ext/g1'
> | make[3]: *** [all-recursive] Error 1
> | make[3]: Leaving directory
> 
> `/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi
> /gstreamer1.0-plugins-hantro/1.0-r1/build/gst-libs/ext'
> | make[2]: *** [all-recursive] Error 1
> | make[2]: Leaving directory
> 
> `/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi
> /gstreamer1.0-plugins-hantro/1.0-r1/build/gst-libs'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> 
> `/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi
> /gstreamer1.0-plugins-hantro/1.0-r1/build'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> 
> /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/
> gstreamer1.0-plugins-hantro/1.0-r1/temp/log.do_compile.3977) ERROR: Task 603
> (/home/lachlan/poky/meta-atmel/recipes-multimedia/gstreamer1.0-plugins/gstre
> amer1.0-plugins-hantro_10.bb, do_compile) failed with exit code '1'
> ____________________________________________________________________________
> _____
> 
> Any ides on how to proceed?
> Maybe i go back to using poky 1.6.1 ?

Well, you could - but a better alternative would be to debug the issue. Where 
would gstg1allocator.h be expected to be found? Googling for that file only 
turns up your post, which is not a good sign - is it perhaps a file that's 
included as part of gstreamer1.0-plugins-hantro ?

You could try changing the gstreamer1.0-plugins-hantro recipe to inherit 
autotools-brokensep instead of autotools in case it's a separate build 
directory issue (since that was another change occurred in 1.7).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

