Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B557E013A8
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 14:14:31 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SBuli-0006tH-87
	for yocto@yoctoproject.org; Sun, 25 Mar 2012 17:14:30 -0400
Date: Sun, 25 Mar 2012 17:14:18 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203251713320.7658@oneiric>
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
Subject: [PATCH] Documentation: Simple typoes in first part of reference manual.
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
X-List-Received-Date: Sun, 25 Mar 2012 21:14:31 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/poky-ref-manual/technical-details.xml b/documentation/poky-ref-manual/technical-details.xml
index 0d5f2e0..d6316a3 100644
--- a/documentation/poky-ref-manual/technical-details.xml
+++ b/documentation/poky-ref-manual/technical-details.xml
@@ -165,7 +165,7 @@
         As mentioned in the previous paragraph, building from scratch ensures that
         everything is current and starts from a known state.
         However, building from scratch also takes much longer as it generally means
-        rebuilding things that don't necessarily need rebuilt.
+        rebuilding things that don't necessarily need to be rebuilt.
     </para>

     <para>
@@ -636,7 +636,7 @@
         <title>Using x32 Right Now</title>

         <para>
-            Despite the fact the x32 psABI support is in developement state for this release of the
+            Despite the fact the x32 psABI support is in development state for this release of the
             Yocto Project, you can follow these steps to use the x32 spABI:
             <itemizedlist>
                 <listitem><para>Add the <filename>experimental/meta-x32</filename> layer to your local
diff --git a/documentation/poky-ref-manual/usingpoky.xml b/documentation/poky-ref-manual/usingpoky.xml
index c80b080..914a0f5 100644
--- a/documentation/poky-ref-manual/usingpoky.xml
+++ b/documentation/poky-ref-manual/usingpoky.xml
@@ -295,7 +295,7 @@
          if fatal_error:
              bb.fatal("fatal_error detected, unable to print the task list")
          bb.plain("The tasks present are abc")
-         bb.debug(2, "Finished figureing out the tasklist")
+         bb.debug(2, "Finished figuring out the tasklist")
      }
                 </literallayout>
             </para>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

