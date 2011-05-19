Return-Path: <marc.ferland@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3FC174C800B0
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 13:00:37 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk2 with SMTP id 2so4307278qyk.14
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 11:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:from:to:cc:subject:date:message-id:x-mailer;
	bh=2bjnmswye7+NLt0Uqzbsf42TWo2g8VZj0SYLtxTiHBM=;
	b=eudRgbzS79U8WNO3FhlybZ5OZPR38F/rK3rZfpXpQZJ6tiNzUhm7vHRJztILQRncEl
	GJzAaq55cdadx9nwBA+hLNrdhaFyCz8rH1R3e9O9AP6nHnU3Ju7qQYtfcCJoWr9iMWu/
	gkXCcKm33cmd34eNzvqsTZOWgsyCrHZNNER5o=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer;
	b=xK5zZ9xKFECCCuvuRW6FDXabwMnOAiJRdb6qwSzgBtaXYtPGA69qMHaWJMYLHmYkmi
	SWlYRLjue90whfA4f0YgPD1BdXMO/eq1EQPU/k6r5Ogpp2ehUFMHpBmWhQ+t8EhaDF73
	5VFqv0zoaBM8gVEzOypQMva2+RI+H7pwU3J7M=
Received: by 10.229.5.209 with SMTP id 17mr2528161qcw.85.1305828036646;
	Thu, 19 May 2011 11:00:36 -0700 (PDT)
Received: from localhost.localdomain
	(modemcable066.15-37-24.static.videotron.ca [24.37.15.66])
	by mx.google.com with ESMTPS id c27sm1720854qck.10.2011.05.19.11.00.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 19 May 2011 11:00:36 -0700 (PDT)
From: Marc Ferland <marc.ferland@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 19 May 2011 14:00:31 -0400
Message-Id: <1305828031-10355-1-git-send-email-ferlandm@sonatest.com>
X-Mailer: git-send-email 1.7.1
Cc: Marc Ferland <ferlandm@sonatest.com>
Subject: [PATCH] Add SMP support to crownbay.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 May 2011 18:00:37 -0000

This patch fixes Yocto BUG #1015. It adds support for SMP on the crownbay 
architecture from the meta-intel branch.
---
 .../linux/linux-yocto-stable_git.bbappend          |    2 ++
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 8309478..44f892f 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -2,6 +2,8 @@ FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay  = "crownbay"
+KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
 
 COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
 KMACHINE_crownbay-noemgd  = "crownbay"
+KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
index 176acd3..387c207 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -2,6 +2,8 @@ FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay  = "yocto/standard/crownbay"
+KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
 
 COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
 KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
+KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
-- 
1.7.1


