Return-Path: <andrei@gherzan.ro>
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30985E00867
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:33 -0800 (PST)
Received: by mail-qg0-f45.google.com with SMTP id j5so7127180qga.4
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=pAuWWAAQ9u6qPx3aiVqePaT/FhWEfC45DMg6GVMiWNQ=;
	b=PSD2vuza7mWXutiL39YdWexsrdIT8UNGNzifQU7yz2VtxxKtZ+wpvdiGWV47K9YEa6
	nEIwDkOEa9jIbuiIl1jwfOM/iRrPpZHBPwL3HSpkaTq8o7E/LCeikGtafT0jm4eiotMG
	iRcXBPyz79LuWji6RSexlHkds7KFU0i8MT3Zckz9JYgdRP7MYMM60qoO6QEoSU3SgqHt
	Ci0WdsVk+rY9JkoO0O1gKMNI1+8rngduWT4c+LC/eAASRbaCum6CY00PZ4u43WqriM8L
	Q1T980UiAqbhUbGURDX4LABMfqaylTISI4sdMuJ+WcqD1keUUv0sNAH1bKVODxMwZxe/
	o0Ow==
X-Gm-Message-State: ALoCoQlSWT4TQBwe89sA+qUDP0dcnxtF8V4dHKK/sZdE6JoLM5C1EVhgYDi34JdbAVOQ+JN9f5nu
X-Received: by 10.224.30.16 with SMTP id s16mr8729923qac.74.1392978573085;
	Fri, 21 Feb 2014 02:29:33 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id
	k61sm11862511qge.12.2014.02.21.02.29.30 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Feb 2014 02:29:31 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 21 Feb 2014 12:29:07 +0200
Message-Id: <1392978548-31880-6-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
References: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 6/7] userland: Update to current remote HEAD
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
X-List-Received-Date: Fri, 21 Feb 2014 10:29:34 -0000

Change-Id: I635b2f2bff03ca7f091f8d5476afa4681f6bda71
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index cba1709..07c8381 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -11,7 +11,7 @@ PROVIDES = "virtual/libgles2 \
             virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRCREV = "6da40ffd91f2b3c2aa8471195813322ae5d0cb0d"
+SRCREV = "8181677fc08814cd5fcd1475ab73046f89f8dc80"
 SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
           "
 S = "${WORKDIR}/git"
-- 
1.8.1.4


