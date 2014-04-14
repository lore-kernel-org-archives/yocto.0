Return-Path: <Hongxu.Jia@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D146FE00BB8
	for <yocto@yoctoproject.org>; Sun, 13 Apr 2014 18:54:10 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3E1sAU2003682
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 13 Apr 2014 18:54:10 -0700 (PDT)
Received: from pek-hjia-d1.corp.ad.wrs.com (128.224.162.194) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Sun, 13 Apr 2014 18:54:06 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<randy.macleod@windriver.com>
Date: Mon, 14 Apr 2014 09:53:50 +0800
Message-ID: <5f78192ec4a77feef5cacc1ec8f081a7f71e170f.1397439775.git.hongxu.jia@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1397439775.git.hongxu.jia@windriver.com>
References: <cover.1397439775.git.hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 7/8] libpcre_8.34.bbappend: remove PRINC warning
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
X-List-Received-Date: Mon, 14 Apr 2014 01:54:10 -0000
Content-Type: text/plain

The libpcre has been upgrade to 8.34 in oe-core,
so remove PRINC.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-support/libpcre/libpcre_8.34.bbappend | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-support/libpcre/libpcre_8.34.bbappend b/recipes-support/libpcre/libpcre_8.34.bbappend
index 25117ff..558644e 100644
--- a/recipes-support/libpcre/libpcre_8.34.bbappend
+++ b/recipes-support/libpcre/libpcre_8.34.bbappend
@@ -1,5 +1,3 @@
-PRINC = "1"
-
 do_install_append () {
 	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
 		realsofile=`readlink ${D}${libdir}/libpcre.so`
-- 
1.8.1.2


