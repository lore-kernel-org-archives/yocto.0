Return-Path: <B19537@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 767C8E0073F
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2012 20:18:19 -0700 (PDT)
Received: from mail202-ch1-R.bigfish.com (10.43.68.238) by
	CH1EHSOBE012.bigfish.com (10.43.70.62) with Microsoft SMTP Server id
	14.1.225.23; Tue, 5 Jun 2012 03:17:37 +0000
Received: from mail202-ch1 (localhost [127.0.0.1])	by
	mail202-ch1-R.bigfish.com (Postfix) with ESMTP id 2A6071E01A7	for
	<yocto@yoctoproject.org>; Tue,  5 Jun 2012 03:17:37 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: VS-1(zz936eIzz1202hzz8275bh8275dhz2dh2a8h668h839hd24he5bhf0ah)
Received: from mail202-ch1 (localhost.localdomain [127.0.0.1]) by mail202-ch1
	(MessageSwitch) id 1338866255690512_1333;
	Tue,  5 Jun 2012 03:17:35 +0000 (UTC)
Received: from CH1EHSMHS010.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.231])	by mail202-ch1.bigfish.com (Postfix) with ESMTP id
	A72068021F
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2012 03:17:35 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS010.bigfish.com
	(10.43.70.10) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 5 Jun 2012 03:17:36 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-001.039d.mgd.msft.net (10.84.1.13) with Microsoft SMTP
	Server (TLS) id 14.2.298.5; Mon, 4 Jun 2012 22:18:15 -0500
Received: from localhost.localdomain
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP id q553IBH4031821;
	Mon, 4 Jun 2012 20:18:13 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Tue, 5 Jun 2012 11:32:28 +0800
Message-ID: <1338867148-11213-1-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.0.4
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: msm@freescale.com
Subject: [PATCH] fix the build issue of ppp
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
X-List-Received-Date: Tue, 05 Jun 2012 03:18:19 -0000
Content-Type: text/plain

From: Zhenhua Luo <b19537@freescale.com>

    this patch is for edison branch of poky

    fix following build issue of ppp:
        make[2]: Entering directory `/local/home/b19537/workspace/sdk-devel/build_p4080ds_release/tmp/work/ppce500mc-fsl-linux/ppp-2.4.5-r2/ppp-2.4.5/pppd/plugins/rp-pppoe'
        powerpc-fsl-linux-gcc  -m32 -mhard-float  -mcpu=e500mc  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed --sysroot=/local/home/b19537/workspace/sdk-devel/build_p4080ds_release/tmp/sysroots/p4080ds -O2 -g -I../../../include '-DRP_VERSION="3.8p"' -I../../.. -c -o plugin.o -fPIC plugin.c
        In file included from plugin.c:53:0:
        /local/home/b19537/workspace/sdk-devel/build_p4080ds_release/tmp/sysroots/p4080ds/usr/include/linux/if_pppox.h:85:25: error: field 'pppol2tp' has incomplete type
        make[2]: *** [plugin.o] Error 1
        make[2]: *** Waiting for unfinished jobs....
        make[2]: Leaving directory `/local/home/b19537/workspace/sdk-devel/build_p4080ds_release/tmp/work/ppce500mc-fsl-linux/ppp-2.4.5-r2/ppp-2.4.5/pppd/plugins/rp-pppoe'

Signed-off-by: Zhenhua Luo <b19537@freescale.com>
---
 .../ppp-fix-build-issue-of-rp-pppoe.so.patch       |   23 ++++++++++++++++++++
 meta/recipes-connectivity/ppp/ppp_2.4.5.bb         |    3 +-
 2 files changed, 25 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppoe.so.patch

diff --git a/meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppoe.so.patch b/meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppoe.so.patch
new file mode 100644
index 0000000..ed2141a
--- /dev/null
+++ b/meta/recipes-connectivity/ppp/ppp-2.4.5/ppp-fix-build-issue-of-rp-pppoe.so.patch
@@ -0,0 +1,23 @@
+--- a/include/linux/if_pppol2tp.h	2012-06-04 04:22:37.966729643 -0500
++++ b/include/linux/if_pppol2tp.h	2012-06-04 04:31:04.325905458 -0500
+@@ -32,6 +32,20 @@
+ 	__u16 d_tunnel, d_session;	/* For sending outgoing packets */
+ };
+ 
++/* The L2TPv3 protocol changes tunnel and session ids from 16 to 32
++ * bits. So we need a different sockaddr structure.
++ */
++struct pppol2tpv3_addr {
++       pid_t   pid;                    /* pid that owns the fd.
++                                        * 0 => current */
++       int     fd;                     /* FD of UDP or IP socket to use */
++
++       struct sockaddr_in addr;        /* IP address and port to send to */
++
++       __u32 s_tunnel, s_session;      /* For matching incoming packets */
++       __u32 d_tunnel, d_session;      /* For sending outgoing packets */
++};
++
+ /* Socket options:
+  * DEBUG	- bitmask of debug message categories
+  * SENDSEQ	- 0 => don't send packets with sequence numbers
diff --git a/meta/recipes-connectivity/ppp/ppp_2.4.5.bb b/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
index 72464bf..6c4bd08 100644
--- a/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
+++ b/meta/recipes-connectivity/ppp/ppp_2.4.5.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://pppd/ccp.c;beginline=1;endline=29;md5=e2c43fe6e81ff77
                     file://pppd/plugins/passprompt.c;beginline=1;endline=10;md5=3bcbcdbf0e369c9a3e0b8c8275b065d8 \
                     file://pppd/tdb.c;beginline=1;endline=27;md5=4ca3a9991b011038d085d6675ae7c4e6 \
                     file://chat/chat.c;beginline=1;endline=15;md5=0d374b8545ee5c62d7aff1acbd38add2"
-PR = "r2"
+PR = "r3"
 
 SRC_URI = "http://ppp.samba.org/ftp/ppp/ppp-${PV}.tar.gz \
            file://makefile.patch \
@@ -18,6 +18,7 @@ SRC_URI = "http://ppp.samba.org/ftp/ppp/ppp-${PV}.tar.gz \
            file://pppd-resolv-varrun.patch \
            file://enable-ipv6.patch \
            file://makefile-remove-hard-usr-reference.patch \
+           file://ppp-fix-build-issue-of-rp-pppoe.so.patch \
            file://pon \
            file://poff \
            file://init \
-- 
1.7.0.4



