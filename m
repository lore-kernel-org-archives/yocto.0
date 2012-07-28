Return-Path: <leon.woestenberg@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B82E2E002AB
	for <yocto@yoctoproject.org>; Sat, 28 Jul 2012 06:45:33 -0700 (PDT)
Received: by eaab14 with SMTP id b14so820114eaa.35
	for <yocto@yoctoproject.org>; Sat, 28 Jul 2012 06:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=1SQyDr9T6gnFDpHqULm/4lwKdijBuNtWiJ3ckcE74Nw=;
	b=JQn2dJ2RSygs4rFIDR3uI0qGLSSXdXgQ8e8NFifcyHuk35/pydkNN1GKsJfxpuLRPy
	QJN8MY91VHENcVQKFkeAkhHzT3cXopLE85MImamwcrnE09lw/S5lbPgthpRqI/s01srQ
	5EuO3ls1MmHylZtUYCJZODrb6XvBHXaWVwlCglLTCtak1s4xUrp3/cA4g6bxT3lu8Gkb
	2PbKVkiBXOu7ueP+VCzO7E2CMpOxWQjEcb8eNyJWNH6j/aAJ6y5+vIx4dQa5KCIa2+aJ
	owVF4jrVz+rAKFAFwYsEuUO5RKvk1KWC71/8EejSBtvlGvLwZ/hnoUq2w1EsmAEHqzrM
	exaQ==
Received: by 10.14.178.131 with SMTP id f3mr5987066eem.38.1343483132296;
	Sat, 28 Jul 2012 06:45:32 -0700 (PDT)
Received: from localhost.localdomain (203-158-ftth.onsneteindhoven.nl.
	[88.159.158.203])
	by mx.google.com with ESMTPS id s8sm13701033eeo.8.2012.07.28.06.45.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 28 Jul 2012 06:45:30 -0700 (PDT)
From: Leon Woestenberg <leon.woestenberg@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 28 Jul 2012 15:45:25 +0200
Message-Id: <1343483125-26065-1-git-send-email-sidebranch.openembedded@gmail.com>
X-Mailer: git-send-email 1.7.0.4
X-Mailman-Approved-At: Mon, 30 Jul 2012 08:01:29 -0700
Cc: Leon Woestenberg <leon@sidebranch.com>,
	Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH] kernel.bbclass: Iff exists, copy bounds.h for external module building.
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
X-List-Received-Date: Sat, 28 Jul 2012 13:45:34 -0000

From: Leon Woestenberg <leon@sidebranch.com>

Signed-off-by: Leon Woestenberg <leon@sidebranch.com>
---
 meta/classes/kernel.bbclass |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index c21ab96..bd3e335 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -183,6 +183,12 @@ kernel_do_install() {
 		cp arch/powerpc/lib/crtsavres.o $kerneldir/arch/powerpc/lib/crtsavres.o
 	fi
 
+	# make -C $kerneldir _mrproper_scripts deleted this file, but we need it for
+	# building external modules like compat-wireless.
+	if [ -f include/generated/bounds.h ]; then
+		cp include/generated/bounds.h $kerneldir/include/generated/bounds.h
+	fi
+
 	# Remove the following binaries which cause strip errors
 	# during do_package for cross-compiled platforms
 	bin_files="arch/powerpc/boot/addnote arch/powerpc/boot/hack-coff \
-- 
1.7.0.4


