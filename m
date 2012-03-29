Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0CBDE013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:25:25 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so42529wib.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=iN+3NCjpaV6mWLf9Vk7zwNmy3s2TFeN6c5tQYrWaVsw=;
	b=JcoVuf4FebyO+jmbiifXnb8/Y8n5QTV4R3bdTTJPGCeM71XKoO+o/O1Hdx5VLCeqCb
	Tcb5Ce4N4V9c3lu4hhWwvgx6//7Oz75GY3elF51FKiSrJhkFNuLMzXMJ0/LONusy2Z9q
	NW9Re97JR8GPr9IexEV2LxYyTdrM1/lsf5keHGu0SuIjUgEP3VmuTH6PRr4eWCgcZyap
	RMrXnIBD6DHbxSD7rbMetWgNMBXPpaVhhL598P+yBBvQHKJBcLpvFGvKdbYSKFp8sek1
	t9KmzQUQeaL7BoDV9qRfZx26KvuNIsEHXNu6Re5KN7UlPbSPwGXJ3ijxpagCC2fPUGF0
	pnTg==
Received: by 10.180.82.136 with SMTP id i8mr50335wiy.19.1333059924968;
	Thu, 29 Mar 2012 15:25:24 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id w10sm1211638wiy.3.2012.03.29.15.25.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:25:24 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:55 +0200
Message-Id: <375f7b265bf44d3b87f31c53370bb250df9c9b03.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 21/22] opkg.py: use textwrap for description writing
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
X-List-Received-Date: Thu, 29 Mar 2012 22:25:26 -0000

* description field in oe-core sometimes has extra line-feeds and is long
* extra line-feeds breaks read_control, because empty line means next Package
* long descriptions should be wrapped and properly indented, so they are parsed back properly

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg.py |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/opkg.py b/opkg.py
index ad3a695..2294160 100644
--- a/opkg.py
+++ b/opkg.py
@@ -42,6 +42,7 @@ import subprocess
 from stat import ST_SIZE
 import arfile
 import tarfile
+import textwrap
 
 class Version:
     """A class for holding parsed package version information."""
@@ -427,7 +428,9 @@ class Package:
         if self.installed_size: out = out + "InstalledSize: %d\n" % int(self.installed_size)
         if self.filename: out = out + "Filename: %s\n" % (self.filename)
         if self.source: out = out + "Source: %s\n" % (self.source)
-        if self.description: out = out + "Description: %s\n" % (self.description)
+        if self.description:
+            printable_description = textwrap.dedent(self.description).strip()
+            out = out + "Description: %s\n" % textwrap.fill(printable_description, width=74, initial_indent=' ', subsequent_indent=' ')
         if self.oe: out = out + "OE: %s\n" % (self.oe)
         if self.homepage: out = out + "HomePage: %s\n" % (self.homepage)
         if self.license: out = out + "License: %s\n" % (self.license)
-- 
1.7.8.5


