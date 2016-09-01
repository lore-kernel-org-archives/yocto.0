Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2CBCE00CDC; Thu,  1 Sep 2016 02:18:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 388 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Sep 2016 02:18:25 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74971E00C51
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 02:18:25 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3sPxMw0xxcz3hjVj;
	Thu,  1 Sep 2016 11:11:55 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3sPxMv6Mq8zvmK8;
	Thu,  1 Sep 2016 11:11:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id 2yaSFOG7Buti; Thu,  1 Sep 2016 11:11:54 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Thu,  1 Sep 2016 11:11:53 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 9E7A44540039;
	Thu,  1 Sep 2016 11:11:53 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 309EGziDcdKP; Thu,  1 Sep 2016 11:11:50 +0200 (CEST)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id 181774540072;
	Thu,  1 Sep 2016 11:11:50 +0200 (CEST)
To: Federico Pietro Briata <federico@briata.org>,
	Stef Boerrigter <stefboerrigter@gmail.com>
References: <CA+KKcbkzeEsDO63iNESUbDCAQD7R41mTzPAN65RkbFNMuq3+zA@mail.gmail.com>
	<loom.20151219T103721-415@post.gmane.org>
	<CA+KKcbk22dX6RaBZ2FRh7BNcNeo4aKm5Z13EFuJowGwMEwjJUg@mail.gmail.com>
	<CA+KKcbnmiB4FUT3e+TaYG2jWvGUs_yAmJ-dYOFSfDqHd0Hztow@mail.gmail.com>
	<CAO0FEwWdVrJO2znEQwm3NvvQN1JONiWy4nv38soKijfynANk9A@mail.gmail.com>
	<CA+KKcb=1e30j5eRmha5zpa+=Oxvb87QwhPGV9LOk=b+MDem9TA@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <7011e831-adb3-28d9-3d3c-a52c5220adea@denx.de>
Date: Thu, 1 Sep 2016 11:11:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CA+KKcb=1e30j5eRmha5zpa+=Oxvb87QwhPGV9LOk=b+MDem9TA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java] openjdk-8 fail to build
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
X-List-Received-Date: Thu, 01 Sep 2016 09:18:29 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Federico,


On 14/01/2016 13:37, Federico Pietro Briata wrote:
> Hi,
>  
> I'm on 1.6.2 (daisy Branch), so probably I've to cherry-pick something
> more on poky.
> 
> With poky-daisy-11.0.2 (Hash: e3dd621197548b4cf64988e757e9bc926082db73)
> I confirm that openjdk 7 was working for sure with this commit
> d7d4f64a32d26fc8a92e4c89b47c78956f20a14d
> 

Sorry to bring back to life this very old thread - I am getting the same
issue because I have an old project (with 1.6, daisy), but developers
want to use openjdk-8. Have you found a solution for daisy or you
upgraded to a newer Yocto version ?

Regards,
Stefano

