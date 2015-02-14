Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDD1BE002F9; Fri, 13 Feb 2015 21:00:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EBC5E00289
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 21:00:36 -0800 (PST)
Received: by mail-pa0-f47.google.com with SMTP id lf10so23167533pab.6
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 21:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=O4QSBLwEc30T2wU5+5qYGQNaw0EEsvO6QamsySRr9yE=;
	b=yRfD3ba4ml6kv+fRL77O+SGSE2c6Ok79jHhaJMR+ceqX3x0SW8Legrn2lkTG2yudpa
	9MzVhmY7/R7lTkLY//iCtM94tk9WG0YkeIAVIVqB5PQzoN+niTZ7b8ADx/eH0eHe5r3u
	8NV3dmOCn0odbD++DmpJEMcgcJBp2V5yuEi7RRi+O+mciL8iak6S7bYhwrXbd2gjhSGZ
	Z7oWQCWmlBOR8+mYS2p7WPJQnvCFxqA4kklrIEnZWbR7xuM/tc1iww0yxz1NJplKvB+W
	uI+dRBKKLnvBNNcTVw34+zxIgIaaf5bgR5d0Tf5b6YSATiBfz2PlilF+a+z7nhZU6AfA
	UfYQ==
X-Received: by 10.70.136.66 with SMTP id py2mr10617746pdb.100.1423890036319;
	Fri, 13 Feb 2015 21:00:36 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id gk1sm8171837pbb.61.2015.02.13.21.00.34
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 13 Feb 2015 21:00:35 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Feb 2015 21:00:31 -0800
Message-Id: <1423890031-5704-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-cgl][PATCH] heartbeat: fix license issue
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
X-List-Received-Date: Sat, 14 Feb 2015 05:00:41 -0000

From: Armin Kuster <akuster@mvista.com>

WARNING: heartbeat: LICENSE value "GPLv2 LGPLv2+" has an invalid format - license names must be separated by the following characters to indicate the license selection: &|()

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
index a866f0f..7ec7c5d 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
@@ -22,7 +22,7 @@ It implements the following kinds of heartbeats: \
 "
 HOMEPAGE = "http://linux-ha.org/"
 SECTION = "System Environment/Daemons"
-LICENSE = "GPLv2 LGPLv2+"
+LICENSE = "GPLv2 | LGPLv2+"
 LIC_FILES_CHKSUM = " \
     file://doc/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b \
     file://doc/COPYING.LGPL;md5=d8045f3b8f929c1cb29a1e3fd737b499 \
-- 
1.9.1


