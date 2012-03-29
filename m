Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A2C2E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:09 -0700 (PDT)
Received: by wibhr17 with SMTP id hr17so229141wib.5
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=5WgwN3SM5k4ynjzC+087ZbLYYhFIq+g0TcIZ60/akfE=;
	b=BIj9LQh+3De8H0Yf3hec2BuONZR7vIeWX87KIkLJvbcIqouox3KNUXcfebmEkDT3dh
	DCr6LgWIHZ3TaZKg1sSjwt9DgYDhOj+m+oojixpcBxNsl7Qv5MtWVcSlr0Uj9S3zyU1b
	k7QqPFXfoC/ZF89cHmfIg5cQT2UQ/Aoq3/rbYNy2yNBxGRQuH0LB+ZmN5uQDREiTtX8n
	uN9ku/6d8BEv/wKD+Y79eRdt5ekzT1ObW2cY/2MToVGPtPspf0UQUvDiZv4h3UrJA1Zh
	WiwaZgT0G0VQkHIifOKbUGr8w1HOkCBxaEt3zARhINligm9hVqihRoEpRj53rwGe6l1Y
	6NHA==
Received: by 10.180.101.230 with SMTP id fj6mr9935215wib.13.1333059789029;
	Thu, 29 Mar 2012 15:23:09 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id w10sm1187534wiy.3.2012.03.29.15.23.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:23:07 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:36 +0200
Message-Id: <c205fabf136e80c3f187a5f610b9388528b1280c.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 02/22] opkg-make-index: convert mtime to int before comparing it
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
X-List-Received-Date: Thu, 29 Mar 2012 22:23:10 -0000

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

* The st_mtime attribute (which is a float) is compared against a value
  from the timestamp database, which was stored as an integer there.

* When working on a filesystem with precise timestamps the comparision
  will fail nearly everytime hence.

* Although it might be possible to enhance the database to store the
  fractional part too, this will complicate things more than we would
  gain by this change.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg-make-index |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/opkg-make-index b/opkg-make-index
index 2f1ae17..dc98c63 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -101,7 +101,7 @@ for filename in files:
      pkg = None
      fnameStat = os.stat(filename)
      if old_pkg_hash.has_key(basename):
-          if pkgsStamps.has_key(basename) and fnameStat.st_mtime == pkgsStamps[basename]:
+          if pkgsStamps.has_key(basename) and int(fnameStat.st_mtime) == pkgsStamps[basename]:
             if (verbose):
                sys.stderr.write("Found %s in Packages\n" % (filename,))
             pkg = old_pkg_hash[basename]
-- 
1.7.8.5


