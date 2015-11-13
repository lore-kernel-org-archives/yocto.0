Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13A3EE00C80; Fri, 13 Nov 2015 01:48:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 018C3E00AE9
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2015 01:48:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tAD9mope021402
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2015 01:48:50 -0800
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 13 Nov 2015 01:48:49 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 13 Nov 2015 04:48:48 -0500
Message-ID: <1447408128-245219-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] audit: upgrade 2.4.3 -> 2.4.4
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
X-List-Received-Date: Fri, 13 Nov 2015 09:48:53 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* rebase patch audit-python-configure.patch

* 2.4.4 includes CVE-2015-5186 and bug fixes, detials refer to:
  http://people.redhat.com/sgrubb/audit/ChangeLog

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/audit/audit/audit-python-configure.patch | 7 ++++---
 recipes-security/audit/{audit_2.4.3.bb => audit_2.4.4.bb} | 4 ++--
 2 files changed, 6 insertions(+), 5 deletions(-)
 rename recipes-security/audit/{audit_2.4.3.bb => audit_2.4.4.bb} (96%)

diff --git a/recipes-security/audit/audit/audit-python-configure.patch b/recipes-security/audit/audit/audit-python-configure.patch
index d9b0829..b47cf5d 100644
--- a/recipes-security/audit/audit/audit-python-configure.patch
+++ b/recipes-security/audit/audit/audit-python-configure.patch
@@ -7,12 +7,13 @@ Upstream-Status: pending
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
  configure.ac | 17 ++---------------
  1 file changed, 2 insertions(+), 15 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index 4be62a3..d1842e2 100644
+index 1f48cb4..cdb5219 100644
 --- a/configure.ac
 +++ b/configure.ac
 @@ -94,21 +94,8 @@ if test x$use_python = xno ; then
@@ -29,7 +30,7 @@ index 4be62a3..d1842e2 100644
 -else
 -	python_found="no"
 -	if test x$use_python = xyes ; then
--		AC_MSG_ERROR([Python explicitly required and python headers found])
+-		AC_MSG_ERROR([Python explicitly requested and python headers were not found])
 -	else
 -		AC_MSG_WARN("Python headers not found - python bindings will not be made")
 -	fi
@@ -40,5 +41,5 @@ index 4be62a3..d1842e2 100644
  AM_CONDITIONAL(HAVE_PYTHON, test ${python_found} = "yes")
  
 -- 
-1.8.4.2
+1.9.1
 
diff --git a/recipes-security/audit/audit_2.4.3.bb b/recipes-security/audit/audit_2.4.4.bb
similarity index 96%
rename from recipes-security/audit/audit_2.4.3.bb
rename to recipes-security/audit/audit_2.4.4.bb
index f0fa949..55a5b12 100644
--- a/recipes-security/audit/audit_2.4.3.bb
+++ b/recipes-security/audit/audit_2.4.4.bb
@@ -17,8 +17,8 @@ SRC_URI = "http://people.redhat.com/sgrubb/audit/audit-${PV}.tar.gz \
            file://audit-volatile.conf \
            file://audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch \
 "
-SRC_URI[md5sum] = "544d863af2016b76afd8d1691b251164"
-SRC_URI[sha256sum] = "9c914704fecc602e143e37152f3efbab2469692684c1a8cc1b801c1b49c7abc6"
+SRC_URI[md5sum] = "72b0fd94d32846142bc472f0d91e62b4"
+SRC_URI[sha256sum] = "25f57f465f3230d7b1166b615ffd6748818a3dc225d0e8b396c5b2e951674e23"
 
 inherit autotools pythonnative update-rc.d systemd
 
-- 
1.9.1


