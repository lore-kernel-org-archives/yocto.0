Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E246E00AC1; Tue, 11 Aug 2015 10:05:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5505E009C3
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 10:05:30 -0700 (PDT)
Received: by wibhh20 with SMTP id hh20so205749471wib.0
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 10:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=dYzGZA8frFJnm33+sNziGjm0sVvAqaiq6XPzdSM54rA=;
	b=cVxvzk3VYaHkVNBaxiMTVT/Vu0+sVxgWjl+eJglLiSnsmWUVM0deBs9PeyMV20WrhA
	6IFWUNpYtqaDSevJusCqLyDbDOm5EyjsDpERkN/TRqSf5qPlFf7vX53ZTe+T6rmkLYL2
	t6uYZ8wD4Anqg/0kC4GeRo0Qeps0DuDgidAXIh9kCGvZPEiHKWB0a/SUjvB2t1HS/frc
	Q6JswbG17QnhTigCfZC+PBlFRSkVUVwu20BrtLobnPAo8eFlkT3BxeQnG6DvmTrDoOPt
	2+cwNeGkHn0NsTeSqS3+Yd5Dr0fyHjdkEW9MiXkiLerbB3hoYD0kyLZOlsvjbPktCL+M
	PA6A==
X-Received: by 10.180.205.148 with SMTP id lg20mr39059315wic.60.1439312729039; 
	Tue, 11 Aug 2015 10:05:29 -0700 (PDT)
Received: from localhost.localdomain
	(cpc47-live22-2-0-cust92.17-2.cable.virginm.net. [86.17.157.93])
	by smtp.gmail.com with ESMTPSA id
	r6sm19769618wiy.13.2015.08.11.10.05.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 11 Aug 2015 10:05:25 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org,
	andrei@gherzan.ro,
	bruce.ashfield@gmail.com
Date: Tue, 11 Aug 2015 18:04:39 +0100
Message-Id: <1439312679-24989-2-git-send-email-ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
Subject: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build audio driver into kernel
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
X-List-Received-Date: Tue, 11 Aug 2015 17:05:34 -0000

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index e38d905..8024412 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -6,6 +6,10 @@ SECTION = "kernel"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
 
+SRC_URI += " \
+        file://build-in-audio.cfg \
+        "
+
 COMPATIBLE_MACHINE = "raspberrypi"
 
 PV = "${LINUX_VERSION}+git${SRCREV}"
-- 
1.9.1


