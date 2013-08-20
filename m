Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A5B3E0159B
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:58 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id b45so332733eek.1
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=SpwZtQPBpnhV6VPHgdrcJxmH9gaoYPsepuN72TOzaW0=;
	b=T34Ln+DCjHmWkrTI10vmTHGWmw3coMwagPKL1IY+odfBtnYRNy7+gHNspxpxJlyanI
	8z4SpzKK1p/oSwAZstbahhg1Z0+LXg2ciqBsgrpRV+ZmVco7xljUs6ryXRrNUKNmtSRz
	BGpBAgynJhgEMC7x3jWHkWVihzEUoXYgUhiJC8Gwi/ZhMS6xmjXJ5UYSbzoqunZx8L+5
	iwTpnTYEOI1vk0l/8mLKdMwIGKan0d65PCSZ3y0Et8+2+b+FXSLZUZtxxTFY+UIZ4TCJ
	sESuKdjSy8j6xIyB2/L1Dl/2Byz1j4PFZwmauPhfda+MPO1f3+FmtEWD5ke6yVXQCIiG
	xyvw==
X-Gm-Message-State: ALoCoQnMFgv1Xt6eHW+ZSiOAkSR0MrCd9VG5bRG0+f2ThAoIIkiGYIv/1wdwvpUQTcRbxyGyT8Hl
X-Received: by 10.15.75.137 with SMTP id l9mr186027eey.88.1377018178118;
	Tue, 20 Aug 2013 10:02:58 -0700 (PDT)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id l47sm3584186eex.15.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 10:02:57 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 20 Aug 2013 20:02:37 +0300
Message-Id: <1377018158-2983-10-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 10/11] firmware: Update to 2013-08-20 master's snapshot
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
X-List-Received-Date: Tue, 20 Aug 2013 17:02:59 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/common/firmware.inc |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.inc
index e291832..5bad182 100644
--- a/recipes-bcm/common/firmware.inc
+++ b/recipes-bcm/common/firmware.inc
@@ -1,6 +1,6 @@
-# 7/1/2013 firmware; this can be overridden from distro config
-RPIFW_SRCREV ?= "0ac68cce44d4550c251172e8524100090e8211fa"
-RPIFW_DATE ?= "20130107"
+# 19/08/2013 firmware; this can be overridden from distro config
+RPIFW_SRCREV ?= "5b37b2a7f357236210eef1a438becaa2a57148f2"
+RPIFW_DATE ?= "20130819"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
1.7.9.5


