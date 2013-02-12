Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f53.google.com (mail-bk0-f53.google.com
	[209.85.214.53]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5FBD0E006DC
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:50:34 -0800 (PST)
Received: by mail-bk0-f53.google.com with SMTP id j10so3068562bkw.12
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references;
	bh=u1SCylXrzCiFYyrnSTNzwB1kjCfjzxju87bbJfk6nC0=;
	b=uhTO9t5h91wgdgl28Ajj6qo7mgMzP+0fEMQto5VAUG2D3jXrtbEIkhuHnvXEtV81hp
	ELmSBJ4RPXKtLdaijq4msSYLsq7bJMHLv+S3+ciYdvtT3IRfKYLekGSiWQffq/tPSAm3
	/dzg6s0l98f0qO5EOuom/AjBZgGFJC9iUtYD41pAe2TZfPOOwFERe5dFVHIi+/y4sqTX
	X9hEliDSyMh0a2EWjNpeoPklJLnPdYsjdkl3MyyNOPCvl0rCdIn0dZ7F0gB/J8NWahML
	0+HgsBJ09qxcMgrihciJio2tV1nwuem9Zs6a+5/HMbUuUjsweYlXr9ZmVYRC+hac8KBO
	u22w==
X-Received: by 10.204.9.21 with SMTP id j21mr4951703bkj.32.1360662632747;
	Tue, 12 Feb 2013 01:50:32 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id g28sm14081966bkv.17.2013.02.12.01.50.31
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 12 Feb 2013 01:50:32 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Feb 2013 10:50:17 +0100
Message-Id: <f9eab22850452313455fd6fa59c10ac3c3cdb6d6.1360661504.git.atanas.gegov@bmw-carit.de>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
References: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
In-Reply-To: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
References: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
Subject: [PATCH 1/3] Unified JRE_CONTAINER setting for all plugins
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
X-List-Received-Date: Tue, 12 Feb 2013 09:50:34 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

---
 plugins/org.yocto.bc.ui/.classpath    |    2 +-
 plugins/org.yocto.doc.user/.classpath |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/.classpath b/plugins/org.yocto.bc.ui/.classpath
index 751c8f2..121e527 100644
--- a/plugins/org.yocto.bc.ui/.classpath
+++ b/plugins/org.yocto.bc.ui/.classpath
@@ -1,7 +1,7 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
 	<classpathentry kind="src" path="src"/>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="output" path="bin"/>
 </classpath>
diff --git a/plugins/org.yocto.doc.user/.classpath b/plugins/org.yocto.doc.user/.classpath
index 67e2a52..bc74aab 100644
--- a/plugins/org.yocto.doc.user/.classpath
+++ b/plugins/org.yocto.doc.user/.classpath
@@ -1,6 +1,6 @@
 <?xml version="1.0" encoding="UTF-8"?>
 <classpath>
-	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.7"/>
+	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER/org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType/JavaSE-1.6"/>
 	<classpathentry kind="con" path="org.eclipse.pde.core.requiredPlugins"/>
 	<classpathentry kind="output" path="bin"/>
 </classpath>
-- 
1.7.5.4


