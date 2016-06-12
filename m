Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFA37E00B45; Sun, 12 Jun 2016 01:40:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 957E3E00B04
	for <yocto@yoctoproject.org>; Sun, 12 Jun 2016 01:40:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u5C8eSTe000888
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Sun, 12 Jun 2016 01:40:28 -0700
Received: from ala-blade48.wrs.com (147.11.105.68) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Sun, 12 Jun 2016 01:40:27 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sun, 12 Jun 2016 01:40:26 -0700
Message-ID: <1465720826-4636-2-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1465720826-4636-1-git-send-email-liezhi.yang@windriver.com>
References: <1465720826-4636-1-git-send-email-liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/2] sepolgen: inherit python-dir
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
X-List-Received-Date: Sun, 12 Jun 2016 08:40:31 -0000
Content-Type: text/plain

Fixed:
sepolgen-1.2.3: sepolgen: Files/directories were installed but not shipped in any package:
  /usr
  /usr/lib
  /usr/lib/python
  /usr/lib/python/site-packages
  /usr/lib/python/site-packages/sepolgen
  /usr/lib/python/site-packages/sepolgen/lex.py
  /usr/lib/python/site-packages/sepolgen/matching.py
  /usr/lib/python/site-packages/sepolgen/sepolgeni18n.py
  /usr/lib/python/site-packages/sepolgen/__init__.py
  /usr/lib/python/site-packages/sepolgen/classperms.py
  /usr/lib/python/site-packages/sepolgen/refparser.py
  /usr/lib/python/site-packages/sepolgen/module.py
  /usr/lib/python/site-packages/sepolgen/objectmodel.py
  /usr/lib/python/site-packages/sepolgen/interfaces.py
  /usr/lib/python/site-packages/sepolgen/access.py
  /usr/lib/python/site-packages/sepolgen/output.py
  /usr/lib/python/site-packages/sepolgen/refpolicy.py
  /usr/lib/python/site-packages/sepolgen/defaults.py
  /usr/lib/python/site-packages/sepolgen/audit.py
  /usr/lib/python/site-packages/sepolgen/yacc.py
  /usr/lib/python/site-packages/sepolgen/util.py
  /usr/lib/python/site-packages/sepolgen/policygen.py
Please set FILES such that these items are packaged. Alternatively if they are unneeded, avoid installing them or delete them within do_install.
sepolgen: 22 installed and not shipped files. [installed-vs-shipped]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 recipes-security/selinux/sepolgen.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/sepolgen.inc b/recipes-security/selinux/sepolgen.inc
index b5729ae..daf213d 100644
--- a/recipes-security/selinux/sepolgen.inc
+++ b/recipes-security/selinux/sepolgen.inc
@@ -19,6 +19,8 @@ FILES_${PN} = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
 
 DEPENDS += "python"
 
+inherit python-dir
+
 FILES_${PN} += "${libdir}/python${PYTHON_BASEVERSION}/site-packages \
 		/var/lib/sepolgen"
 
-- 
2.7.4


