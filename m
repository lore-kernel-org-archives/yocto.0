Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C9DFE00571; Tue, 24 Jun 2014 05:55:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31B43E00507
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 05:55:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s5OCtQp3009825
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 24 Jun 2014 05:55:26 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 24 Jun 2014 05:55:26 -0700
Message-ID: <53A97524.7060706@windriver.com>
Date: Tue, 24 Jun 2014 08:55:00 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Pradeep kumar <topradeepyaduvanshi@gmail.com>, Gaurang Shastri
	<gmshastri@gmail.com>
References: <CACG32bCxxVXKDHqaUaf7fNg=BWdpbe1zZoKiqVr8jFMmDUV4dQ@mail.gmail.com>	<CAE_REAuqKcAVoyppz6Uo++yuqjraBrkCH-fPFRrdFpDxQNR_ZQ@mail.gmail.com>
	<CACG32bApDDjpia7hBbw9ZNOG1awcDn_vh-42UFYqRMZtwtHv7Q@mail.gmail.com>
In-Reply-To: <CACG32bApDDjpia7hBbw9ZNOG1awcDn_vh-42UFYqRMZtwtHv7Q@mail.gmail.com>
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
X-List-Received-Date: Tue, 24 Jun 2014 12:55:47 -0000
Content-Type: multipart/alternative;
	boundary="------------040508000403060709080206"

--------------040508000403060709080206
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-06-24 06:09 AM, Pradeep kumar wrote:
> *Thanks for your reply*
> I m getting following errors after uncommenting *EXTRA_OECONF = 
> "--with-linux=${STAGING_KERNEL_DIR} KARCH=${TARGET_ARCH}"*.Sharing 
> logs with you.
> have u got the openvswitch kernel module in 
> * openvswitch-../datapath/linux/openvswitch.ko *if yes then please 
> share the changes that you have made in yocto.i need openvswitch kenel 
> module  in powerpc enviornment as i need gre support of openvswitch in 
> powerpc enviornment.
>
> .
> .
> ..
> ..
> Build Configuration:
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
> meta-virtualization = 
> "sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6f93"
> meta-fsl-networking = 
> "(nobranch):77405d17c48607551e4f095fb2f79eb0c09b8430"
> meta-oe
> meta-networking   = "sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca263616"
>
> NOTE: Resolving any missing task queue dependencies
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
> | 
> /home/kshipra/QorIQ-SDK-V1.4-20130814-*yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h: 
> In function '__arch_hweight64':*
> | 
> */home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:53:7: 
> error: expected ':' or ')' before 'POPCNT64'*

You've got something very strange happening in that kernel source
tree. Are you building for more than one target in this build directory ?

QorIQ shouldn't be getting into arch/x86/include/asm ... that isn't going
to go well for the build.

Bruce

