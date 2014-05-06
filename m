Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E0E9E00B7A; Tue,  6 May 2014 04:29:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickdademo[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3ED3E00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 04:29:01 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id lj1so8383262pab.28
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 04:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=/jumLiBxHKQBPh7wg56Gxa64TSJGh2BWMWI+ldXqV9o=;
	b=JGdCChMiLIHN1oIOxRLAugk8F2B5x8eY7e1wOHXTMM26ie5QeHALwJR9xtBKU8K8Wt
	Kl8DF0uSIMverQq61MMHyeZ5JMPSI6ULG02KHGlYKZfczS7lPPjRnJn4RbmS6h67XijE
	zRghK4rVEss40lQrxbYv2koKb8kqc26ph1SP9PAjv4ldPcNZd42BJ8jt0guwXOgs84X+
	/quqrt/5ZYwPqbMtPoiL/RrWixViaKbIy5jS8kSr3L6AO0hshw9PliD/Bong9UUS33nR
	o7JblIFy5aOOH/bd+28CfIMnwSBKOKOgpLy5RY8R/kCtxD2odDo1Wzu0/aFS6zl2Rsus
	JY7g==
X-Received: by 10.66.164.135 with SMTP id yq7mr5303791pab.126.1399375740639;
	Tue, 06 May 2014 04:29:00 -0700 (PDT)
Received: from localhost.localdomain
	(d122-111-84-3.meb803.vic.optusnet.com.au. [122.111.84.3])
	by mx.google.com with ESMTPSA id g6sm95138904pat.2.2014.05.06.04.28.57
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 06 May 2014 04:29:00 -0700 (PDT)
From: Nick D'Ademo <nickdademo@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  6 May 2014 21:28:26 +1000
Message-Id: <1399375706-31857-1-git-send-email-nickdademo@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-security][PATCH] nmap: inherit autotools-brokensep to allow B=S build. Signed-off-by: Nick D'Ademo <nickdademo@gmail.com>
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
X-List-Received-Date: Tue, 06 May 2014 11:29:03 -0000

---
 recipes-security/nmap/nmap_6.25.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/nmap/nmap_6.25.bb b/recipes-security/nmap/nmap_6.25.bb
index aff5c63..5efcc70 100644
--- a/recipes-security/nmap/nmap_6.25.bb
+++ b/recipes-security/nmap/nmap_6.25.bb
@@ -11,7 +11,7 @@ SRC_URI = "http://nmap.org/dist/${PN}-${PV}.tar.bz2 \
 SRC_URI[md5sum] = "fcc80f94ff3adcb11eedf91092ea6f5e"
 SRC_URI[sha256sum] = "3349cc6d36b86b95ca2b8075d16615a3a598cef494920d6652f9a8bf9f7660b5"
 
-inherit autotools
+inherit autotools-brokensep
 
 DEPENDS = "libpcap"
 
-- 
1.7.9.5


