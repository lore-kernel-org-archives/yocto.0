Return-Path: <topradeepyaduvanshi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC78DE00509; Wed, 25 Jun 2014 05:28:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (topradeepyaduvanshi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BF28E003C1
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 05:28:13 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id i13so1860327veh.36
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 05:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=aTp+//3XwE3n36gwRMh8MZ+NqXqiJudapv4xSQ0otx8=;
	b=mDHNpacAGzD6x5siWb/OHHL1N1fl3ogkSp/xO15MGZNxijw8D023vqCdojc6/pg53i
	GcgfQxSV77DByCxdnhGacgJGjELQTh6wcbuV2LhQozXk6rbi7j70MUdu6ajr067XZcOn
	BP0Lengg0VmcP+gl9jE17TezYcwmXrpp1BgP+mJKOZnDTQB+G9fqbPNuhq8f1bL+DF/2
	um4eWUsW3pbINfsD/WsrhYQqaxJ6CvkyVymSLJXq7J38w15j1rpk6PGMNRr6F73lGYmf
	FT4elJFcsjJIZmFANIOhv0kva7GVx5SWEAhcWljUim7KuJXCTnZyKIPvWZ7G9xPJlyTn
	isag==
MIME-Version: 1.0
X-Received: by 10.52.93.201 with SMTP id cw9mr91512vdb.80.1403699292576; Wed,
	25 Jun 2014 05:28:12 -0700 (PDT)
Received: by 10.220.73.202 with HTTP; Wed, 25 Jun 2014 05:28:12 -0700 (PDT)
In-Reply-To: <53A97524.7060706@windriver.com>
References: <CACG32bCxxVXKDHqaUaf7fNg=BWdpbe1zZoKiqVr8jFMmDUV4dQ@mail.gmail.com>
	<CAE_REAuqKcAVoyppz6Uo++yuqjraBrkCH-fPFRrdFpDxQNR_ZQ@mail.gmail.com>
	<CACG32bApDDjpia7hBbw9ZNOG1awcDn_vh-42UFYqRMZtwtHv7Q@mail.gmail.com>
	<53A97524.7060706@windriver.com>
Date: Wed, 25 Jun 2014 17:58:12 +0530
Message-ID: <CACG32bDV-buNo0foGrkipD6WEhser9M_-Dg5sc=t3SnrxuKHhg@mail.gmail.com>
From: Pradeep kumar <topradeepyaduvanshi@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compiling openvswitch module in yocto
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
X-List-Received-Date: Wed, 25 Jun 2014 12:28:23 -0000
Content-Type: multipart/alternative; boundary=047d7bd76fa6b4a2b404fca83538

--047d7bd76fa6b4a2b404fca83538
Content-Type: text/plain; charset=ISO-8859-1

sorry for late reply i am building for single target in the build directory.
i am using yocto on 64-bit system.should i use 32-bit system,please do
suggest some steps to fix this issue.
i am able to crosscompile for powerpc succesfully.


Regards
Pradeep Kumar


On Tue, Jun 24, 2014 at 6:25 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

>  On 14-06-24 06:09 AM, Pradeep kumar wrote:
>
>  *Thanks for your reply*
> I m getting following errors after uncommenting *EXTRA_OECONF =
> "--with-linux=${STAGING_KERNEL_DIR} KARCH=${TARGET_ARCH}"*.Sharing logs
> with you.
> have u got the openvswitch kernel module in * openvswitch-../datapath/linux/openvswitch.ko
> *if yes then please share the changes that you have made in yocto.i need
> openvswitch kenel module  in powerpc enviornment as i need gre support of
> openvswitch in powerpc enviornment.
>
>  .
> .
> ..
> ..
>  Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Ubuntu-13.04"
> TARGET_SYS        = "powerpc-fsl_networking-linux"
> MACHINE           = "p2041rdb"
> DISTRO            = "fsl-networking"
> DISTRO_VERSION    = "1.4"
> TUNE_FEATURES     = "m32 fpu-hard ppce500mc"
> TARGET_FPU        = "hard"
> meta
> meta-yocto
> meta-yocto-bsp    = "sdk-v1.4.x:16bfcaa96c074aac0a1f66d33b45fb33ba559325"
> meta-fsl-ppc      = "sdk-v1.4.x:324b1cb7fadce0bbf145b922ce2e1d9af9ba223b"
> meta-fsl-ppc-toolchain =
> "sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034d723"
> meta-virtualization = "sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6f93"
> meta-fsl-networking = "(nobranch):77405d17c48607551e4f095fb2f79eb0c09b8430"
> meta-oe
> meta-networking   = "sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca263616"
>
>  NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: do_compile (see
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/log.do_compile.12994
> for further information)
> ERROR: Logfile of failure stored in:
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/log.do_compile.12994
> Log data follows:
> | DEBUG: SITE files ['endian-big', 'bit-32', 'powerpc-common',
> 'common-linux', 'common-glibc', 'powerpc32-linux', 'powerpc-linux',
> 'common']
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 2
> | make  all-recursive
> | make[1]: Entering directory
> `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0'
> | Making all in datapath
> | make[2]: Entering directory
> `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath'
> | Making all in linux
> | make[3]: Entering directory
> `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux'
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../actions.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../checksum.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../datapath.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../dp_notify.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../flow.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../genl_exec.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../tunnel.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vlan.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-gre.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-internal_dev.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-netdev.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-vxlan.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/addrconf_core-openvswitch.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/dev-openvswitch.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/exthdrs_core.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/flex_array.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/genetlink-openvswitch.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/ip_output-openvswitch.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/kmemdup.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/netdevice.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/net_namespace.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/reciprocal_div.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/skbuff-openvswitch.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/time.c
> | ln -s
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/workqueue.c
> | make -C
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel
> M=/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux
> modules
> | make[4]: Entering directory
> `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel'
> |   CC [M]
>  /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.o
> |   CC [M]
>  /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.o
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/bitops.h:512:0,
> |                  from include/linux/bitops.h:22,
> |                  from include/linux/kernel.h:10,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/kernel.h:4,
> |                  from include/linux/skbuff.h:17,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> | /home/kshipra/QorIQ-SDK-V1.4-20130814-*yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:
> In function '__arch_hweight64':*
> | */home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:53:7:
> error: expected ':' or ')' before 'POPCNT64'*
>
>
> You've got something very strange happening in that kernel source
> tree. Are you building for more than one target in this build directory ?
>
> QorIQ shouldn't be getting into arch/x86/include/asm ... that isn't going
> to go well for the build.
>
> Bruce
>
>   | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/bitops.h:512:0,
> |                  from include/linux/bitops.h:22,
> |                  from include/linux/kernel.h:10,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/kernel.h:4,
> |                  from include/linux/skbuff.h:17,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:
> In function '__arch_hweight64':
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:53:7:
> error: expected ':' or ')' before 'POPCNT64'
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,
>  |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:
> At top level:In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:
> At top level:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:30:
> error: 'CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in a function)
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:1:
> error: requested alignment is not an integer constant
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:159:1:
> error: requested alignment is not an integer constant
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:177:0:
> warning: "cache_line_size" redefined [enabled by default]
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:27:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> | include/linux/cache.h:64:0: note: this is the location of the previous
> definition
> |
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:30:
> error: 'CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in a function)
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:1:
> error: requested alignment is not an integer constant
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,
>  |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:257:1:
> error: requested alignment is not an integer
> constant/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:159:1:
> error: requested alignment is not an integer constant
> |
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:177:0:
> warning: "cache_line_size" redefined [enabled by default]
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:288:1:
> error: requested alignment is not an integer constantIn file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:27:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> | include/linux/cache.h:64:0: note: this is the location of the previous
> definition
> |
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:290:1:
> error: requested alignment is not an integer constant
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,
>  |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:257:1:
> error: requested alignment is not an integer constant
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:288:1:
> error: requested alignment is not an integer constant
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:290:1:
> error: requested alignment is not an integer constant
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
> |                  from include/linux/atomic.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:1:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
> In function 'atomic64_read':
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:21:32:
> error: request for member 'counter' in something not a structure or union
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
> At top level:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:31:33:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:43:41:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:57:41:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:73:49:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:89:33:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:102:33:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:117:41:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:135:41:
> error: unknown type name 'atomic64_t'
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
> |                  from include/linux/atomic.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:1:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
> In function 'atomic64_read':
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:21:32:
> error: request for member 'counter' in something not a structure or union
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
> At top level:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:31:33:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:43:41:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:57:41:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:73:49:
> error: unknown type name
> 'atomic64_t'/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:154:49:
> error: unknown type name 'atomic64_t'
> |
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:89:33:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:102:33:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:171:48:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:117:41:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:176:48:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:184:37:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:135:41:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:189:34:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:154:49:
> error: unknown type name
> 'atomic64_t'/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:203:39:
> error: unknown type name 'atomic64_t'
> |
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:227:45:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:171:48:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:176:48:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:184:37:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:189:34:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:203:39:
> error: unknown type name 'atomic64_t'
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:227:45:
> error: unknown type name 'atomic64_t'
> | In file included from include/linux/atomic.h:129:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> | include/asm-generic/atomic64.h:21:18: error: conflicting types for
> 'atomic64_read'
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
> |                  from include/linux/atomic.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:20:
> note: previous definition of 'atomic64_read' was here
> | In file included from include/linux/atomic.h:129:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> | include/asm-generic/atomic64.h:21:18: error: conflicting types for
> 'atomic64_read'
> | In file included from include/linux/atomic.h:129:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> | include/asm-generic/atomic64.h:34:0: warning: "atomic64_inc_return"
> redefined [enabled by default]In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
> |                  from include/linux/atomic.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:20:
> note: previous definition of 'atomic64_read' was here
> |
> | In file included from include/linux/atomic.h:129:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> | include/asm-generic/atomic64.h:34:0: warning: "atomic64_inc_return"
> redefined [enabled by default]
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
> |                  from include/linux/atomic.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:181:0:
> note: this is the location of the previous definition
> | In file included from include/linux/atomic.h:129:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> | include/asm-generic/atomic64.h:38:0: warning: "atomic64_dec_return"
> redefined [enabled by default]
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
> |                  from include/linux/atomic.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:182:0:
> note: this is the location of the previous definition
> | In file included from include/linux/atomic.h:129:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> | include/asm-generic/atomic64.h:40:0: warning: "atomic64_inc_not_zero"
> redefined [enabled by default]
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
> |                  from include/linux/atomic.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:218:0:
> note: this is the location of the previous definition
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
> |                  from include/linux/atomic.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:181:0:
> note: this is the location of the previous definition
> | In file included from include/linux/atomic.h:129:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> | include/asm-generic/atomic64.h:38:0: warning: "atomic64_dec_return"
> redefined [enabled by default]
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
> |                  from include/linux/atomic.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:182:0:
> note: this is the location of the previous definition
> | In file included from include/linux/atomic.h:129:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> | include/asm-generic/atomic64.h:40:0: warning: "atomic64_inc_not_zero"
> redefined [enabled by default]
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
> |                  from include/linux/atomic.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
> |                  from include/linux/thread_info.h:54,
> |                  from include/linux/preempt.h:9,
> |                  from include/linux/spinlock.h:50,
> |                  from include/linux/mm_types.h:8,
> |                  from include/linux/kmemcheck.h:4,
> |                  from include/linux/skbuff.h:18,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:218:0:
> note: this is the location of the previous definition
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/net.h:4:0,
> |                  from include/linux/skbuff.h:27,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> | include/linux/net.h:92:1: error: requested alignment is not an integer
> constant
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/net.h:4:0,
> |                  from include/linux/skbuff.h:27,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> | include/linux/net.h:92:1: error: requested alignment is not an integer
> constant
> | In file included from include/linux/gfp.h:4:0,
> |                  from include/linux/slab.h:12,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,
> |                  from include/linux/textsearch.h:8,
> |                  from include/linux/skbuff.h:28,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> | include/linux/mmzone.h:97:3: error: 'CONFIG_X86_INTERNODE_CACHE_SHIFT'
> undeclared here (not in a function)In file included from
> include/linux/gfp.h:4:0,
> |                  from include/linux/slab.h:12,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,
> |                  from include/linux/textsearch.h:8,
> |                  from include/linux/skbuff.h:28,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> | include/linux/mmzone.h:97:3: error: 'CONFIG_X86_INTERNODE_CACHE_SHIFT'
> undeclared here (not in a function)
> | include/linux/mmzone.h:97:1: error: requested alignment is not an
> integer constant
> |
> | include/linux/mmzone.h:97:1: error: requested alignment is not an
> integer constant
> | include/linux/mmzone.h:506:1: error: requested alignment is not an
> integer constant
> | include/linux/mmzone.h:506:1: error: requested alignment is not an
> integer constant
> | In file included from include/linux/slab_def.h:146:0,
> |                  from include/linux/slab.h:260,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,
> |                  from include/linux/textsearch.h:8,
> |                  from include/linux/skbuff.h:28,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> | include/linux/kmalloc_sizes.h: In function 'kmalloc':In file included
> from include/linux/slab_def.h:146:0,
> |                  from include/linux/slab.h:260,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,
> |                  from include/linux/textsearch.h:8,
> |                  from include/linux/skbuff.h:28,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from include/linux/ip.h:20,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
> | include/linux/kmalloc_sizes.h: In function 'kmalloc':
> | include/linux/kmalloc_sizes.h:5:5: warning: "CONFIG_X86_L1_CACHE_SHIFT"
> is not defined [-Wundef]
> | include/linux/kmalloc_sizes.h:9:5: warning: "CONFIG_X86_L1_CACHE_SHIFT"
> is not defined [-Wundef]
> |
> | include/linux/kmalloc_sizes.h:5:5: warning: "CONFIG_X86_L1_CACHE_SHIFT"
> is not defined [-Wundef]
> | include/linux/kmalloc_sizes.h:9:5: warning: "CONFIG_X86_L1_CACHE_SHIFT"
> is not defined [-Wundef]
> | In file included from include/linux/irq.h:356:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:5,
> |                  from include/linux/hardirq.h:8,
> |                  from include/net/sock.h:43,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
> | include/linux/irqdesc.h: At top level:In file included from
> include/linux/irq.h:356:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:5,
> |                  from include/linux/hardirq.h:8,
> |                  from include/net/sock.h:43,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
> | include/linux/irqdesc.h: At top level:
> | include/linux/irqdesc.h:74:1: error: requested alignment is not an
> integer constant
> |
> | include/linux/irqdesc.h:74:1: error: requested alignment is not an
> integer constant
> | In file included from include/linux/hardirq.h:8:0,
> |                  from include/net/sock.h:43,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:33:1:
> error: requested alignment is not an integer constant
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:35:1:
> error: requested alignment is not an integer constant
> | In file included from include/linux/hardirq.h:8:0,
> |                  from include/net/sock.h:43,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:33:1:
> error: requested alignment is not an integer constant
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:35:1:
> error: requested alignment is not an integer constant
> | In file included from include/linux/netdevice.h:40:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
> |                  from include/net/sock.h:51,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
> | include/linux/dynamic_queue_limits.h:48:2: error: requested alignment is
> not an integer constantIn file included from include/linux/netdevice.h:40:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
> |                  from include/net/sock.h:51,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
> | include/linux/dynamic_queue_limits.h:48:2: error: requested alignment is
> not an integer constant
> |
> | In file included from include/net/netns/ipv6.h:9:0,
> |                  from include/net/net_namespace.h:17,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
> |                  from include/linux/netdevice.h:43,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
> |                  from include/net/sock.h:51,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
> | include/net/dst_ops.h:39:9: error: requested alignment is not an integer
> constantIn file included from include/net/netns/ipv6.h:9:0,
> |                  from include/net/net_namespace.h:17,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
> |                  from include/linux/netdevice.h:43,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
> |                  from include/net/sock.h:51,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
> | include/net/dst_ops.h:39:9: error: requested alignment is not an integer
> constant
> |
> | In file included from include/linux/sched.h:32:0,
> |                  from include/net/net_namespace.h:139,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
> |                  from include/linux/netdevice.h:43,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
> |                  from include/net/sock.h:51,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
> | include/linux/sem.h:14:5: error: requested alignment is not an integer
> constantIn file included from include/linux/sched.h:32:0,
> |                  from include/net/net_namespace.h:139,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
> |                  from include/linux/netdevice.h:43,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
> |                  from include/net/sock.h:51,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
> | include/linux/sem.h:14:5: error: requested alignment is not an integer
> constant
> |
> | In file included from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/include/uapi/linux/unistd.h:7:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp_64.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp.h:4,
> |                  from include/linux/seccomp.h:9,
> |                  from include/linux/sched.h:40,
> |                  from include/net/net_namespace.h:139,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
> |                  from include/linux/netdevice.h:43,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
> |                  from include/net/sock.h:51,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
> |
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/unistd.h:23:29:
> fatal error: asm/unistd_64.h: No such file or directoryIn file included
> from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/include/uapi/linux/unistd.h:7:0,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp_64.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp.h:4,
> |                  from include/linux/seccomp.h:9,
> |                  from include/linux/sched.h:40,
> |                  from include/net/net_namespace.h:139,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
> |                  from include/linux/netdevice.h:43,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
> |                  from include/net/sock.h:51,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
> |                  from include/linux/tcp.h:23,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
> |                  from
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
> | /home/kshipra/QorIQ-SDK-V1.4-20130814-*yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/unistd.h:23:29:
> fatal error: asm/unistd_64.h: No such file or directory*
> *| compilation terminated.*
> *| *
> *| compilation terminated.*
>  | make[5]: ***
> [/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.o]
> Error 1
> | make[5]: *** Waiting for unfinished jobs....
> | make[5]: ***
> [/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.o]
> Error 1
> | make[4]: ***
> [_module_/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux]
> Error 2
> | make[4]: Leaving directory
> `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel'
> | make[3]: *** [default] Error 2
> | make[3]: Leaving directory
> `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux'
> | make[2]: *** [all-recursive] Error 1
> | make[2]: Leaving directory
> `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (see
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/log.do_compile.12994
> for further information)
> ERROR: Task 4
> (/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/meta-virtualization/recipes-networking/openvswitch/
> openvswitch_1.10.0.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 493 tasks of which 488 didn't need to be
> rerun and 1 failed.
>
>  Summary: 1 task failed:
>
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/meta-virtualization/recipes-networking/openvswitch/
> openvswitch_1.10.0.bb, do_compile
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>  Thanks
>
>
>
>   Regards
>  Pradeep Kumar
>
>
> On Tue, Jun 24, 2014 at 3:01 PM, Gaurang Shastri <gmshastri@gmail.com>
> wrote:
>
>> Hi,
>>
>>  In your recipe, you just need to enable,
>>
>>  EXTRA_OECONF = "--with-linux=${STAGING_KERNEL_DIR} KARCH=${TARGET_ARCH}"
>>
>>  This will build openvswitch module against your kernel source. I did
>> this and I did not find any issues and it built module against my kernel.
>>
>>  Can you paste more logs here ??
>>
>>  //Gaurang Shastri
>>
>>
>>  On Tue, Jun 24, 2014 at 2:19 PM, Pradeep kumar <
>> topradeepyaduvanshi@gmail.com> wrote:
>>
>>>      *on x-86 openvswitch compiling steps are as follows:*
>>>  ->./boot.sh
>>>  ->./configure --with-linux=/lib/modules/`uname -r`/build
>>>  ->make
>>>  ->make install
>>>   by following these steps an openvswitch kernel  module get built in
>>> *openvswitch-1.10.0/datapath/linux/openvswitch.ko*
>>>
>>>  *i Am using following steps to cross-compile openvswitch for power pc*
>>>
>>>  ->export
>>> PATH=$PATH:/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/board/tmp/sysroots/x86_64-linux/usr/bin/ppc64e6500-fsl_networking-linux
>>>
>>>  ->./boot.sh
>>>
>>>
>>>  ->./configure --host=x86 --target=powerpc KARCH=powerpc
>>> CC=powerpc64-fsl_networking-linux-gcc
>>> --with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git/
>>>  --enable-ssl=no --prefix=/openvswitch_utils
>>>
>>>
>>>  ->make ARCH=powerpc CROSS_COMPILE=powerpc-fsl_networking-linux-
>>>
>>>  ->sudo make ARCH=powerpc CROSS_COMPILE=powerpc-fsl_networking-linux-
>>> install
>>> .
>>> .
>>> .
>>>  By following these steps an *openvswitch kernel  module get built in
>>> openvswitch-2.1.2/datapath/linux/openvswitch.ko for powerpc arch.*
>>>
>>>  *Now i want to do the same thing using openvswitch_1.10.0.bb
>>> <http://openvswitch_2.1.2.bb> file*.
>>> # Don't compile kernel modules by default since it heavily depends on
>>>  30 # kernel version. Use the in-kernel module for now.
>>>  31 # distro layers can enable with EXTRA_OECONF_pn_openvswitch += ""
>>>  32 # *EXTRA_OECONF = "--with-linux=${STAGING_KERNEL_DIR}
>>> KARCH=${TARGET_ARCH}"*
>>>
>>>  acc. to my understanding which can be achieved by uncommenting this
>>> line and passing kernel source directory path in openvswitch_1.10.0.bb
>>>  :
>>> *EXTRA_OECONF =
>>> "--with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git KARCH=powerpc
>>> in openvswitch_1.10.0.bb <http://openvswitch_1.10.0.bb>*
>>>
>>>  *bitbake -c compile openvswitch*
>>>
>>>  but it is showing error:*do_compile failed,oe_runmake failed*
>>> and showing .../git/x86/include/asm/unistd...files are missing...
>>> i am new to yocto kindly help me regarding above described issue.thanks
>>> in advance.ITZ URGENT.if u need to see full logs plz ask for the same.
>>>   Regards
>>>  Pradeep Kumar
>>>
>>>  --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>
>
>
>

--047d7bd76fa6b4a2b404fca83538
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>sorry for late reply i am building for single ta=
rget in the build
    directory.<br></div>i am using yocto on 64-bit system.should i use 32-b=
it system,please do suggest some steps to fix this issue.<br></div>i am abl=
e to crosscompile for powerpc succesfully.<br><div><div><br></div></div>
</div><div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><d=
iv><div>Regards<br></div>Pradeep Kumar<br></div></div></div>
<br><br><div class=3D"gmail_quote">On Tue, Jun 24, 2014 at 6:25 PM, Bruce A=
shfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.co=
m" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">

 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>On 14-06-24 06:09 AM, Pradeep kumar
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div><b>Thanks for your reply</b></div>
        I m getting following errors after uncommenting=A0<b><span style=3D=
"color:rgb(80,0,80);font-family:arial,sans-serif;font-size:13px">EXTRA_OECO=
NF
            =3D &quot;--with-linux=3D${STAGING_</span><span style=3D"color:=
rgb(80,0,80);font-family:arial,sans-serif;font-size:13px">KERNEL_DIR}
            KARCH=3D${TARGET_ARCH}&quot;</span></b>.Sharing logs with you.
        <div>
          have u got the openvswitch kernel module in=A0<b style=3D"font-si=
ze:13px;font-family:arial,sans-serif">=A0openvswitch-../datapath/linux/open=
vswitch.ko
          </b><span style=3D"font-size:13px;font-family:arial,sans-serif">i=
f
            yes then please share the changes that you have made in
            yocto.i need openvswitch kenel module =A0in powerpc
            enviornment as i need gre support of openvswitch in powerpc
            enviornment.</span></div>
        <div><span style=3D"font-size:13px;font-family:arial,sans-serif"><b=
r>
          </span></div>
        <div><span style=3D"font-size:13px;font-family:arial,sans-serif">.<=
/span></div>
        <div><span style=3D"font-size:13px;font-family:arial,sans-serif">.<=
/span></div>
        <div><span style=3D"font-size:13px;font-family:arial,sans-serif">..=
</span></div>
        <div><span style=3D"font-size:13px;font-family:arial,sans-serif">..=
</span></div>
        <div>
          <div><font face=3D"arial, sans-serif">Build Configuration:</font>=
</div>
          <div><font face=3D"arial, sans-serif">BB_VERSION =A0 =A0 =A0 =A0=
=3D
              &quot;1.18.0&quot;</font></div>
          <div><font face=3D"arial, sans-serif">BUILD_SYS =A0 =A0 =A0 =A0 =
=3D
              &quot;i686-linux&quot;</font></div>
          <div><font face=3D"arial, sans-serif">NATIVELSBSTRING =A0 =3D
              &quot;Ubuntu-13.04&quot;</font></div>
          <div><font face=3D"arial, sans-serif">TARGET_SYS =A0 =A0 =A0 =A0=
=3D
              &quot;powerpc-fsl_networking-linux&quot;</font></div>
          <div><font face=3D"arial, sans-serif">MACHINE =A0 =A0 =A0 =A0 =A0=
 =3D
              &quot;p2041rdb&quot;</font></div>
          <div><font face=3D"arial, sans-serif">DISTRO =A0 =A0 =A0 =A0 =A0 =
=A0=3D
              &quot;fsl-networking&quot;</font></div>
          <div><font face=3D"arial, sans-serif">DISTRO_VERSION =A0 =A0=3D &=
quot;1.4&quot;</font></div>
          <div><font face=3D"arial, sans-serif">TUNE_FEATURES =A0 =A0 =3D &=
quot;m32
              fpu-hard ppce500mc&quot;</font></div>
          <div><font face=3D"arial, sans-serif">TARGET_FPU =A0 =A0 =A0 =A0=
=3D &quot;hard&quot;</font></div>
          <div><font face=3D"arial, sans-serif">meta =A0 =A0 =A0 =A0 =A0 =
=A0 =A0</font></div>
          <div><font face=3D"arial, sans-serif">meta-yocto =A0 =A0 =A0 =A0<=
/font></div>
          <div><font face=3D"arial, sans-serif">meta-yocto-bsp =A0 =A0=3D
              &quot;sdk-v1.4.x:16bfcaa96c074aac0a1f66d33b45fb33ba559325&quo=
t;</font></div>
          <div><font face=3D"arial, sans-serif">meta-fsl-ppc =A0 =A0 =A0=3D
              &quot;sdk-v1.4.x:324b1cb7fadce0bbf145b922ce2e1d9af9ba223b&quo=
t;</font></div>
          <div><font face=3D"arial, sans-serif">meta-fsl-ppc-toolchain =3D
              &quot;sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034d723&quo=
t;</font></div>
          <div><font face=3D"arial, sans-serif">meta-virtualization =3D
              &quot;sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6f93&quo=
t;</font></div>
          <div><font face=3D"arial, sans-serif">meta-fsl-networking =3D
              &quot;(nobranch):77405d17c48607551e4f095fb2f79eb0c09b8430&quo=
t;</font></div>
          <div><font face=3D"arial, sans-serif">meta-oe =A0 =A0 =A0 =A0 =A0=
=A0</font></div>
          <div><font face=3D"arial, sans-serif">meta-networking =A0 =3D
              &quot;sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca263616&quo=
t;</font></div>
          <div><font face=3D"arial, sans-serif"><br>
            </font></div>
          <div><font face=3D"arial, sans-serif">NOTE: Resolving any
              missing task queue dependencies</font></div>
          <div><font face=3D"arial, sans-serif">NOTE: Preparing runqueue</f=
ont></div>
          <div><font face=3D"arial, sans-serif">NOTE: Executing SetScene
              Tasks</font></div>
          <div><font face=3D"arial, sans-serif">NOTE: Executing RunQueue
              Tasks</font></div>
          <div><font face=3D"arial, sans-serif">ERROR: Function failed:
              do_compile (see
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/lo=
g.do_compile.12994
              for further information)</font></div>
          <div><font face=3D"arial, sans-serif">ERROR: Logfile of failure
              stored in:
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/log.do_compile.1=
2994</font></div>
          <div><font face=3D"arial, sans-serif">Log data follows:</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| DEBUG: SITE files
              [&#39;endian-big&#39;, &#39;bit-32&#39;, &#39;powerpc-common&=
#39;, &#39;common-linux&#39;,
              &#39;common-glibc&#39;, &#39;powerpc32-linux&#39;, &#39;power=
pc-linux&#39;,
              &#39;common&#39;]</font></div>
          <div><font face=3D"arial, sans-serif">| DEBUG: Executing shell
              function do_compile</font></div>
          <div><font face=3D"arial, sans-serif">| NOTE: make -j 2</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| make =A0all-recursive</fo=
nt></div>
          <div><font face=3D"arial, sans-serif">| make[1]: Entering
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/wor=
k/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0&#=
39;</font></div>
          <div><font face=3D"arial, sans-serif">| Making all in datapath</f=
ont></div>
          <div><font face=3D"arial, sans-serif">| make[2]: Entering
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/wor=
k/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/d=
atapath&#39;</font></div>
          <div><font face=3D"arial, sans-serif">| Making all in linux</font=
></div>
          <div><font face=3D"arial, sans-serif">| make[3]: Entering
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/wor=
k/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/d=
atapath/linux&#39;</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../actions.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../checksum.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../datapath.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../dp_notify.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../flow.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../genl_exec.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../tunnel.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../vlan.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../vport.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../vport-gre.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../vport-internal_dev.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../vport-netdev.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../vport-vxlan.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/addrconf_core-openvswitch.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/dev-openvswitch.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/exthdrs_core.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/flex_array.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/genetlink-openvswitch.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/ip_output-openvswitch.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/kmemdup.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/netdevice.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/net_namespace.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/reciprocal_div.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/skbuff-openvswitch.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/time.c</font></div>
          <div><font face=3D"arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/../linux/compat/workqueue.c</font></div>
          <div><font face=3D"arial, sans-serif">| make -C
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel
              M=3D/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rd=
b_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/ope=
nvswitch-1.10.0/datapath/linux
              modules</font></div>
          <div><font face=3D"arial, sans-serif">| make[4]: Entering
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sys=
roots/p2041rdb/usr/src/kernel&#39;</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 CC [M]
=A0/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/w=
ork/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0=
/datapath/linux/actions.o</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 CC [M]
=A0/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/w=
ork/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0=
/datapath/linux/checksum.o</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/bitops.h:512:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/bitops.h:22,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kernel.h:10,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/kernel.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:17,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-<b>yocto/build_p2041rdb=
_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hwe=
ight.h:
                In function &#39;__arch_hweight64&#39;:</b></font></div>
          <div><font face=3D"arial, sans-serif">| <b>/home/kshipra/QorIQ-SD=
K-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/=
kernel/arch/x86/include/asm/arch_hweight.h:53:7:
                error: expected &#39;:&#39; or &#39;)&#39; before &#39;POPC=
NT64&#39;</b></font></div>
        </div>
      </div>
    </blockquote>
    <br>
    You&#39;ve got something very strange happening in that kernel source<b=
r>
    tree. Are you building for more than one target in this build
    directory ?<br>
    <br>
    QorIQ shouldn&#39;t be getting into arch/x86/include/asm ... that isn&#=
39;t
    going<br>
    to go well for the build.<br>
    <br>
    Bruce<br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/bitops.h:512:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/bitops.h:22,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kernel.h:10,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/kernel.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:17,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweigh=
t.h:
              In function &#39;__arch_hweight64&#39;:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweigh=
t.h:53:7:
              error: expected &#39;:&#39; or &#39;)&#39; before &#39;POPCNT=
64&#39;</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,</font=
></div>
          <div>
            <font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:
              At top level:In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,</font=
></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:
              At top level:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:135:30:
              error: &#39;CONFIG_X86_L1_CACHE_SHIFT&#39; undeclared here (n=
ot in
              a function)</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:135:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:159:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:177:0:
              warning: &quot;cache_line_size&quot; redefined [enabled by de=
fault]</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:27:0,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/cache.h:64:0: note: this is the location of
              the previous definition</font></div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:135:30:
              error: &#39;CONFIG_X86_L1_CACHE_SHIFT&#39; undeclared here (n=
ot in
              a function)</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:135:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,</font=
></div>
          <div>
            <font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:257:1:
              error: requested alignment is not an integer
              constant/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p20=
41rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/pro=
cessor.h:159:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:177:0:
              warning: &quot;cache_line_size&quot; redefined [enabled by de=
fault]</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:288:1:
              error: requested alignment is not an integer constantIn
              file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:27:0,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/cache.h:64:0: note: this is the location of
              the previous definition</font></div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:290:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,</font=
></div>
          <div>
            <font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:257:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:288:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h=
:290:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/atomic.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:19:1:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:
              In function &#39;atomic64_read&#39;:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:21:32:
              error: request for member &#39;counter&#39; in something not =
a
              structure or union</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:
              At top level:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:31:33:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:43:41:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:57:41:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:73:49:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:89:33:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:102:33:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:117:41:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:135:41:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/atomic.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:19:1:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:
              In function &#39;atomic64_read&#39;:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:21:32:
              error: request for member &#39;counter&#39; in something not =
a
              structure or union</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:
              At top level:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:31:33:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:43:41:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:57:41:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:73:49:
              error: unknown type name
              &#39;atomic64_t&#39;/home/kshipra/QorIQ-SDK-V1.4-20130814-yoc=
to/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/inc=
lude/asm/atomic64_64.h:154:49:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:89:33:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:102:33:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:171:48:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:117:41:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:176:48:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:184:37:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:135:41:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:189:34:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:154:49:
              error: unknown type name
              &#39;atomic64_t&#39;/home/kshipra/QorIQ-SDK-V1.4-20130814-yoc=
to/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/inc=
lude/asm/atomic64_64.h:203:39:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:227:45:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:171:48:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:176:48:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:184:37:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:189:34:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:203:39:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:227:45:
              error: unknown type name &#39;atomic64_t&#39;</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/asm-generic/atomic64.h:21:18: error: conflicting
              types for &#39;atomic64_read&#39;</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/atomic.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:19:20:
              note: previous definition of &#39;atomic64_read&#39; was here=
</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/asm-generic/atomic64.h:21:18: error: conflicting
              types for &#39;atomic64_read&#39;</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/asm-generic/atomic64.h:34:0: warning:
              &quot;atomic64_inc_return&quot; redefined [enabled by default=
]In
              file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/atomic.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:19:20:
              note: previous definition of &#39;atomic64_read&#39; was here=
</font></div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/asm-generic/atomic64.h:34:0: warning:
              &quot;atomic64_inc_return&quot; redefined [enabled by default=
]</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/atomic.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:181:0:
              note: this is the location of the previous definition</font><=
/div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/asm-generic/atomic64.h:38:0: warning:
              &quot;atomic64_dec_return&quot; redefined [enabled by default=
]</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/atomic.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:182:0:
              note: this is the location of the previous definition</font><=
/div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/asm-generic/atomic64.h:40:0: warning:
              &quot;atomic64_inc_not_zero&quot; redefined [enabled by defau=
lt]</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/atomic.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:218:0:
              note: this is the location of the previous definition</font><=
/div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/atomic.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:181:0:
              note: this is the location of the previous definition</font><=
/div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/asm-generic/atomic64.h:38:0: warning:
              &quot;atomic64_dec_return&quot; redefined [enabled by default=
]</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/atomic.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:182:0:
              note: this is the location of the previous definition</font><=
/div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/asm-generic/atomic64.h:40:0: warning:
              &quot;atomic64_inc_not_zero&quot; redefined [enabled by defau=
lt]</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/atomic.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font><=
/div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/thread_info.h:54,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/preempt.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/spinlock.h:50,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/mm_types.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:18,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64=
.h:218:0:
              note: this is the location of the previous definition</font><=
/div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/net.h:4:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:27,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/net.h:92:1: error: requested alignment is
              not an integer constant</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/net.h:4:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:27,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/net.h:92:1: error: requested alignment is
              not an integer constant</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/gfp.h:4:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/slab.h:12,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/slab.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/textsearch.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:28,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/mmzone.h:97:3: error:
              &#39;CONFIG_X86_INTERNODE_CACHE_SHIFT&#39; undeclared here (n=
ot in
              a function)In file included from include/linux/gfp.h:4:0,</fo=
nt></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/slab.h:12,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/slab.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/textsearch.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:28,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/mmzone.h:97:3: error:
              &#39;CONFIG_X86_INTERNODE_CACHE_SHIFT&#39; undeclared here (n=
ot in
              a function)</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/mmzone.h:97:1: error: requested alignment is
              not an integer constant</font></div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/mmzone.h:97:1: error: requested alignment is
              not an integer constant</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/mmzone.h:506:1: error: requested alignment
              is not an integer constant</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/mmzone.h:506:1: error: requested alignment
              is not an integer constant</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/slab_def.h:146:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/slab.h:260,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/slab.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/textsearch.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:28,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:21:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/kmalloc_sizes.h: In function &#39;kmalloc&#39;:=
In
              file included from include/linux/slab_def.h:146:0,</font></di=
v>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/slab.h:260,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/slab.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/textsearch.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/skbuff.h:28,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/ip.h:20,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:22:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/kmalloc_sizes.h: In function &#39;kmalloc&#39;:=
</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/kmalloc_sizes.h:5:5: warning:
              &quot;CONFIG_X86_L1_CACHE_SHIFT&quot; is not defined [-Wundef=
]</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/kmalloc_sizes.h:9:5: warning:
              &quot;CONFIG_X86_L1_CACHE_SHIFT&quot; is not defined [-Wundef=
]</font></div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/kmalloc_sizes.h:5:5: warning:
              &quot;CONFIG_X86_L1_CACHE_SHIFT&quot; is not defined [-Wundef=
]</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/kmalloc_sizes.h:9:5: warning:
              &quot;CONFIG_X86_L1_CACHE_SHIFT&quot; is not defined [-Wundef=
]</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/irq.h:356:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:5,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/hardirq.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:43,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:25:</font></div>
          <div><font face=3D"arial, sans-serif">| include/linux/irqdesc.h:
              At top level:In file included from
              include/linux/irq.h:356:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:5,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/hardirq.h:8,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:43,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:23:</font></div>
          <div><font face=3D"arial, sans-serif">| include/linux/irqdesc.h:
              At top level:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/irqdesc.h:74:1: error: requested alignment
              is not an integer constant</font></div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/irqdesc.h:74:1: error: requested alignment
              is not an integer constant</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/hardirq.h:8:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:43,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:23:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:3=
3:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:3=
5:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/hardirq.h:8:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:43,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:25:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:3=
3:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:3=
5:1:
              error: requested alignment is not an integer constant</font><=
/div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/netdevice.h:40:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:51,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:23:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/dynamic_queue_limits.h:48:2: error:
              requested alignment is not an integer constantIn file
              included from include/linux/netdevice.h:40:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:51,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:25:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/dynamic_queue_limits.h:48:2: error:
              requested alignment is not an integer constant</font></div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/net/netns/ipv6.h:9:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/net_namespace.h:17,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/netdevice.h:43,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:51,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:25:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/net/dst_ops.h:39:9: error: requested alignment is
              not an integer constantIn file included from
              include/net/netns/ipv6.h:9:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/net_namespace.h:17,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/netdevice.h:43,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:51,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:23:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/net/dst_ops.h:39:9: error: requested alignment is
              not an integer constant</font></div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
              include/linux/sched.h:32:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/net_namespace.h:139,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/netdevice.h:43,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:51,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:23:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/sem.h:14:5: error: requested alignment is
              not an integer constantIn file included from
              include/linux/sched.h:32:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/net_namespace.h:139,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/netdevice.h:43,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:51,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:25:</font></div>
          <div><font face=3D"arial, sans-serif">|
              include/linux/sem.h:14:5: error: requested alignment is
              not an integer constant</font></div>
          <div><font face=3D"arial, sans-serif">|=A0</font></div>
          <div><font face=3D"arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/include/uapi/linux/unistd.h:7:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp_64.h:4,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/seccomp.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/sched.h:40,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/net_namespace.h:139,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/netdevice.h:43,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:51,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/checksum.c:23:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/unistd.h:23=
:29:
              fatal error: asm/unistd_64.h: No such file or directoryIn
              file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/include/uapi/linux/unistd.h:7:0,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp_64.h:4,</font></d=
iv>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysr=
oots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/seccomp.h:9,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/sched.h:40,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/net_namespace.h:139,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/netdevice.h:43,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/net/sock.h:51,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
              include/linux/tcp.h:23,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face=3D"arial, sans-serif">| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work=
/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/da=
tapath/linux/actions.c:25:</font></div>
          <div><font face=3D"arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-<b>yocto/build_p2041rdb=
_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/unistd.h=
:23:29:
                fatal error: asm/unistd_64.h: No such file or directory</b>=
</font></div>
          <div><font face=3D"arial, sans-serif"><b>| compilation
                terminated.</b></font></div>
          <div><font face=3D"arial, sans-serif"><b>|=A0</b></font></div>
          <div><font face=3D"arial, sans-serif"><b>| compilation
                terminated.</b></font></div>
          <div>
            <font face=3D"arial, sans-serif">| make[5]: ***
              [/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_r=
elease/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvs=
witch-1.10.0/datapath/linux/checksum.o]
              Error 1</font></div>
          <div><font face=3D"arial, sans-serif">| make[5]: *** Waiting for
              unfinished jobs....</font></div>
          <div><font face=3D"arial, sans-serif">| make[5]: ***
              [/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_r=
elease/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvs=
witch-1.10.0/datapath/linux/actions.o]
              Error 1</font></div>
          <div><font face=3D"arial, sans-serif">| make[4]: ***
              [_module_/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2=
041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r=
0/openvswitch-1.10.0/datapath/linux]
              Error 2</font></div>
          <div><font face=3D"arial, sans-serif">| make[4]: Leaving
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sys=
roots/p2041rdb/usr/src/kernel&#39;</font></div>
          <div><font face=3D"arial, sans-serif">| make[3]: *** [default]
              Error 2</font></div>
          <div><font face=3D"arial, sans-serif">| make[3]: Leaving
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/wor=
k/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/d=
atapath/linux&#39;</font></div>
          <div><font face=3D"arial, sans-serif">| make[2]: ***
              [all-recursive] Error 1</font></div>
          <div><font face=3D"arial, sans-serif">| make[2]: Leaving
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/wor=
k/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/d=
atapath&#39;</font></div>
          <div><font face=3D"arial, sans-serif">| make[1]: ***
              [all-recursive] Error 1</font></div>
          <div><font face=3D"arial, sans-serif">| make[1]: Leaving
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/wor=
k/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0&#=
39;</font></div>
          <div><font face=3D"arial, sans-serif">| make: *** [all] Error 2</=
font></div>
          <div><font face=3D"arial, sans-serif">| ERROR: oe_runmake failed<=
/font></div>
          <div><font face=3D"arial, sans-serif">| ERROR: Function failed:
              do_compile (see
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_re=
lease/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/lo=
g.do_compile.12994
              for further information)</font></div>
          <div><font face=3D"arial, sans-serif">ERROR: Task 4
(/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/meta-virtualization/recipes-ne=
tworking/openvswitch/<a href=3D"http://openvswitch_1.10.0.bb" target=3D"_bl=
ank">openvswitch_1.10.0.bb</a>,
              do_compile) failed with exit code &#39;1&#39;</font></div>
          <div><font face=3D"arial, sans-serif">NOTE: Tasks Summary:
              Attempted 493 tasks of which 488 didn&#39;t need to be rerun
              and 1 failed.</font></div>
          <div><font face=3D"arial, sans-serif"><br>
            </font></div>
          <div><font face=3D"arial, sans-serif">Summary: 1 task failed:</fo=
nt></div>
          <div><font face=3D"arial, sans-serif">=A0
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/meta-virtualization/recipes-net=
working/openvswitch/<a href=3D"http://openvswitch_1.10.0.bb" target=3D"_bla=
nk">openvswitch_1.10.0.bb</a>,
              do_compile</font></div>
          <div><font face=3D"arial, sans-serif">Summary: There was 1 ERROR
              message shown, returning a non-zero exit code.</font></div>
          <div style=3D"font-family:arial,sans-serif;font-size:13px"><br>
          </div>
          <div style=3D"font-family:arial,sans-serif;font-size:13px">
            Thanks</div>
        </div>
        <div><span style=3D"font-size:13px;font-family:arial,sans-serif"><b=
r>
          </span></div>
        <div><span style=3D"font-size:13px;font-family:arial,sans-serif"><b=
r>
          </span></div>
      </div>
      <div class=3D"gmail_extra"><br clear=3D"all">
        <div>
          <div dir=3D"ltr">
            <div>
              <div>Regards<br>
              </div>
              Pradeep Kumar<br>
            </div>
          </div>
        </div>
        <br>
        <br>
        <div class=3D"gmail_quote">On Tue, Jun 24, 2014 at 3:01 PM,
          Gaurang Shastri <span dir=3D"ltr">&lt;<a href=3D"mailto:gmshastri=
@gmail.com" target=3D"_blank">gmshastri@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
            <div dir=3D"ltr">Hi,
              <div><br>
              </div>
              <div>In your recipe, you just need to enable,</div>
              <div>
                <div><br>
                </div>
                <div>EXTRA_OECONF =3D &quot;--with-linux=3D${STAGING_KERNEL=
_DIR}
                  KARCH=3D${TARGET_ARCH}&quot;<br>
                </div>
                <div><br>
                </div>
              </div>
              <div>This will build openvswitch module against your
                kernel source. I did this and I did not find any issues
                and it built module against my kernel.</div>
              <div><br>
              </div>
              <div>Can you paste more logs here ??</div>
              <div><br>
              </div>
              <div>//Gaurang Shastri</div>
            </div>
            <div class=3D"gmail_extra"><br>
              <br>
              <div class=3D"gmail_quote">
                <div>
                  <div>On Tue, Jun 24, 2014 at 2:19 PM,
                    Pradeep kumar <span dir=3D"ltr">&lt;<a href=3D"mailto:t=
opradeepyaduvanshi@gmail.com" target=3D"_blank">topradeepyaduvanshi@gmail.c=
om</a>&gt;</span>
                    wrote:<br>
                  </div>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">
                  <div>
                    <div>
                      <div dir=3D"ltr">
                        <div>
                          <div>
                            <div>
                              <div>
                                <div>
                                  <div>
                                    <div>
                                      <div><b>on x-86 openvswitch
                                          compiling steps are as
                                          follows:</b><br>
                                      </div>
                                      -&gt;./boot.sh<br>
                                    </div>
                                    -&gt;./configure
                                    --with-linux=3D/lib/modules/`uname
                                    -r`/build<br>
                                  </div>
                                  -&gt;make <br>
                                </div>
                                -&gt;make install<br>
                              </div>
                              =A0by following these steps an openvswitch
                              kernel=A0 module get built in <b>openvswitch-=
1.10.0/datapath/linux/openvswitch.ko</b><br>
                              <br>
                            </div>
                            <div><b>i Am using following steps to
                                cross-compile openvswitch for power pc</b><=
br>
                              <div><br>
                              </div>
                              <div>-&gt;export
PATH=3D$PATH:/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/board/tm=
p/sysroots/x86_64-linux/usr/bin/ppc64e6500-fsl_networking-linux</div>
                              <div><br>
                              </div>
                              <div>-&gt;./boot.sh=A0</div>
                              <div>
                                <br>
                              </div>
                              <div><br>
                              </div>
                              <div>-&gt;./configure --host=3Dx86
                                --target=3Dpowerpc KARCH=3Dpowerpc
                                CC=3Dpowerpc64-fsl_networking-linux-gcc
                                --with-linux=3D/home/nova/new_yocto1.4/QorI=
Q-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_netw=
orking-linux/linux-qoriq-sdk/3.8-r17.3/git/
                                =A0--enable-ssl=3Dno
                                --prefix=3D/openvswitch_utils</div>
                              <div><br>
                              </div>
                              <div><br>
                              </div>
                              <div>-&gt;make ARCH=3Dpowerpc
                                CROSS_COMPILE=3Dpowerpc-fsl_networking-linu=
x-</div>
                              <div><br>
                              </div>
                              <div>-&gt;sudo make ARCH=3Dpowerpc
                                CROSS_COMPILE=3Dpowerpc-fsl_networking-linu=
x-
                                install</div>
                              .<br>
                              .<br>
                              .<br>
                            </div>
                            <div>By following these steps an <b>openvswitch
                                kernel=A0 module get built in
                                openvswitch-2.1.2/datapath/linux/openvswitc=
h.ko
                                for powerpc arch.</b><br>
                            </div>
                            <div><br>
                            </div>
                            <b>Now i want to do the same thing using <a hre=
f=3D"http://openvswitch_2.1.2.bb" target=3D"_blank">openvswitch_1.10.0.bb</=
a>
                              file</b>.<br>
                            # Don&#39;t compile kernel modules by default
                            since it heavily depends on<br>
                            =A030 # kernel version. Use the in-kernel
                            module for now.<br>
                            =A031 # distro layers can enable with
                            EXTRA_OECONF_pn_openvswitch +=3D &quot;&quot;<b=
r>
                            =A032 # <b>EXTRA_OECONF =3D
                              &quot;--with-linux=3D${STAGING_KERNEL_DIR}
                              KARCH=3D${TARGET_ARCH}&quot;</b><br>
                            <br>
                          </div>
                          acc. to my understanding which can be achieved
                          by uncommenting this line and passing kernel
                          source directory path in <a href=3D"http://openvs=
witch_1.10.0.bb" target=3D"_blank">openvswitch_1.10.0.bb</a> =A0:<br>
                          <b>EXTRA_OECONF =3D
                            &quot;--with-linux=3D/home/nova/new_yocto1.4/Qo=
rIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_ne=
tworking-linux/linux-qoriq-sdk/3.8-r17.3/git=A0KARCH=3Dpowerpc
                            in <a href=3D"http://openvswitch_1.10.0.bb" tar=
get=3D"_blank">openvswitch_1.10.0.bb</a></b></div>
                        <div><br>
                        </div>
                        <div><b>bitbake -c compile openvswitch</b><br>
                          <br>
                        </div>
                        but it is showing error:<b>do_compile
                          failed,oe_runmake failed</b>
                        <div>and showing
                          .../git/x86/include/asm/unistd...files are
                          missing...</div>
                        <div>i am new to yocto kindly help me regarding
                          above described issue.thanks in advance.ITZ
                          URGENT.if u need to see full logs plz ask for
                          the same.<br clear=3D"all">
                          <div>
                            <div dir=3D"ltr">
                              <div>
                                <div>Regards<span><font color=3D"#888888"><=
br>
                                    </font></span></div>
                                <span><font color=3D"#888888">Pradeep
                                    Kumar<span class=3D"HOEnZb"><font color=
=3D"#888888"><br>
                                  </font></span></font></span></div><span c=
lass=3D"HOEnZb"><font color=3D"#888888">
                            </font></span></div><span class=3D"HOEnZb"><fon=
t color=3D"#888888">
                          </font></span></div><span class=3D"HOEnZb"><font =
color=3D"#888888">
                        </font></span></div><span class=3D"HOEnZb"><font co=
lor=3D"#888888">
                      </font></span></div><span class=3D"HOEnZb"><font colo=
r=3D"#888888">
                      <br>
                    </font></span></div><span class=3D"HOEnZb"><font color=
=3D"#888888">
                  </font></span></div><span class=3D"HOEnZb"><font color=3D=
"#888888">
                  <span><font color=3D"#888888">--<br>
                      _______________________________________________<br>
                      yocto mailing list<br>
                      <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_=
blank">yocto@yoctoproject.org</a><br>
                      <a href=3D"https://lists.yoctoproject.org/listinfo/yo=
cto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br=
>
                      <br>
                    </font></span></font></span></blockquote><span class=3D=
"HOEnZb"><font color=3D"#888888">
              </font></span></div><span class=3D"HOEnZb"><font color=3D"#88=
8888">
              <br>
            </font></span></div><span class=3D"HOEnZb"><font color=3D"#8888=
88">
          </font></span></blockquote><span class=3D"HOEnZb"><font color=3D"=
#888888">
        </font></span></div><span class=3D"HOEnZb"><font color=3D"#888888">
        <br>
      </font></span></div><span class=3D"HOEnZb"><font color=3D"#888888">
      <br>
      <fieldset></fieldset>
      <br>
    </font></span></blockquote>
    <br>
  </div>

</blockquote></div><br></div>

--047d7bd76fa6b4a2b404fca83538--
