Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE648E00746
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2012 09:31:12 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S9J0i-0000sH-4p
	for yocto@yoctoproject.org; Sun, 18 Mar 2012 12:31:12 -0400
Date: Sun, 18 Mar 2012 12:31:02 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203181228540.18084@oneiric>
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
Subject: [PATCH] Documentation: Update poky.ent file to reflect new release.
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
X-List-Received-Date: Sun, 18 Mar 2012 16:31:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Update poky.ent to reflect:

  DISTRO = 1.1.1
  POKYVERSION = 6.0.1

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/poky.ent b/documentation/poky.ent
index e3f73aa..5de5511 100644
--- a/documentation/poky.ent
+++ b/documentation/poky.ent
@@ -1,7 +1,7 @@
-<!ENTITY DISTRO "1.1">
+<!ENTITY DISTRO "1.1.1">
 <!ENTITY DISTRO_NAME "edison">
 <!ENTITY YOCTO_DOC_VERSION "latest">
-<!ENTITY POKYVERSION "6.0">
+<!ENTITY POKYVERSION "6.0.1">
 <!ENTITY YOCTO_POKY "poky-&DISTRO_NAME;-&POKYVERSION;">
 <!ENTITY COPYRIGHT_YEAR "2010-2012">
 <!ENTITY YOCTO_DL_URL "http://downloads.yoctoproject.org">


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