> | In file included from 
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
> | include/linux/cache.h:64:0: note: this is the location of the 
> previous definition
> |
> | 
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:30: 
> error: 'CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in a function)
> | 
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:1: 
> error: requested alignment is not an integer constant
> | In file included from 
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
> error: requested alignment is not an integer constantIn file included 
> from 
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
> | include/linux/cache.h:64:0: note: this is the location of the 
> previous definition
> |
> | 
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:290:1: 
> error: requested alignment is not an integer constant
> | In file included from 
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,
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
> | include/asm-generic/atomic64.h:40:0: warning: 
> "atomic64_inc_not_zero" redefined [enabled by default]
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
> | include/asm-generic/atomic64.h:40:0: warning: 
> "atomic64_inc_not_zero" redefined [enabled by default]
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
> | include/linux/net.h:92:1: error: requested alignment is not an 
> integer constant
> | In file included from 
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/net.h:4:0,
> |                  from include/linux/skbuff.h:27,
> |                  from 
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
> |                  from 
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
> | include/linux/net.h:92:1: error: requested alignment is not an 
> integer constant
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
> | include/linux/mmzone.h:97:3: error: 
> 'CONFIG_X86_INTERNODE_CACHE_SHIFT' undeclared here (not in a 
> function)In file included from include/linux/gfp.h:4:0,
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
> | include/linux/mmzone.h:97:3: error: 
> 'CONFIG_X86_INTERNODE_CACHE_SHIFT' undeclared here (not in a function)
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
> | include/linux/kmalloc_sizes.h: In function 'kmalloc':In file 
> included from include/linux/slab_def.h:146:0,
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
> | include/linux/kmalloc_sizes.h:5:5: warning: 
> "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]
> | include/linux/kmalloc_sizes.h:9:5: warning: 
> "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]
> |
> | include/linux/kmalloc_sizes.h:5:5: warning: 
> "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]
> | include/linux/kmalloc_sizes.h:9:5: warning: 
> "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]
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
> | include/linux/dynamic_queue_limits.h:48:2: error: requested 
> alignment is not an integer constantIn file included from 
> include/linux/netdevice.h:40:0,
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
> | include/linux/dynamic_queue_limits.h:48:2: error: requested 
> alignment is not an integer constant
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
> | include/net/dst_ops.h:39:9: error: requested alignment is not an 
> integer constantIn file included from include/net/netns/ipv6.h:9:0,
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
> | include/net/dst_ops.h:39:9: error: requested alignment is not an 
> integer constant
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
> | include/linux/sem.h:14:5: error: requested alignment is not an 
> integer constantIn file included from include/linux/sched.h:32:0,
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
> | include/linux/sem.h:14:5: error: requested alignment is not an 
> integer constant
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
> fatal error: asm/unistd_64.h: No such file or directoryIn file 
> included from 
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
> | 
> /home/kshipra/QorIQ-SDK-V1.4-20130814-*yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/unistd.h:23:29: 
> fatal error: asm/unistd_64.h: No such file or directory*
> *| compilation terminated.*
> *| *
> *| compilation terminated.*
> | make[5]: *** 
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
> (/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/meta-virtualization/recipes-networking/openvswitch/openvswitch_1.10.0.bb 
> <http://openvswitch_1.10.0.bb>, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 493 tasks of which 488 didn't need to 
> be rerun and 1 failed.
>
> Summary: 1 task failed:
> /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/meta-virtualization/recipes-networking/openvswitch/openvswitch_1.10.0.bb 
> <http://openvswitch_1.10.0.bb>, do_compile
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> Thanks
>
>
>
> Regards
> Pradeep Kumar
>
>
> On Tue, Jun 24, 2014 at 3:01 PM, Gaurang Shastri <gmshastri@gmail.com 
> <mailto:gmshastri@gmail.com>> wrote:
>
>     Hi,
>
>     In your recipe, you just need to enable,
>
>     EXTRA_OECONF = "--with-linux=${STAGING_KERNEL_DIR}
>     KARCH=${TARGET_ARCH}"
>
>     This will build openvswitch module against your kernel source. I
>     did this and I did not find any issues and it built module against
>     my kernel.
>
>     Can you paste more logs here ??
>
>     //Gaurang Shastri
>
>
>     On Tue, Jun 24, 2014 at 2:19 PM, Pradeep kumar
>     <topradeepyaduvanshi@gmail.com
>     <mailto:topradeepyaduvanshi@gmail.com>> wrote:
>
>         *on x-86 openvswitch compiling steps are as follows:*
>         ->./boot.sh
>         ->./configure --with-linux=/lib/modules/`uname -r`/build
>         ->make
>         ->make install
>          by following these steps an openvswitch kernel  module get
>         built in *openvswitch-1.10.0/datapath/linux/openvswitch.ko*
>
>         *i Am using following steps to cross-compile openvswitch for
>         power pc*
>
>         ->export
>         PATH=$PATH:/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/board/tmp/sysroots/x86_64-linux/usr/bin/ppc64e6500-fsl_networking-linux
>
>         ->./boot.sh
>
>
>         ->./configure --host=x86 --target=powerpc KARCH=powerpc
>         CC=powerpc64-fsl_networking-linux-gcc
>         --with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git/
>          --enable-ssl=no --prefix=/openvswitch_utils
>
>
>         ->make ARCH=powerpc CROSS_COMPILE=powerpc-fsl_networking-linux-
>
>         ->sudo make ARCH=powerpc
>         CROSS_COMPILE=powerpc-fsl_networking-linux- install
>         .
>         .
>         .
>         By following these steps an *openvswitch kernel  module get
>         built in openvswitch-2.1.2/datapath/linux/openvswitch.ko for
>         powerpc arch.*
>
>         *Now i want to do the same thing using openvswitch_1.10.0.bb
>         <http://openvswitch_2.1.2.bb> file*.
>         # Don't compile kernel modules by default since it heavily
>         depends on
>          30 # kernel version. Use the in-kernel module for now.
>          31 # distro layers can enable with
>         EXTRA_OECONF_pn_openvswitch += ""
>          32 # *EXTRA_OECONF = "--with-linux=${STAGING_KERNEL_DIR}
>         KARCH=${TARGET_ARCH}"*
>
>         acc. to my understanding which can be achieved by uncommenting
>         this line and passing kernel source directory path in
>         openvswitch_1.10.0.bb <http://openvswitch_1.10.0.bb>  :
>         *EXTRA_OECONF =
>         "--with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git KARCH=powerpc
>         in openvswitch_1.10.0.bb <http://openvswitch_1.10.0.bb>*
>
>         *bitbake -c compile openvswitch*
>
>         but it is showing error:*do_compile failed,oe_runmake failed*
>         and showing .../git/x86/include/asm/unistd...files are missing...
>         i am new to yocto kindly help me regarding above described
>         issue.thanks in advance.ITZ URGENT.if u need to see full logs
>         plz ask for the same.
>         Regards
>         Pradeep Kumar
>
>         --
>         _______________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>


--------------040508000403060709080206
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 14-06-24 06:09 AM, Pradeep kumar
      wrote:<br>
    </div>
    <blockquote
cite="mid:CACG32bApDDjpia7hBbw9ZNOG1awcDn_vh-42UFYqRMZtwtHv7Q@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <div dir="ltr">
        <div><b>Thanks for your reply</b></div>
        I m getting following errors after uncommenting&nbsp;<b><span
            style="color:rgb(80,0,80);font-family:arial,sans-serif;font-size:13px">EXTRA_OECONF
            = "--with-linux=${STAGING_</span><span
            style="color:rgb(80,0,80);font-family:arial,sans-serif;font-size:13px">KERNEL_DIR}
            KARCH=${TARGET_ARCH}"</span></b>.Sharing logs with you.
        <div>
          have u got the openvswitch kernel module in&nbsp;<b
            style="font-size:13px;font-family:arial,sans-serif">&nbsp;openvswitch-../datapath/linux/openvswitch.ko
          </b><span style="font-size:13px;font-family:arial,sans-serif">if
            yes then please share the changes that you have made in
            yocto.i need openvswitch kenel module &nbsp;in powerpc
            enviornment as i need gre support of openvswitch in powerpc
            enviornment.</span></div>
        <div><span style="font-size:13px;font-family:arial,sans-serif"><br>
          </span></div>
        <div><span style="font-size:13px;font-family:arial,sans-serif">.</span></div>
        <div><span style="font-size:13px;font-family:arial,sans-serif">.</span></div>
        <div><span style="font-size:13px;font-family:arial,sans-serif">..</span></div>
        <div><span style="font-size:13px;font-family:arial,sans-serif">..</span></div>
        <div>
          <div><font face="arial, sans-serif">Build Configuration:</font></div>
          <div><font face="arial, sans-serif">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=
              "1.18.0"</font></div>
          <div><font face="arial, sans-serif">BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; =
              "i686-linux"</font></div>
          <div><font face="arial, sans-serif">NATIVELSBSTRING &nbsp; =
              "Ubuntu-13.04"</font></div>
          <div><font face="arial, sans-serif">TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;=
              "powerpc-fsl_networking-linux"</font></div>
          <div><font face="arial, sans-serif">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
              "p2041rdb"</font></div>
          <div><font face="arial, sans-serif">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
              "fsl-networking"</font></div>
          <div><font face="arial, sans-serif">DISTRO_VERSION &nbsp; &nbsp;= "1.4"</font></div>
          <div><font face="arial, sans-serif">TUNE_FEATURES &nbsp; &nbsp; = "m32
              fpu-hard ppce500mc"</font></div>
          <div><font face="arial, sans-serif">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;= "hard"</font></div>
          <div><font face="arial, sans-serif">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div>
          <div><font face="arial, sans-serif">meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;</font></div>
          <div><font face="arial, sans-serif">meta-yocto-bsp &nbsp; &nbsp;=
              "sdk-v1.4.x:16bfcaa96c074aac0a1f66d33b45fb33ba559325"</font></div>
          <div><font face="arial, sans-serif">meta-fsl-ppc &nbsp; &nbsp; &nbsp;=
              "sdk-v1.4.x:324b1cb7fadce0bbf145b922ce2e1d9af9ba223b"</font></div>
          <div><font face="arial, sans-serif">meta-fsl-ppc-toolchain =
              "sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034d723"</font></div>
          <div><font face="arial, sans-serif">meta-virtualization =
              "sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6f93"</font></div>
          <div><font face="arial, sans-serif">meta-fsl-networking =
              "(nobranch):77405d17c48607551e4f095fb2f79eb0c09b8430"</font></div>
          <div><font face="arial, sans-serif">meta-oe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div>
          <div><font face="arial, sans-serif">meta-networking &nbsp; =
              "sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca263616"</font></div>
          <div><font face="arial, sans-serif"><br>
            </font></div>
          <div><font face="arial, sans-serif">NOTE: Resolving any
              missing task queue dependencies</font></div>
          <div><font face="arial, sans-serif">NOTE: Preparing runqueue</font></div>
          <div><font face="arial, sans-serif">NOTE: Executing SetScene
              Tasks</font></div>
          <div><font face="arial, sans-serif">NOTE: Executing RunQueue
              Tasks</font></div>
          <div><font face="arial, sans-serif">ERROR: Function failed:
              do_compile (see
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/log.do_compile.12994
              for further information)</font></div>
          <div><font face="arial, sans-serif">ERROR: Logfile of failure
              stored in:
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/log.do_compile.12994</font></div>
          <div><font face="arial, sans-serif">Log data follows:</font></div>
          <div><font face="arial, sans-serif">| DEBUG: SITE files
              ['endian-big', 'bit-32', 'powerpc-common', 'common-linux',
              'common-glibc', 'powerpc32-linux', 'powerpc-linux',
              'common']</font></div>
          <div><font face="arial, sans-serif">| DEBUG: Executing shell
              function do_compile</font></div>
          <div><font face="arial, sans-serif">| NOTE: make -j 2</font></div>
          <div><font face="arial, sans-serif">| make &nbsp;all-recursive</font></div>
          <div><font face="arial, sans-serif">| make[1]: Entering
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0'</font></div>
          <div><font face="arial, sans-serif">| Making all in datapath</font></div>
          <div><font face="arial, sans-serif">| make[2]: Entering
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath'</font></div>
          <div><font face="arial, sans-serif">| Making all in linux</font></div>
          <div><font face="arial, sans-serif">| make[3]: Entering
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux'</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../actions.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../checksum.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../datapath.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../dp_notify.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../flow.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../genl_exec.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../tunnel.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vlan.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-gre.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-internal_dev.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-netdev.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-vxlan.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/addrconf_core-openvswitch.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/dev-openvswitch.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/exthdrs_core.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/flex_array.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/genetlink-openvswitch.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/ip_output-openvswitch.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/kmemdup.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/netdevice.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/net_namespace.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/reciprocal_div.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/skbuff-openvswitch.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/time.c</font></div>
          <div><font face="arial, sans-serif">| ln -s
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/workqueue.c</font></div>
          <div><font face="arial, sans-serif">| make -C
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel
              M=/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux
              modules</font></div>
          <div><font face="arial, sans-serif">| make[4]: Entering
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel'</font></div>
          <div><font face="arial, sans-serif">| &nbsp; CC [M]
