Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02F1EE013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:49 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id c1so18688wer.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=ECknhMd8QeVO4zGFuXevqGzlNUs+FxkRZe5P4EyZY60=;
	b=ZWy6SXwkNSzNch04tTEzkwd3ooplNl/X7JFKmO1jh0IWdM7psjLxw7Rj97jQ6nJ6wi
	w+sEPvSwHUjCxmaVhe9G+BCTqOagr8agvBFL2lcFr/gn082SpgedWfkmxd8lP3kxGsx4
	00n3tcfcmPq8yZvuNt3nR+erAiROUNPubxDGoR9CNgjAEpKTaLj6p+6Ek8pZjkQD96T9
	9EkgP/DXooCslqqIK120EAa/+Dc7E3+/5cNHq+f0/sBtOX6BomylUdYnIgXb8tCzg7NT
	UnJC0+mK2U/9Sfk6MRXg5DHO1bmyoOz8sjFJyVUzOXGHPMyNHVCJquXgRmvn5so2+3Et
	Lx1A==
Received: by 10.180.81.37 with SMTP id w5mr70499wix.16.1333059889716;
	Thu, 29 Mar 2012 15:24:49 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id ea6sm750115wib.5.2012.03.29.15.24.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:24:48 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:50 +0200
Message-Id: <2b210872d053f64dd6ed1187636d1f5f4359128c.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 16/22] arfile: fix test
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
X-List-Received-Date: Thu, 29 Mar 2012 22:24:50 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 arfile.py |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/arfile.py b/arfile.py
index 3f797a8..88ace46 100644
--- a/arfile.py
+++ b/arfile.py
@@ -131,5 +131,8 @@ if __name__ == "__main__":
         tarf = tarfile.open("control.tar.gz", "r", tarStream)
         #tarf.list()
 
-        f2 = tarf.extractfile("control")
+        try:
+            f2 = tarf.extractfile("control")
+        except KeyError:
+            f2 = tarf.extractfile("./control")
         print(f2.read())
-- 
1.7.8.5


