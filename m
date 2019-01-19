Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CF0CE00CCC; Sat, 19 Jan 2019 08:46:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD675E00C4E
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2019 08:46:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0JGjaFQ001482
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 19 Jan 2019 08:45:52 -0800
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Sat, 19 Jan 2019 08:45:34 -0800
To: <yocto@yoctoproject.org>, <Amol.Lad@4rf.com>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <9d39755ec7ed4473ba89918633c04b91@4rf-nz-exchange.local.4rf.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <3b657be6-130d-e20c-e35a-4ed7baf5bab6@windriver.com>
Date: Sat, 19 Jan 2019 11:45:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <9d39755ec7ed4473ba89918633c04b91@4rf-nz-exchange.local.4rf.com>
X-Originating-IP: [172.25.44.4]
Subject: Re: Boost recipe compilation failure in Yocto 2.6 with GCC 8.2
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
X-List-Received-Date: Sat, 19 Jan 2019 16:46:24 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 1/17/19 7:42 AM, Amol Lad wrote:
> Hi,
> 
> Boost recipe compilation fails with below error. Build is okay if 
> “GCCVERSION = “7.%”. Please advise what might be wrong?
> 
> {standard input}: Assembler messages:
> 
> {standard input}:7896: Warning: end of file not at end of a line; 
> newline inserted
> 
> {standard input}:9139: Error: unknown pseudo-op: `.cfi_r'
> 
> {standard input}: Error: open CFI at the end of file; missing 
> .cfi_endproc directive
> 
> arm-next-linux-gnueabi-g++: fatal error: Killed signal terminated 
> program cc1plus
> 
> compilation terminated.
> 
> Details:
> 
> Build Configuration:
> 
> BB_VERSION           = "1.40.0"
> 
> BUILD_SYS            = "x86_64-linux"
> 
> NATIVELSBSTRING      = "universal"
> 
> TARGET_SYS           = "arm-next-linux-gnueabi"
> 
> MACHINE              = "clearfog"
> 
> DISTRO               = "next"
> 
> DISTRO_VERSION       = "1.0"
> 
> TUNE_FEATURES        = "arm armv7a vfp neon callconvention-hard"
> 
> TARGET_FPU           = "hard"
> 
> meta
> 
> meta-poky
> 
> meta-yocto-bsp       = 
> "my-yocto-2.6:84eecb017ef92ef36b4df730908828e54aeff85c"
> 
> meta-oe
> 
> ..
> 
> Detailed log:
> 
>      "arm-next-linux-gnueabi-g++" "-march=armv7-a" "-mfpu=neon" 
> "-mfloat-abi=hard" "-Wl,-O1" "-Wl,--hash-style=gnu" "-Wl,--as-needed" 
> "--sysroot=/home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r0/recipe-sysroot" 
> -O2 -pipe -g -feliminate-unused-debug-types 
> -fdebug-prefix-map=/home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r0=/usr/src/debug/boost/1.68.0-r0 
> -fdebug-prefix-map=/home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r0/recipe-sysroot= 
> -fdebug-prefix-map=/home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r0/recipe-sysroot-native=  
> -fvisibility-inlines-hidden -pthread -O3 -finline-functions -Wno-inline 
> -Wall -fno-strict-aliasing -ftemplate-depth-1024 -fvisibility=hidden 
> -DBOOST_ALL_NO_LIB=1 -DBOOST_ATOMIC_STATIC_LINK=1 
> -DBOOST_CHRONO_STATIC_LINK=1 -DBOOST_FILESYSTEM_STATIC_LINK=1 
> -DBOOST_LOG_BUILDING_THE_LIB=1 -DBOOST_LOG_HAS_PTHREAD_MUTEX_ROBUST 
> -DBOOST_LOG_USE_NATIVE_SYSLOG -DBOOST_LOG_WITHOUT_DEBUG_OUTPUT 
> -DBOOST_LOG_WITHOUT_EVENT_LOG -DBOOST_SPIRIT_USE_PHOENIX_V3=1 
> -DBOOST_SYSTEM_NO_DEPRECATED -DBOOST_SYSTEM_STATIC_LINK=1 
> -DBOOST_THREAD_BUILD_LIB=1 -DBOOST_THREAD_DONT_USE_CHRONO=1 
> -DBOOST_THREAD_POSIX -DBOOST_THREAD_USE_LIB=1 -DDATE_TIME_INLINE 
> -DNDEBUG -D_XOPEN_SOURCE=600 -D__STDC_CONSTANT_MACROS -I"." 
> -I"libs/log/src" -c -o 
> "/home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r0/boost_1_68_0/arm-next-linux-gnueabi/boost/bin.v2/libs/log/build/581af9cf1e4e5052d9f06634cc376f39/core.o" 
> "libs/log/src/core.cpp"
> 
> {standard input}: Assembler messages:
> 
> {standard input}:7896: Warning: end of file not at end of a line; 
> newline inserted
> 
> {standard input}:9139: Error: unknown pseudo-op: `.cfi_r'
> 
> {standard input}: Error: open CFI at the end of file; missing 
> .cfi_endproc directive
> 
> arm-next-linux-gnueabi-g++: fatal error: Killed signal terminated 
> program cc1plus
> 
> compilation terminated.

It almost looks like an internal compiler error but not quite
since at least until recently, any time the compiler
died, it would produce and log that included the
    "internal compiler error"
string like this one:
    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=57872
and I don't see that here... hmmm.

Are you able to reproduce it consistently?
How about on another computer?

I checked out your poky commit and built boost for
qemuarm:
   TUNE_FEATURES = "arm armv7a vfp neon callconvention-hard cortexa8"
and it build without error.

If it's reproducible, can you try to reduce the code that
causes the problem?
    https://www.gnu.org/software/gcc/bugs/minimize.html

../Randy


> 
> gcc.compile.c++ 
> /home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r0/boost_1_68_0/arm-next-linux-gnueabi/boost/bin.v2/libs/log/build/581af9cf1e4e5052d9f06634cc376f39/process_name.o
> 



-- 
# Randy MacLeod
# Wind River Linux

