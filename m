Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BC86E00853; Wed,  4 Mar 2015 01:02:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F4C0E0076F
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 01:02:28 -0800 (PST)
Received: from [99.240.204.5] (port=42821 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YT5CD-0006FE-AE
	for yocto@yoctoproject.org; Wed, 04 Mar 2015 04:02:25 -0500
Date: Wed, 4 Mar 2015 04:02:22 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@Device-040570
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1503040400010.29816@Device-040570>
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
Subject: [PATCH] Documentation: Kernel manual, update name of build directory.
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
X-List-Received-Date: Wed, 04 Mar 2015 09:02:30 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Tweak the manual to refer to the name of the kernel build directory as
it's listed precisely in linux-yocto.inc.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  to accompany scott r's earlier patch, which changed one reference
but missed this one. (in all fairness, i missed it, too. :-)

diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation/kernel-dev/kernel-dev-common.xml
index e16b9e7..b0ad25c 100644
--- a/documentation/kernel-dev/kernel-dev-common.xml
+++ b/documentation/kernel-dev/kernel-dev-common.xml
@@ -326,7 +326,7 @@
                 The resulting <filename>.config</filename> file is
                 located in
                 <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-WORKDIR'><filename>WORKDIR</filename></ulink><filename>}</filename> under the
-                <filename>linux-${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink><filename>}-${<ulink url='&YOCTO_DOCS_REF_URL;#var-KTYPE'><filename>KTYPE</filename></ulink>}-build</filename> directory.
+                <filename>linux-${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-PACKAGE_ARCH'><filename>PACKAGE_ARCH</filename></ulink><filename>}-${<ulink url='&YOCTO_DOCS_REF_URL;#var-LINUX_KERNEL_TYPE'><filename>LINUX_KERNEL_TYPE</filename></ulink>}-build</filename> directory.
                 You can use the entire <filename>.config</filename> file as the
                 <filename>defconfig</filename> file as described in the
                 "<link linkend='changing-the-configuration'>Changing the Configuration</link>" section.


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

