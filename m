Return-Path: <martin.jansa@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D6F5E0059A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 02:14:06 -0700 (PDT)
Received: by eaai1 with SMTP id i1so928006eaa.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 02:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=5WgwN3SM5k4ynjzC+087ZbLYYhFIq+g0TcIZ60/akfE=;
	b=ekbDzXXAVGOXZ3eEVpIWTrWgP7z20v16a1FhNkvhYf8Aoql100gHhdg/ONKQOkPROq
	mYvCBX4Hu5gmtCpiCN1mYYXFYAOTJhRh0CIFAP1cEZ5E2VtTZu4DpV3dKhbCe/N2anE2
	3oUbPwrApUAqFOEY96YoSfmlENZfBUQQoLnM8P5ySv4BjP1qau2qUHoXB3wOB+KQ/8Qs
	a5RtozAw3w+jV3TUhOvFURQcqjzH3EEzGpappr1G/CuSPPBxQS7USrCLHAS7ZUNAGWme
	74ZD7D/oFiJUR8/TtSwYT0Ycib4/kgw/hMbnQBP/KQByy488/ZD+m8jc01XFWmAQhNLV
	rgjQ==
Received: by 10.14.28.131 with SMTP id g3mr3077648eea.54.1333012446073;
	Thu, 29 Mar 2012 02:14:06 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id z47sm19425705een.5.2012.03.29.02.14.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 02:14:05 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Mar 2012 11:13:50 +0200
Message-Id: <c205fabf136e80c3f187a5f610b9388528b1280c.1333012363.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333012363.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333012363.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333012363.git.Martin.Jansa@gmail.com>
References: <cover.1333012363.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 2/5] opkg-make-index: convert mtime to int before comparing it
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
X-List-Received-Date: Thu, 29 Mar 2012 09:14:07 -0000

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


