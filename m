Return-Path: <kergoth@gmail.com>
Received: from mail-ia0-f179.google.com (mail-ia0-f179.google.com
	[209.85.210.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF4D1E01472
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:06:46 -0700 (PDT)
Received: by mail-ia0-f179.google.com with SMTP id x24so5857521iak.10
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=ayBJTf6OA8JeUvOqgHU9NLYFePkpskCDB7psk0oiaDU=;
	b=LtF3g9oQkKAOvKnNNyeIuvTObAqGQ3xPrv6k81qUqMQwAyE/e8k8jOjPt9FCzS7aOn
	o88UhRls3RokcjadhiekdRhqQSOaDvb65cbCluSFBVUCAyYcYR7uskRdLrJGjyo57TKC
	Ik5/iR43x8q+NUE7qyRZQDu8nem6MAQEmA6rHx1ZfM2Wr+VhlvwOAswFhE9Yso/f0oiI
	EdNv2lm/mMWyi3oq0Mp4GQ4muPdlChDahJvRYblek7Z5og9vb05QPn7UDY4bohXu0lCw
	yHYgY2kioks6JTv1Bzy3y62WrfMreREN1uHmkebwtpWWkw33uAWg6pYiDZv2UE5t60Z3
	QPtQ==
X-Received: by 10.42.88.145 with SMTP id c17mr9832186icm.47.1363658806519;
	Mon, 18 Mar 2013 19:06:46 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id wn10sm12075570igb.2.2013.03.18.19.06.44
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 19:06:45 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Mar 2013 19:06:40 -0700
Message-Id: <1363658800-27480-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-selinux][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 02:06:47 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 conf/layer.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index ca1bb46..7af76a1 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,12 +1,12 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "selinux"
-BBFILE_PATTERN_selinux := "^${LAYERDIR}/"
+BBFILE_PATTERN_selinux = "^${LAYERDIR}/"
 BBFILE_PRIORITY_selinux = "5"
 
 # This should only be incremented on significant changes that will
-- 
1.8.2


