Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EC3EE00A38; Tue,  4 Sep 2018 17:19:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BADA7E00A38
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:19:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w850JNho016601
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:19:23 -0700
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:19:21 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:27 +0800
Message-ID: <1536106707-30781-17-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 16/16] audit: uprev to 2.8.4
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
X-List-Received-Date: Wed, 05 Sep 2018 00:19:33 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../audit/{audit_2.7.6.bb => audit_2.8.4.bb}           | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)
 rename recipes-security/audit/{audit_2.7.6.bb => audit_2.8.4.bb} (91%)

diff --git a/recipes-security/audit/audit_2.7.6.bb b/recipes-security/audit/audit_2.8.4.bb
similarity index 91%
rename from recipes-security/audit/audit_2.7.6.bb
rename to recipes-security/audit/audit_2.8.4.bb
index d655e64..dcec34d 100644
--- a/recipes-security/audit/audit_2.7.6.bb
+++ b/recipes-security/audit/audit_2.8.4.bb
@@ -15,8 +15,8 @@ SRC_URI = "http://people.redhat.com/sgrubb/${BPN}/${BPN}-${PV}.tar.gz \
            file://auditd.service \
            file://audit-volatile.conf \
 "
-SRC_URI[md5sum] = "55a81bbed973b58a90590c949e71dc3e"
-SRC_URI[sha256sum] = "fa65289cffdc95a25bfbdba541f43ee1b12c707090a38fd027dcf9354b9014e7"
+SRC_URI[md5sum] = "ec9510312564c3d9483bccf8dbda4779"
+SRC_URI[sha256sum] = "a410694d09fc5708d980a61a5abcb9633a591364f1ecc7e97ad5daef9c898c38"
 
 inherit autotools pythonnative update-rc.d systemd
 
@@ -30,15 +30,15 @@ SYSTEMD_SERVICE_auditd = "auditd.service"
 DEPENDS += "python tcp-wrappers libcap-ng linux-libc-headers (>= 2.6.30) swig-native"
 
 EXTRA_OECONF += "--without-prelude \
-	--with-libwrap \
-	--enable-gssapi-krb5=no \
-	--with-libcap-ng=yes \
-	--with-python=yes \
-	--libdir=${base_libdir} \
-	--sbindir=${base_sbindir} \
+        --with-libwrap \
+        --enable-gssapi-krb5=no \
+        --with-libcap-ng=yes \
+        --with-python=yes \
+        --libdir=${base_libdir} \
+        --sbindir=${base_sbindir} \
         --without-python3 \
         --disable-zos-remote \
-	"
+        "
 EXTRA_OECONF_append_arm = " --with-arm=yes"
 
 EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
-- 
2.7.4


