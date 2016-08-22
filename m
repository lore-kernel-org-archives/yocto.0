Return-Path: <wangxin2015.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05227E00D09; Sun, 21 Aug 2016 20:22:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Sun, 21 Aug 2016 20:22:02 PDT
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39F7AE00C80
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2016 20:22:01 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="10134349"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 22 Aug 2016 11:20:49 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
	by cn.fujitsu.com (Postfix) with ESMTP id 1495E42CD11E
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 11:20:47 +0800 (CST)
Received: from ubuntu.g08.fujitsu.local (10.167.226.120) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.279.2; Mon, 22 Aug 2016 11:20:50 +0800
From: Wang Xin <wangxin2015.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Sun, 21 Aug 2016 23:20:43 -0400
Message-ID: <1471836043-1393-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.120]
X-yoursite-MailScanner-ID: 1495E42CD11E.A7E51
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: wangxin2015.fnst@cn.fujitsu.com
Subject: [meta-selinux][PATCH] audit: 2.5 -> 2.6.6
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
X-List-Received-Date: Mon, 22 Aug 2016 03:22:04 -0000
Content-Type: text/plain

1) Upgrade audit from 2.5 to 2.6.6.
2) Modify audit-python.patch, since the data has changed.

Signed-off-by: Wang Xin <wangxin2015.fnst@cn.fujitsu.com>
---
 recipes-security/audit/audit/audit-python.patch         | 2 +-
 recipes-security/audit/{audit_2.5.bb => audit_2.6.6.bb} | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/audit/{audit_2.5.bb => audit_2.6.6.bb} (96%)

diff --git a/recipes-security/audit/audit/audit-python.patch b/recipes-security/audit/audit/audit-python.patch
index 1f9cf5c..0c2dc1c 100644
--- a/recipes-security/audit/audit/audit-python.patch
+++ b/recipes-security/audit/audit/audit-python.patch
@@ -18,7 +18,7 @@ index cc68df3..998b990 100644
  
  CONFIG_CLEAN_FILES = *.loT *.rej *.orig
  
--SUBDIRS = @pybind_dir@ @gobind_dir@ swig
+-SUBDIRS = python golang swig
 +SUBDIRS = swig
 +if HAVE_PYTHON
 +SUBDIRS += python
diff --git a/recipes-security/audit/audit_2.5.bb b/recipes-security/audit/audit_2.6.6.bb
similarity index 96%
rename from recipes-security/audit/audit_2.5.bb
rename to recipes-security/audit/audit_2.6.6.bb
index 7affecd..3823731 100644
--- a/recipes-security/audit/audit_2.5.bb
+++ b/recipes-security/audit/audit_2.6.6.bb
@@ -15,8 +15,8 @@ SRC_URI = "http://people.redhat.com/sgrubb/${BPN}/${BPN}-${PV}.tar.gz \
            file://auditd.service \
            file://audit-volatile.conf \
 "
-SRC_URI[md5sum] = "e721d48f3e1927c84b7c176b3bdbc443"
-SRC_URI[sha256sum] = "9b0a0760c6f37d80cbbfe46a74db722e60ac8100b28eb31953878ffca8ac14b4"
+SRC_URI[md5sum] = "871fbc03039a5101b5191c5dcc6e8ac2"
+SRC_URI[sha256sum] = "61d8dc61e882fdbb75153a1316817a8f8c8fca25de588256edd81fbb03e7994b"
 
 inherit autotools pythonnative update-rc.d systemd
 
-- 
2.7.4




