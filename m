Return-Path: <joe@deserted.net>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24D04E009C4
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 11:04:54 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id m20so2266253qcx.7
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 11:04:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=wrpyZHilRiiIrmdO501AAPOu5gJ0am+Wlfaa9FmrrLY=;
	b=Ua85JpvYJixvImSdNx+ckJBN8N0FggEjsoaeKW+M5OIvnhMoEHVLcyRCa1kpsdigSN
	e4+TIBrCRqR1GDxLqdrb8runPy0s+oi6nsskCoAGS8MVhVZV7pgq36q2F9PjRd9D9igk
	gJg3u+8B8yHUuvkTA9SUNrlRq5d9aydKSktirsJOdzjrKUPnlZytpaN/aKCuhZOwsNb+
	C7QMwLPBFEKStsJPpNZTaQq/K4DGbgtn/cH9r/U2k14A0ew2hyg4crPledfUcbZIH535
	mcbQj+tfR/tAdJmCr9ChqDjHuZtZCS/b82mHHMIGAlEyRiaJ/QeCwtdolz2N/lMyzzUi
	zvTw==
X-Gm-Message-State: ALoCoQk5b4XkpFIjcoV0rJcLQI9w8iGXwuYrRYTkjhFRRPfF5+sb7AClO4JOnTmtXfO0dJYVO5O1
X-Received: by 10.224.16.69 with SMTP id n5mr9038657qaa.7.1396548293959;
	Thu, 03 Apr 2014 11:04:53 -0700 (PDT)
Received: from yow-asskicker.wrs.com ([128.224.252.2])
	by mx.google.com with ESMTPSA id w67sm7762856qge.12.2014.04.03.11.04.52
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 03 Apr 2014 11:04:53 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Thu,  3 Apr 2014 14:04:51 -0400
Message-Id: <1396548291-21393-1-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
Subject: [meta-selinux][PATCH] core-image-selinux: update 'core-basic' packagegroup
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
X-List-Received-Date: Thu, 03 Apr 2014 18:05:00 -0000

packagegroup-core-basic has been renamed to packagegroup-full-cmdline,
update our core-image-selinux.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-security/images/core-image-selinux.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/images/core-image-selinux.bb b/recipes-security/images/core-image-selinux.bb
index 1ec7b08..e186bdc 100644
--- a/recipes-security/images/core-image-selinux.bb
+++ b/recipes-security/images/core-image-selinux.bb
@@ -7,7 +7,7 @@ LICENSE = "MIT"
 IMAGE_INSTALL = "\
 	${CORE_IMAGE_BASE_INSTALL} \
 	util-linux-agetty \
-	packagegroup-core-basic \
+	packagegroup-core-full-cmdline \
 	packagegroup-core-selinux \
 "   
 
-- 
1.7.10.4


