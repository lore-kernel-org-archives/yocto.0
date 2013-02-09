Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f47.google.com (mail-ee0-f47.google.com [74.125.83.47])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 8DF77E01456
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 14:11:29 -0800 (PST)
Received: by mail-ee0-f47.google.com with SMTP id e52so2544905eek.6
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 14:11:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=oMUFbwYHax4YDu203mUt3Oftht2Ki4puTcJqiKoUM+M=;
	b=HsueAKBILvCfIbJID71XtDeakDqnaDBQLO3PTtP7yvBUevmHmdek6nuix+HvqsnFDk
	oTJuYBNrf5o0ZEW/7DjwfbtXXiTiBs9sQcda1wXO1jlAByLS5qwgjlaiRRm4VaIy1z3Y
	TenZkaDI72AQK1Siflh1d581YaBqEXyZQZY4y+wdtuMwnfcxCX2iiSoKonlOAMe6KZAC
	XKeGVyHMnkThJWKhYbzcCT86IvRnn5svJwADYKjNezEwwUz5Qkr5O0D6xz4N0icP0/E1
	bsC10wOyECwodwbqtWtEquWYmoGtvYsHMmHSYDGWdYEyYvkJ9AS1BCKalBF6u+dqIYIS
	0dFQ==
X-Received: by 10.14.193.198 with SMTP id k46mr31187601een.40.1360447887998;
	Sat, 09 Feb 2013 14:11:27 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com
	(5-13-217-124.residential.rdsnet.ro. [5.13.217.124])
	by mx.google.com with ESMTPS id z5sm16022941eep.16.2013.02.09.14.11.26
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 09 Feb 2013 14:11:27 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 10 Feb 2013 00:11:09 +0200
Message-Id: <1360447871-10982-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQlT5iU1R9FQy1K56GbJG8l4xzC6xZpA50Sq4ixQVGBlaVRgFzsI4u87o/ROkTmcY/SgRgpu
Subject: [meta-raspberrypi][PATCH 5/7] recipes.txt: Remove file
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
X-List-Received-Date: Sat, 09 Feb 2013 22:11:29 -0000

This file contains outdated informations.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes.txt |    9 ---------
 1 file changed, 9 deletions(-)
 delete mode 100644 recipes.txt

diff --git a/recipes.txt b/recipes.txt
deleted file mode 100644
index f989530..0000000
--- a/recipes.txt
+++ /dev/null
@@ -1,9 +0,0 @@
-recipes-bcm          - Broadcom specific recipes and tweaks (including binary only bootloader).
-recipes-bsp          - Anything with links to the RaspberryPi hardware configuration information.
-recipes-core         - Extensions to existing upstream core recipes.
-recipes-devtools     - Extensions to existing upstream devtools recipes and other RaspberryPi specific devtools recipes.
-recipes-devices      - Device drivers/Init scripts.
-recipes-graphics     - XOrg Config and such.
-recipes-kernel       - The RaspberryPi kernel recipes and anything with strong kernel dependencies.
-recipes-multimedia   - Extensions to existing upstream multimedia recipes and other RaspberryPi specific multimedia recipes.
-
-- 
1.7.9.5


