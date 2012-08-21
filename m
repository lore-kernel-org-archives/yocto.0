Return-Path: <tim.bird@am.sony.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe010.messaging.microsoft.com [216.32.180.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD769E0027E
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 11:20:25 -0700 (PDT)
Received: from mail223-va3-R.bigfish.com (10.7.14.247) by
	VA3EHSOBE006.bigfish.com (10.7.40.26) with Microsoft SMTP Server id
	14.1.225.23; Tue, 21 Aug 2012 18:20:24 +0000
Received: from mail223-va3 (localhost [127.0.0.1])	by
	mail223-va3-R.bigfish.com (Postfix) with ESMTP id 7BF509C03C7	for
	<yocto@yoctoproject.org>; Tue, 21 Aug 2012 18:20:24 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.228; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail01v.am.sony.com; RD:mail.sonyusa.com;
	EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zzbb2dI98dI9371I14ffIzz1202hzz8275ch8275dhz2fh2a8h668h839h93fhd25hf0ah107ah)
Received-SPF: pass (mail223-va3: domain of am.sony.com designates
	160.33.194.228 as permitted sender) client-ip=160.33.194.228;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail01v.am.sony.com ; .am.sony.com ; 
Received: from mail223-va3 (localhost.localdomain [127.0.0.1]) by mail223-va3
	(MessageSwitch) id 1345573222286534_23463;
	Tue, 21 Aug 2012 18:20:22 +0000 (UTC)
Received: from VA3EHSMHS024.bigfish.com (unknown [10.7.14.243])	by
	mail223-va3.bigfish.com (Postfix) with ESMTP id 3A3909A0049	for
	<yocto@yoctoproject.org>; Tue, 21 Aug 2012 18:20:22 +0000 (UTC)
Received: from usculsndmail01v.am.sony.com (160.33.194.228) by
	VA3EHSMHS024.bigfish.com (10.7.99.34) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Tue, 21 Aug 2012 18:20:19 +0000
Received: from usculsndmail13v.am.sony.com (usculsndmail13v.am.sony.com
	[146.215.230.104])	by usculsndmail01v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id
	q7LIKIwF012565	for
	<yocto@yoctoproject.org>; Tue, 21 Aug 2012 18:20:19 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail1.sgo.in.sel.sony.com
	[43.130.1.112])	by usculsndmail13v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q7LIKHpY029924
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for
	<yocto@yoctoproject.org>; Tue, 21 Aug 2012 18:20:18 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q7LIKEni011611	for <yocto@yoctoproject.org>;
	Tue, 21 Aug 2012 18:20:15 GMT
Message-ID: <5033D230.7050400@am.sony.com>
Date: Tue, 21 Aug 2012 11:23:44 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <tencent_39B21E10125109005B37A864@qq.com>
In-Reply-To: <tencent_39B21E10125109005B37A864@qq.com>
X-OriginatorOrg: am.sony.com
Subject: Re: How does bitbake work
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
X-List-Received-Date: Tue, 21 Aug 2012 18:20:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 08/21/2012 01:11 AM, Liu wrote:
> Hi all,
>      In order to learn to use poky,I am wondering how bitbake works with so many 
> recipes. When I bitbake <target>, I want to know how bitbake collect the 
> providers of <target> . Then bitbake will prepare the runqueue tasks to build 
> the <target>.So I need to know which tasks to assign to build the <target>.And 
> bitbake run these tasks in what order.In other words according to the 
> characteristics of what to decided to implement which task first and then next.
>       I am very eager to know the answers.

I'm not an expert, but here's some information that I believe is correct.
(If someone else knows better, please correct this...)

bitbake reads the entire set of recipe files that are specified by
the local configuration, and parses them all into a global task namespace.
This includes all the class files and include files as well.  These
are specified by the BBFILES and BBLAYERS variables in the conf/bblayers.conf
file.  Within the layers directories, the <layer-dir>/conf/layer.conf
file is used to indicate the set of .bb files to parse for that layer.

Note that this global parse of the entire set of recipe files is
quite different from 'make', which usually operated on a single Makefile.
(This is also why bitbake startup is a little slow).

Information in the meta-data (the DEPENDS and PROVIDES lines) determine
package ordering.  Where packages are independent of each other, the
build order is dependent (I believe) on file parse order.  In this case,
processing is not required to be in any particular order (and, in fact,
can be parallelized). You can have bitbake produce the dependency graph
of the packages for your build by using the -g option.  This produces output in
'dot' syntax (suitable for processing using some graphviz visualizer).

The list of tasks to perform within a package appears to come
from the common class meta-data
(see meta/classes/utility-tasks.bbclass, for example) and the
meta-data for the individual package  These are added by
the 'addtask' keyword.  You can see a list of tasks for an
individual package with: bitbake <pkg> -c listtasks

I have started to put together an overview introduction of Yocto at:
http://elinux.org/Yocto_Project_Introduction

