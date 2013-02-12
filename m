Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f54.google.com (mail-bk0-f54.google.com
	[209.85.214.54]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id CFCB0E00738
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:50:36 -0800 (PST)
Received: by mail-bk0-f54.google.com with SMTP id w5so3067251bku.27
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references;
	bh=wcdKJAKUxKPfGnTSMfMU+IIB7nE6G+m8e2L1EMExQAc=;
	b=BWFlIZqvo6qLFAv6n7eLILfzL4fSAYxIOXzeCDG93xHwAos+S4OhwZxpfO6mCTkssw
	TGIXRZBlbtqbLP9XEBWIqQIKePFpZOVRm9OXVlvrPasL3QJRL22dvxLQqz8nq8TpkOT8
	X+3rRocVBpEqrVaN0aP8Sgj6IFlcS2+FjhFyvvHoDsG/Mi0iD+Xa4ufCL4Pr+ruv6jSr
	lpm1TrLT4FVI4fGhutjfHSohKdxdcPMOS37tYQ46XzfGaaI0V8jmssJ6PmPmk+3T/LU1
	OUzOylDm9AQDVlQVRVMPr1JwGjX1FkwnOyIVvinASY+uS01R0fwnT0F9ZceLHeaeyMVW
	MDMw==
X-Received: by 10.204.8.219 with SMTP id i27mr5132647bki.21.1360662635191;
	Tue, 12 Feb 2013 01:50:35 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id g28sm14081966bkv.17.2013.02.12.01.50.34
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 12 Feb 2013 01:50:34 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Feb 2013 10:50:19 +0100
Message-Id: <72f01ad00488810ba93bf0b4a7b51b8cde39d1ea.1360661504.git.atanas.gegov@bmw-carit.de>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
References: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
In-Reply-To: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
References: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
Subject: [PATCH 3/3] Fixed a typo in manifest
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
X-List-Received-Date: Tue, 12 Feb 2013 09:50:37 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

---
 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF    |    2 +-
 .../META-INF/MANIFEST.MF                           |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
index ecde2bd..9a381a7 100644
--- a/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
@@ -1,4 +1,4 @@
-XFManifest-Version: 1.0
+Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.doc.user;singleton:=true
diff --git a/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
index 87079ce..c6137a8 100644
--- a/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
@@ -1,4 +1,4 @@
-XFManifest-Version: 1.0
+Manifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.sdk.ide.doc.user;singleton:=true
-- 
1.7.5.4


