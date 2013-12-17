Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f52.google.com (mail-qa0-f52.google.com
	[209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91B45E007FF
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:00:03 -0800 (PST)
Received: by mail-qa0-f52.google.com with SMTP id cm18so2747427qab.18
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:00:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=jNQwtrt3FssUgAi7FEvIomDFsEghdnAYddmWcHacWzQ=;
	b=I1DsSOdozxXqGjIqhOfAVyFIPAfsE/gGo0PPLbojiJWxDsVzOJI4aZM8VdRssc+Br1
	6oxLGGLVDuGdCTwozfY0S2/Chjf4VBGDumDFFIn5DRNdM4vyiNMxEc765Q3pFxVrxdhS
	UAOTcRPr3DF+T5ScfOhNUjXqNtsKOZpe5IQ3W9z70CvVB8wELOtOHtK83uyqihUpUskG
	YPNxWUpohLvvsK+iYbgRuMTrD5qWy0728LBL5UolVF4WAfl84Z7wti3uwTiHvc28JOnm
	dduPrTZrpE/ycuG3Uo0zfdZMGVp3fBnsQF5UAwRRqupmdKn1P+/7ArEedmYWApOCEOLN
	Yqnw==
X-Gm-Message-State: ALoCoQkW2+V7nfqs4RM3M/hsIZyiWa9tIRzj+2tM2aca5EgRq/hh3T7bGMwRT2pSEKlYKbyb+T4g
X-Received: by 10.49.12.102 with SMTP id x6mr44295547qeb.5.1387296003460;
	Tue, 17 Dec 2013 08:00:03 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id 4sm57745643qak.11.2013.12.17.07.59.58
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Dec 2013 08:00:02 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 17 Dec 2013 17:59:15 +0200
Message-Id: <1387295956-24899-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1387295956-24899-1-git-send-email-andrei@gherzan.ro>
References: <1387295956-24899-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/6] firmware.inc: Update to latest HEAD
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
X-List-Received-Date: Tue, 17 Dec 2013 16:00:04 -0000

Change-Id: I758da027a378b535205d42b9304473704be63fb2
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.inc
index c780e63..69cf8d2 100644
--- a/recipes-bcm/common/firmware.inc
+++ b/recipes-bcm/common/firmware.inc
@@ -1,6 +1,6 @@
 # 19/08/2013 firmware; this can be overridden from distro config
-RPIFW_SRCREV ?= "3e92add424c3c2617d5df65caa307c808017a9ea"
-RPIFW_DATE ?= "20131113"
+RPIFW_SRCREV ?= "e618d4ff2dc20051bc726834b22487fe2e236fe5"
+RPIFW_DATE ?= "20131217"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
1.8.1.4