&nbsp;/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.o</font></div>
          <div><font face="arial, sans-serif">| &nbsp; CC [M]
&nbsp;/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.o</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/bitops.h:512:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/bitops.h:22,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kernel.h:10,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/kernel.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:17,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-<b>yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:
                In function '__arch_hweight64':</b></font></div>
          <div><font face="arial, sans-serif">| <b>/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:53:7:
                error: expected ':' or ')' before 'POPCNT64'</b></font></div>
        </div>
      </div>
    </blockquote>
    <br>
    You've got something very strange happening in that kernel source<br>
    tree. Are you building for more than one target in this build
    directory ?<br>
    <br>
    QorIQ shouldn't be getting into arch/x86/include/asm ... that isn't
    going<br>
    to go well for the build.<br>
    <br>
    Bruce<br>
    <br>
    <blockquote
cite="mid:CACG32bApDDjpia7hBbw9ZNOG1awcDn_vh-42UFYqRMZtwtHv7Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/bitops.h:512:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/bitops.h:22,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kernel.h:10,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/kernel.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:17,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:
              In function '__arch_hweight64':</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:53:7:
              error: expected ':' or ')' before 'POPCNT64'</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,</font></div>
          <div>
            <font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:
              At top level:In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:
              At top level:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:30:
              error: 'CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in
              a function)</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:159:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:177:0:
              warning: "cache_line_size" redefined [enabled by default]</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:27:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/cache.h:64:0: note: this is the location of
              the previous definition</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:30:
              error: 'CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in
              a function)</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,</font></div>
          <div>
            <font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:257:1:
              error: requested alignment is not an integer
              constant/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:159:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:177:0:
              warning: "cache_line_size" redefined [enabled by default]</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:288:1:
              error: requested alignment is not an integer constantIn
              file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:27:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/cache.h:64:0: note: this is the location of
              the previous definition</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:290:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,</font></div>
          <div>
            <font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:257:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:288:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:290:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/atomic.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:1:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
              In function 'atomic64_read':</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:21:32:
              error: request for member 'counter' in something not a
              structure or union</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
              At top level:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:31:33:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:43:41:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:57:41:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:73:49:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:89:33:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:102:33:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:117:41:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:135:41:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/atomic.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:1:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
              In function 'atomic64_read':</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:21:32:
              error: request for member 'counter' in something not a
              structure or union</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
              At top level:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:31:33:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:43:41:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:57:41:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:73:49:
              error: unknown type name
              'atomic64_t'/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:154:49:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:89:33:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:102:33:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:171:48:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:117:41:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:176:48:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:184:37:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:135:41:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:189:34:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:154:49:
              error: unknown type name
              'atomic64_t'/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:203:39:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:227:45:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:171:48:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:176:48:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:184:37:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:189:34:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:203:39:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:227:45:
              error: unknown type name 'atomic64_t'</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              include/asm-generic/atomic64.h:21:18: error: conflicting
              types for 'atomic64_read'</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/atomic.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:20:
              note: previous definition of 'atomic64_read' was here</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              include/asm-generic/atomic64.h:21:18: error: conflicting
              types for 'atomic64_read'</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              include/asm-generic/atomic64.h:34:0: warning:
              "atomic64_inc_return" redefined [enabled by default]In
              file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/atomic.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:20:
              note: previous definition of 'atomic64_read' was here</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              include/asm-generic/atomic64.h:34:0: warning:
              "atomic64_inc_return" redefined [enabled by default]</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/atomic.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:181:0:
              note: this is the location of the previous definition</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              include/asm-generic/atomic64.h:38:0: warning:
              "atomic64_dec_return" redefined [enabled by default]</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/atomic.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:182:0:
              note: this is the location of the previous definition</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              include/asm-generic/atomic64.h:40:0: warning:
              "atomic64_inc_not_zero" redefined [enabled by default]</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/atomic.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:218:0:
              note: this is the location of the previous definition</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/atomic.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:181:0:
              note: this is the location of the previous definition</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              include/asm-generic/atomic64.h:38:0: warning:
              "atomic64_dec_return" redefined [enabled by default]</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/atomic.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:182:0:
              note: this is the location of the previous definition</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/atomic.h:129:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              include/asm-generic/atomic64.h:40:0: warning:
              "atomic64_inc_not_zero" redefined [enabled by default]</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/atomic.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/thread_info.h:54,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/preempt.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/spinlock.h:50,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/mm_types.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/kmemcheck.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:18,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:218:0:
              note: this is the location of the previous definition</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/net.h:4:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:27,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/net.h:92:1: error: requested alignment is
              not an integer constant</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/net.h:4:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:27,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/net.h:92:1: error: requested alignment is
              not an integer constant</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/gfp.h:4:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/slab.h:12,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/textsearch.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:28,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/mmzone.h:97:3: error:
              'CONFIG_X86_INTERNODE_CACHE_SHIFT' undeclared here (not in
              a function)In file included from include/linux/gfp.h:4:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/slab.h:12,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/textsearch.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:28,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/mmzone.h:97:3: error:
              'CONFIG_X86_INTERNODE_CACHE_SHIFT' undeclared here (not in
              a function)</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/mmzone.h:97:1: error: requested alignment is
              not an integer constant</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/mmzone.h:97:1: error: requested alignment is
              not an integer constant</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/mmzone.h:506:1: error: requested alignment
              is not an integer constant</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/mmzone.h:506:1: error: requested alignment
              is not an integer constant</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/slab_def.h:146:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/slab.h:260,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/textsearch.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:28,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/kmalloc_sizes.h: In function 'kmalloc':In
              file included from include/linux/slab_def.h:146:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/slab.h:260,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/textsearch.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/skbuff.h:28,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/ip.h:20,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/kmalloc_sizes.h: In function 'kmalloc':</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/kmalloc_sizes.h:5:5: warning:
              "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/kmalloc_sizes.h:9:5: warning:
              "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/kmalloc_sizes.h:5:5: warning:
              "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/kmalloc_sizes.h:9:5: warning:
              "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/irq.h:356:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:5,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/hardirq.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:43,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:</font></div>
          <div><font face="arial, sans-serif">| include/linux/irqdesc.h:
              At top level:In file included from
              include/linux/irq.h:356:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:5,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/hardirq.h:8,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:43,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:</font></div>
          <div><font face="arial, sans-serif">| include/linux/irqdesc.h:
              At top level:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/irqdesc.h:74:1: error: requested alignment
              is not an integer constant</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/irqdesc.h:74:1: error: requested alignment
              is not an integer constant</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/hardirq.h:8:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:43,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:33:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:35:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/hardirq.h:8:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:43,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:33:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:35:1:
              error: requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/netdevice.h:40:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:51,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/dynamic_queue_limits.h:48:2: error:
              requested alignment is not an integer constantIn file
              included from include/linux/netdevice.h:40:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:51,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/dynamic_queue_limits.h:48:2: error:
              requested alignment is not an integer constant</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/net/netns/ipv6.h:9:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/net_namespace.h:17,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/netdevice.h:43,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:51,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:</font></div>
          <div><font face="arial, sans-serif">|
              include/net/dst_ops.h:39:9: error: requested alignment is
              not an integer constantIn file included from
              include/net/netns/ipv6.h:9:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/net_namespace.h:17,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/netdevice.h:43,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:51,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:</font></div>
          <div><font face="arial, sans-serif">|
              include/net/dst_ops.h:39:9: error: requested alignment is
              not an integer constant</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">| In file included from
              include/linux/sched.h:32:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/net_namespace.h:139,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/netdevice.h:43,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:51,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/sem.h:14:5: error: requested alignment is
              not an integer constantIn file included from
              include/linux/sched.h:32:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/net_namespace.h:139,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/netdevice.h:43,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:51,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:</font></div>
          <div><font face="arial, sans-serif">|
              include/linux/sem.h:14:5: error: requested alignment is
              not an integer constant</font></div>
          <div><font face="arial, sans-serif">|&nbsp;</font></div>
          <div><font face="arial, sans-serif">| In file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/include/uapi/linux/unistd.h:7:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp_64.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/seccomp.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/sched.h:40,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/net_namespace.h:139,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/netdevice.h:43,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:51,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/unistd.h:23:29:
              fatal error: asm/unistd_64.h: No such file or directoryIn
              file included from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/include/uapi/linux/unistd.h:7:0,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp_64.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/seccomp.h:9,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/sched.h:40,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/net_namespace.h:139,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/netdevice.h:43,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/net/sock.h:51,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
              include/linux/tcp.h:23,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,</font></div>
          <div><font face="arial, sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:</font></div>
          <div><font face="arial, sans-serif">|
              /home/kshipra/QorIQ-SDK-V1.4-20130814-<b>yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/unistd.h:23:29:
                fatal error: asm/unistd_64.h: No such file or directory</b></font></div>
          <div><font face="arial, sans-serif"><b>| compilation
                terminated.</b></font></div>
          <div><font face="arial, sans-serif"><b>|&nbsp;</b></font></div>
          <div><font face="arial, sans-serif"><b>| compilation
                terminated.</b></font></div>
          <div>
            <font face="arial, sans-serif">| make[5]: ***
              [/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.o]
              Error 1</font></div>
          <div><font face="arial, sans-serif">| make[5]: *** Waiting for
              unfinished jobs....</font></div>
          <div><font face="arial, sans-serif">| make[5]: ***
              [/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.o]
              Error 1</font></div>
          <div><font face="arial, sans-serif">| make[4]: ***
              [_module_/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux]
              Error 2</font></div>
          <div><font face="arial, sans-serif">| make[4]: Leaving
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel'</font></div>
          <div><font face="arial, sans-serif">| make[3]: *** [default]
              Error 2</font></div>
          <div><font face="arial, sans-serif">| make[3]: Leaving
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux'</font></div>
          <div><font face="arial, sans-serif">| make[2]: ***
              [all-recursive] Error 1</font></div>
          <div><font face="arial, sans-serif">| make[2]: Leaving
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath'</font></div>
          <div><font face="arial, sans-serif">| make[1]: ***
              [all-recursive] Error 1</font></div>
          <div><font face="arial, sans-serif">| make[1]: Leaving
              directory
