Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08C0DE013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:16 -0700 (PDT)
Received: by werc1 with SMTP id c1so18688wer.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=BYMjRmZbGHFpfHyiK72ROx8koaou+LjCQXKsJcf4/JU=;
	b=Rikk8PenW2sXO6esPsTQrygcV6YQCDR49/+E0EpZWFvp6zoNdwlnSLqn9FbufBwVxz
	Q/XV+0oyVQ6PvZqm//lPXuQmjOZIlcZ6i3qCQLpHxk6xdpkaQYMdxdZ5djDhZ5jJ6vgJ
	/+r59eg1qsXV/bwreWILj6+6q0yWNIUrwijqr1E1QFM1q3sdovRYziBGtDdkHI35G3Ac
	BEtlFI/d8q34HnA3jEpjnoDy8PhE1LwfouTh7pM2iWEy48/0yTQD9fLiK0+VUqGjafUB
	qXCD4Qqf+FC6WsdQVI7VnICHjEBpXzjlIIsk3m9aZdnMPI9K8fd6CsY/u0sv1LDRJkYg
	8L6g==
Received: by 10.180.88.67 with SMTP id be3mr25994wib.20.1333059796042;
	Thu, 29 Mar 2012 15:23:16 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id b3sm759413wib.4.2012.03.29.15.23.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:23:15 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:37 +0200
Message-Id: <1ee2cbc69e3c8b65e0df71fc5ad40823dfd10c61.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 03/22] opkg.py: Add knowledge about License field in ipk headers
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
X-List-Received-Date: Thu, 29 Mar 2012 22:23:17 -0000

From: Khem Raj <raj.khem@gmail.com>

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg.py |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/opkg.py b/opkg.py
index 3fda9b5..8ddc8b8 100644
--- a/opkg.py
+++ b/opkg.py
@@ -145,6 +145,7 @@ class Package:
         self.priority = None
         self.tags = None
         self.fn = fn
+        self.license = None
 
         if fn:
             # see if it is deb format
@@ -319,6 +320,12 @@ class Package:
     def get_section(self, section):
         return self.section
 
+    def set_license(self, license):
+        self.license = license
+
+    def get_license(self, license):
+        return self.license
+
     def get_file_list(self):
         if not self.fn:
             return []
@@ -425,6 +432,7 @@ class Package:
         if self.description: out = out + "Description: %s\n" % (self.description)
         if self.oe: out = out + "OE: %s\n" % (self.oe)
         if self.homepage: out = out + "HomePage: %s\n" % (self.homepage)
+        if self.license: out = out + "License: %s\n" % (self.license)
         if self.priority: out = out + "Priority: %s\n" % (self.priority)
         if self.tags: out = out + "Tags: %s\n" % (self.tags)
         out = out + "\n"
-- 
1.7.8.5


