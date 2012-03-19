Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E14B3E013A3
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 11:48:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Mar 2012 11:48:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="141381853"
Received: from unknown (HELO [10.255.15.170]) ([10.255.15.170])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2012 11:48:08 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: jfabernathy <jfabernathy@gmail.com>
In-Reply-To: <4F675879.3050304@gmail.com>
References: <4F675879.3050304@gmail.com>
Date: Mon, 19 Mar 2012 13:46:13 -0500
Message-ID: <1332182773.21321.233.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build error after recent pull
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
X-List-Received-Date: Mon, 19 Mar 2012 18:48:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

No problem seen here...

NOTE: Tasks Summary: Attempted 4825 tasks of which 474 didn't need to be
rerun and all succeeded.

For reference, here are the poky and meta-intel commits I built with:

poky/master:

commit a9873f12e5ba11e1307440901d07e9642e9f53bf
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Sun Mar 18 00:02:22 2012 +0000

    pigz: Ensure DEPENDS on zlib exists for native and target versions

meta-intel/master:

commit 9124870a6bcd99ebaeb0342f4fedf14dc1afebd8
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Tue Mar 13 10:10:38 2012 -0500

    meta-emenlow: switch to linux-yocto-3.2 kernel


Tom



On Mon, 2012-03-19 at 12:02 -0400, jfabernathy wrote:
> Just did a git pull today on poky and meta-intel.  I tried to rebuild 
> meta-sugarbay again and got a build error.  Not sure why yet.  Not 
> critical, just a spot check of things.
> ------------------
> 
> 
> NOTE: package mesa-dri-2_7.11-r13.1: task do_configure: Succeeded
> NOTE: Running task 1723 of 5148 (ID: 1928, 
> /home/jim/poky/meta/recipes-graphics/mesa/mesa-dri_7.11.bb, do_compile)
> NOTE: package mesa-dri-2_7.11-r13.1: task do_compile: Started
> ERROR: Function failed: do_compile (see 
> /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687 
> for further information)
> ERROR: Logfile of failure stored in: 
> /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 
> 'bit-64', 'x86_64-linux', 'common']
> | ERROR: Function failed: do_compile (see 
> /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687 
> for further information)
> | NOTE: make -j 8
> | make[1]: Entering directory 
> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src'
> | Making sources for autoconf
> | make[2]: Entering directory 
> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src/mapi/glapi'
> | make[2]: *** No rule to make target 
> `/build/sugarbay-master/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.3/include/stddef.h', 
> needed by `glapi_dispatch.o'.  Stop.
> | make[2]: Leaving directory 
> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src/mapi/glapi'
> | make[1]: *** [subdirs] Error 1
> | make[1]: Leaving directory 
> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src'
> | make: *** [default] Error 1
> | ERROR: oe_runmake failed
> NOTE: package mesa-dri-2_7.11-r13.1: task do_compile: Failed
> ERROR: Task 1928 
> (/home/jim/poky/meta/recipes-graphics/mesa/mesa-dri_7.11.bb, do_compile) 
> failed with exit code '1'
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



