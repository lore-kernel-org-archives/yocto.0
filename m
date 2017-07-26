Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34B4FE00C60; Wed, 26 Jul 2017 12:16:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F158EE00C54
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 12:16:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v6QJGkxB014917
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Jul 2017 12:16:46 -0700 (PDT)
Received: from [172.25.44.7] (172.25.44.7) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 26 Jul 2017 12:16:45 -0700
To: Joseph Ngigi <jngigiw@gmail.com>, <yocto@yoctoproject.org>
References: <CABaDK3V7Rdt4ahQ7kBHVHr8=T3Lct8a7kWTLV6yjn9Mu+5nu5w@mail.gmail.com>
	<CABaDK3WAqG4MOa9vbJd8Sg9TGNM_JkBrDYgtpmY59wKYSJuSCA@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <7cad6a7c-b710-4560-de22-302b21a5b878@windriver.com>
Date: Wed, 26 Jul 2017 15:16:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CABaDK3WAqG4MOa9vbJd8Sg9TGNM_JkBrDYgtpmY59wKYSJuSCA@mail.gmail.com>
X-Originating-IP: [172.25.44.7]
Subject: Re: do_compile errors.
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
X-List-Received-Date: Wed, 26 Jul 2017 19:16:49 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 2017-07-19 09:13 AM, Joseph Ngigi wrote:
> Here's my console output:
> 
> ngigijoe@ngigijoe-HP-2000-Notebook-PC:~/src/git/pyro/poky/cubieboard2$ 
> bitbake core-image-sato
> Loading cache: 100% 
> |#################################################################################################################################| 
> Time: 0:00:00
> Loaded 2168 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> 
> Build Configuration:
> BB_VERSION        = "1.34.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal-4.8"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "cubieboard2"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.3.1"
> TUNE_FEATURES     = "arm armv7ve vfp neon vfpv4 callconvention-hard 
> cortexa7"
> TARGET_FPU        = "hard"
> meta
> meta-poky         = "pyro:6bd890d9e011014cf323e61267f8b256949d44aa"
> meta-sunxi        = "pyro:0056643fcf2c496a0f2cf005fb67d626ab0e2c10"
> meta-oe
> meta-gnome        = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
> 
> Initialising tasks: 100% 
> |############################################################################################################################| 
> Time: 0:00:19
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: gperf-native-3.0.4-r0 do_compile: oe_runmake failed
> ERROR: gperf-native-3.0.4-r0 do_compile: Function failed: do_compile 
> (log file is located at 
> /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/temp/log.do_compile.7266)
> ERROR: Logfile of failure stored in: 
> /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/temp/log.do_compile.7266
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 8
> | ERROR: oe_runmake failed
> | cd lib; make all
> | make[1]: Entering directory 
> '/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/lib'
> | make[1]: Nothing to be done for 'all'.
> | make[1]: Leaving directory 
> '/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/lib'
> | cd src; make all
> | make[1]: Entering directory 
> '/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/src'
> | g++  
> -isystem/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/include 
> -O2 -pipe -D_GLIBCXX_USE_CXX11_ABI=0 
> -L/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib 
> -L/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib 
> -Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib 
> -Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib 
> -Wl,-rpath,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib 
> -Wl,-rpath,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib 
> -Wl,-O1 -o gperf version.o positions.o options.o keyword.o 
> keyword-list.o input.o bool-array.o hash-table.o search.o output.o 
> main.o ../lib/libgp.a -lm
> | g++: error: version.o: No such file or directory
> | g++: error: positions.o: No such file or directory
> | g++: error: options.o: No such file or directory
> | g++: error: keyword.o: No such file or directory
> | g++: error: keyword-list.o: No such file or directory
> | g++: error: input.o: No such file or directory
> | g++: error: bool-array.o: No such file or directory
> | g++: error: hash-table.o: No such file or directory
> | g++: error: output.o: No such file or directory
> | g++: error: main.o: No such file or directory
> | g++: error: ../lib/libgp.a: No such file or directory
> | Makefile:74: recipe for target 'gperf' failed
> | make[1]: *** [gperf] Error 1
> | make[1]: Leaving directory 
> '/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/src'
> | Makefile:33: recipe for target 'all' failed
> | make: *** [all] Error 2
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at 
> /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/temp/log.do_compile.7266)
> ERROR: Task 
> (virtual:native:/home/ngigijoe/src/git/pyro/poky/meta/recipes-extended/gperf/gperf_3.0.4.bb:do_compile) 
> failed with exit code '1'
> 
> Second Keyboard Interrupt, stopping...
> 
> 
> Summary: 1 task failed:
>    
> virtual:native:/home/ngigijoe/src/git/pyro/poky/meta/recipes-extended/gperf/gperf_3.0.4.bb:do_compile
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> NOTE: Sending SIGTERM to remaining 6 tasks
> 
> 
> On Wed, Jul 19, 2017 at 3:58 PM, Joseph Ngigi <jngigiw@gmail.com 
> <mailto:jngigiw@gmail.com>> wrote:
> 
>     I seem to be having a lot of do_compile failure errors, building
>     core-image-sato for cubieboard2 using poky pyro. I do not understand
>     whether it is a gcc compiler issue or any other problem. Any
>     assistance will be highly appreciated.
> 
>     Below is my logfile.
> 
>     DEBUG: Executing shell function do_compile
>     NOTE: make -j 8
>     ERROR: oe_runmake failed
>     cd lib; make all
>     make[1]: Entering directory
>     '/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/lib'
>     make[1]: Nothing to be done for 'all'.
>     make[1]: Leaving directory
>     '/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/lib'
>     cd src; make all
>     make[1]: Entering directory
>     '/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/src'
>     g++ 
>     -isystem/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/include
>     -O2 -pipe -D_GLIBCXX_USE_CXX11_ABI=0
>     -L/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib
>     -L/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib
>     -Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib
>     -Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib
>     -Wl,-rpath,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib
>     -Wl,-rpath,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib
>     -Wl,-O1 -o gperf version.o positions.o options.o keyword.o
>     keyword-list.o input.o bool-array.o hash-table.o search.o output.o
>     main.o ../lib/libgp.a -lm
>     g++: error: version.o: No such file or directory
>     g++: error: positions.o: No such file or directory
>     g++: error: options.o: No such file or directory
>     g++: error: keyword.o: No such file or directory
>     g++: error: keyword-list.o: No such file or directory
>     g++: error: input.o: No such file or directory
>     g++: error: bool-array.o: No such file or directory
>     g++: error: hash-table.o: No such file or directory
>     g++: error: output.o: No such file or directory
>     g++: error: main.o: No such file or directory
>     g++: error: ../lib/libgp.a: No such file or directory
>     Makefile:74: recipe for target 'gperf' failed
>     make[1]: *** [gperf] Error 1
>     make[1]: Leaving directory
>     '/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/src'
>     Makefile:33: recipe for target 'all' failed
>     make: *** [all] Error 2
>     ERROR: Function failed: do_compile (log file is located at
>     /home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/temp/log.do_compile.600)
> 
>     -- 
>     J.W.Ngigi
> 
> 
> 
> 
> 
> -- 
> J.W.Ngigi
> 
> 
> 
> 


That's odd, is it still a problem?
If so:
What's your builder's distro? Have your run:
    apt-get/dnf/... as per:
 
http://www.yoctoproject.org/docs/2.3/yocto-project-qs/yocto-project-qs.html

Can you compile gperf outside of bitbake on your builder?

Also to quote Ross:
Is this a totally clean pyro build?
Anything special in the local.conf?
Tried without the BSP layer, using MACHINE=qemuarm?
  $ MACHINE=qemuarm bitbake core-image-sato or -minimal

-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, 
Canada, K2K 2W5

