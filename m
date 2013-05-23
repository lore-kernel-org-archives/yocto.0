Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EB49E014E1
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:12 -0700 (PDT)
Received: by mail-ea0-f172.google.com with SMTP id d10so1687717eaj.3
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=/R2NPShUlHOCwkZyx0wGuNpaSYBo9ubMp3XqazoaYJw=;
	b=QPWY35e25VzCZiqmIymINWRsP/4So6liAZt6tONkDizAoUSmkcRxe/5nAW/TtgjWvA
	RC1yrCVPMfSl5CeLb6ec7oGfebgYmTV42H9yMTQQy5hM1ut7N4mhQrgc9jhErYPPE4EY
	+eOHfvx78ONt2yN8UwmsTlo1Pn6132eKXBt0QAuXIRkDDJlfIT7Eh7Xzf/bkApNC1aWx
	d1FNc7r/6So+5A9MVSPpgbQuP4cfsISk0lyT2Q4y/NasNxJ0g2JuaL+KoSEIqPN1r7k4
	NaK4CysEdlb6jQa5fV6/v52aTh6iTSfiZwdriD2iQUJyyJ514kdU/UPDFO2GBaUq5Kfg
	RTlw==
X-Received: by 10.14.95.4 with SMTP id o4mr24604422eef.2.1369298411617;
	Thu, 23 May 2013 01:40:11 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.10
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:11 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:52 +0200
Message-Id: <1369298392-4076-14-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 13/13] features/sdk: Added CMake plugin to sdk feature
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
X-List-Received-Date: Thu, 23 May 2013 08:40:12 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Made the CMake extension plugin a part of the
Yocto sdk feature.
---
 features/org.yocto.sdk/feature.xml |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/features/org.yocto.sdk/feature.xml b/features/org.yocto.sdk/feature.xml
index cca6534..03eac73 100644
--- a/features/org.yocto.sdk/feature.xml
+++ b/features/org.yocto.sdk/feature.xml
@@ -93,4 +93,10 @@
          version="0.0.0"
          unpack="false"/>
 
+   <plugin
+         id="org.yocto.cmake.managedbuilder"
+         download-size="0"
+         install-size="0"
+         version="0.0.0"
+         unpack="false"/>
 </feature>
-- 
1.7.9.5


