Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C81AE0169F
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 16:06:05 -0700 (PDT)
Received: from [173.34.6.101] (port=55323 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VXJ7M-0000Z2-0p; Fri, 18 Oct 2013 19:06:04 -0400
Date: Fri, 18 Oct 2013 19:06:00 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1310181904020.7948@oneiric>
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
Subject: [PATCH] Documentation: Correct error in FILESEXTRAPATHS_prepend example
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
X-List-Received-Date: Fri, 18 Oct 2013 23:06:08 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


FILESEXTRAPATHS_prepend example is missing essential trailing colon.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation/kernel-dev/kernel-dev-common.xml
index 11a527c..a152f9f 100644
--- a/documentation/kernel-dev/kernel-dev-common.xml
+++ b/documentation/kernel-dev/kernel-dev-common.xml
@@ -95,7 +95,7 @@
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-FILESEXTRAPATHS'><filename>FILESEXTRAPATHS</filename></ulink>
                 variable as follows:
                 <literallayout class='monospaced'>
-     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
+     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
                 </literallayout>
                 The path <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-THISDIR'><filename>THISDIR</filename></ulink><filename>}/${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-PN'><filename>PN</filename></ulink><filename>}</filename>
                 expands to "linux-yocto" in the current directory for this

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

