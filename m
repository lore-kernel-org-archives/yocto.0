Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E71F0E01437
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 08:34:34 -0700 (PDT)
Received: by wibhm6 with SMTP id hm6so2391662wib.11
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 08:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=crYNcMuw2bZtOy6qRlpxy7KxaP9TNsz3/J/SsxcmAbk=;
	b=d30Yo5Lw9jzKxsa2q5db0/mrfjVe/aSXtL5vBLULQZnrC917LnPsM/5CAMOIHCn1uW
	8OI9gFIFHFuLC7aKWaJP6rg3ozS/zUU1GHw5Qr4ynRQuk8eyhRGsz7zVmrtexWqQE8E2
	uiDK1w/uid6R5GDdj/bxrdU9sBYzIMkhVNp9cTtkJuTbad1G3feq1BLXzZcz0Iyat7l/
	MlQq6RwGOkWUwd8xN683tbDhP0dAnvQRTgV7OhbgWM0wI6908jnQGqM4+HBOB8L53VDl
	1qw5qKHyld1lY16UPPDtE/DvsMw94ry1g24NonWHh++EW/FThltkWI39NHL1rWfq5AMl
	pj/A==
Received: by 10.216.55.148 with SMTP id k20mr7512164wec.70.1338305674045;
	Tue, 29 May 2012 08:34:34 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id et10sm28989742wib.2.2012.05.29.08.34.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 May 2012 08:34:33 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 29 May 2012 17:34:15 +0200
Message-Id: <2dd04cb574dacdc2b8446ace3ba4e52a1abe4d6d.1338305162.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.6
In-Reply-To: <cover.1338305162.git.Martin.Jansa@gmail.com>
References: <cover.1338305162.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1338305162.git.Martin.Jansa@gmail.com>
References: <cover.1338305162.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 2/2] Changed call to subprocess.check_output which isn't compatible with Python 2.6
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
X-List-Received-Date: Tue, 29 May 2012 15:34:35 -0000

From: Chris Diamand <chris@diamand.org>

subprocess.check_output is not present in Python 2.6. Since the return value
is not being used anyway, replace it with subprocess.call(), which is.

Signed-off-by: Chris Diamand <chris@diamand.org>
---
 opkg-make-index |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/opkg-make-index b/opkg-make-index
index 22393e8..1c3a8e1 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -186,7 +186,7 @@ if packages_filename:
      gzip_filename = ("%s.gz" % packages_filename)
      tmp_gzip_filename = ("%s.%d" % (gzip_filename, os.getpid()))
      gzip_cmd = "gzip -9c < %s > %s" % (tmp_packages_filename, tmp_gzip_filename)
-     rc = subprocess.check_output(gzip_cmd, shell=True)
+     subprocess.call(gzip_cmd, shell=True)
      os.rename(tmp_packages_filename, packages_filename)
      os.rename(tmp_gzip_filename, gzip_filename)
 
-- 
1.7.8.6


