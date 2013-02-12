Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f43.google.com (mail-bk0-f43.google.com
	[209.85.214.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 99497E0072E
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:50:35 -0800 (PST)
Received: by mail-bk0-f43.google.com with SMTP id jm19so3058029bkc.30
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references;
	bh=yv3MuiVbrO7bL7BlIKyTwND8au7mTGeYzIWa+KL2WDg=;
	b=qhtQtUbLUMFLf6KHQVH/3EqOxHcvQ59N+d+KPM4GqA+0WsV6I10bKR/alR0v205Rh5
	yWnU/lM5cR1lZT5RwUnUw95IJggA9TlMB4ooP0LvEm9DY8AcN/IpMwWil+RmGaxzsXah
	rv74LJqsFQwCaT0dLBUIdYmTsTCGLzAkG1EnEeOH+89fQPBLYfhm9Tkvcktm9MXe0nZk
	h8XORph0ItH1gfHeKEum0NY5EwLHol1gsa6Hv1LflF48D+aaq/I8NMkxXFonbxlkGJqv
	TF7mZjt9q3EiDKuFyXy1/wCRxNFw1iR8lRhl9bpDmci8F9NszptbzmrWnRNccgAkETu8
	7MNg==
X-Received: by 10.204.149.140 with SMTP id t12mr5129196bkv.123.1360662634016; 
	Tue, 12 Feb 2013 01:50:34 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id g28sm14081966bkv.17.2013.02.12.01.50.32
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 12 Feb 2013 01:50:33 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Feb 2013 10:50:18 +0100
Message-Id: <2053dd43ead8b514c08a1fcd4948a4c409d88c19.1360661504.git.atanas.gegov@bmw-carit.de>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
References: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
In-Reply-To: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
References: <cover.1360661504.git.atanas.gegov@bmw-carit.de>
Subject: [PATCH 2/3] Unified Bundle-Version setting for all plugins
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
X-List-Received-Date: Tue, 12 Feb 2013 09:50:36 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

---
 plugins/org.yocto.doc.user/META-INF/MANIFEST.MF |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF b/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
index 4a89341..ecde2bd 100644
--- a/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.doc.user/META-INF/MANIFEST.MF
@@ -2,7 +2,7 @@ XFManifest-Version: 1.0
 Bundle-ManifestVersion: 2
 Bundle-Name: %Bundle-Name
 Bundle-SymbolicName: org.yocto.doc.user;singleton:=true
-Bundle-Version: 1.0.0.qualifier
+Bundle-Version: 1.2.0.qualifier
 Bundle-Vendor: %Bundle-Vendor
 Bundle-RequiredExecutionEnvironment: JavaSE-1.6
 Require-Bundle: org.eclipse.help
-- 
1.7.5.4


