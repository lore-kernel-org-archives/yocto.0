Return-Path: <kergoth@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87797E01469
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:33:36 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id qd14so1972338ieb.39
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=XA1TZekOWTViSmEg3QYisdOqHxluQiVg8GyP2q5GVyk=;
	b=BuWoLwBAUO8P5H7uOYpbzehPHKqaLAloGkc64fnwOHiO4gEL4HW1RHGucSN8aCIC8A
	EGDeEqQsB3SyqcmsJnEf3BxNpkYYjxV+0kz+dwItK7kj/SY8pFGZyFyUp3e2gsVRuH3w
	znHbiRdCZMRWAQ4xMXpuSSJlonCf5PxMl6tC/oqWhMrV+BKm6cBs48pf3LKuxpT4kfbh
	uXLSKp61aCFEg45p0FfN9T8KKh3zK9tZAkmCmwldg8ZoJwR9Ih4ItzXwbcMfwEOTWGWo
	rqgSE8J5m+lxeLKsgFFOJibtYxg4FsV2XsuPUGym8TkylMJZXXBeDXFHCGyfhTLgH/2e
	CdFA==
X-Received: by 10.50.5.180 with SMTP id t20mr626113igt.80.1363660416000;
	Mon, 18 Mar 2013 19:33:36 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id in10sm12622199igc.1.2013.03.18.19.33.34
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 19:33:35 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Mar 2013 19:33:30 -0700
Message-Id: <1363660410-31689-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-qt3][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 02:33:36 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 conf/layer.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index f4597db..84ab5f7 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,10 +1,10 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb"
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb"
 
 BBFILE_COLLECTIONS += "qt3"
-BBFILE_PATTERN_qt3 := "^${LAYERDIR}/"
+BBFILE_PATTERN_qt3 = "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt3 = "6"
 
-- 
1.8.2