> Regards,
> Federico
> 
> Hi, 
> 
> What version of Yocto are you using? 
> I'm using 1.7.1 version with only the patch i described in my previous
> answer.
> When using it on the master of meta-java i got it working without any
> issues.. You mentioned you use another patch as well?
> 
> Regards
> 
> 2016-01-13 18:46 GMT+01:00 Federico Pietro Briata <federico@briata.org
> <mailto:federico@briata.org>>:
> 
>     Hi again,
>     looking to the above error on Makefile, seems there is still
>     something wrong with autotools
>      
>      
>     cat
>     /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile
>     # This Makefile was generated by configure Tue Jan 12 22:44:00 CET 2016
>     # GENERATED FILE, DO NOT EDIT
>     SPEC:=/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/build/linux-x86_64-normal-server-release/spec.gmk
>     include
>     /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile
>      
>     so the build stuck here in this loop I think.
>      
>     regards
>     Federico
> 
>     2016-01-12 17:41 GMT+01:00 Federico Pietro Briata
>     <federico@briata.org <mailto:federico@briata.org>>:
> 
>         Hi Stef,
>         Thanks, I've tried to apply that patch and also
>         http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=527b28c10955daf0387597020d69593ce24bcaa4
> 
>         and now I'm getting this:
> 
>         ERROR: Function failed: do_compile (log file is located at
>         /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889)
>         ERROR: Logfile of failure stored in:
>         /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889
>         Log data follows:
>         | DEBUG: SITE files ['endian-little', 'common-linux',
>         'common-glibc', 'bit-64', 'x86_64-linux', 'common']
>         | DEBUG: Executing shell function do_compile
>         | NOTE: make
>         OE_CFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
>         -O2 -pipe -DHEADLESS=true
>         OE_CPPFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
>         -DHEADLESS=true
>         OE_CXXFLAGS=-isystem/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/include
>         -O2 -pipe -DHEADLESS=true
>         OE_LDFLAGS=-L/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
>         -L/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
>         -Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
>         -Wl,-rpath-link,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
>         -Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/usr/lib
>         -Wl,-rpath,/home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/sysroots/x86_64-linux/lib
>         -Wl,-O1 BUILD_HEADLESS_ONLY=1 BUILD_HEADLESS=true
>         BUILD_SOUNDLESS_ONLY=1 X11_NOT_NEEDED=1 CUPS_NOT_NEEDED=1
>         ALSA_NOT_NEEDED=1 PULSE_NOT_NEEDED=1 MAKE_VERBOSE=y VERBOSE=-s
>         LOG_LEVEL=trace QUIETLY= images
>         |
>         /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/Makefile:27:
>         *** Too many open files.  Stop.
>         | ERROR: oe_runmake failed
>         | WARNING: exit code 1 from a shell command.
>         | ERROR: Function failed: do_compile (log file is located at
>         /home/federico/yocto/imx6/R6.0/build-OpenJDK8-imx6-mx6quad/tmp-eglibc/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_compile.15889)
>         ERROR: Task 207
>         (/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/openjdk-8-native_72b05.bb
>         <http://openjdk-8-native_72b05.bb>, do_compile) failed with exit
>         code '1'
>         NOTE: Tasks Summary: Attempted 1469 tasks of which 1237 didn't
>         need to be rerun and 1 failed.
>         No currently running tasks (1469 of 1483)
> 
>         Summary: 1 task failed:
>          
>         /home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-core/openjdk/openjdk-8-native_72b05.bb
>         <http://openjdk-8-native_72b05.bb>, do_compile
>         Summary: There was 1 ERROR message shown, returning a non-zero
>         exit code.
> 
>         thanks and regards
>         federico
> 
>         2015-12-19 10:38 GMT+01:00 Stef <Stefboerrigter@gmail.com
>         <mailto:Stefboerrigter@gmail.com>>:
> 
>             Federico Pietro Briata <federicobriata@...> writes:
> 
>             >
>             >
>             >
>             > Hi All,
>             > I'm trying to build openjdk-8 but I'm stuck.my current
>             setup does not
>             define anything for:#PREFERRED_PROVIDER_virtual/java-
>             native#PREFERRED_PROVIDER_virtual/javac-native
>             >
>             > follow the log error
>             >
>             >
>             >
>             > ERROR: Function failed: do_configure (log file is located at
>             /home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-
>             linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR:
>             Logfile of failure stored in:
>             /home/federico/yocto/imx6/R6.0/build-imx6-
>             mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-
>             r0/temp/log.do_configure.27024Log data follows:| DEBUG:
>             Executing python
>             function sysroot_cleansstate| DEBUG: Python function
>             sysroot_cleansstate
>             finished| DEBUG: SITE files ['endian-little',
>             'common-linux', 'common-
>             glibc', 'bit-64', 'x86_64-linux', 'common']| DEBUG:
>             Executing shell
>             function autotools_preconfigure| DEBUG: Shell function
>             autotools_preconfigure finished| DEBUG: Executing python
>             function
>             autotools_copy_aclocals| DEBUG: Python function
>             autotools_copy_aclocals
>             finished| DEBUG: Executing shell function do_configure|
>             ERROR: no
>             configure script found at
>             /home/federico/yocto/imx6/R6.0/build-imx6-
>             mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-
>             e8bed1496ff2/configure| WARNING: exit code 1 from a shell
>             command.|
>             ERROR: Function failed: do_configure (log file is located at
>             /home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-
>             linux/openjdk-8-native/72b05-r0/temp/log.do_configure.27024)ERROR:
>             Task
>             146 (/home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-
>             core/openjdk/openjdk-8-native_72b05.bb
>             <http://openjdk-8-native_72b05.bb>, do_configure) failed
>             with exit
>             code '1'NOTE: Tasks Summary: Attempted 1139 tasks of which
>             15 didn't
>             need to be rerun and 1 failed.No currently running tasks
>             (1139 of
>             1150)Summary: 1 task failed: 
>             /home/federico/yocto/imx6/R6.0/sources/meta-java/recipes-
>             core/openjdk/openjdk-8-native_72b05.bb
>             <http://openjdk-8-native_72b05.bb>, do_configure
>             >
>             > thanks and regards
>             >
>             > Federico
>             >
>             >
>             >
>             >
>             >
> 
>             Try to apply this patch to meta layer:
>             https://github.com/rehsack/poky/commit/65cdad40f2717b85892e12c80749cd43c
>             1e19a40
>             <https://github.com/rehsack/poky/commit/65cdad40f2717b85892e12c80749cd43c1e19a40>
> 
>             It worked for me
>             --
>             _______________________________________________
>             yocto mailing list
>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>             https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> 
> 
> 


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

