Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C181E00C2A; Mon, 17 Oct 2016 17:02:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D741AE00C3A
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:44 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id 128so13669730pfz.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=v6suqlcbaELJXn/l+2sxaF5401qdfDduUB5/ELi9hEY=;
	b=DOlnzbqYY1qDZick84ntewmyIUbgxoKuCRaSYJUIJEPnejsr1gXkxkG2lWt4L1GJDH
	rRSJN9nSG9v8lzkPBleFiwWV1RmZm4BkM59arL/s0hx/uOqchuh/57a/AMiwwWK5yyhy
	yDZCu7vmTfTwgrer1waEpq3HIJMk11BrCBU/ST5z09HhPry21KvUanRnmr2Y7itfnq2O
	efp+U3Swb63QKNS/+KLV2mdL7/MkTVU3abw/bwBAMFh8GYzeiUukROUUut30AiJCeT7Y
	0BQCLZCyZyOy16hHcsS71kRHmZG/0qV0BnelXc5YnfdI23Datr7xX1EVNGki2Yxfb0YP
	fmiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=v6suqlcbaELJXn/l+2sxaF5401qdfDduUB5/ELi9hEY=;
	b=DgLmAy6G+E6rqex54cgu+MHS9RJvtjuMOQGyqa+IHflOexRKBPqIw3d7P3V3QqQ24M
	5zf8HlpZP1P33qB92BA57Q0oC++8DU0kaA4Peh92Z6M/ebJxW1mjzOzdiXOGjfx3Tvln
	KcykVkW6e41o9417PxK+La4mQ5gT3260VaR534TiAM6XOfCnAO1QEkJfuNPhOmfSDO9J
	OJO1ae44DtCwWMnHhvf3Y+ERSPM/QWLl8BLv0h/9bxbWUdYM2fMR/0AXM4RxVOdWtqYW
	H6zYkHhCqdYV2gGsri3mOqpHxsOnEyPa1S4xFo4tC9L8TB2hfvVDy78X2Jc+1nhk5kcx
	A5ng==
X-Gm-Message-State: AA6/9RmITLHk22R4XgPFm5r9pRIpmyI0Bqe43erdvKBCRGTbvwofZxGb6AlEMR++GlNtsQ==
X-Received: by 10.99.108.130 with SMTP id h124mr150446pgc.90.1476748964157;
	Mon, 17 Oct 2016 17:02:44 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:25 -0700
Message-Id: <1476748950-21342-12-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 12/17] images: add a client and server image
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:46 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/images/security-client-image.bb | 17 +++++++++++++++++
 recipes-security/images/security-server-image.bb | 20 ++++++++++++++++++++
 2 files changed, 37 insertions(+)
 create mode 100644 recipes-security/images/security-client-image.bb
 create mode 100644 recipes-security/images/security-server-image.bb

diff --git a/recipes-security/images/security-client-image.bb b/recipes-security/images/security-client-image.bb
new file mode 100644
index 0000000..1a92479
--- /dev/null
+++ b/recipes-security/images/security-client-image.bb
@@ -0,0 +1,17 @@
+DESCRIPTION = "A Client side Security example"
+
+IMAGE_INSTALL = "\
+    packagegroup-base \
+    packagegroup-core-boot \
+    os-release \
+    samhain-client \
+    ${@bb.utils.contains("DISTRO_FEATURES", "x11", "packagegroup-xfce-base", "", d)} \
+    ${ROOTFS_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL}"
+
+IMAGE_LINGUAS ?= " "
+
+LICENSE = "MIT"
+
+inherit core-image
+
+export IMAGE_BASENAME = "security-client-image"
diff --git a/recipes-security/images/security-server-image.bb b/recipes-security/images/security-server-image.bb
new file mode 100644
index 0000000..502b5c1
--- /dev/null
+++ b/recipes-security/images/security-server-image.bb
@@ -0,0 +1,20 @@
+DESCRIPTION = "A Serve side image for Security example "
+
+IMAGE_FEATURES += "ssh-server-openssh"
+
+IMAGE_INSTALL = "\
+    packagegroup-base \
+    packagegroup-core-boot \
+    samhain-server \
+    os-release \
+    ${ROOTFS_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL}"
+
+IMAGE_LINGUAS ?= " "
+
+LICENSE = "MIT"
+
+inherit core-image
+
+export IMAGE_BASENAME = "security-server-image"
+
+IMAGE_ROOTFS_EXTRA_SPACE = "5242880"
-- 
2.7.4


