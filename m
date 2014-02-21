Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EEFDE0085C
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:30 -0800 (PST)
Received: by mail-qc0-f182.google.com with SMTP id w7so3330690qcr.13
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=sQkKDzn4OAab5+j+nSmfSk4N/bvpiiaCSEl5bDaPi04=;
	b=HHMiw8kqkWAxUEndJBTyGGmDiIu2UvJIuZILUgLD03YIYnom2m6wcR3Kuj1nffvmEU
	e/IrHAn/6ioaZqGhKijsVILBwa7EIKxFLHAlcnOaR2rM3JJ95Rq/36UFAxu2W6RJcQBT
	5lyYWZFG3HkYvBiJV9d9xM8RVUctJBjYAaHcz0HVftBT1cTKj2CzuMzXWXo6iNOBRYeM
	T6/KEELUuQx78UnhszEUbzYnfFDC9vXzMmgHbqBUiETK6wDHWV88aC8fwjRbl3FOC3/d
	uY8uTnmrsTdumqASy4JdLjJWqRJdNSzzsJfHUw0mUrPT0CpMns+7EuRrt8PJs/ME9YzA
	TD2Q==
X-Gm-Message-State: ALoCoQneGkesJ0fTL/wgESNZ8zpKrNQ3MZzPTmMUK3N9ByM0RbhvH20CmMWyqW7D/p2AdxFf7JJT
X-Received: by 10.224.36.129 with SMTP id t1mr8617549qad.8.1392978570074;
	Fri, 21 Feb 2014 02:29:30 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id
	k61sm11862511qge.12.2014.02.21.02.29.28 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Feb 2014 02:29:29 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 21 Feb 2014 12:29:06 +0200
Message-Id: <1392978548-31880-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
References: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/7] firmware: Update to current remote HEAD
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
X-List-Received-Date: Fri, 21 Feb 2014 10:29:31 -0000

Change-Id: Iad457c2610ee3a0209598c92e5c473ae8f113636
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/common/firmware.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.inc
index 0b1aa05..390f6b3 100644
--- a/recipes-bcm/common/firmware.inc
+++ b/recipes-bcm/common/firmware.inc
@@ -1,6 +1,6 @@
-# 17/01/2014 firmware; this can be overridden from distro config
-RPIFW_SRCREV ?= "9babf5f124b85293f81d78b031a15da0d51d46bd"
-RPIFW_DATE ?= "20140117"
+# 21/02/2014 firmware; this can be overridden from distro config
+RPIFW_SRCREV ?= "cf20d522e926f30e91fa890d42d010ca98913286"
+RPIFW_DATE ?= "20140221"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
1.8.1.4


