Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 602F8E00BAD; Sun, 23 Jun 2019 11:15:24 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 368FFE00B31
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:21 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id y15so1533174pfn.5
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=RdEzK9Cu4txTUZ0y54C3aTpft6z0tE/cReQxIggB7ok=;
	b=ONyg7XX1FzyHsreHzHhfdliBo7v/l9gG4Ac1avhferfUTGnj+wDVrrZS3FcPHqcdcr
	eIV+6KgPjHbxZohJxPpAati1wrXWgjAcZ7V1bD3sAlJINUOwTos0s0XA9MtkYmPjOIUj
	3ptWJe/T8kZSCzI9SdUVrnVZ9ohT3UkZnaIYdjt6+VId/wHog3etmXCBPUiPM34Zz6WR
	7DjtqYUDldXqinRlbmVZxtLrU9wPk/YrenAuds9eohmUy4V5Z1JaUGCMVjVBP5h4AKX8
	5zMfpOKJz1SBhsSY9xAvfH7wds8y7oFvVEoGP6yVNJZX+J3hHHIgUyMKW5GcmP5KZLBz
	irsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=RdEzK9Cu4txTUZ0y54C3aTpft6z0tE/cReQxIggB7ok=;
	b=K97eJ9RyvTvUomrSTDglP7WClCY/iOF3RwLmFyiUVLkcAYuI9PtLrA/5jduTw4WOnF
	GAUVPvV7wE7P53AEvYBh6OcHMP4Y1vjjO+ZbxL/mMJbYP9iu1wxyoKOGTy9f5VDk8td1
	ATLJ9izJfSiNrkvXH3YV7QFQKOnWS3+I1IPg83QkRPfEPJuD5r0HbhbPuVSteDp3j0hr
	ge+FHYug3ZbKqbLKoV0fFdr+/GjEy/zs9LztIn69yxDya80NzV1rtIOTU1NAnw9SRWzu
	vhH/3t3iYywz0UrMgZOUiA6lGqA1Yz6zxXZ0K9TC3QutnjzicTzRSWvIKb8MLQQUVwaH
	nipg==
X-Gm-Message-State: APjAAAW4FjyLijN7fdMEwhcadzYCQE4439XkAKUFH9rjvpSPWuTbFokJ
	QeC7s/RwjdUi2y3cI10xG2IU5ep+G4g=
X-Google-Smtp-Source: APXvYqyMKzxoDEjf0/7SIqc6/VLwQc4X20g2oICq157uYlRtbPMZI8p11fHbG7kAxi2KvT6GrLc3fA==
X-Received: by 2002:a63:1f50:: with SMTP id q16mr28656554pgm.304.1561313721466;
	Sun, 23 Jun 2019 11:15:21 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id u1sm7855359pgr.94.2019.06.23.11.15.20
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jun 2019 11:15:21 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Jun 2019 11:15:12 -0700
Message-Id: <20190623181518.19564-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190623181518.19564-1-akuster808@gmail.com>
References: <20190623181518.19564-1-akuster808@gmail.com>
Subject: [meta-security][meta-tpm][PATCH 3/9] tpm image: split out tpm2
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
X-List-Received-Date: Sun, 23 Jun 2019 18:15:24 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-core/images/security-tpm-image.bb | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/meta-tpm/recipes-core/images/security-tpm-image.bb b/meta-tpm/recipes-core/images/security-tpm-image.bb
index a337076..dbdd309 100644
--- a/meta-tpm/recipes-core/images/security-tpm-image.bb
+++ b/meta-tpm/recipes-core/images/security-tpm-image.bb
@@ -1,14 +1,13 @@
-DESCRIPTION = "A small image for building meta-security packages"
+DESCRIPTION = "A small image for building a tpm image for testing"
 
 IMAGE_FEATURES += "ssh-server-openssh"
 
 IMAGE_INSTALL = "\
     packagegroup-base \
     packagegroup-core-boot \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm',  'packagegroup-security-tpm',  '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'packagegroup-security-tpm2', '', d)} \
+    packagegroup-security-tpm \
     os-release \
-    ${CORE_IMAGE_EXTRA_INSTALL}"
+"
 
 IMAGE_LINGUAS ?= " "
 
-- 
2.17.1