`/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0'</font></div>
          <div><font face="arial, sans-serif">| make: *** [all] Error 2</font></div>
          <div><font face="arial, sans-serif">| ERROR: oe_runmake failed</font></div>
          <div><font face="arial, sans-serif">| ERROR: Function failed:
              do_compile (see
              /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/log.do_compile.12994
              for further information)</font></div>
          <div><font face="arial, sans-serif">ERROR: Task 4
(/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/meta-virtualization/recipes-networking/openvswitch/<a
                moz-do-not-send="true"
                href="http://openvswitch_1.10.0.bb">openvswitch_1.10.0.bb</a>,
              do_compile) failed with exit code '1'</font></div>
          <div><font face="arial, sans-serif">NOTE: Tasks Summary:
              Attempted 493 tasks of which 488 didn't need to be rerun
              and 1 failed.</font></div>
          <div><font face="arial, sans-serif"><br>
            </font></div>
          <div><font face="arial, sans-serif">Summary: 1 task failed:</font></div>
          <div><font face="arial, sans-serif">&nbsp;
/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/meta-virtualization/recipes-networking/openvswitch/<a
                moz-do-not-send="true"
                href="http://openvswitch_1.10.0.bb">openvswitch_1.10.0.bb</a>,
              do_compile</font></div>
          <div><font face="arial, sans-serif">Summary: There was 1 ERROR
              message shown, returning a non-zero exit code.</font></div>
          <div style="font-family:arial,sans-serif;font-size:13px"><br>
          </div>
          <div style="font-family:arial,sans-serif;font-size:13px">
            Thanks</div>
        </div>
        <div><span style="font-size:13px;font-family:arial,sans-serif"><br>
          </span></div>
        <div><span style="font-size:13px;font-family:arial,sans-serif"><br>
          </span></div>
      </div>
      <div class="gmail_extra"><br clear="all">
        <div>
          <div dir="ltr">
            <div>
              <div>Regards<br>
              </div>
              Pradeep Kumar<br>
            </div>
          </div>
        </div>
        <br>
        <br>
        <div class="gmail_quote">On Tue, Jun 24, 2014 at 3:01 PM,
          Gaurang Shastri <span dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:gmshastri@gmail.com" target="_blank">gmshastri@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div dir="ltr">Hi,
              <div><br>
              </div>
              <div>In your recipe, you just need to enable,</div>
              <div class="">
                <div><br>
                </div>
                <div>EXTRA_OECONF = "--with-linux=${STAGING_KERNEL_DIR}
                  KARCH=${TARGET_ARCH}"<br>
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
            <div class="gmail_extra"><br>
              <br>
              <div class="gmail_quote">
                <div>
                  <div class="h5">On Tue, Jun 24, 2014 at 2:19 PM,
                    Pradeep kumar <span dir="ltr">&lt;<a
                        moz-do-not-send="true"
                        href="mailto:topradeepyaduvanshi@gmail.com"
                        target="_blank">topradeepyaduvanshi@gmail.com</a>&gt;</span>
                    wrote:<br>
                  </div>
                </div>
                <blockquote class="gmail_quote" style="margin:0 0 0
                  .8ex;border-left:1px #ccc solid;padding-left:1ex">
                  <div>
                    <div class="h5">
                      <div dir="ltr">
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
                                    --with-linux=/lib/modules/`uname
                                    -r`/build<br>
                                  </div>
                                  -&gt;make <br>
                                </div>
                                -&gt;make install<br>
                              </div>
                              &nbsp;by following these steps an openvswitch
                              kernel&nbsp; module get built in <b>openvswitch-1.10.0/datapath/linux/openvswitch.ko</b><br>
                              <br>
                            </div>
                            <div><b>i Am using following steps to
                                cross-compile openvswitch for power pc</b><br>
                              <div><br>
                              </div>
                              <div>-&gt;export
PATH=$PATH:/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/board/tmp/sysroots/x86_64-linux/usr/bin/ppc64e6500-fsl_networking-linux</div>
                              <div><br>
                              </div>
                              <div>-&gt;./boot.sh&nbsp;</div>
                              <div>
                                <br>
                              </div>
                              <div><br>
                              </div>
                              <div>-&gt;./configure --host=x86
                                --target=powerpc KARCH=powerpc
                                CC=powerpc64-fsl_networking-linux-gcc
                                --with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git/
                                &nbsp;--enable-ssl=no
                                --prefix=/openvswitch_utils</div>
                              <div><br>
                              </div>
                              <div><br>
                              </div>
                              <div>-&gt;make ARCH=powerpc
                                CROSS_COMPILE=powerpc-fsl_networking-linux-</div>
                              <div><br>
                              </div>
                              <div>-&gt;sudo make ARCH=powerpc
                                CROSS_COMPILE=powerpc-fsl_networking-linux-
                                install</div>
                              .<br>
                              .<br>
                              .<br>
                            </div>
                            <div>By following these steps an <b>openvswitch
                                kernel&nbsp; module get built in
                                openvswitch-2.1.2/datapath/linux/openvswitch.ko
                                for powerpc arch.</b><br>
                            </div>
                            <div><br>
                            </div>
                            <b>Now i want to do the same thing using <a
                                moz-do-not-send="true"
                                href="http://openvswitch_2.1.2.bb"
                                target="_blank">openvswitch_1.10.0.bb</a>
                              file</b>.<br>
                            # Don't compile kernel modules by default
                            since it heavily depends on<br>
                            &nbsp;30 # kernel version. Use the in-kernel
                            module for now.<br>
                            &nbsp;31 # distro layers can enable with
                            EXTRA_OECONF_pn_openvswitch += ""<br>
                            &nbsp;32 # <b>EXTRA_OECONF =
                              "--with-linux=${STAGING_KERNEL_DIR}
                              KARCH=${TARGET_ARCH}"</b><br>
                            <br>
                          </div>
                          acc. to my understanding which can be achieved
                          by uncommenting this line and passing kernel
                          source directory path in <a
                            moz-do-not-send="true"
                            href="http://openvswitch_1.10.0.bb"
                            target="_blank">openvswitch_1.10.0.bb</a> &nbsp;:<br>
                          <b>EXTRA_OECONF =
                            "--with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git&nbsp;KARCH=powerpc
                            in <a moz-do-not-send="true"
                              href="http://openvswitch_1.10.0.bb"
                              target="_blank">openvswitch_1.10.0.bb</a></b></div>
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
                          the same.<br clear="all">
                          <div>
                            <div dir="ltr">
                              <div>
                                <div>Regards<span><font color="#888888"><br>
                                    </font></span></div>
                                <span><font color="#888888">Pradeep
                                    Kumar<br>
                                  </font></span></div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <br>
                    </div>
                  </div>
                  <span class="HOEnZb"><font color="#888888">--<br>
                      _______________________________________________<br>
                      yocto mailing list<br>
                      <a moz-do-not-send="true"
                        href="mailto:yocto@yoctoproject.org"
                        target="_blank">yocto@yoctoproject.org</a><br>
                      <a moz-do-not-send="true"
                        href="https://lists.yoctoproject.org/listinfo/yocto"
                        target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
                      <br>
                    </font></span></blockquote>
              </div>
              <br>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------040508000403060709080206--
