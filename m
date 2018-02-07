Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59A67E00EF3; Tue,  6 Feb 2018 23:12:50 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 534CCE00D5F
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 23:12:48 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w177Cmxg014990
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 6 Feb 2018 23:12:48 -0800
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Tue, 6 Feb 2018 23:12:43 -0800
From: <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 7 Feb 2018 14:49:25 +0800
Message-ID: <20180207064925.2043-2-kai.kang@windriver.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20180207064925.2043-1-kai.kang@windriver.com>
References: <20180207064925.2043-1-kai.kang@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/2] libselinux-python: remove rdepends python-importlib
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
X-List-Received-Date: Wed, 07 Feb 2018 07:12:50 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Package python-importlib has been removed and the functionality is now
part of python-core. So remove python-importlib from runtime dependency
of libselinux-python.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-security/selinux/libselinux.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index bd5ce8d..aaa3f3b 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -8,7 +8,6 @@ LICENSE = "PD"
 inherit lib_package pythonnative
 
 DEPENDS += "libsepol python libpcre swig-native"
-RDEPENDS_${PN}-python += "python-importlib"
 
 PACKAGES += "${PN}-python"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
-- 
2.11.0


