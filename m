Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC4F4E0097D; Tue, 14 Feb 2017 00:51:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8161CE0086E
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 00:51:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v1E8pq9M000904
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 00:51:53 -0800
Received: from ala-blade48.wrs.com (147.11.105.68) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 14 Feb 2017 00:51:52 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 14 Feb 2017 00:51:49 -0800
Message-ID: <20170214085150.42779-2-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.9.0
In-Reply-To: <20170214085150.42779-1-liezhi.yang@windriver.com>
References: <20170214085150.42779-1-liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/3] libsemanage: add swig-native to DEPENDS
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
X-List-Received-Date: Tue, 14 Feb 2017 08:51:57 -0000
Content-Type: text/plain

Fixed:
swig -Wall -python -o semanageswig_wrap.c -outdir ./ semanageswig_python.i
make[1]: swig: Command not found

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 recipes-security/selinux/libsemanage.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index 41fd3f5..d952170 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -8,7 +8,7 @@ LICENSE = "LGPLv2.1+"
 
 inherit lib_package python-dir
 
-DEPENDS += "libsepol libselinux ustr bzip2 python bison-native flex-native"
+DEPENDS += "libsepol libselinux ustr bzip2 python bison-native flex-native swig-native"
 DEPENDS_append_class-target += "audit"
 
 # For /usr/libexec/selinux/semanage_migrate_store
-- 
2.9.0


