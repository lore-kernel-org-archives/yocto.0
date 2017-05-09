Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16685E00ACE; Tue,  9 May 2017 07:47:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A703AE00ACE
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:47:06 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id w69so300559pfk.1
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=3TLUYdh3XbUnqE1uyu3EtnIA9v17R//daT6qtR6fLGg=;
	b=dJ7cOvaV+bueP1P8obmuiCmJZS2RP1czRr4VrRpkxAVJmxCxqYIr7Eyz08udYHLELR
	nhnGQkra8PduDU4t0Xdl23Z9HiXn3hgnbLhS4eDzNIZjyxezeXQo25Bdz3hohZcXJCrA
	ydCI3SVvYZ0vm5Axfes40r44fXbQciZdMQ7cGKsc1Bx0rB38Y2qp3NpP6p3AkS8lXgWx
	gwJHdDkQzd+4ItFviRewKgBJHTuxK7asR1Uz7Vgiv3fMJUGfTphHun8O1eFWDYhRFv6v
	w9eNfUrB5ukTncMsWKAR1ykp0DMwGgKZxvbRw9B3aACuYxf3cHRjnKNCU08l2EF5WEAl
	8ImQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=3TLUYdh3XbUnqE1uyu3EtnIA9v17R//daT6qtR6fLGg=;
	b=NPC6XlE9A3j2MVH1w/gwHLaP2RlxenVz3laUfZgwqaBxVqgFKg1W9H0XjakJDr/GKy
	KDWupj95q2Dp8rx28Wxx8oe7oTxqFdqrxm944boox9OaEk9cCz9DOTRZg5xdEhC/Latl
	nxwE+Nf+w9NKRLPk0QKtP+8NBdDZMy6DR9nLkGsYrVnbZ1idy7RY6iUwv2FEWaHjWvXj
	UJNTyAZ7OhQbApp/KjAkEMX4f9wcUNGoxq8SpyTPv4uLDc81B9LOoG7cUUjWvqVW9/ky
	+HHIMqYrbvw+8fUHXnGDIxlPHRrhbKHFnExqLSWnjh5T7tHfXNzjyHzgxx9IffOshjqa
	p9xg==
X-Gm-Message-State: AODbwcAGgD5YzcTREMkgs0Ns5YurMrb5Moxjhlh4yxdVVrbx4TGCaPyo
	2HkrusI4Eqbt7Gj1
X-Received: by 10.98.204.130 with SMTP id j2mr263589pfk.107.1494341225806;
	Tue, 09 May 2017 07:47:05 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id 194sm319130pgf.62.2017.05.09.07.47.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:47:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:46:53 -0700
Message-Id: <1494341221-17621-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 02/10] change tpm from distro to machine feature
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
X-List-Received-Date: Tue, 09 May 2017 14:47:09 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend     | 2 +-
 recipes-security/packagegroup/packagegroup-core-security.bb | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend
index e6b3c65..208d23f 100644
--- a/meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -1,5 +1,5 @@
 #
 # TPM kernel support
 
-KERNEL_FEATURES_append += "${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' features/tpm/tpm.scc', '', d)}"
+KERNEL_FEATURES_append += "${@bb.utils.contains('MACHINE_FEATURES', 'tpm', ' features/tpm/tpm.scc', '', d)}"
 
diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index ae856c7..2180908 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -11,7 +11,7 @@ PACKAGES = "\
     packagegroup-security-scanners \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
-    ${@bb.utils.contains("DISTRO_FEATURES", "tpm", "packagegroup-security-tpm", "",d)} \
+    ${@bb.utils.contains("MACHINE_FEATURES", "tpm", "packagegroup-security-tpm", "",d)} \
     "
 
 RDEPENDS_packagegroup-core-security = "\
@@ -19,7 +19,7 @@ RDEPENDS_packagegroup-core-security = "\
     packagegroup-security-scanners \
     packagegroup-security-ids  \
     packagegroup-security-mac  \
-    ${@bb.utils.contains("DISTRO_FEATURES", "tpm", "packagegroup-security-tpm", "",d)} \
+    ${@bb.utils.contains("MACHINE_FEATURES", "tpm", "packagegroup-security-tpm", "",d)} \
     "
 
 SUMMARY_packagegroup-security-utils = "Security utilities"
-- 
2.7.4


