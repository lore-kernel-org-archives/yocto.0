Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28111E0044A
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 14:42:38 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SFXyP-0008Ru-Fa
	for yocto@yoctoproject.org; Wed, 04 Apr 2012 17:42:37 -0400
Date: Wed, 4 Apr 2012 17:42:31 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1204041741120.15339@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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
Subject: [PATCH] Fix small number of misspellings of "subsequent".
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
X-List-Received-Date: Wed, 04 Apr 2012 21:42:38 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 14a7197..548048f 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -877,7 +877,7 @@
      ...

      NOTE: Once created, you should add your new layer to your
-     bblayers.conf file in order for it to be subsquently seen and
+     bblayers.conf file in order for it to be subsequently seen and
      modified by the yocto-kernel tool.

      NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
diff --git a/meta/classes/rm_work.bbclass b/meta/classes/rm_work.bbclass
index 997dcd1..0bd81bd 100644
--- a/meta/classes/rm_work.bbclass
+++ b/meta/classes/rm_work.bbclass
@@ -26,7 +26,7 @@ do_rm_work () {
             rm -rf $dir
         fi
     done
-    # Need to add pseudo back or subsqeuent work in this workdir
+    # Need to add pseudo back or subsequent work in this workdir
     # might fail since setscene may not rerun to recreate it
     mkdir ${WORKDIR}/pseudo/

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 200a4f8..54501d8 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -156,7 +156,7 @@ DESCRIPTION
     current directory, and is useful for debugging.

     NOTE: Once created, you should add your new layer to your
-    bblayers.conf file in order for it to be subsquently seen and
+    bblayers.conf file in order for it to be subsequently seen and
     modified by the yocto-kernel tool.

     NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

