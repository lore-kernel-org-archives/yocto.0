Return-Path: <kergoth@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15CB0E01472
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:07:17 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id c12so7890169ieb.34
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=eB2OTjpJdKK1vPcdSpkdUeLTdmDnQeX5vS93K+CPraM=;
	b=HBzqkFH0FPkyOz6orCjmK6eAhyULvsYnScyvwYAVCvYfmNiIuKMsmeZFijyz1nT12R
	9YAUK8+E9gdQMocdLn7RsY+fYHXaINupUEftl/wa/O7iXtz7+57+Tw/t2UO1njALx/NK
	RFLULLDoq+8ub8q420f/pHEZujsNbD4iYaaVH7s3/8YjSRdtRqvTbItFSmqYQDErjj7p
	v0m0qNyucfoH0spfHVlvgpr0bmKRjGRs2V/evQGHL5UB25ZWUm1LMLR+NonJXvNLDe/Q
	2U93jaAHeRzgC5u50EDWa9YQC7SqUhnrb7/JUTExr/G6v1hN/I/08M6ATysnlKYp95zI
	3+EA==
X-Received: by 10.42.175.73 with SMTP id az9mr5232359icb.55.1363658836789;
	Mon, 18 Mar 2013 19:07:16 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id dy5sm13829420igc.1.2013.03.18.19.07.15
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 19:07:16 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Mar 2013 19:07:11 -0700
Message-Id: <1363658831-27801-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-selinux][for-denzil][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 02:07:17 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 conf/layer.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index ca0aefa..eb86560 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,11 +1,11 @@
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
 
-- 
1.8.2


