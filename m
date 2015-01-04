Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B495E0083A; Sun,  4 Jan 2015 09:13:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 502F9E00521
	for <yocto@yoctoproject.org>; Sun,  4 Jan 2015 09:13:31 -0800 (PST)
Received: from [99.240.204.5] (port=44905 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y7ok2-0006Wb-Bt
	for yocto@yoctoproject.org; Sun, 04 Jan 2015 12:13:26 -0500
Date: Sun, 4 Jan 2015 12:13:24 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1501041212360.25235@localhost>
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
Subject: [PATCH][yocto-docs] A couple innocuous tweaks to Ch 3, dev manual.
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
X-List-Received-Date: Sun, 04 Jan 2015 17:13:37 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation/dev-manual/dev-manual-newbie.xml
index 2385187..98a8334 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -1028,10 +1028,11 @@
         </para>

         <para>
-            Some key tags are <filename>dylan-9.0.0</filename>,
-            <filename>dora-10.0.0</filename>, <filename>daisy-11.0.0</filename>,
+            Some key tags are <filename>dylan-9.0.4</filename>,
+            <filename>dora-10.0.4</filename>, <filename>daisy-11.0.2</filename>,
+            <filename>dizzy-12.0.0</filename>,
             and <filename>&DISTRO_NAME;-&POKYVERSION;</filename>.
-            These tags represent Yocto Project releases.
+            These tags represent (in some cases, updated) Yocto Project releases.
         </para>

         <para>
@@ -1074,7 +1075,9 @@
             A good place to look for instruction on a minimal set of Git commands is
             <ulink url='http://git-scm.com/documentation'>here</ulink>.
             If you need to download Git, you can do so
-            <ulink url='http://git-scm.com/download'>here</ulink>.
+            <ulink url='http://git-scm.com/download'>here</ulink>, although any
+            reasonably current version of Linux should have an installable package
+            for it already.
         </para>

         <para>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

