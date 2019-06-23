Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 911F0E00B8E; Sun, 23 Jun 2019 11:15:23 -0700 (PDT)
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
	*      [209.85.215.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 564CAE00B1A
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:21 -0700 (PDT)
Received: by mail-pg1-f181.google.com with SMTP id z19so2886263pgl.12
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=FltkyArZFWJM8Y/yEgkvzjbX+cu1zkI/gcO2BG8ckC8=;
	b=JoepammndUPG2h7OS/9W/L8SO8Rxu9y5LnS0/U2IohYDJ1D3x6dkpTTcg8/fnvUgmZ
	0ru4aaIXnEhv/7/u338OHZkHcgWZA5kOaf/AyblONi1WUeyAi1MTkCiNB9AJhPFNWUu7
	wkLqUGAy519mJ105QoL7oB6prixfuOIlzDTYQ4yjSibLdovaPYYNkVp0Cn7mji5vOiBd
	9Y1qaB7vInYOPHapvODrwesJ1sRrjhDww4uAbb83RmI2QUVdXbaNNAreRKW9uFqv8x5T
	Fb+qxrYtN9pSach75MKU0GLW0BWuEGAPJnTK66RrAf8ZjaPnS65aQdm/gIrzoVvINcA9
	JJHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=FltkyArZFWJM8Y/yEgkvzjbX+cu1zkI/gcO2BG8ckC8=;
	b=itVbGtTxOEiG0Of6sfRYTd8DrWLOcqdeeDFeW1ZZdY1ivY5R4IYy5xeGwIHK8kRxk9
	Wg066B8VjCAoQ6hOWpa3uGxvmshxcSHNQxmDi9BeF2mdZ8T1d1Fvbory7Wg9q3q9v9JZ
	86N1svqI3aAf3EC1OUqR43PARmSK+koRRP80O9BEAndCuF3JoRfQu48B82nlTVWSRTjk
	5pveqca7PyAoerZvx1FIp08++PIqQO66L5yZzNA2H4WD8rdibIjTxyjos5zwujya3GhQ
	vlk6bCWvCsahIUgS1BkcBQaewyN9sIUUgW4tI5r/x9OTrQnc9drkOlWtYE2PsgDWMPHn
	stzg==
X-Gm-Message-State: APjAAAViop4u7V7R42tmCQpXbmblWC+6VWf95XtHaDteR9fGVWgCP6py
	ah/b1YBF6iyeObxgnw2RJRbxORbjErY=
X-Google-Smtp-Source: APXvYqwMDURtq/JWjQPHuejr6io5MO5ACGMk2IwxZcos2u9rHgc0z56R7kR6S7XE1HEVaHIYJB3l3w==
X-Received: by 2002:a17:90a:8984:: with SMTP id
	v4mr19923389pjn.133.1561313720754; 
	Sun, 23 Jun 2019 11:15:20 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id u1sm7855359pgr.94.2019.06.23.11.15.20
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jun 2019 11:15:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Jun 2019 11:15:11 -0700
Message-Id: <20190623181518.19564-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190623181518.19564-1-akuster808@gmail.com>
References: <20190623181518.19564-1-akuster808@gmail.com>
Subject: [meta-security][meta-tpm][PATCH 2/9] tpm2 images: create tpm2 image and fix packagegroup
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
X-List-Received-Date: Sun, 23 Jun 2019 18:15:23 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/images/security-tpm2-image.bb | 18 ++++++++++++++++++
 .../packagegroup/packagegroup-security-tpm2.bb |  5 ++++-
 2 files changed, 22 insertions(+), 1 deletion(-)
 create mode 100644 meta-tpm/recipes-core/images/security-tpm2-image.bb

diff --git a/meta-tpm/recipes-core/images/security-tpm2-image.bb b/meta-tpm/recipes-core/images/security-tpm2-image.bb
new file mode 100644
index 0000000..7e047d1
--- /dev/null
+++ b/meta-tpm/recipes-core/images/security-tpm2-image.bb
@@ -0,0 +1,18 @@
+DESCRIPTION = "A small image for building a tpm2 image for testing"
+
+IMAGE_FEATURES += "ssh-server-openssh"
+
+IMAGE_INSTALL = "\
+    packagegroup-base \
+    packagegroup-core-boot \
+    packagegroup-security-tpm2 \
+    os-release \
+"
+
+IMAGE_LINGUAS ?= " "
+
+LICENSE = "MIT"
+
+inherit core-image
+
+export IMAGE_BASENAME = "security-tpm2-image"
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 5ded3a2..9296d99 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -5,17 +5,20 @@ LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda
 
 inherit packagegroup
 
-PACKAGES = "packagegroup-security-tpm2"
+PACKAGES = "${PN}"
 
 SUMMARY_packagegroup-security-tpm2 = "Security TPM 2.0 support"
 RDEPENDS_packagegroup-security-tpm2 = " \
     tpm2-tools \
     trousers \
+    tpm2-tss \
     libtss2 \
+    libtss2-mu \
     libtss2-tcti-device \
     libtss2-tcti-mssim \
     tpm2-abrmd \
     tpm2-pkcs11 \
+    ibmswtpm2 \
     cryptsetup-tpm-incubator \
     "
 
-- 
2.17.1


