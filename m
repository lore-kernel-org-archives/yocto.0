Return-Path: <kergoth@gmail.com>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 547D8E01469
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:14:13 -0700 (PDT)
Received: by mail-pd0-f171.google.com with SMTP id 10so1005483pdc.16
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=8xR1JqZsI71dpjR96v071dS4ftXeL0I2By1lCEFGBEs=;
	b=AEfTWb8JxTS871d/SExSw5b9kY9M3bAIUyunfGcFsJ3B68pO025mWe1i4N7Oh83yml
	bnsSZvZ5sdHMU7Oy/oM5vHIvUP2Qr88FzaNlv8W/qvWu+aEZoDP07LlAfpI0G5aeKUVD
	r5O7NUw8kIYu3giGYWg5NVApkSMVX9kJ0pb4j02iud1vT9HLwERytHbj9iynemwJ2vqX
	P87VKEjHr6O20MCYE/XActcAoe3aOLcY0399YfJIIDT2jh+lHdwM989G3onPg1CvLqee
	JFXmq71c9MeEa88irLkJS+D8hZNwS+1dV42AytlqGEfLydHz25wjsUidIuGeliaIukFF
	BNQw==
X-Received: by 10.66.80.66 with SMTP id p2mr388762pax.184.1363655652998;
	Mon, 18 Mar 2013 18:14:12 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id na4sm22039156pbc.8.2013.03.18.18.14.10
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 18:14:12 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Mar 2013 18:14:06 -0700
Message-Id: <1363655646-11990-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-baryon][for-danny][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 01:14:13 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 conf/layer.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 0d33e3b..5515047 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -2,12 +2,12 @@
 # Copyright 2011 Intel Corporation
 
 # We have a conf directory, prepend to BBPATH to prefer our versions
-BBPATH := "${LAYERDIR}:${BBPATH}"
+BBPATH =. "${LAYERDIR}:"
 
 # We have recipes-* directories, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend"
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "meta-baryon"
-BBFILE_PATTERN_meta-baryon := "^${LAYERDIR}/"
+BBFILE_PATTERN_meta-baryon = "^${LAYERDIR}/"
 BBFILE_PRIORITY_meta-baryon = "7"
 
-- 
1.8.2


