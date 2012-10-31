Return-Path: <B40290@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe004.messaging.microsoft.com [213.199.154.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3665DE003DA
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 20:59:55 -0700 (PDT)
Received: from mail20-am1-R.bigfish.com (10.3.201.231) by
	AM1EHSOBE001.bigfish.com (10.3.204.21) with Microsoft SMTP Server id
	14.1.225.23; Wed, 31 Oct 2012 03:59:53 +0000
Received: from mail20-am1 (localhost [127.0.0.1])	by mail20-am1-R.bigfish.com
	(Postfix) with ESMTP id AC06DA02A9	for <yocto@yoctoproject.org>;
	Wed, 31 Oct 2012 03:59:53 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: VS-1(zz936eIzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h137ah139eh13b6h1441h1504h1537h1155h)
Received: from mail20-am1 (localhost.localdomain [127.0.0.1]) by mail20-am1
	(MessageSwitch) id 1351655991656274_21891;
	Wed, 31 Oct 2012 03:59:51 +0000 (UTC)
Received: from AM1EHSMHS004.bigfish.com (unknown [10.3.201.229])	by
	mail20-am1.bigfish.com (Postfix) with ESMTP id 94BCC300047	for
	<yocto@yoctoproject.org>; Wed, 31 Oct 2012 03:59:51 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS004.bigfish.com
	(10.3.207.104) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 31 Oct 2012 03:59:51 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-002.039d.mgd.msft.net (10.84.1.15) with Microsoft SMTP
	Server (TLS) id 14.2.318.3; Wed, 31 Oct 2012 03:59:49 +0000
Received: from right.am.freescale.net (right.am.freescale.net [10.82.176.228])
	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id
	q9V3xjkt025682; Tue, 30 Oct 2012 20:59:49 -0700
From: <b40290@freescale.com>
To: <yocto@yoctoproject.org>
Date: Tue, 30 Oct 2012 22:59:42 -0500
Message-ID: <1351655982-5284-1-git-send-email-b40290@freescale.com>
X-Mailer: git-send-email 1.7.9.7
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Chunrong Guo <b40290@freescale.com>
Subject: [meta-fsl-ppc-private master] tcf-qoriqdbg_4.0.0.105390.bb: task do_compile:failed
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
X-List-Received-Date: Wed, 31 Oct 2012 03:59:56 -0000
Content-Type: text/plain

From: Chunrong Guo <b40290@freescale.com>

      fix error:
      ./core.internal/socketSupport.cpp: In function 'int tcf::closesocket_(int)':
      | ./core.internal/socketSupport.cpp:69:12: error: '::close' has not been declared
      | make: *** [objs/tcf.qoriqdbg.agent.target/./core.internal/socketSupport.o] Error 1
      | make: *** Waiting for unfinished jobs....
      | ./core.internal/tcpTransport.cpp: In member function 'tcf::tcf_error
        tcf::TCPTransport::createLocalPeer(const char*, tcf::IPeer**)':
      | ./core.internal/tcpTransport.cpp:590:66: error: 'gethostname' was not declared in this scope
      | make: *** [objs/tcf.qoriqdbg.agent.target/./core.internal/tcpTransport.o] Error 1
      | ERROR: oe_runmake failed
      | ERROR: Function failed: do_compile

Signed-off-by: Chunrong Guo <b40290@freescale.com>
---
 .../files/add-include-in-socketSupport.patch       |   10 ++++++++++
 .../files/add-include-in-tcpTransport.patch        |   11 +++++++++++
 .../tcf-qoriqdbg/tcf-qoriqdbg_4.0.0.105390.bb      |    4 +++-
 3 files changed, 24 insertions(+), 1 deletion(-)
 create mode 100644 recipes-bad/tcf-qoriqdbg/files/add-include-in-socketSupport.patch
 create mode 100644 recipes-bad/tcf-qoriqdbg/files/add-include-in-tcpTransport.patch

diff --git a/recipes-bad/tcf-qoriqdbg/files/add-include-in-socketSupport.patch b/recipes-bad/tcf-qoriqdbg/files/add-include-in-socketSupport.patch
new file mode 100644
index 0000000..f969d47
--- /dev/null
+++ b/recipes-bad/tcf-qoriqdbg/files/add-include-in-socketSupport.patch
@@ -0,0 +1,10 @@
+--- tcf-qoriqdbg-4.0.0.105390-r2/tcf-qoriqdbg-4.0.0.105390/core.internal/socketSupport.cpp	2011-10-07 18:15:25.000000000 -0500
++++ tcf-qoriqdbg-4.0.0.105390/core.internal/socketSupport.cpp	2012-10-30 05:27:20.627395526 -0500
+@@ -46,6 +46,7 @@
+ // Linux interfaces for getifaddrs/freeifaddrs
+ #include <sys/types.h>
+ 
++#include <unistd.h>
+ // To disable the nagle algorithm
+ #include <netinet/tcp.h>
+ 
diff --git a/recipes-bad/tcf-qoriqdbg/files/add-include-in-tcpTransport.patch b/recipes-bad/tcf-qoriqdbg/files/add-include-in-tcpTransport.patch
new file mode 100644
index 0000000..945b786
--- /dev/null
+++ b/recipes-bad/tcf-qoriqdbg/files/add-include-in-tcpTransport.patch
@@ -0,0 +1,11 @@
+--- tcf-qoriqdbg-4.0.0.105390-r2/tcf-qoriqdbg-4.0.0.105390/core.internal/tcpTransport.cpp	2012-04-05 22:16:07.000000000 -0500
++++ tcf-qoriqdbg-4.0.0.105390/core.internal/tcpTransport.cpp	2012-10-30 20:42:11.648654005 -0500
+@@ -35,7 +35,7 @@
+ #include "channelImpl.h"
+ #include "socketSupport.h"
+ #include "socketTrace.h"
+-
++#include <unistd.h> 
+ #include <sstream>
+ #include <iomanip>
+ #include <cerrno>
diff --git a/recipes-bad/tcf-qoriqdbg/tcf-qoriqdbg_4.0.0.105390.bb b/recipes-bad/tcf-qoriqdbg/tcf-qoriqdbg_4.0.0.105390.bb
index 77523a1..0450306 100644
--- a/recipes-bad/tcf-qoriqdbg/tcf-qoriqdbg_4.0.0.105390.bb
+++ b/recipes-bad/tcf-qoriqdbg/tcf-qoriqdbg_4.0.0.105390.bb
@@ -1,10 +1,12 @@
 DESCRIPTION = "SPID based TCF agent"
 SECTION = "tcf-qoriqdbg"
 LICENSE = "Freescale EULA"
-PR = "r2"
+PR = "r3"
 LIC_FILES_CHKSUM = "file://Makefile;beginline=6;endline=17;md5=75c98af1c2fa46281fbdac337244d196"
 
 SRC_URI = "file://${PN}-${PV}.tar.bz2 \
+           file://add-include-in-tcpTransport.patch \
+           file://add-include-in-socketSupport.patch  \
 "
 SRC_URI[md5sum] = "f11b99b489030d9f35573e91c4404e03"
 SRC_URI[sha256sum] = "3250e2951c3b57bfc3dc9e1174e38555e75682ad90831720a7c882093c119f2b"
-- 
1.7.9.7



