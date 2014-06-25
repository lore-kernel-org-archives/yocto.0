Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2B9DE00509; Wed, 25 Jun 2014 06:36:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC7A9E00509
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 06:36:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5PDagxw001762
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Jun 2014 06:36:42 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 25 Jun 2014 06:36:41 -0700
Message-ID: <53AAD04F.5080602@windriver.com>
Date: Wed, 25 Jun 2014 09:36:15 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Pradeep kumar <topradeepyaduvanshi@gmail.com>
References: <CACG32bCxxVXKDHqaUaf7fNg=BWdpbe1zZoKiqVr8jFMmDUV4dQ@mail.gmail.com>	<CAE_REAuqKcAVoyppz6Uo++yuqjraBrkCH-fPFRrdFpDxQNR_ZQ@mail.gmail.com>	<CACG32bApDDjpia7hBbw9ZNOG1awcDn_vh-42UFYqRMZtwtHv7Q@mail.gmail.com>	<53A97524.7060706@windriver.com>
	<CACG32bDV-buNo0foGrkipD6WEhser9M_-Dg5sc=t3SnrxuKHhg@mail.gmail.com>
In-Reply-To: <CACG32bDV-buNo0foGrkipD6WEhser9M_-Dg5sc=t3SnrxuKHhg@mail.gmail.com>
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
X-List-Received-Date: Wed, 25 Jun 2014 13:36:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-06-25 08:28 AM, Pradeep kumar wrote:
> sorry for late reply i am building for single target in the build directory.
> i am using yocto on 64-bit system.should i use 32-bit system,please do
> suggest some steps to fix this issue.

A 64 bit system should work fine, it's pretty much what everyone is using
for builds.

As for suggestions, I'd suggest dumping the bitbake environment when
building openvswtich (bitbake -e) and having a look at the output. You
are clearly getting x86 includes in your powerpc module build .. and that
isn't going to work so well. So it is worth seeing if you can see that
the kernel arch, or something similar isn't being set properly.

Bruce

