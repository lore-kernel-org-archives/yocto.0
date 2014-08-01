Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1107E005BB; Fri,  1 Aug 2014 01:47:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B3CE0056A
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 01:47:12 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20140801084710989
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 08:47:10 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=45811 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XD8UT-00013R-Bq
	for yocto@yoctoproject.org; Fri, 01 Aug 2014 04:47:05 -0400
Date: Fri, 1 Aug 2014 04:47:01 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1408010445220.14729@localhost>
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
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: [yocto-docs][PATCH] dev-manual: minor grammatical tweaks to chapter 4
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
X-List-Received-Date: Fri, 01 Aug 2014 08:47:20 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-model.xml b/documentation/dev-manual/dev-manual-model.xml
index eb24643..a3852c4 100644
--- a/documentation/dev-manual/dev-manual-model.xml
+++ b/documentation/dev-manual/dev-manual-model.xml
@@ -70,7 +70,7 @@
         <title>Developing a Board Support Package (BSP)</title>

         <para>
-            A BSP is a package of recipes that, when applied during a build, results in
+            A BSP is a collection of recipes that, when applied during a build, results in
             an image that you can run on a particular board.
             Thus, the package when compiled into the new image, supports the operation of the board.
         </para>
@@ -156,8 +156,9 @@
                     Yocto Project Board Support Package (BSP) Developer's Guide.</para>
                     <note>Five BSPs exist that are part of the
                     Yocto Project release: <filename>genericx86</filename>, <filename>genericx86-64</filename>,
-                    <filename>beaglebone</filename>,
-                    <filename>mpc8315e</filename>, and <filename>edgerouter</filename>.
+                    <filename>beaglebone</filename> (ARM),
+                    <filename>mpc8315e</filename> (PowerPC),
+                    and <filename>edgerouter</filename> (MIPS).
                     The recipes and configurations for these five BSPs are located and dispersed
                     within the <link linkend='source-directory'>Source Directory</link>.
                     On the other hand, BSP layers for Crown Bay,
@@ -310,7 +311,7 @@
                 kernel.
                 Thus, everything further to the right in the structure is based on the
                 <filename>linux-yocto-3.4</filename> kernel.
-                Branch points to right in the figure represent where the
+                Branch points to the right in the figure represent where the
                 <filename>linux-yocto-3.4</filename> kernel is modified for specific hardware
                 or types of kernels, such as real-time kernels.
                 Each leaf thus represents the end-point for a kernel designed to run on a specific

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


