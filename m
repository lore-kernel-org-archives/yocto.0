Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8149BE004E5; Mon, 21 Nov 2016 08:29:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD301E0049F
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 08:29:07 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id g23so3426984wme.1
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 08:29:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=OZd+mI8ueZ8oWhu1skGmjYjnMsDXcY7N9ktpCXISgnw=;
	b=IonRCKx2uGXONIvsci9MqUNYZw8R+7tiYwKlXDduVjqlqh9mbb8QCCRIF5ax0r2wAq
	mqG2eoacVYqA2OKlF8/Ngl/0KWjJCKTqgmZVNC5AtOa2zGVZ5BPrz9v8vzzRS60rLzbk
	htstHGRm2ZzOAESb5CPRkxGn9jxQc3FOV+BeHmx6BXdZbCdc5qr+jf1LPRK2deXCxteU
	Ltis2O7LWe13xPycV/4MQKYcnYz8V8j5GKW2Y6hFrpF073qJaqe/LELs/QmEN/PIDmAg
	37BAA7wcfdOINf/dY/RhS61kxmNsHCf50nSYSVqE7CGhcBD2sKOdkhhJImYdU47xYNOI
	yO3A==
X-Gm-Message-State: AKaTC02R/yZ1uWxDOVtMqJbJMG9aMXV+emrtcs8vI4lD1aQlLqN7ag0kQdfsXlvnVWCl6w==
X-Received: by 10.28.15.5 with SMTP id 5mr16204543wmp.141.1479745746331;
	Mon, 21 Nov 2016 08:29:06 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f67sm20361931wmd.13.2016.11.21.08.29.05 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Nov 2016 08:29:05 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 21 Nov 2016 16:29:03 +0000
Message-Id: <20161121162904.20027-1-git@andred.net>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Subject: [meta-swupd][PATCH 1/2] oe-swupd-helpers: convert scripts to posix shell
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
X-List-Received-Date: Mon, 21 Nov 2016 16:29:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

These scripts don't do much and there's no reason for
them to require bash as interpreter.

Signed-off-by: André Draszik <adraszik@tycoint.com>
---
 recipes-core/swupd-client/oe-swupd-helpers/clr_pre_update.sh      | 2 +-
 recipes-core/swupd-client/oe-swupd-helpers/kernel_updater.sh      | 2 +-
 recipes-core/swupd-client/oe-swupd-helpers/systemdboot_updater.sh | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-core/swupd-client/oe-swupd-helpers/clr_pre_update.sh b/recipes-core/swupd-client/oe-swupd-helpers/clr_pre_update.sh
index 6302090..835948d 100755
--- a/recipes-core/swupd-client/oe-swupd-helpers/clr_pre_update.sh
+++ b/recipes-core/swupd-client/oe-swupd-helpers/clr_pre_update.sh
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/bin/sh
 set -u
 
 #######################################
diff --git a/recipes-core/swupd-client/oe-swupd-helpers/kernel_updater.sh b/recipes-core/swupd-client/oe-swupd-helpers/kernel_updater.sh
index b0d5335..98e12c2 100755
--- a/recipes-core/swupd-client/oe-swupd-helpers/kernel_updater.sh
+++ b/recipes-core/swupd-client/oe-swupd-helpers/kernel_updater.sh
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/bin/sh
 
 #######################################
 # This script will be called after an updated kernel has been installed
diff --git a/recipes-core/swupd-client/oe-swupd-helpers/systemdboot_updater.sh b/recipes-core/swupd-client/oe-swupd-helpers/systemdboot_updater.sh
index 470cd6e..19f025d 100755
--- a/recipes-core/swupd-client/oe-swupd-helpers/systemdboot_updater.sh
+++ b/recipes-core/swupd-client/oe-swupd-helpers/systemdboot_updater.sh
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/bin/sh
 
 #######################################
 # systemd bootloader installer
-- 
2.10.2


