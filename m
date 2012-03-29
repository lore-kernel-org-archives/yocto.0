Return-Path: <martin.jansa@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19FA2E0059A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 02:14:27 -0700 (PDT)
Received: by mail-ey0-f176.google.com with SMTP id i1so928006eaa.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 02:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=SxtFgdAl+RedIZqLQHQulh7S3ONKIcmWTK4FvIUfATw=;
	b=zF/t8OoQzqUJV9x8m9rXL83V71CRhkjoNqwPLJ5BdMpaaM/AbuCDg6pbmPxMpozWDI
	jm0w0p4U+UzwUHKiO9GwAgqGPH/rrRF64rX7YStXZ8HFPNORaxSNcHIIuu6ClVH5WvhI
	/s1ib4F3BnwE1VhSVtUuU6FG7eJa70LoHSZLmTzHn15m3vGs7DjKO3hfSAbtlLPHJjr/
	+eSx3kx/7XIbFAmOKdB0vwtjQil4f7NOSCRItpMjARgjTNc2JlUqVCRVIAJNVFqwXgO+
	6SCgTZXv/kIaPv7TjR+04Scv6rI7+SRxRF4oiYxLKUguzxJvZiXmYgX/uDivVylQtWJN
	XPKA==
Received: by 10.180.20.47 with SMTP id k15mr3639641wie.19.1333012467740;
	Thu, 29 Mar 2012 02:14:27 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id fw5sm65396794wib.0.2012.03.29.02.14.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 02:14:27 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Mar 2012 11:13:53 +0200
Message-Id: <30d7fddd0d3cbb4b393754cb812588773ab3e436.1333012363.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333012363.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333012363.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333012363.git.Martin.Jansa@gmail.com>
References: <cover.1333012363.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 5/5] Use python via the PATH, rather than hardcoding /usr/bin/python
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
X-List-Received-Date: Thu, 29 Mar 2012 09:14:28 -0000

From: Christopher Larson <kergoth@gmail.com>

Signed-off-by: Christopher Larson <kergoth@gmail.com>
Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg-list-fields  |    2 +-
 opkg-make-index   |    2 +-
 opkg-show-deps    |    2 +-
 opkg-unbuild      |    2 +-
 opkg-update-index |    2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/opkg-list-fields b/opkg-list-fields
index d263b90..da78d53 100755
--- a/opkg-list-fields
+++ b/opkg-list-fields
@@ -1,4 +1,4 @@
-#!/usr/bin/python
+#!/usr/bin/env python
 
 import sys, opkg
 
diff --git a/opkg-make-index b/opkg-make-index
index dc98c63..b65dc6e 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -1,4 +1,4 @@
-#!/usr/bin/python
+#!/usr/bin/env python
 
 import sys, os, posixpath
 from glob import glob
diff --git a/opkg-show-deps b/opkg-show-deps
index a6681f4..9de1aac 100755
--- a/opkg-show-deps
+++ b/opkg-show-deps
@@ -1,4 +1,4 @@
-#!/usr/bin/python
+#!/usr/bin/env python
 
 import sys, os, posixpath
 from glob import glob
diff --git a/opkg-unbuild b/opkg-unbuild
index eff604b..b5c5227 100755
--- a/opkg-unbuild
+++ b/opkg-unbuild
@@ -1,4 +1,4 @@
-#!/usr/bin/python
+#!/usr/bin/env python
 
 import sys, os, re
 
diff --git a/opkg-update-index b/opkg-update-index
index 807f8f4..3864fa5 100755
--- a/opkg-update-index
+++ b/opkg-update-index
@@ -1,4 +1,4 @@
-#!/usr/bin/env python2.1
+#!/usr/bin/env python
 
 import sys, os
 from glob import glob
-- 
1.7.8.5


