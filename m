Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62925E00D30; Sun, 26 May 2019 21:56:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB932E006D2
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:50 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id f97so6561873plb.5
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=ygbEKojVfZ9VG6qVrPj7yiCLvzKrRsrFI4/UFsYOR3A=;
	b=tn7PPYgjQyjnkTmUYKHz/aYORHRGkZEKcr5LoZGuipwLDnojjICzF9rLpZaAEiJ+ta
	beWnImQtE9ILuZ1ocgzx6lElpDOUaYVei64kuwqbOradbzgrHkhGi6s5M6aReWQ8vriD
	hh3Q0Ou2jwdVWwR8MKRiPXJDBYXtCb8EeyPVTGqmkChbuQc9sV6Ey6o7igOzQMqe4yvs
	dN8ym0jUjPgqMrBBMmmfX8MrFPc43oZ5AJInqFaHkQgKJfs17nkJ2J8J3OM6bvb6/dnd
	S6xliTSpdn/c4ibKBslEKeevfj2tU0MKupLBeYRi1lrcgn51KinN3SUdsLmWZ/IiBNoq
	utiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=ygbEKojVfZ9VG6qVrPj7yiCLvzKrRsrFI4/UFsYOR3A=;
	b=l5QIcnKt7PlsGx2l/0v6qEiJC4jnsKHrSAWGUP6ssdtjorV+avnQBPBfEPZYVQuAji
	n7lmcCmm6hxOWXajf+peEFQJftrJyZgfQeinlDWIS/Su3K2PtCoE7XIRMnOfsWOTNmxq
	0phSnEFvIlGBfDofsvecxUcTYNpiOxJllMUQext775ZnVkdOv55DUOzyCdwTpKdTc3NJ
	gIgD8vtKSH7msn21wRTiHfRvR3i1umCeLuwmSPE6B7w0d1oXDV4EA0iFv0l9crqDQ2V/
	8i3jQJvWmEkftDZo5rzuC9L8Gr0LC4trWDg1M0abJOEPbTnTOj8/SsTZdtPokzBq/E4O
	KsNw==
X-Gm-Message-State: APjAAAU66D63ExZJgxEY6JNaykJcCCPUTOxV7FP1IsAzlyPSY6xyP0tI
	IwQMl2c0RRDLpdkVYzuLcNyoh22k
X-Google-Smtp-Source: APXvYqzz4hMQCGOOMsinzlVLtaJOYSVCY6KHEeLoPCkFMTR1/FRjeuQ32x0bHkI/OlISNN1PtB4oiQ==
X-Received: by 2002:a17:902:2bc5:: with SMTP id
	l63mr5833186plb.221.1558933010240; 
	Sun, 26 May 2019 21:56:50 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.49 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:36 -0700
Message-Id: <20190527045641.18884-10-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 09/14] ima_policy_simple: add another sample policy
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
X-List-Received-Date: Mon, 27 May 2019 04:56:52 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../ima_policy_simple/files/ima_policy_simple  |  4 ++++
 .../ima_policy_simple/ima-policy-simple_1.0.bb | 18 ++++++++++++++++++
 2 files changed, 22 insertions(+)
 create mode 100644 meta-integrity/recipes-security/ima_policy_simple/files/ima_policy_simple
 create mode 100644 meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb

diff --git a/meta-integrity/recipes-security/ima_policy_simple/files/ima_policy_simple b/meta-integrity/recipes-security/ima_policy_simple/files/ima_policy_simple
new file mode 100644
index 0000000..38ca8f5
--- /dev/null
+++ b/meta-integrity/recipes-security/ima_policy_simple/files/ima_policy_simple
@@ -0,0 +1,4 @@
+# Very simple policy demonstrating the systemd policy loading bug
+# (policy with one line works, two lines don't).
+dont_appraise fsmagic=0x9fa0
+dont_appraise fsmagic=0x62656572
diff --git a/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb b/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
new file mode 100644
index 0000000..17132aa
--- /dev/null
+++ b/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
@@ -0,0 +1,18 @@
+SUMMARY = "IMA sample simple policy"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+# This policy file will get installed as /etc/ima/ima-policy.
+# It is located via the normal file search path, so a .bbappend
+# to this recipe can just point towards one of its own files.
+IMA_POLICY ?= "ima_policy_simple"
+
+SRC_URI = " file://${IMA_POLICY}"
+
+do_install () {
+    install -d ${D}/${sysconfdir}/ima
+    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
+}
+
+FILES_${PN} = "${sysconfdir}/ima"
+RDEPENDS_${PN} = "ima-evm-utils"
-- 
2.17.1


