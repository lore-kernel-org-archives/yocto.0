Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31609E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:25:18 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id c1so18688wer.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=izGKaub2IfuVw2zXMBxOwH4zU+w/glcSTt3zntnSwKs=;
	b=iUAv7rr6R3Ey+XDNezFIZzGCCHb0bnqz0zbQ5KN/AlPfBrYUXMwE+7M1OhuThCtTWB
	Vcf32DrMyYm/rqdiAbhisgMmbrKOaoXioWzhcqAmbIVkAIuz+Ex3KAGzHKtR052cUGFY
	ng0KQRcW05G8vXXJy6/fn2M5hEF9Ax1LN3lyZ2weCwcallJqYx8jscPSBPYpME+IRtLN
	PVdsO0rU+dtcFt1LBheMM27MtSRrlie9/akB6LD1TRoN0sphfHgy5KsHrNiDWVO9OCFy
	hM9XzA15vo17AoG2yoqI0wAxLo/54FVbg1M14fN32xCMm1Fyv+41vhCbdiRoQgWDIVKu
	KeoA==
Received: by 10.180.96.168 with SMTP id dt8mr57762wib.18.1333059917908;
	Thu, 29 Mar 2012 15:25:17 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id e6sm735550wix.8.2012.03.29.15.25.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:25:17 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:54 +0200
Message-Id: <198b5ec530775a5c7b1b018aa1ec1db66fec9b26.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 20/22] opkg.py: fix write_package when called from main test
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
X-List-Received-Date: Thu, 29 Mar 2012 22:25:18 -0000

* there is no self.meta_dir before self._setup_scratch_area
* control file needs to be closed before packing it with tar, otherwise it could be empty

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg.py |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/opkg.py b/opkg.py
index 9daff9e..ad3a695 100644
--- a/opkg.py
+++ b/opkg.py
@@ -344,11 +344,11 @@ class Package:
         return self.file_ext_opk
 
     def write_package(self, dirname):
-        buf = self.render_control()
+        self._setup_scratch_area()
         file = open("%s/control" % self.meta_dir, 'w')
-        file.write(buf)
+        file.write(str(self))
+        file.close()
 
-        self._setup_scratch_area()
         cmd = "cd %s ; tar cvfz %s/control.tar.gz control" % (self.meta_dir,
                                                               self.scratch_dir)
 
-- 
1.7.8.5


