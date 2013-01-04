Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC04AE011DB
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 03:28:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r04BSxmJ010645
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 4 Jan 2013 03:28:59 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Fri, 4 Jan 2013 03:28:57 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Fri, 4 Jan 2013 13:29:14 +0200
Message-ID: <1357298954-17933-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH] layer.conf: Use .= for adding to BBPATH and += to BBFILES
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Jan 2013 11:28:57 -0000
Content-Type: text/plain

Fixes parsing errors which is appearing after this commit to
meta-openembedded

http://cgit.openembedded.org/meta-openembedded/commit/?id=3c21a46020bd0816579648f684c41dbd6333583e

This triggers
exception NameError: name 'base_contains' is not defined
without this change

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 conf/layer.conf |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 1a90791..346cc0e 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,9 +1,10 @@
 BBPATH ?= ""
 # We add conf directory to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory containing .bb and .bbappend files, add to BBFILES
-BBFILES += "${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend"
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
+            ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "ivi"
 BBFILE_PATTERN_ivi := "^${LAYERDIR}/"
-- 
1.7.9.5


