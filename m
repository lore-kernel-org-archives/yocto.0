Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DC50E009E2; Thu, 17 May 2018 23:06:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B46CAE009B9
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 23:06:50 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w4I66nGU008422
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 23:06:49 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Thu, 17 May 2018 23:06:42 -0700
From: <mingli.yu@windriver.com>
To: <mark.asselstine@windriver.com>, <bruce.ashfield@windriver.com>,
	<yocto@yoctoproject.org>
Date: Fri, 18 May 2018 14:06:41 +0800
Message-ID: <1526623601-452418-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-openstack][PATCH] python-requests: remove PREFERRED_VERSION limit
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
X-List-Received-Date: Fri, 18 May 2018 06:06:51 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

* Previously, add PREFERRED_VERSION for python-requests
  as we want to use version >=2.10.0 and the full commit
  message as below:

  commit 185eccef8964632f5b255265a0a8e59fe5858397
  Author: Mark Asselstine <mark.asselstine@windriver.com>
  Date:   Fri Jan 20 16:59:31 2017 -0500

    python-requests: use version from meta-openembedded

    We want to use a version >=2.10.0 as required by python-keystoneauth1
    so set a PREF so we don't get the older version found in
    meta-virtualization and used by docker.

    Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

* Now meta-oe upreved python-requests to 2.18.4, remove
  PREFERRED_VERSION limit to avoid bitbake messages like:

  "NOTE: preferred version 2.13.0 of python-requests not available"

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 meta-openstack/conf/layer.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-openstack/conf/layer.conf b/meta-openstack/conf/layer.conf
index 55df509..c376d58 100644
--- a/meta-openstack/conf/layer.conf
+++ b/meta-openstack/conf/layer.conf
@@ -31,7 +31,6 @@ PREFERRED_VERSION_python-futures = "3.0.3%"
 PREFERRED_VERSION_python-django = "1.8.6"
 PREFERRED_VERSION_python-netaddr = "0.7.19"
 PREFERRED_VERSION_python-sqlalchemy = "1.0.16"
-PREFERRED_VERSION_python-requests = "2.13.0"
 PREFERRED_VERSION_python-eventlet = "0.20.0"
 PREFERRED_VERSION_python-warlock = "1.2.0"
 PREFERRED_VERSION_python-jsonschema = "2.6.0"
-- 
2.7.4


