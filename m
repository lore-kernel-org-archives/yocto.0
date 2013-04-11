Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C1AEE014DB
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:47 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id k13so425865wgh.5
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 04:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=czn/boOrKXqebj32NObCPaCtnzK1t/WfdVMAIux7n/w=;
	b=gg31QOJDYTZyv1RvBYtQFB3a/d2XDBsRRfF9Xef3Z8pcfpKjVbfQUrLhQF61AWnIzu
	8RTo1RSni2KllwKcSEQsrLLjgWwM1QoXKvY8L8slAcpzrefm/eHht8uaSu0mo4o/+E2J
	1NBnhEahmmwWrdtEZ7+svGCN40AzMlzeCBQwbi6qB//tvqhWsV9gA4oMrgxxNpEgjqjG
	a8zH89I8/OYGrwhQry6n3KVYy2KYHhy8J47UeWgXTyHunsvg/GfH6VUPxwgJNB5rZror
	tpcR4bM3ahC63dnLo9rLX5UZI8z4FvRgYypfbXfMRqcZz6YgtK76DvY1sh47dJO2cGLo
	XhrQ==
X-Received: by 10.194.173.167 with SMTP id bl7mr9959366wjc.50.1365679546570;
	Thu, 11 Apr 2013 04:25:46 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id g4sm2785162wib.11.2013.04.11.04.25.45
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 11 Apr 2013 04:25:46 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Apr 2013 13:25:27 +0200
Message-Id: <1365679531-4518-6-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1365679531-4518-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCHv2 5/9] plugins/sdk.ide: Renamed existing project type
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Apr 2013 11:25:47 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The existing project type is suitable only for
Autotools projects, as it is a subClass of an
Autotools project type. The name should reflect this.
---
 .../OSGI-INF/l10n/bundle.properties                |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
index 3d491fb..1a4e3c9 100644
--- a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
@@ -5,7 +5,7 @@ extension.name.1 = YoctoSDKAutotoolsNature
 command.name = ReconfigureYoctoProject
 command.label.0 = Change Yocto Project Settings
 command.mnemonic = C
-projectType.name.0 = Yocto Project ADT Project
+projectType.name.0 = Yocto Project ADT Autotools Project
 projectProperties.label.0 = Yocto Project Settings
 Bundle-Vendor = yoctoproject.org
 Bundle-Name = Yocto Plugin IDE
-- 
1.7.9.5


