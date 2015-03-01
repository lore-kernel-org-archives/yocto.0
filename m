Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9BADE00519; Sun,  1 Mar 2015 04:19:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84840E0034A
	for <yocto@yoctoproject.org>; Sun,  1 Mar 2015 04:19:07 -0800 (PST)
Received: from [99.240.204.5] (port=38047 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YS2ps-0002QD-Mx
	for yocto@yoctoproject.org; Sun, 01 Mar 2015 07:19:04 -0500
Date: Sun, 1 Mar 2015 07:19:03 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1503010717001.27578@localhost>
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
Subject: [PATCH] Documentation: Add link for Yocto LTSI page to kernel manual.
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
X-List-Received-Date: Sun, 01 Mar 2015 12:19:15 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Might as well point the reference to LTSI to the Yocto page for it.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  and throw in a hyphen while i'm there.

diff --git a/documentation/kernel-dev/kernel-dev-intro.xml b/documentation/kernel-dev/kernel-dev-intro.xml
index 1e5043c..a18e797 100644
--- a/documentation/kernel-dev/kernel-dev-intro.xml
+++ b/documentation/kernel-dev/kernel-dev-intro.xml
@@ -47,11 +47,13 @@
             <ulink url='&YOCTO_GIT_URL;'>Source Repositories</ulink> under
             the "Yocto Linux Kernel" heading.
             New recipes for the release track the latest upstream developments
-            and introduce newly supported platforms.
+            and introduce newly-supported platforms.
             Previous recipes in the release are refreshed and supported for at
             least one additional release.
             As they align, these previous releases are updated to include the
-            latest from the Long Term Support Initiative (LTSI) project.
+            latest from the
+            <ulink url='https://www.yoctoproject.org/organization/long-term-support-initiative-ltsi'>
+            Long Term Support Initiative</ulink> (LTSI) project.
             Also included is a linux-yocto development recipe
             (<filename>linux-yocto-dev.bb</filename>) should you want to work
             with the very latest in upstream Linux kernel development and

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

