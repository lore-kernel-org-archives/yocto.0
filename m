Return-Path: <kergoth@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99A65E01469
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:14:29 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id 16so7879689iea.36
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=8xR1JqZsI71dpjR96v071dS4ftXeL0I2By1lCEFGBEs=;
	b=IH1EEWnRj9aviYTzkMvzpsxpXnVdp1PIqM6xXwRoffP3dVFEZks3ReKEjWAEEjUNkG
	QzhwlPoQJLRd20l1v4c28GqLdaCVyVmetscL4eOZOeEWLgrkiGqLjXtsP19EvoVFBlSQ
	YTKH2HnZXhDEErskJmO2xhT/NNiNHkaxjQNE/IPzgMIWhbN5jGf5oL+V+Yhe9gAWlSv2
	wANnj6CM28g4vOA4JLBQD9gu4jkMqsLZSRxZB0v5OQZWYHuzA5ac2lfhfxnQ1fdmAqBr
	8ELhpwaUYQ7X8bj5AtoyTKQIcbRL5/rN9Oa4vuZysKlP5A/mFneXIXmi0gW7ZDgdgkzX
	lY9A==
X-Received: by 10.50.181.136 with SMTP id dw8mr545866igc.39.1363655669164;
	Mon, 18 Mar 2013 18:14:29 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id hi4sm13603731igc.6.2013.03.18.18.14.27
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 18:14:28 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Mar 2013 18:14:24 -0700
Message-Id: <1363655664-12157-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-baryon][for-denzil][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 01:14:29 -0000

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