I haven't gotten much completed yet, but I do discuss bitbake there
a bit.  Hopefully what I've got so far will be helpful.
 -- Tim

P.S. someone correct me if I'm wrong.

>       Thanks ,
> ------ Yu Liu
>       Following is the some output of bitbake busybox and in this example I want 
> to know why first do the task of (quilt-native_0.51.bb, do_fetch)  :
> Parsing recipes...done.
> Parsing of 830 .bb files complete (0 cached, 830 parsed). 1106 targets, 34 
> skipped, 0 masked, 0 errors.
> OE Build Configuration:
> BB_VERSION        = "1.15.2"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "qemuarm"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.2.1"
> TUNE_FEATURES     = "armv5 dsp thumb arm926ejs"
> TARGET_FPU        = "soft"
> meta
> meta-yocto        = "<unknown>:<unknown>"
> NOTE: Resolving any missing task queue dependencies
> NOTE: multiple providers are available for virtual/arm-none-linux-gnueabi-g++ 
> (external-csl-toolchain, gcc-cross)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match 
> virtual/arm-none-linux-gnueabi-g++
> NOTE: multiple providers are available for runtime linux-libc-headers-dev 
> (linux-libc-headers, linux-libc-headers-yocto, linux-libc-headers-yocto-nativesdk)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match linux-libc-headers-dev
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 1 of 706 (ID: 18, 
> /home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/quilt/quilt-native_0.51.bb, 
> do_fetch)
> NOTE: Running task 2 of 706 (ID: 228, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/gnu-config/gnu-config_20111111.bb, 
> do_fetch)
> NOTE: Running task 3 of 706 (ID: 189, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/autoconf/autoconf_2.68.bb, 
> do_fetch)
> NOTE: Running task 4 of 706 (ID: 515, 
> /home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/m4/m4-native_1.4.16.bb, 
> do_fetch)
> NOTE: package gnu-config-native-20111111-r1: task do_fetch: Started
> NOTE: package m4-native-1.4.16-r2: task do_fetch: Started
> NOTE: package quilt-native-0.51-r1: task do_fetch: Started
> NOTE: package autoconf-native-2.68-r7: task do_fetch: Started
> NOTE: package gnu-config-native-20111111-r1: task do_fetch: Succeeded
> NOTE: Running task 5 of 706 (ID: 224, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/gnu-config/gnu-config_20111111.bb, 
> do_unpack)
> NOTE: package gnu-config-native-20111111-r1: task do_unpack: Started
> NOTE: package gnu-config-native-20111111-r1: task do_unpack: Succeeded
> NOTE: Running task 6 of 706 (ID: 202, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/automake/automake_1.11.2.bb, 
> do_fetch)
> NOTE: package automake-native-1.11.2-r3: task do_fetch: Started
> NOTE: package m4-native-1.4.16-r2: task do_fetch: Succeeded
> NOTE: Running task 7 of 706 (ID: 511, 
> /home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/m4/m4-native_1.4.16.bb, 
> do_unpack)
> NOTE: package m4-native-1.4.16-r2: task do_unpack: Started
> NOTE: package m4-native-1.4.16-r2: task do_unpack: Succeeded
> NOTE: Running task 8 of 706 (ID: 215, 
> /home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/libtool/libtool-native_2.4.2.bb, 
> do_fetch)
> NOTE: package autoconf-native-2.68-r7: task do_fetch: Succeeded
> NOTE: Running task 9 of 706 (ID: 185, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/autoconf/autoconf_2.68.bb, 
> do_unpack)
> NOTE: package libtool-native-2.4.2-r2.0: task do_fetch: Started
> NOTE: package autoconf-native-2.68-r7: task do_unpack: Started
> NOTE: package autoconf-native-2.68-r7: task do_unpack: Succeeded
> NOTE: Running task 10 of 706 (ID: 254, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-core/zlib/zlib_1.2.6.bb, 
> do_fetch)
> NOTE: package automake-native-1.11.2-r3: task do_fetch: Succeeded
> NOTE: Running task 11 of 706 (ID: 198, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/automake/automake_1.11.2.bb, 
> do_unpack)
> NOTE: package zlib-native-1.2.6-r1: task do_fetch: Started
> NOTE: package automake-native-1.11.2-r3: task do_unpack: Started
> NOTE: package automake-native-1.11.2-r3: task do_unpack: Succeeded
> NOTE: Running task 12 of 706 (ID: 450, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/pkgconfig/pkgconfig_0.25.bb, 
> do_fetch)
> NOTE: package pkgconfig-native-0.25-r3: task do_fetch: Started
> WARNING: Failed to fetch URL http://www.zlib.net/zlib-1.2.6.tar.bz2
> NOTE: package zlib-native-1.2.6-r1: task do_fetch: Succeeded
> NOTE: Running task 13 of 706 (ID: 250, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-core/zlib/zlib_1.2.6.bb, 
> do_unpack)
> NOTE: package zlib-native-1.2.6-r1: task do_unpack: Started
> NOTE: package pkgconfig-native-0.25-r3: task do_fetch: Succeeded
> NOTE: Running task 14 of 706 (ID: 446, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/pkgconfig/pkgconfig_0.25.bb, 
> do_unpack)
> NOTE: package zlib-native-1.2.6-r1: task do_unpack: Succeeded
> NOTE: Running task 15 of 706 (ID: 241, 
> /home/ly/yocto/poky-denzil-7.0.1/meta/recipes-core/gettext/gettext-minimal-native_0.18.1.1.bb, 
> do_fetch)
> NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_fetch: Started
> NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_fetch: Succeeded
> NOTE: Running task 16 of 706 (ID: 237, 
> /home/ly/yocto/poky-denzil-7.0.1/meta/recipes-core/gettext/gettext-minimal-native_0.18.1.1.bb, 
> do_unpack)
> NOTE: package pkgconfig-native-0.25-r3: task do_unpack: Started
> NOTE: package pkgconfig-native-0.25-r3: task do_unpack: Succeeded
> NOTE: Running task 17 of 706 (ID: 463, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-core/ncurses/ncurses_5.9.bb, 
> do_fetch)
> NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_unpack: Started
> NOTE: package gettext-minimal-native-0.18.1.1-r3: task do_unpack: Succeeded
> NOTE: Running task 18 of 706 (ID: 528, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-connectivity/openssl/ocf-linux_20100325.bb, 
> do_fetch)
> NOTE: package ncurses-native-5.9-r9.1: task do_fetch: Started
> NOTE: package ocf-linux-native-20100325-r3.0: task do_fetch: Started
> NOTE: package libtool-native-2.4.2-r2.0: task do_fetch: Succeeded
> NOTE: Running task 19 of 706 (ID: 211, 
> /home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/libtool/libtool-native_2.4.2.bb, 
> do_unpack)
> NOTE: package libtool-native-2.4.2-r2.0: task do_unpack: Started
> NOTE: package libtool-native-2.4.2-r2.0: task do_unpack: Succeeded
> NOTE: Running task 20 of 706 (ID: 280, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-connectivity/openssl/openssl_1.0.0i.bb, 
> do_fetch)
> NOTE: package openssl-native-1.0.0i-r0.2: task do_fetch: Started
> NOTE: package ncurses-native-5.9-r9.1: task do_fetch: Succeeded
> NOTE: Running task 21 of 706 (ID: 459, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-core/ncurses/ncurses_5.9.bb, 
> do_unpack)
> NOTE: package ncurses-native-5.9-r9.1: task do_unpack: Started
> NOTE: package ncurses-native-5.9-r9.1: task do_unpack: Succeeded
> NOTE: Running task 22 of 706 (ID: 176, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-support/sqlite/sqlite3_3.7.10.bb, 
> do_fetch)
> NOTE: package sqlite3-native-3.7.10-r2: task do_fetch: Started
> WARNING: Failed to fetch URL 
> http://download.savannah.gnu.org/releases/quilt/quilt-0.51.tar.gz
> NOTE: package openssl-native-1.0.0i-r0.2: task do_fetch: Succeeded
> NOTE: Running task 23 of 706 (ID: 276, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-connectivity/openssl/openssl_1.0.0i.bb, 
> do_unpack)
> NOTE: package openssl-native-1.0.0i-r0.2: task do_unpack: Started
> NOTE: package quilt-native-0.51-r1: task do_fetch: Succeeded
> NOTE: Running task 24 of 706 (ID: 14, 
> /home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/quilt/quilt-native_0.51.bb, 
> do_unpack)
> NOTE: package openssl-native-1.0.0i-r0.2: task do_unpack: Succeeded
> NOTE: Running task 25 of 706 (ID: 541, 
> virtual:native:/home/ly/yocto/poky-denzil-7.0.1/meta/recipes-extended/pigz/pigz_2.2.4.bb, 
> do_fetch)
> NOTE: package quilt-native-0.51-r1: task do_unpack: Started
> NOTE: package quilt-native-0.51-r1: task do_unpack: Succeeded
> NOTE: Running task 26 of 706 (ID: 15, 
> /home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/quilt/quilt-native_0.51.bb, 
> do_patch)
> NOTE: package pigz-native-2.2.4-r2: task do_fetch: Started
> NOTE: package quilt-native-0.51-r1: task do_patch: Started
> NOTE: package quilt-native-0.51-r1: task do_patch: Succeeded
> NOTE: Running task 27 of 706 (ID: 20, 
> /home/ly/yocto/poky-denzil-7.0.1/meta/recipes-devtools/quilt/quilt-native_0.51.bb, 
> do_configure)
> NOTE: package quilt-native-0.51-r1: task do_configure: Started
> 


-- 
=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


