Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92775E007C2; Wed, 11 Jan 2017 12:55:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A1E7E0049A
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 12:55:23 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id f144so55589094pfa.2
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 12:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=8poW5ghcza2Io8ljCneiic2hSPwqmqzmKN/G0yWasLg=;
	b=F8a8oyzpwv3fZFRT965kld558S8aZd04maMzgJGMj1BumxCtDCU86otlF/dOySFEEA
	EIpr7/ok1rBw+MQWBq08Wwi0dxGVQFFP59a7kiMUnkwEdyr5oN1AYNjr7QBPNbDBI2fS
	HYwUC7NU0tPe39Pr5q9v1C8udMzV4b3HZKXliq07gMHY5KdynXOA3LTZtw3Y2y70f6Ij
	a7XTrMafe3VJuGyFkBozm/MSPCZBVjMPvPrp/tNr55O2KvX1bjqjvC8Y/2JgBFw2S0Rt
	vD9GwmJf+3Fm79SHKUlV5/Kz/h1Aj+NPjoS1x16DuCNGl+gt+yb87ncIepojVdenlz4S
	M/Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=8poW5ghcza2Io8ljCneiic2hSPwqmqzmKN/G0yWasLg=;
	b=KNqSwR4YxkkTgM+/LO4DiR3MmWw3sKrqermmtOsnjCQ7nZ1IIO8UNSw8uNqGw+0mtv
	2vvYdAHyeBt6JK3nMuyj3tPOWcyAGAO36MF53ZywZ5v/dIpgCIa99yoOMhPiP1/8Gt+c
	qQlE5Rpw/MwqphNDHCDft0YSIUnoN5i39yZGzHd5+XXg54aiCCNnSiaK+UxKzzDsTfFB
	3kJcJdpTB1sGVO3Q/Bk4frYiqa5kT8HeGLcx7Z1jkp1zbY6q3HS7Dy9nGRv7Z7Wrkbg/
	G9oAlGJPfgKgTBQ5rDqmpEiLKVz1KreWU92huhXFQbFKs+3Knk2BZGiGcg1T2IQ9z5s9
	8srw==
X-Gm-Message-State: AIkVDXLzek1CX49A3Iu7PcX7zJom89d1aKe/CY4mTHBiSHPKEXIpwzjZ2sfK8iBvagdB+hsy
X-Received: by 10.84.217.133 with SMTP id p5mr16178576pli.164.1484168122528;
	Wed, 11 Jan 2017 12:55:22 -0800 (PST)
Received: from raltherr-linux.svl.corp.google.com ([100.123.242.49])
	by smtp.gmail.com with ESMTPSA id
	18sm15978078pgf.28.2017.01.11.12.55.21 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 11 Jan 2017 12:55:21 -0800 (PST)
From: Rick Altherr <raltherr@google.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Jan 2017 12:55:20 -0800
Message-Id: <20170111205520.30747-1-raltherr@google.com>
X-Mailer: git-send-email 2.11.0.390.gc69c2f50cf-goog
Subject: [PATCH] kernel-fit: Change FIT (kernel+initrd) symlinks to fitImage-*
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
X-List-Received-Date: Wed, 11 Jan 2017 20:55:26 -0000

KERNEL_IMAGETYPE only provides the first image type specified in
KERNEL_IMAGETYPES which can provide surprising results.  Since this
class is solely for FIT images, just hardcode the names to fitImage-*.

Change-Id: I58f31bc23c0fe6dc0757f26aa15a440b927fc917
Signed-off-by: Rick Altherr <raltherr@google.com>
---
 meta/classes/kernel-fitimage.bbclass | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/classes/kernel-fitimage.bbclass b/meta/classes/kernel-fitimage.bbclass
index 2934b3a31a..6d9d8d7485 100644
--- a/meta/classes/kernel-fitimage.bbclass
+++ b/meta/classes/kernel-fitimage.bbclass
@@ -410,11 +410,11 @@ kernel_do_deploy_append() {
 
 		if [ -n "${INITRAMFS_IMAGE}" ]; then
 			echo "Copying fit-image-${INITRAMFS_IMAGE}.its source file..."
-			its_initramfs_base_name="${KERNEL_IMAGETYPE}-its-${INITRAMFS_IMAGE}-${PV}-${PR}-${MACHINE}-${DATETIME}"
-			its_initramfs_symlink_name=${KERNEL_IMAGETYPE}-its-${INITRAMFS_IMAGE}-${MACHINE}
+			its_initramfs_base_name="fitImage-its-${INITRAMFS_IMAGE}-${PV}-${PR}-${MACHINE}-${DATETIME}"
+			its_initramfs_symlink_name=fitImage-its-${INITRAMFS_IMAGE}-${MACHINE}
 			install -m 0644 fit-image-${INITRAMFS_IMAGE}.its ${DEPLOYDIR}/${its_initramfs_base_name}.its
-			fit_initramfs_base_name="${KERNEL_IMAGETYPE}-${INITRAMFS_IMAGE}-${PV}-${PR}-${MACHINE}-${DATETIME}"
-			fit_initramfs_symlink_name=${KERNEL_IMAGETYPE}-${INITRAMFS_IMAGE}-${MACHINE}
+			fit_initramfs_base_name="fitImage-${INITRAMFS_IMAGE}-${PV}-${PR}-${MACHINE}-${DATETIME}"
+			fit_initramfs_symlink_name=fitImage-${INITRAMFS_IMAGE}-${MACHINE}
 			install -m 0644 arch/${ARCH}/boot/fitImage-${INITRAMFS_IMAGE} ${DEPLOYDIR}/${fit_initramfs_base_name}.bin
 		fi
 
-- 
2.11.0.390.gc69c2f50cf-goog


