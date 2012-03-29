Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FB93E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:52 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so41874wib.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=FmKgcmSnbBohpcRuIDlWLfhnLb5u3HwrVmO0WnWz4B4=;
	b=mb7IlcS4JW2E1lk/KytsjfyHI4b9ieR++jVPoHU1xenJpsp95GdT4c0GLjXltjMZhK
	RoC18ulUXPMbto/xt8rhAeBIRUzbQegSu4z3sW5u75Bb6IRo+1WzWyZstJIaUZx1rWp5
	x3iy6cdE1zJlUacfR2psbGjoaji80gtzwXUxx6k5fhKXsOj4I1bmoWbOdrqGjWS1sH11
	W10t8WODW5v9j8xKafjJk8DGlwy7PmhggMy3NGMopRgy5OtRnKurO+AQEd+7OcVxWFV+
	HfmfoQUQ8PgFsckKws+Zs6XC6bxJEeocMUJLRWOPGJuUQaOYWQSeiuum8zZ3GUDG2BkI
	LDWg==
Received: by 10.180.91.165 with SMTP id cf5mr175615wib.2.1333059831808;
	Thu, 29 Mar 2012 15:23:51 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id k6sm735608wiy.7.2012.03.29.15.23.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:23:51 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:42 +0200
Message-Id: <7fedd2abaeb784dccf40f5ab94c64c4ebcbf4bad.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 08/22] arfile: decode read lines as ascii string before getting fields from it
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
X-List-Received-Date: Thu, 29 Mar 2012 22:23:53 -0000

* python3 returns them as byte sequence

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 arfile.py |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arfile.py b/arfile.py
index 7a695c6..92ffee0 100644
--- a/arfile.py
+++ b/arfile.py
@@ -74,6 +74,7 @@ class ArFile:
             if l == "\n":
                 l = self.f.readline()
                 if not l: break
+            l = l.decode('ascii')
             l = l.replace('`', '')
             # Field lengths from /usr/include/ar.h:
             ar_field_lens = [ 16, 12, 6, 6, 8, 10, 2 ]
-- 
1.7.8.5


