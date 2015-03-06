Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E229CE0087C; Fri,  6 Mar 2015 02:13:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9124EE0083A
	for <yocto@yoctoproject.org>; Fri,  6 Mar 2015 02:13:53 -0800 (PST)
Received: from [99.240.204.5] (port=60893 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YTpGT-0000dl-51
	for yocto@yoctoproject.org; Fri, 06 Mar 2015 05:13:53 -0500
Date: Fri, 6 Mar 2015 05:13:49 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@Device-040570
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1503060511390.14660@Device-040570>
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
Subject: [PATCH] Documentation: Fix overlooked "netfilter.scc" reference.
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
X-List-Received-Date: Fri, 06 Mar 2015 10:13:57 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Make reference to netfilter.scc file consistent with the rest.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  not sure how i missed this before and, yes, i know the "short form"
works but it's not something i think should be encouraged. or should
it?

diff --git a/documentation/kernel-dev/kernel-dev-advanced.xml b/documentation/kernel-dev/kernel-dev-advanced.xml
index dc5d9ba..c5172cc 100644
--- a/documentation/kernel-dev/kernel-dev-advanced.xml
+++ b/documentation/kernel-dev/kernel-dev-advanced.xml
@@ -133,7 +133,7 @@
         to include features (configuration fragments, patches, or both) that
         are not already included by the <filename>KMACHINE</filename> and
         <filename>LINUX_KERNEL_TYPE</filename> variable combination.
-        For example, to include a feature specified as "features/netfilter.scc",
+        For example, to include a feature specified as "features/netfilter/netfilter.scc",
         specify:
         <literallayout class='monospaced'>
      KERNEL_FEATURES += "features/netfilter/netfilter.scc"

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

