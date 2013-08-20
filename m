Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48C00E0159E
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:59 -0700 (PDT)
Received: by mail-ea0-f171.google.com with SMTP id n15so343830ead.30
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=+U3IrjJZ/zCILgte1AJedcXg1a2EiWZCmn4WKDVWIKc=;
	b=JFFJoLHz0x2T1RN5ZvwbKDxMohR2EhoS0Qu1+Ob9SpLZlrfDjtSYmAg5/IqOzXEEdz
	NV1YO9lUxhp0mFARCPTxLS5I3cmubQzdLX/yuIs7fwD6mB748DA4bTIn7AosyVPGbt2N
	dtWc++w95skJ6kazeq+/+gwfi8lg9vGR+mCmYDZV+7zt9Y8AhxUO5kXrQvo+WJCh5PvY
	49sA9ig8TXvD54A+i3yqh6kkRA47Af9l6JU/yhXON5Kfahoja3/ZJRzbGYmo4+H9FDkT
	qur7DAePJra39GG8zEtKuMKzPCRRLMYV68dN9Junc23jggRbLnZoHuH3HKL703iGDnJV
	QjXQ==
X-Gm-Message-State: ALoCoQk94zKCGwileMreh3BeozQGg902v2B2Mw2k8gkbmzjVShopvWrx6O0GW4aCLS/8Co+DebAx
X-Received: by 10.14.225.199 with SMTP id z47mr3556469eep.24.1377018179095;
	Tue, 20 Aug 2013 10:02:59 -0700 (PDT)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id l47sm3584186eex.15.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 10:02:58 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 20 Aug 2013 20:02:38 +0300
Message-Id: <1377018158-2983-11-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 11/11] vc-graphics: Remove some useless new lines
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
X-List-Received-Date: Tue, 20 Aug 2013 17:03:00 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/vc-graphics/vc-graphics-hardfp.bb |    2 --
 recipes-bcm/vc-graphics/vc-graphics.bb        |    2 --
 2 files changed, 4 deletions(-)

diff --git a/recipes-bcm/vc-graphics/vc-graphics-hardfp.bb b/recipes-bcm/vc-graphics/vc-graphics-hardfp.bb
index e96c291..0db71fd 100644
--- a/recipes-bcm/vc-graphics/vc-graphics-hardfp.bb
+++ b/recipes-bcm/vc-graphics/vc-graphics-hardfp.bb
@@ -1,8 +1,6 @@
-
 CONFLICTS = "vc-graphics"
 
 VCDIR = "hardfp/opt/vc"
 require vc-graphics.inc
 
 PR = "${INCPR}.0"
-
diff --git a/recipes-bcm/vc-graphics/vc-graphics.bb b/recipes-bcm/vc-graphics/vc-graphics.bb
index e78a80b..a1bce56 100644
--- a/recipes-bcm/vc-graphics/vc-graphics.bb
+++ b/recipes-bcm/vc-graphics/vc-graphics.bb
@@ -1,8 +1,6 @@
-
 CONFLICTS = "vc-graphics-hardfp"
 
 VCDIR = "opt/vc"
 require vc-graphics.inc
 
 PR = "${INCPR}.0"
-
-- 
1.7.9.5