> i am able to crosscompile for powerpc succesfully.
>
>
> Regards
> Pradeep Kumar
>
>
> On Tue, Jun 24, 2014 at 6:25 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>     On 14-06-24 06:09 AM, Pradeep kumar wrote:
>>     *Thanks for your reply*
>>     I m getting following errors after uncommenting *EXTRA_OECONF =
>>     "--with-linux=${STAGING_KERNEL_DIR} KARCH=${TARGET_ARCH}"*.Sharing
>>     logs with you.
>>     have u got the openvswitch kernel module in
>>     * openvswitch-../datapath/linux/openvswitch.ko *if yes then please
>>     share the changes that you have made in yocto.i need openvswitch
>>     kenel module  in powerpc enviornment as i need gre support of
>>     openvswitch in powerpc enviornment.
>>
>>     .
>>     .
>>     ..
>>     ..
>>     Build Configuration:
>>     BB_VERSION        = "1.18.0"
>>     BUILD_SYS         = "i686-linux"
>>     NATIVELSBSTRING   = "Ubuntu-13.04"
>>     TARGET_SYS        = "powerpc-fsl_networking-linux"
>>     MACHINE           = "p2041rdb"
>>     DISTRO            = "fsl-networking"
>>     DISTRO_VERSION    = "1.4"
>>     TUNE_FEATURES     = "m32 fpu-hard ppce500mc"
>>     TARGET_FPU        = "hard"
>>     meta
>>     meta-yocto
>>     meta-yocto-bsp    =
>>     "sdk-v1.4.x:16bfcaa96c074aac0a1f66d33b45fb33ba559325"
>>     meta-fsl-ppc      =
>>     "sdk-v1.4.x:324b1cb7fadce0bbf145b922ce2e1d9af9ba223b"
>>     meta-fsl-ppc-toolchain =
>>     "sdk-v1.4.x:8ec94cec04527cb971c125b1ddd2c5375034d723"
>>     meta-virtualization =
>>     "sdk-v1.4.x:ad6df4f59cd7646f61db29e8fa51f878329d6f93"
>>     meta-fsl-networking =
>>     "(nobranch):77405d17c48607551e4f095fb2f79eb0c09b8430"
>>     meta-oe
>>     meta-networking   =
>>     "sdk-v1.4.x:7c8dd8f096b64a709175d37a08a4fb02ca263616"
>>
>>     NOTE: Resolving any missing task queue dependencies
>>     NOTE: Preparing runqueue
>>     NOTE: Executing SetScene Tasks
>>     NOTE: Executing RunQueue Tasks
>>     ERROR: Function failed: do_compile (see
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/log.do_compile.12994
>>     for further information)
>>     ERROR: Logfile of failure stored in:
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/log.do_compile.12994
>>     Log data follows:
>>     | DEBUG: SITE files ['endian-big', 'bit-32', 'powerpc-common',
>>     'common-linux', 'common-glibc', 'powerpc32-linux',
>>     'powerpc-linux', 'common']
>>     | DEBUG: Executing shell function do_compile
>>     | NOTE: make -j 2
>>     | make  all-recursive
>>     | make[1]: Entering directory
>>     `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0'
>>     | Making all in datapath
>>     | make[2]: Entering directory
>>     `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath'
>>     | Making all in linux
>>     | make[3]: Entering directory
>>     `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux'
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../actions.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../checksum.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../datapath.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../dp_notify.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../flow.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../genl_exec.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../tunnel.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vlan.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-gre.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-internal_dev.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-netdev.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../vport-vxlan.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/addrconf_core-openvswitch.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/dev-openvswitch.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/exthdrs_core.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/flex_array.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/genetlink-openvswitch.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/ip_output-openvswitch.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/kmemdup.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/netdevice.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/net_namespace.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/reciprocal_div.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/skbuff-openvswitch.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/time.c
>>     | ln -s
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/../linux/compat/workqueue.c
>>     | make -C
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel
>>     M=/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux
>>     modules
>>     | make[4]: Entering directory
>>     `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel'
>>     |   CC [M]
>>      /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.o
>>     |   CC [M]
>>      /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.o
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/bitops.h:512:0,
>>     |                  from include/linux/bitops.h:22,
>>     |                  from include/linux/kernel.h:10,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/kernel.h:4,
>>     |                  from include/linux/skbuff.h:17,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-*yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:
>>     In function '__arch_hweight64':*
>>     |
>>     */home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:53:7:
>>     error: expected ':' or ')' before 'POPCNT64'*
>
>     You've got something very strange happening in that kernel source
>     tree. Are you building for more than one target in this build
>     directory ?
>
>     QorIQ shouldn't be getting into arch/x86/include/asm ... that isn't
>     going
>     to go well for the build.
>
>     Bruce
>
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/bitops.h:512:0,
>>     |                  from include/linux/bitops.h:22,
>>     |                  from include/linux/kernel.h:10,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/kernel.h:4,
>>     |                  from include/linux/skbuff.h:17,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:
>>     In function '__arch_hweight64':
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/arch_hweight.h:53:7:
>>     error: expected ':' or ')' before 'POPCNT64'
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:
>>     At top level:In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:
>>     At top level:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:30:
>>     error: 'CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in a function)
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:1:
>>     error: requested alignment is not an integer constant
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:159:1:
>>     error: requested alignment is not an integer constant
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:177:0:
>>     warning: "cache_line_size" redefined [enabled by default]
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:27:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     | include/linux/cache.h:64:0: note: this is the location of the
>>     previous definition
>>     |
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:30:
>>     error: 'CONFIG_X86_L1_CACHE_SHIFT' undeclared here (not in a function)
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:135:1:
>>     error: requested alignment is not an integer constant
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:257:1:
>>     error: requested alignment is not an integer
>>     constant/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:159:1:
>>     error: requested alignment is not an integer constant
>>     |
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:177:0:
>>     warning: "cache_line_size" redefined [enabled by default]
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:288:1:
>>     error: requested alignment is not an integer constantIn file
>>     included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:27:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     | include/linux/cache.h:64:0: note: this is the location of the
>>     previous definition
>>     |
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:290:1:
>>     error: requested alignment is not an integer constant
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:22:0,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:257:1:
>>     error: requested alignment is not an integer constant
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:288:1:
>>     error: requested alignment is not an integer constant
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/processor.h:290:1:
>>     error: requested alignment is not an integer constant
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
>>     |                  from include/linux/atomic.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:1:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
>>     In function 'atomic64_read':
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:21:32:
>>     error: request for member 'counter' in something not a structure
>>     or union
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
>>     At top level:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:31:33:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:43:41:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:57:41:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:73:49:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:89:33:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:102:33:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:117:41:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:135:41:
>>     error: unknown type name 'atomic64_t'
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
>>     |                  from include/linux/atomic.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:1:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
>>     In function 'atomic64_read':
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:21:32:
>>     error: request for member 'counter' in something not a structure
>>     or union
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:
>>     At top level:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:31:33:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:43:41:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:57:41:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:73:49:
>>     error: unknown type name
>>     'atomic64_t'/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:154:49:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:89:33:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:102:33:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:171:48:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:117:41:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:176:48:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:184:37:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:135:41:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:189:34:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:154:49:
>>     error: unknown type name
>>     'atomic64_t'/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:203:39:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:227:45:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:171:48:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:176:48:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:184:37:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:189:34:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:203:39:
>>     error: unknown type name 'atomic64_t'
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:227:45:
>>     error: unknown type name 'atomic64_t'
>>     | In file included from include/linux/atomic.h:129:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     | include/asm-generic/atomic64.h:21:18: error: conflicting types
>>     for 'atomic64_read'
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
>>     |                  from include/linux/atomic.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:20:
>>     note: previous definition of 'atomic64_read' was here
>>     | In file included from include/linux/atomic.h:129:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     | include/asm-generic/atomic64.h:21:18: error: conflicting types
>>     for 'atomic64_read'
>>     | In file included from include/linux/atomic.h:129:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     | include/asm-generic/atomic64.h:34:0: warning:
>>     "atomic64_inc_return" redefined [enabled by default]In file
>>     included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
>>     |                  from include/linux/atomic.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:19:20:
>>     note: previous definition of 'atomic64_read' was here
>>     |
>>     | In file included from include/linux/atomic.h:129:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     | include/asm-generic/atomic64.h:34:0: warning:
>>     "atomic64_inc_return" redefined [enabled by default]
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
>>     |                  from include/linux/atomic.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:181:0:
>>     note: this is the location of the previous definition
>>     | In file included from include/linux/atomic.h:129:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     | include/asm-generic/atomic64.h:38:0: warning:
>>     "atomic64_dec_return" redefined [enabled by default]
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
>>     |                  from include/linux/atomic.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:182:0:
>>     note: this is the location of the previous definition
>>     | In file included from include/linux/atomic.h:129:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     | include/asm-generic/atomic64.h:40:0: warning:
>>     "atomic64_inc_not_zero" redefined [enabled by default]
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
>>     |                  from include/linux/atomic.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:218:0:
>>     note: this is the location of the previous definition
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
>>     |                  from include/linux/atomic.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:181:0:
>>     note: this is the location of the previous definition
>>     | In file included from include/linux/atomic.h:129:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     | include/asm-generic/atomic64.h:38:0: warning:
>>     "atomic64_dec_return" redefined [enabled by default]
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
>>     |                  from include/linux/atomic.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:182:0:
>>     note: this is the location of the previous definition
>>     | In file included from include/linux/atomic.h:129:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     | include/asm-generic/atomic64.h:40:0: warning:
>>     "atomic64_inc_not_zero" redefined [enabled by default]
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic.h:274:0,
>>     |                  from include/linux/atomic.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/thread_info.h:24,
>>     |                  from include/linux/thread_info.h:54,
>>     |                  from include/linux/preempt.h:9,
>>     |                  from include/linux/spinlock.h:50,
>>     |                  from include/linux/mm_types.h:8,
>>     |                  from include/linux/kmemcheck.h:4,
>>     |                  from include/linux/skbuff.h:18,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/atomic64_64.h:218:0:
>>     note: this is the location of the previous definition
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/net.h:4:0,
>>     |                  from include/linux/skbuff.h:27,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     | include/linux/net.h:92:1: error: requested alignment is not an
>>     integer constant
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/net.h:4:0,
>>     |                  from include/linux/skbuff.h:27,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     | include/linux/net.h:92:1: error: requested alignment is not an
>>     integer constant
>>     | In file included from include/linux/gfp.h:4:0,
>>     |                  from include/linux/slab.h:12,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,
>>     |                  from include/linux/textsearch.h:8,
>>     |                  from include/linux/skbuff.h:28,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     | include/linux/mmzone.h:97:3: error:
>>     'CONFIG_X86_INTERNODE_CACHE_SHIFT' undeclared here (not in a
>>     function)In file included from include/linux/gfp.h:4:0,
>>     |                  from include/linux/slab.h:12,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,
>>     |                  from include/linux/textsearch.h:8,
>>     |                  from include/linux/skbuff.h:28,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     | include/linux/mmzone.h:97:3: error:
>>     'CONFIG_X86_INTERNODE_CACHE_SHIFT' undeclared here (not in a function)
>>     | include/linux/mmzone.h:97:1: error: requested alignment is not
>>     an integer constant
>>     |
>>     | include/linux/mmzone.h:97:1: error: requested alignment is not
>>     an integer constant
>>     | include/linux/mmzone.h:506:1: error: requested alignment is not
>>     an integer constant
>>     | include/linux/mmzone.h:506:1: error: requested alignment is not
>>     an integer constant
>>     | In file included from include/linux/slab_def.h:146:0,
>>     |                  from include/linux/slab.h:260,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,
>>     |                  from include/linux/textsearch.h:8,
>>     |                  from include/linux/skbuff.h:28,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:21:
>>     | include/linux/kmalloc_sizes.h: In function 'kmalloc':In file
>>     included from include/linux/slab_def.h:146:0,
>>     |                  from include/linux/slab.h:260,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/slab.h:4,
>>     |                  from include/linux/textsearch.h:8,
>>     |                  from include/linux/skbuff.h:28,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/skbuff.h:4,
>>     |                  from include/linux/ip.h:20,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/ip.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:22:
>>     | include/linux/kmalloc_sizes.h: In function 'kmalloc':
>>     | include/linux/kmalloc_sizes.h:5:5: warning:
>>     "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]
>>     | include/linux/kmalloc_sizes.h:9:5: warning:
>>     "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]
>>     |
>>     | include/linux/kmalloc_sizes.h:5:5: warning:
>>     "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]
>>     | include/linux/kmalloc_sizes.h:9:5: warning:
>>     "CONFIG_X86_L1_CACHE_SHIFT" is not defined [-Wundef]
>>     | In file included from include/linux/irq.h:356:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:5,
>>     |                  from include/linux/hardirq.h:8,
>>     |                  from include/net/sock.h:43,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
>>     | include/linux/irqdesc.h: At top level:In file included from
>>     include/linux/irq.h:356:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:5,
>>     |                  from include/linux/hardirq.h:8,
>>     |                  from include/net/sock.h:43,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
>>     | include/linux/irqdesc.h: At top level:
>>     | include/linux/irqdesc.h:74:1: error: requested alignment is not
>>     an integer constant
>>     |
>>     | include/linux/irqdesc.h:74:1: error: requested alignment is not
>>     an integer constant
>>     | In file included from include/linux/hardirq.h:8:0,
>>     |                  from include/net/sock.h:43,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:33:1:
>>     error: requested alignment is not an integer constant
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:35:1:
>>     error: requested alignment is not an integer constant
>>     | In file included from include/linux/hardirq.h:8:0,
>>     |                  from include/net/sock.h:43,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:33:1:
>>     error: requested alignment is not an integer constant
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/hardirq.h:35:1:
>>     error: requested alignment is not an integer constant
>>     | In file included from include/linux/netdevice.h:40:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
>>     |                  from include/net/sock.h:51,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
>>     | include/linux/dynamic_queue_limits.h:48:2: error: requested
>>     alignment is not an integer constantIn file included from
>>     include/linux/netdevice.h:40:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
>>     |                  from include/net/sock.h:51,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
>>     | include/linux/dynamic_queue_limits.h:48:2: error: requested
>>     alignment is not an integer constant
>>     |
>>     | In file included from include/net/netns/ipv6.h:9:0,
>>     |                  from include/net/net_namespace.h:17,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
>>     |                  from include/linux/netdevice.h:43,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
>>     |                  from include/net/sock.h:51,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
>>     | include/net/dst_ops.h:39:9: error: requested alignment is not an
>>     integer constantIn file included from include/net/netns/ipv6.h:9:0,
>>     |                  from include/net/net_namespace.h:17,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
>>     |                  from include/linux/netdevice.h:43,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
>>     |                  from include/net/sock.h:51,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
>>     | include/net/dst_ops.h:39:9: error: requested alignment is not an
>>     integer constant
>>     |
>>     | In file included from include/linux/sched.h:32:0,
>>     |                  from include/net/net_namespace.h:139,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
>>     |                  from include/linux/netdevice.h:43,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
>>     |                  from include/net/sock.h:51,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
>>     | include/linux/sem.h:14:5: error: requested alignment is not an
>>     integer constantIn file included from include/linux/sched.h:32:0,
>>     |                  from include/net/net_namespace.h:139,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
>>     |                  from include/linux/netdevice.h:43,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
>>     |                  from include/net/sock.h:51,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
>>     | include/linux/sem.h:14:5: error: requested alignment is not an
>>     integer constant
>>     |
>>     | In file included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/include/uapi/linux/unistd.h:7:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp_64.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp.h:4,
>>     |                  from include/linux/seccomp.h:9,
>>     |                  from include/linux/sched.h:40,
>>     |                  from include/net/net_namespace.h:139,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
>>     |                  from include/linux/netdevice.h:43,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
>>     |                  from include/net/sock.h:51,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.c:23:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/unistd.h:23:29:
>>     fatal error: asm/unistd_64.h: No such file or directoryIn file
>>     included from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/include/uapi/linux/unistd.h:7:0,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp_64.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/seccomp.h:4,
>>     |                  from include/linux/seccomp.h:9,
>>     |                  from include/linux/sched.h:40,
>>     |                  from include/net/net_namespace.h:139,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/net_namespace.h:6,
>>     |                  from include/linux/netdevice.h:43,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/netdevice.h:4,
>>     |                  from include/net/sock.h:51,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/net/sock.h:4,
>>     |                  from include/linux/tcp.h:23,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/compat/include/linux/tcp.h:4,
>>     |                  from
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.c:25:
>>     |
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-*yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel/arch/x86/include/asm/unistd.h:23:29:
>>     fatal error: asm/unistd_64.h: No such file or directory*
>>     *| compilation terminated.*
>>     *| *
>>     *| compilation terminated.*
>>     | make[5]: ***
>>     [/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/checksum.o]
>>     Error 1
>>     | make[5]: *** Waiting for unfinished jobs....
>>     | make[5]: ***
>>     [/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux/actions.o]
>>     Error 1
>>     | make[4]: ***
>>     [_module_/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux]
>>     Error 2
>>     | make[4]: Leaving directory
>>     `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/src/kernel'
>>     | make[3]: *** [default] Error 2
>>     | make[3]: Leaving directory
>>     `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath/linux'
>>     | make[2]: *** [all-recursive] Error 1
>>     | make[2]: Leaving directory
>>     `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0/datapath'
>>     | make[1]: *** [all-recursive] Error 1
>>     | make[1]: Leaving directory
>>     `/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/openvswitch-1.10.0'
>>     | make: *** [all] Error 2
>>     | ERROR: oe_runmake failed
>>     | ERROR: Function failed: do_compile (see
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl_networking-linux/openvswitch/1.10.0-r0/temp/log.do_compile.12994
>>     for further information)
>>     ERROR: Task 4
>>     (/home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/meta-virtualization/recipes-networking/openvswitch/openvswitch_1.10.0.bb
>>     <http://openvswitch_1.10.0.bb>, do_compile) failed with exit code '1'
>>     NOTE: Tasks Summary: Attempted 493 tasks of which 488 didn't need
>>     to be rerun and 1 failed.
>>
>>     Summary: 1 task failed:
>>     /home/kshipra/QorIQ-SDK-V1.4-20130814-yocto/meta-virtualization/recipes-networking/openvswitch/openvswitch_1.10.0.bb
>>     <http://openvswitch_1.10.0.bb>, do_compile
>>     Summary: There was 1 ERROR message shown, returning a non-zero
>>     exit code.
>>
>>     Thanks
>>
>>
>>
>>     Regards
>>     Pradeep Kumar
>>
>>
>>     On Tue, Jun 24, 2014 at 3:01 PM, Gaurang Shastri
>>     <gmshastri@gmail.com <mailto:gmshastri@gmail.com>> wrote:
>>
>>         Hi,
>>
>>         In your recipe, you just need to enable,
>>
>>         EXTRA_OECONF = "--with-linux=${STAGING_KERNEL_DIR}
>>         KARCH=${TARGET_ARCH}"
>>
>>         This will build openvswitch module against your kernel source.
>>         I did this and I did not find any issues and it built module
>>         against my kernel.
>>
>>         Can you paste more logs here ??
>>
>>         //Gaurang Shastri
>>
>>
>>         On Tue, Jun 24, 2014 at 2:19 PM, Pradeep kumar
>>         <topradeepyaduvanshi@gmail.com
>>         <mailto:topradeepyaduvanshi@gmail.com>> wrote:
>>
>>             *on x-86 openvswitch compiling steps are as follows:*
>>             ->./boot.sh
>>             ->./configure --with-linux=/lib/modules/`uname -r`/build
>>             ->make
>>             ->make install
>>              by following these steps an openvswitch kernel  module
>>             get built in
>>             *openvswitch-1.10.0/datapath/linux/openvswitch.ko*
>>
>>             *i Am using following steps to cross-compile openvswitch
>>             for power pc*
>>
>>             ->export
>>             PATH=$PATH:/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/board/tmp/sysroots/x86_64-linux/usr/bin/ppc64e6500-fsl_networking-linux
>>
>>             ->./boot.sh
>>
>>
>>             ->./configure --host=x86 --target=powerpc KARCH=powerpc
>>             CC=powerpc64-fsl_networking-linux-gcc
>>             --with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git/
>>              --enable-ssl=no --prefix=/openvswitch_utils
>>
>>
>>             ->make ARCH=powerpc
>>             CROSS_COMPILE=powerpc-fsl_networking-linux-
>>
>>             ->sudo make ARCH=powerpc
>>             CROSS_COMPILE=powerpc-fsl_networking-linux- install
>>             .
>>             .
>>             .
>>             By following these steps an *openvswitch kernel  module
>>             get built in
>>             openvswitch-2.1.2/datapath/linux/openvswitch.ko for
>>             powerpc arch.*
>>
>>             *Now i want to do the same thing using
>>             openvswitch_1.10.0.bb <http://openvswitch_2.1.2.bb> file*.
>>             # Don't compile kernel modules by default since it heavily
>>             depends on
>>              30 # kernel version. Use the in-kernel module for now.
>>              31 # distro layers can enable with
>>             EXTRA_OECONF_pn_openvswitch += ""
>>              32 # *EXTRA_OECONF = "--with-linux=${STAGING_KERNEL_DIR}
>>             KARCH=${TARGET_ARCH}"*
>>
>>             acc. to my understanding which can be achieved by
>>             uncommenting this line and passing kernel source directory
>>             path in openvswitch_1.10.0.bb
>>             <http://openvswitch_1.10.0.bb>  :
>>             *EXTRA_OECONF =
>>             "--with-linux=/home/nova/new_yocto1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/t4240rdb-fsl_networking-linux/linux-qoriq-sdk/3.8-r17.3/git KARCH=powerpc
>>             in openvswitch_1.10.0.bb <http://openvswitch_1.10.0.bb>*
>>
>>             *bitbake -c compile openvswitch*
>>
>>             but it is showing error:*do_compile failed,oe_runmake failed*
>>             and showing .../git/x86/include/asm/unistd...files are
>>             missing...
>>             i am new to yocto kindly help me regarding above described
>>             issue.thanks in advance.ITZ URGENT.if u need to see full
>>             logs plz ask for the same.
>>             Regards
>>             Pradeep Kumar
>>
>>             --
>>             _______________________________________________
>>             yocto mailing list
>>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>             https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>>
>
>


