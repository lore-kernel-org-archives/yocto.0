Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C7B3E007EF; Sun, 17 Aug 2014 19:42:32 -0700 (PDT)
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
	*      [209.85.192.181 listed in list.dnswl.org]
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 944F5E007EF
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 19:42:29 -0700 (PDT)
Received: by mail-pd0-f181.google.com with SMTP id g10so6630180pdj.12
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 19:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=C/epBSh5Ajb23f5DnZ58aS0tX3LemC2zv/XEuNSJJ/g=;
	b=h6AG9AS7szkuqi2wx82JIIlkM1oWk8rGc3XEyk0+D54V3P5H0qo81mPv7o4wZfqIft
	9L6BBkFd5gUKXyvmt4Le7aHMnFXHy+xDw1HBDMELzJmotjZLUDeB+/XdFfC3kYq5hzgs
	0ykrfGjtmcPGLp04T+KrVFWmNJDsirYxO6/P+drBrujNvRSFcmvP4R8xvhjLldcRWunC
	T/g/hdwUNqAZQgOq2mBZ8wOuSEhssMPiXiN9UgDRgFdBvYEfrTfXr2qh/vczix5NbEgi
	v52tGKBZF1SV/6DMKRM8SLxJ2UavTtIFR3PNs48/i5ZE2KhzEV+h9bMaS5E7tFzXNWpS
	Lh8w==
X-Received: by 10.68.102.34 with SMTP id fl2mr30919809pbb.2.1408329747563;
	Sun, 17 Aug 2014 19:42:27 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	qp12sm22517640pdb.80.2014.08.17.19.42.25 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 17 Aug 2014 19:42:26 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 17 Aug 2014 19:42:18 -0700
Message-Id: <1408329739-14758-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1408329739-14758-1-git-send-email-akuster808@gmail.com>
References: <1408329739-14758-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] samhain: client package
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
X-List-Received-Date: Mon, 18 Aug 2014 02:42:32 -0000

This is the client portion.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/samhain/samhain-client_3.1.1.bb | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 recipes-security/samhain/samhain-client_3.1.1.bb

diff --git a/recipes-security/samhain/samhain-client_3.1.1.bb b/recipes-security/samhain/samhain-client_3.1.1.bb
new file mode 100644
index 0000000..501c3b8
--- /dev/null
+++ b/recipes-security/samhain/samhain-client_3.1.1.bb
@@ -0,0 +1,21 @@
+SAMHAIN_MODE="client"
+INITSCRIPT_PARAMS = "defaults 15 85"
+
+require samhain.inc
+
+#Let the default Logserver be 127.0.0.1
+EXTRA_OECONF += " \
+        --with-logserver=${SAMHAIN_SERVER} \
+        --with-port=${SAMHAIN_PORT} \
+        --with-config-file=/etc/samhainrc \
+        --with-data-file=/var/lib/samhain/samhain_file \
+        "
+
+
+INSANE_SKIP_${PN} = "already-stripped"
+
+FILES_${PN} += "\
+    /run \
+    "
+
+RDEPENDS_${PN} = "acl zlib attr"
-- 
1.9.1


