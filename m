Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AE6EE013A6
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 11:59:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Jun 2012 11:59:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="148570346"
Received: from unknown (HELO [10.255.12.106]) ([10.255.12.106])
	by orsmga001.jf.intel.com with ESMTP; 05 Jun 2012 11:59:06 -0700
Message-ID: <4FCE56F8.5070308@linux.intel.com>
Date: Tue, 05 Jun 2012 11:59:04 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: b19537@freescale.com
References: <1338867148-11213-1-git-send-email-b19537@freescale.com>
In-Reply-To: <1338867148-11213-1-git-send-email-b19537@freescale.com>
Cc: yocto@yoctoproject.org, msm@freescale.com
Subject: Re: [PATCH] fix the build issue of ppp
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
X-List-Received-Date: Tue, 05 Jun 2012 18:59:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/06/12 20:32, b19537@freescale.com wrote:
> From: Zhenhua Luo<b19537@freescale.com>
>
>      this patch is for edison branch of poky
>
>      fix following build issue of ppp:
>          make[2]: Entering directory `/local/home/b19537/workspace/sdk-devel/build_p4080ds_release/tmp/work/ppce500mc-fsl-linux/ppp-2.4.5-r2/ppp-2.4.5/pppd/plugins/rp-pppoe'
>          powerpc-fsl-linux-gcc  -m32 -mhard-float  -mcpu=e500mc  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed --sysroot=/local/home/b19537/workspace/sdk-devel/build_p4080ds_release/tmp/sysroots/p4080ds -O2 -g -I../../../include '-DRP_VERSION="3.8p"' -I../../.. -c -o plugin.o -fPIC plugin.c
>          In file included from plugin.c:53:0:
>          /local/home/b19537/workspace/sdk-devel/build_p4080ds_release/tmp/sysroots/p4080ds/usr/include/linux/if_pppox.h:85:25: error: field 'pppol2tp' has incomplete type
>          make[2]: *** [plugin.o] Error 1
>          make[2]: *** Waiting for unfinished jobs....
>          make[2]: Leaving directory `/local/home/b19537/workspace/sdk-devel/build_p4080ds_release/tmp/work/ppce500mc-fsl-linux/ppp-2.4.5-r2/ppp-2.4.5/pppd/plugins/rp-pppoe'

PPP builds fine here, can you share some more information such as what 
causes the issue and where this patch has been tested?

Further, there's no header on the patch. Please see the guidelines at:

https://wiki.yoctoproject.org/wiki/Contribution_Guidelines

Cheers,
Joshua

>
> Signed-off-by: Zhenhua Luo<b19537@freescale.com>
> ---
>   .../ppp-fix-build-issue-of-rp-pppoe.so.patch       |   23 ++++++++++++++++++++
>   meta/recipes-connectivity/ppp/ppp_2.4.5.bb         |    3 +-
>   2 files changed, 25 insertions(+), 1 deletions(-)
>   create mode 100644 meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppoe.so.patch
>
> diff --git a/meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppoe.so.patch b/meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppoe.so.patch
> new file mode 100644
> index 0000000..ed2141a
> --- /dev/null
> +++ b/meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppoe.so.patch
> @@ -0,0 +1,23 @@
> +--- a/include/linux/if_pppol2tp.h	2012-06-04 04:22:37.966729643 -0500
> ++++ b/include/linux/if_pppol2tp.h	2012-06-04 04:31:04.325905458 -0500
> +@@ -32,6 +32,20 @@
> + 	__u16 d_tunnel, d_session;	/* For sending outgoing packets */
> + };
> +
> ++/* The L2TPv3 protocol changes tunnel and session ids from 16 to 32
> ++ * bits. So we need a different sockaddr structure.
> ++ */
> ++struct pppol2tpv3_addr {
> ++       pid_t   pid;                    /* pid that owns the fd.
> ++                                        * 0 =>  current */
> ++       int     fd;                     /* FD of UDP or IP socket to use */
> ++
> ++       struct sockaddr_in addr;        /* IP address and port to send to */
> ++
> ++       __u32 s_tunnel, s_session;      /* For matching incoming packets */
> ++       __u32 d_tunnel, d_session;      /* For sending outgoing packets */
> ++};
> ++
> + /* Socket options:
> +  * DEBUG	- bitmask of debug message categories
> +  * SENDSEQ	- 0 =>  don't send packets with sequence numbers
> diff --git a/meta/recipes-connectivity/ppp/ppp_2.4.5.bb b/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
> index 72464bf..6c4bd08 100644
> --- a/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
> +++ b/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
> @@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://pppd/ccp.c;beginline=1;endline=29;md5=e2c43fe6e81ff77
>                       file://pppd/plugins/passprompt.c;beginline=1;endline=10;md5=3bcbcdbf0e369c9a3e0b8c8275b065d8 \
>                       file://pppd/tdb.c;beginline=1;endline=27;md5=4ca3a9991b011038d085d6675ae7c4e6 \
>                       file://chat/chat.c;beginline=1;endline=15;md5=0d374b8545ee5c62d7aff1acbd38add2"
> -PR = "r2"
> +PR = "r3"
>
>   SRC_URI = "http://ppp.samba.org/ftp/ppp/ppp-${PV}.tar.gz \
>              file://makefile.patch \
> @@ -18,6 +18,7 @@ SRC_URI = "http://ppp.samba.org/ftp/ppp/ppp-${PV}.tar.gz \
>              file://pppd-resolv-varrun.patch \
>              file://enable-ipv6.patch \
>              file://makefile-remove-hard-usr-reference.patch \
> +           file://ppp-fix-build-issue-of-rp-pppoe.so.patch \
>              file://pon \
>              file://poff \
>              file://init \

-- 
Joshua Lock
         Yocto Project
         Intel Open Source Technology Centre

