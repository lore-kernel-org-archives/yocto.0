Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98686E009C2; Tue, 14 Aug 2018 00:19:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 707D2E009C2
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 00:19:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7E7JkRB013841
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 14 Aug 2018 00:19:46 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Tue, 14 Aug 2018 00:19:45 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe_macdonald@mentor.com>, <flihp@twobit.us>,
	<mark.hatle@windriver.com>
Date: Tue, 14 Aug 2018 15:19:40 +0800
Message-ID: <1534231180-14875-2-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1534231180-14875-1-git-send-email-yi.zhao@windriver.com>
References: <1534231180-14875-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 2/2] libcgroup: replace _virtclass-native with _class-native
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
X-List-Received-Date: Tue, 14 Aug 2018 07:19:49 -0000
Content-Type: text/plain

The _virtclass-native is obsolete. Replace it with _class-native.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-core/libcgroup/libcgroup_selinux.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/libcgroup/libcgroup_selinux.inc b/recipes-core/libcgroup/libcgroup_selinux.inc
index f81188f..9d9ebfc 100644
--- a/recipes-core/libcgroup/libcgroup_selinux.inc
+++ b/recipes-core/libcgroup/libcgroup_selinux.inc
@@ -1,4 +1,4 @@
-EXTRA_OECONF_virtclass-native = "--enable-pam=no"
+EXTRA_OECONF_append_class-native = " --enable-pam=no"
 
 do_install_append() {
 	test ! -f ${D}${base_libdir}/security/pam_cgroup.so.0.0.0 || {
-- 
2.7.4


