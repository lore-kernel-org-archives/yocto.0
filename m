Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95CD3E011CF
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 06:44:05 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id dr1so579289wgb.5
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 06:44:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=XWsGHWGEqLKuPb49iq4cr+oFGnYgndg33Yr3ioL6oR0=;
	b=gBj42n3gw3/xzukB/Z/umNBa8Ej2GL0KKeAfTlwVWUfqMiKDT721swW7jkLeLE8yrB
	xE7dyI5FiQFEi8Azhnf37CJ0n8boWnHWzg9xT/NzlsN8V0oFsGkf4DLwEbM9JejisXgi
	fZLBVqwQgWCtMYaxPiC+lek3YU9w5D8wfDZWa8DmJvwpAl/nZHQubBTNGjaOijW1+L8u
	Fd2sr3PnTy7opS+8afOzmP8jpYx6sysy+ZG1XBd9U3ivMsYol0jJCB0ptG3BYbDz8bW1
	77bfUbBYArdgQ6pdiSQPEgVSNkAijO/DQLD3ffCczaZQXoFONt/sgbEIRhA3IWyLwR4s
	TQjA==
Received: by 10.180.82.162 with SMTP id j2mr3320931wiy.14.1353509044174;
	Wed, 21 Nov 2012 06:44:04 -0800 (PST)
Received: from localhost.localdomain (ip4da2a5ae.direct-adsl.nl.
	[77.162.165.174])
	by mx.google.com with ESMTPS id dd4sm513641wib.2.2012.11.21.06.44.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 21 Nov 2012 06:44:02 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: yocto@yoctoproject.org
Date: Wed, 21 Nov 2012 15:43:49 +0100
Message-Id: <1353509029-15486-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.7.7.6
X-Gm-Message-State: ALoCoQmt0iTbodTtvVEvwBTgkCjWYbIxezTlRvdNnMEIk0E6q3MOgZ6b1Y5teCQu5fuF7+gE7ZpI
Cc: dvhart@linux.intel.com
Subject: [meta-intel][fri2][PATCH] meta-fri2: update README to match current emgd driver version
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
X-List-Received-Date: Wed, 21 Nov 2012 14:44:06 -0000

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta-fri2/README |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-fri2/README b/meta-fri2/README
index af33c0b..b90613d 100644
--- a/meta-fri2/README
+++ b/meta-fri2/README
@@ -93,7 +93,7 @@ bblayers.conf, e.g.:
 The meta-fri2 layer contains support for two different machine
 configurations. These configurations are identical except for the fact
 that the one prefixed with 'fri2' makes use of the Intel-proprietary
-EMGD 1.10 graphics driver, while the one prefixed with 'fri2-noemgd'
+EMGD 1.14 graphics driver, while the one prefixed with 'fri2-noemgd'
 does not.
 
 If you want to enable the layer that supports EMGD graphics add the
@@ -103,10 +103,10 @@ following to the local.conf file:
 
 The 'fri2' machine includes the emgd-driver-bin package, which has a
 proprietary license that must be whitelisted by adding the string
-"license_emgd-driver-bin_1.10" to the LICENSE_FLAGS_WHITELIST variable
+"license_emgd-driver-bin_1.14" to the LICENSE_FLAGS_WHITELIST variable
 in your local.conf.  For example:
 
-  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10"
+  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.14"
 
 If you want to enable the layer that does not support EMGD graphics
 add the following to the local.conf file:
@@ -128,7 +128,7 @@ added to the the LICENSE_FLAGS_WHITELIST variable in your local.conf.
 
 For example:
 
-  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10 commercial"
+  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.14 commercial"
 
 The reason this is needed is to prevent the image from including
 anything that might violate the license terms of the packages used to
-- 
1.7.7.6


