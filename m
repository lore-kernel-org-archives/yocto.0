Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16E78E005B4; Wed, 31 Dec 2014 03:55:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HDRS_LCASE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 HDRS_LCASE Odd capitalization of message header
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A807E002F9
	for <yocto@yoctoproject.org>; Wed, 31 Dec 2014 03:55:21 -0800 (PST)
Received: from [99.240.204.5] (port=39626 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y6Hrx-00071y-79; Wed, 31 Dec 2014 06:55:17 -0500
Date: Wed, 31 Dec 2014 06:55:15 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1412310652250.5582@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH][yocto-docs] Update "yocto-bsp" section of BSP Guide.
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
X-List-Received-Date: Wed, 31 Dec 2014 11:55:27 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Update the choices and version numbers of the "yocto-bsp" section of
the BSP guide to match the current development utilities.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  not sure whether anyone was already doing this ...

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index d485023..f3cc112 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -1242,12 +1242,13 @@
                     <literallayout class='monospaced'>
      $ yocto-bsp list karch
      Architectures available:
-         powerpc
-         i386
-         x86_64
-         arm
          qemu
+         arm
          mips
+         x86_64
+         i386
+         powerpc
+         mips64
                     </literallayout>
                 </para>

@@ -1288,26 +1289,25 @@
 	     3) ARM     (32-bit)
 	     4) PowerPC (32-bit)
 	     5) MIPS    (32-bit)
+	     6) MIPS64  (64-bit)
      3
-     Would you like to use the default (3.10) kernel? (y/n) [default: y] y
+     Would you like to use the default (3.17) kernel? (y/n) [default: y] y
      Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n] [default: y]
-     Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-3.10.git...
+     Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-3.17.git...
      Please choose a machine branch to base your new BSP branch on: [default: standard/base]
 	     1) standard/arm-versatile-926ejs
 	     2) standard/base
 	     3) standard/beagleboard
 	     4) standard/beaglebone
 	     5) standard/ck
-	     6) standard/crownbay
-	     7) standard/edgerouter
-             8) standard/emenlow
-	     9) standard/fri2
-	     10) standard/fsl-mpc8315e-rdb
-	     11) standard/mti-malta32
-	     12) standard/mti-malta64
+	     6) standard/common-pc
+	     7) standard/crownbay
+	     8) standard/edgerouter
+	     9) standard/fsl-mpc8315e-rdb
+	     10) standard/mti-malta32
+	     11) standard/mti-malta64
+	     12) standard/qemuarm64
 	     13) standard/qemuppc
-	     14) standard/routerstationpro
-	     15) standard/sys940x
      1
      Would you like SMP support? (y/n) [default: y]
      Does your BSP have a touchscreen? (y/n) [default: n]
@@ -1322,7 +1322,7 @@
                             In the example, we use the ARM architecture.
                             </para></listitem>
                         <listitem><para>The script then prompts you for the kernel.
-                            The default 3.14 kernel is acceptable.
+                            The default 3.17 kernel is acceptable.
                             So, the example accepts the default.
                             If you enter 'n', the script prompts you to further enter the kernel
                             you do want to use.</para></listitem>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

